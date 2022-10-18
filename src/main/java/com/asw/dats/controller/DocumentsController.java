package com.asw.dats.controller;

import com.asw.dats.model.Document;
import com.asw.dats.service.DocumentsService;
import com.asw.dats.utils.ResponseFile;
import com.asw.dats.utils.ResponseMessage;
import com.itextpdf.io.font.FontProgramFactory;
import com.itextpdf.io.font.constants.StandardFonts;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.font.PdfFont;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.pdf.*;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.extgstate.PdfExtGState;
import com.itextpdf.kernel.xmp.XMPException;
import com.itextpdf.kernel.xmp.XMPMetaFactory;
import com.itextpdf.layout.Canvas;
import com.itextpdf.layout.element.Paragraph;
import com.itextpdf.layout.properties.TextAlignment;
import com.itextpdf.layout.properties.VerticalAlignment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@CrossOrigin(origins = "http://localhost:4200")
public class DocumentsController {

    @Autowired
    private DocumentsService storageService;

    @PostMapping("/upload")
    public ResponseEntity<ResponseMessage> uploadFile(@RequestParam("file") MultipartFile file,
                                                      @RequestParam("description") String description
                                                      ) {
        String message = "";
        try {
            storageService.store(file,description);
            message = "Uploaded the file successfully: " + file.getOriginalFilename();
            return ResponseEntity.status(HttpStatus.OK).body(new ResponseMessage(message));
        } catch (Exception e) {
            message = "Could not upload the file: " + file.getOriginalFilename() + "!";
            return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).body(new ResponseMessage(message));
        }
    }

    @GetMapping("/files")
    public ResponseEntity<List<com.asw.dats.utils.ResponseFile>> getListFiles() throws IOException {
        List<ResponseFile> files = storageService.getAllFiles().map(dbFile -> {
            String fileDownloadUri = ServletUriComponentsBuilder
                    .fromCurrentContextPath()
                    .path("/files/")
                    .path(String.valueOf(dbFile.getId()))
                    .toUriString();
            return new ResponseFile(
                    dbFile.getName(),
                    fileDownloadUri,
                    dbFile.getType(),
                    dbFile.getDescription(),
                    dbFile.getId()
                    );
        }).collect(Collectors.toList());

      
        return ResponseEntity.status(HttpStatus.OK).body(files);
    }
    @GetMapping("/files/{id}")
    public ResponseEntity getFile(@PathVariable Long id, HttpServletRequest httpServletRequest) throws IOException, XMPException {
        Document documents = storageService.getFile(id);

        var ipAddr = httpServletRequest.getRemoteAddr();

        Path uploadPath = Paths.get("documents");
        Path tempDir = Paths.get("temp");
        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }
        if ( !Files.exists(tempDir) ) {

            Files.createDirectories(tempDir);
        }

         PdfDocument pdfDoc = new
                PdfDocument(new PdfReader(uploadPath + "/" + documents.getName())
                .setUnethicalReading(true), new PdfWriter(
                        //Ip address will be te folder name
                tempDir + "/" + documents.getName()
        ));


        PdfFont font = PdfFontFactory.createFont(FontProgramFactory.createFont(StandardFonts.HELVETICA));
        Paragraph paragraph ;

        Canvas canvasWatermark2;

        int length = pdfDoc.getNumberOfPages();
        PdfCanvas over = null;
        for (int i=1;i<=length;i++){
         over = new PdfCanvas(pdfDoc.getPage(i));
        over.setFillColor(ColorConstants.GRAY);
        paragraph = new Paragraph(ipAddr)
                .setFont(font)
                .setRotationAngle(45)
                .setOpacity(0.4F)
                .setFontSize(50);
            canvasWatermark2 = new Canvas(over, pdfDoc.getDefaultPageSize());
            canvasWatermark2.showTextAligned(paragraph, 297, 500, i, TextAlignment.CENTER, VerticalAlignment.TOP, 0);
            canvasWatermark2.setOpacity(0.4F);

            canvasWatermark2.close();
        }


        PdfExtGState state = new PdfExtGState();
        over.setExtGState(state);

        //Set Meta Data
        pdfDoc.getDocumentInfo().setAuthor(ipAddr);
        pdfDoc.getDocumentInfo().setCreator(ipAddr);
        pdfDoc.getDocumentInfo().setKeywords(ipAddr);
        pdfDoc.getDocumentInfo().setSubject(ipAddr);
        pdfDoc.getDocumentInfo().setTitle(documents.getName());
        pdfDoc.setXmpMetadata(XMPMetaFactory.create());

        pdfDoc.close();


        FileSystemResource resource = new FileSystemResource(tempDir + "/" + documents.getName());
        // 2.
        MediaType mediaType = MediaTypeFactory
                .getMediaType(resource)
                .orElse(MediaType.APPLICATION_OCTET_STREAM);
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(mediaType);
        // 3
        ContentDisposition disposition = ContentDisposition
                // 3.2
                .inline() // or .attachment()
                // 3.1
                .filename(resource.getFilename())
                .build();
        headers.setContentDisposition(disposition);

        // Delete files using batch
//        FileUtils.forceDelete(new File(tempDir + "/" + documents.getName()));

        return new ResponseEntity<>(resource, headers, HttpStatus.OK);

    }

}

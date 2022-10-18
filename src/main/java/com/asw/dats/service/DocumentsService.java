package com.asw.dats.service;


import com.asw.dats.model.Document;
import com.asw.dats.repository.DocumentsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.stream.Stream;

@Service
public class DocumentsService {
    @Autowired
    private DocumentsRepository documentsRepository;

    public Document store(MultipartFile file, String description) throws IOException {
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());

        Path uploadPath = Paths.get("documents");

        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }

        try (InputStream inputStream = file.getInputStream()) {
            Path filePath = uploadPath.resolve( fileName);
            Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
        } catch (IOException ioe) {
            throw new IOException("Could not save file: " + fileName, ioe);
        }

        Document document = new Document(
                fileName,
                description,
                file.getContentType()
        );
        return documentsRepository.save(document);
    }
    public Document getFile(Long id) {
        return documentsRepository.findById(id).get();
    }

    public Stream<Document> getAllFiles() {
        return documentsRepository.findAll().stream();
    }
}
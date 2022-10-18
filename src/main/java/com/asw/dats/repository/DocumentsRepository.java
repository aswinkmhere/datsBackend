package com.asw.dats.repository;

import com.asw.dats.model.Document;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DocumentsRepository extends JpaRepository<Document,Long> {
}

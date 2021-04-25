package com.aldeamo.test.service;

import com.aldeamo.test.entity.ArraysEntity;
import com.aldeamo.test.repository.ArraysRepository;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Optional;

@Component
public class ArraysService {
    private final Logger logger = LogManager.getLogger(ArraysService.class);

    @Autowired
    ArraysRepository repository;

    public Optional<ArraysEntity> findById(Long id) {
        try {
            return repository.findById(id);
        } catch (Exception e) {
            logger.error("Error:", e);
            return Optional.empty();
        }
    }

}

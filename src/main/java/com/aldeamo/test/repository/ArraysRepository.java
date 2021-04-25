package com.aldeamo.test.repository;

import com.aldeamo.test.entity.ArraysEntity;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository()
public interface ArraysRepository extends CrudRepository<ArraysEntity, Long> {

}

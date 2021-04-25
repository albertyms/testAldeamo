package com.aldeamo.test.entity;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.boot.autoconfigure.domain.EntityScan;

import javax.persistence.*;

@Entity
@Table(name = "arrays", schema="public")
public class ArraysEntity {

    @GenericGenerator(
            name = "arraysGenerator",
            strategy = "org.hibernate.id.enhanced.SequenceStyleGenerator",
            parameters = {
                    @org.hibernate.annotations.Parameter(name = "sequence_name", value = "arrays_sequence"),
                    @org.hibernate.annotations.Parameter(name = "initial_value", value = "1"),
                    @org.hibernate.annotations.Parameter(name = "increment_size", value = "1"),
            }
    )

    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "cardGenerator")
    private Long id;
    @Column(name = "input_array")
    private String inputArray;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getInputArray() {
        return inputArray;
    }

    public void setInputArray(String inputArray) {
        this.inputArray = inputArray;
    }
}

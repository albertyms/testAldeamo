package com.aldeamo.test.controller;

import com.aldeamo.test.entity.ArraysEntity;
import com.aldeamo.test.response.ArraysResponse;
import com.aldeamo.test.service.ArraysService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@RestController
@RequestMapping(path = "/api/processIterator")
public class ArraysController {
    private final Logger logger = LogManager.getLogger(ArraysController.class);

    @Autowired
    ArraysService service;

    @GetMapping("/{idRecord}/{numberIterator}")
    public ResponseEntity<ArraysResponse> findById(@PathVariable Long idRecord, @PathVariable Integer numberIterator) {
        try {
            Optional<ArraysEntity> arraysEntity = service.findById(idRecord);
            List<Integer> arrayResponse = new ArrayList<>();
            ArraysResponse response = new ArraysResponse();
            if(!arraysEntity.isPresent()){
                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
            } else {
                List<Integer> listNumbers = Arrays.stream(arraysEntity.get().getInputArray().split(",")).map(Integer::parseInt).collect(Collectors.toList());
                Collections.reverse(listNumbers);
                List<Integer> arrayA = new ArrayList<>();

                List<Integer> arrayP = primeNumbersTill(100);

                for(int x = 0; x < numberIterator; x++){
                    for (Integer number : listNumbers) {
                        if(number % arrayP.get(x) == 0) {
                            arrayResponse.add(number);
                        } else {
                            arrayA.add(number);
                        }
                    }
                    listNumbers = new ArrayList<>(arrayA);
                    if(x+1 < numberIterator) {
                        arrayA.clear();
                    }
                }
                arrayResponse.addAll(arrayA);
            }
            response.setResponse(arrayResponse);
            return ResponseEntity.ok(response);
        } catch (Exception e) {
            logger.error("Error:", e);
            return null;
        }
    }


    public static List<Integer> primeNumbersTill(int n) {
        return IntStream.rangeClosed(2, n)
                .filter(x -> isPrime(x)).boxed()
                .collect(Collectors.toList());
    }
    private static boolean isPrime(int number) {
        return IntStream.rangeClosed(2, (int) (Math.sqrt(number)))
                .allMatch(n -> number % n != 0);
    }

}

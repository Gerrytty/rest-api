package com.example.resttask.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ResponsePromoListDto {

    private Long id;
    private String name;
    private String description;

}

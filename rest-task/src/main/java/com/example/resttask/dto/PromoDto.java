package com.example.resttask.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class PromoDto {

    private String name;
    private String description;

}

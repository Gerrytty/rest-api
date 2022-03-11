package com.example.resttask.dto;

import lombok.Builder;
import lombok.Data;

import java.util.List;

@Data
@Builder
public class PromoById {

    private Long id;
    private String name;
    private String description;
    private List<PrizeDto> prizes;
    private List<UserDto> participants;

}

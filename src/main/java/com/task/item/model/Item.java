package com.task.item.model;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class Item {

    private long id;

    @NotBlank(message = "Name is required")
    private String name;

    @Size(max = 50)
    private String description;
}

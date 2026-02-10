package com.task.item.service;

import com.task.item.model.Item;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class ItemService {

    private final Map<Long, Item> itemStorage = new HashMap<>();
    private int id = 1;

    public Item saveItem(Item item){
        if (item == null) {
            throw new IllegalArgumentException("Item cannot be null");
        }
        item.setId(id++);
        itemStorage.put(item.getId(), item);
        return item;
    }

    public Item getItemById(long id){
        return itemStorage.get(id);
    }

    public List<Item> getAllItems() {
        return new ArrayList<>(itemStorage.values());
    }
}

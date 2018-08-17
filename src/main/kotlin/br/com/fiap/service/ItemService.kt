package br.com.fiap.service

import br.com.fiap.entity.Item
import br.com.fiap.repository.ItemRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class ItemService {

    @Autowired
    lateinit var itemRepository: ItemRepository

    fun findAll(): List<Item> {
        return itemRepository.findAll().orEmpty()
    }

    fun save(item: Item) {
        itemRepository.save(item)
    }
}

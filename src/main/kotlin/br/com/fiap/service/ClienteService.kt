package br.com.fiap.service

import br.com.fiap.entity.Cliente
import br.com.fiap.repository.ClienteRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class ClienteService {

    @Autowired
    lateinit var clienteRepository: ClienteRepository


    fun findAll(): List<Cliente>? {
        return clienteRepository.findAll().orEmpty()

    }

    fun save(cliente: Cliente) {
        clienteRepository.save(cliente)
    }
}

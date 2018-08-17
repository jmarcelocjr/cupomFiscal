package br.com.fiap.service

import br.com.fiap.entity.Pedido
import br.com.fiap.repository.PedidoRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class PedidoService {
    @Autowired
    lateinit var pedidoRepository: PedidoRepository

    fun findById(id: Long): Pedido? {
        return pedidoRepository.findById(id).orElse(null)
    }

    fun findAll(): List<Pedido>? {
        return pedidoRepository.findAll().orEmpty()
    }

    fun save(pedido: Pedido) {
        pedidoRepository.save(pedido)
    }
}
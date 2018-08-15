package br.com.fiap.generator

import br.com.fiap.entity.Pedido
import br.com.fiap.queue.Publisher
import java.util.stream.Collectors

class CupomFiscalGenerator {
    companion object {
        private val queue = "cupomFiscal.gerar"
        fun gerar(pedido: Pedido): Boolean {
            return Publisher.sendTo(queue, pedido.id.toString())
        }

        fun gerar(pedidos: List<Pedido>): Boolean {
            var sended = false

            val pedidos = pedidos.stream().map {
                pedido: Pedido -> pedido.id.toString()
            }.collect(Collectors.toList<String>())

            return  Publisher.sendTo(queue, pedidos)
        }
    }
}
package br.com.fiap.generator

import br.com.fiap.entity.Pedido
import br.com.fiap.jms.Publisher

class CupomFiscalGenerator {
    companion object {
        private var publisher: Publisher? = null
        get(): Publisher? {
            return Publisher()
        }

        fun gerar(activeMQUrl: String, queue: String, pedido: Pedido): Boolean {
            return publisher!!.setUrl(activeMQUrl).setQueue(queue).send(pedido)
        }

        fun gerar(activeMQUrl: String, queue: String, pedidos: List<Pedido>): Boolean {
            return  publisher!!.setUrl(activeMQUrl).setQueue(queue).send(pedidos)
        }
    }
}
package br.com.fiap.generator

import br.com.fiap.entity.Pedido
import br.com.fiap.jms.Publisher
import org.springframework.beans.factory.annotation.Autowired

class CupomFiscalGenerator {
    companion object {
        private var publisher: Publisher? = null
        get(): Publisher? {
            return Publisher()
        }

        fun gerar(pedido: Pedido): Boolean {
            return publisher!!.send(pedido)
        }

        fun gerar(pedidos: List<Pedido>): Boolean {
            return  publisher!!.send(pedidos)
        }
    }
}
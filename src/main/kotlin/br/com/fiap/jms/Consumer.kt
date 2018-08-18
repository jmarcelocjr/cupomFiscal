package br.com.fiap.jms

import br.com.fiap.entity.Pedido
import br.com.fiap.report.GeradorPDF
import org.springframework.jms.annotation.JmsListener
import org.springframework.stereotype.Component

@Component
class Consumer {

    @JmsListener(destination = "cupomFiscal.gerar")
    fun consume(message: Pedido) {
        GeradorPDF.gerar(message)
    }
}
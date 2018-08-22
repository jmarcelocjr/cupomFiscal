package br.com.fiap.jms

import br.com.fiap.entity.Pedido
import br.com.fiap.report.GeradorPDF
import org.springframework.beans.factory.annotation.Value
import org.springframework.jms.annotation.JmsListener
import org.springframework.stereotype.Component

@Component
class Consumer {

    @Value("\${pdf.dir}")
    lateinit var dir: String

    @JmsListener(destination = "\${activemq.queue}")
    fun consume(message: Pedido) {
        val thread = Thread(Runnable {

            GeradorPDF.gerar(dir, message)
        })

        thread.start()
    }
}
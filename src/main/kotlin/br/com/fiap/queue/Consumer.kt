package br.com.fiap.queue

import br.com.fiap.connector.ActiveMQFactory
import br.com.fiap.entity.Pedido
import br.com.fiap.report.GeradorPDF
import org.springframework.beans.factory.annotation.Autowired
import javax.jms.Destination
import javax.jms.MessageConsumer
import javax.jms.ObjectMessage
import javax.jms.Session

class Consumer {

    companion object {
        @Autowired
        lateinit var geradorPdf: GeradorPDF

        private  var session: Session? = null
        get() {
            if (session == null) {
                val connection = ActiveMQFactory.getConnection()
                connection.start()

                session = connection.createSession(false, Session.AUTO_ACKNOWLEDGE)
            }

            return session
        }

        public fun consume(queue: String) {
            val session = this.session
            val consumer = this.getConsumer(session!!, queue)

            val pedido = consumer.receive() as ObjectMessage as Pedido

            geradorPdf.gerar(pedido)
        }

        private fun getConsumer(session: Session, queue: String): MessageConsumer {
            val destination: Destination = session.createQueue(queue)

            val consumer = session.createConsumer(destination)

            return consumer
        }
    }
}
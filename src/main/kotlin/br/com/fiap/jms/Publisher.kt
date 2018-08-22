package br.com.fiap.jms

import br.com.fiap.connector.ActiveMQFactory
import br.com.fiap.entity.Pedido
import org.apache.activemq.command.ActiveMQQueue
import org.springframework.jms.core.JmsMessagingTemplate
import org.springframework.jms.core.JmsTemplate

class Publisher {

    private lateinit var url: String
    private lateinit var queue: String

    fun setUrl(url: String): Publisher {
        this.url = url
        return this
    }

    fun setQueue(queue: String): Publisher {
        this.queue = queue
        return this
    }

    fun send(data: Pedido): Boolean{
        try {
            val thread = Thread(Runnable {
                System.out.println("Publicando pedido #${data.codigo}")

                val activeMQFactory = ActiveMQFactory()
                val jmsTemplate = JmsTemplate(activeMQFactory.getConnection(this.url))
                val jmsMessagingTemplate = JmsMessagingTemplate(jmsTemplate)

                jmsMessagingTemplate.convertAndSend(ActiveMQQueue(this.queue), data)
            })

            thread.start()

        } catch (e: Exception) {
            System.out.println("Error on sending to publisher: "+e.message)
            e.printStackTrace()
            return false
        }

        return true
    }

    fun send(data: List<Pedido>): Boolean{
        try {
            data.forEach {
                this.send(it)
            }
        } catch (e: Exception) {
            System.out.println("Error on sending to publisher: "+e.message)
            e.printStackTrace()
            return false
        }

        return true
    }
}
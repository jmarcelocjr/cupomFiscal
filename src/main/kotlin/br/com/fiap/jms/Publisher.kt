package br.com.fiap.jms

import br.com.fiap.connector.ActiveMQFactory
import br.com.fiap.entity.Pedido
import org.apache.activemq.command.ActiveMQQueue
import org.springframework.jms.core.JmsMessagingTemplate
import org.springframework.jms.core.JmsTemplate

class Publisher {

    fun send(data: Pedido): Boolean{
        try {
            val jmsTemplate = JmsTemplate(ActiveMQFactory.getConnection())
            val jmsMessagingTemplate = JmsMessagingTemplate(jmsTemplate)

            jmsMessagingTemplate.convertAndSend(ActiveMQQueue("cupomFiscal.gerar"), data)
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
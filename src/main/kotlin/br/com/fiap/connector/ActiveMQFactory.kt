package br.com.fiap.connector

import org.apache.activemq.ActiveMQConnectionFactory
import java.util.*
import javax.jms.ConnectionFactory

class ActiveMQFactory {

    fun getConnection(url: String): ConnectionFactory {
        val factory = ActiveMQConnectionFactory(url)
        factory.trustedPackages = Arrays.asList("br.com.fiap");

        return factory
    }
}
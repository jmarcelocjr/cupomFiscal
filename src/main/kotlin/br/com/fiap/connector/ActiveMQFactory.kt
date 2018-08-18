package br.com.fiap.connector

import org.apache.activemq.ActiveMQConnectionFactory
import java.util.*
import javax.jms.Connection
import javax.jms.ConnectionFactory

class ActiveMQFactory {
    companion object {

        fun getConnection(): ConnectionFactory {
            val factory = ActiveMQConnectionFactory("tcp://localhost:32768")
            factory.setTrustedPackages(Arrays.asList("br.com.fiap"));

            return factory
        }
    }

}
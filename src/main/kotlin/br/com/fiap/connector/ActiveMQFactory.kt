package br.com.fiap.connector

import org.apache.activemq.ActiveMQConnectionFactory
import javax.jms.Connection

class ActiveMQFactory {
    companion object {

        fun getConnection(): Connection {
            val connectionFactory = ActiveMQConnectionFactory("localhost:32768")

            val connection = connectionFactory.createConnection("admin", "admin")

            return connection;
        }
    }

}
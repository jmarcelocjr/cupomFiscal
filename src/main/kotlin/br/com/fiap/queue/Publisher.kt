package br.com.fiap.queue

import br.com.fiap.connector.ActiveMQFactory
import javax.jms.DeliveryMode
import javax.jms.Destination
import javax.jms.MessageProducer
import javax.jms.Session

class Publisher {

    companion object {
        fun sendTo(queue: String, data: String): Boolean{
            try {
                val session = getSession()
                val publisher = getPublisher(session, queue)

                val message = session.createTextMessage(data)

                publisher.send(message)

                session.close()
                publisher.close()
            } catch (e: Exception) {
                System.out.println("Error on sending to publisher: "+e.message)
                e.printStackTrace()
                return false
            }

            return true
        }

        fun sendTo(queue: String, data: List<String>): Boolean{
            try {
                val session = getSession()
                val publisher = getPublisher(session, queue)

                for (text in data) {
                    val message = session.createTextMessage(text)

                    publisher.send(message)
                }

                session.close()
                publisher.close()
            } catch (e: Exception) {
                System.out.println("Error on sending to publisher: "+e.message)
                e.printStackTrace()
                return false
            }

            return true
        }

        private fun getSession(): Session {
            val connection = ActiveMQFactory.getConnection()
            connection.start()

            return connection.createSession(false, Session.AUTO_ACKNOWLEDGE)
        }

        private fun getPublisher(session: Session, queue: String): MessageProducer {
            val destination: Destination = session.createQueue(queue)

            val publisher = session.createProducer(destination)
            publisher.deliveryMode = DeliveryMode.NON_PERSISTENT

            return publisher
        }
    }
}
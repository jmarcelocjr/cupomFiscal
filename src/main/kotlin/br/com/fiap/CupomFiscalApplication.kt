package br.com.fiap

import br.com.fiap.queue.Consumer
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class CupomFiscalApplication

fun main(args: Array<String>) {
    runApplication<CupomFiscalApplication>(*args)

//    while (true) {
//        Consumer.consume("cupomFiscal.gerar")
//    }
}

package br.com.fiap

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.jms.annotation.EnableJms

@SpringBootApplication
@EnableJms
class CupomFiscalApplication

fun main(args: Array<String>) {
    runApplication<CupomFiscalApplication>(*args)
}




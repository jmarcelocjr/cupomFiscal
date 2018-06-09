package br.com.fiap.entity

import org.springframework.data.annotation.Id
import javax.persistence.Entity
import javax.persistence.GeneratedValue
import javax.persistence.GenerationType

@Entity
data class Pedido (
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY) val id: Int
)
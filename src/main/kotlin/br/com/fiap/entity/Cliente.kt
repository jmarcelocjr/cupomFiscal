package br.com.fiap.entity

import java.io.Serializable
import javax.persistence.*

@Entity
data class Cliente(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) var codigo: Long? = null,
    var nome: String = "",
    var cpf: String = ""
): Serializable
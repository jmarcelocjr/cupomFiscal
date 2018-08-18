package br.com.fiap.entity

import java.io.Serializable
import javax.persistence.*

@Entity
data class Item(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) var codigo: Long? = null,
    var descricao: String = "",
    var quantidade: Int = 0,
    var valor: Double = 0.0
): Serializable
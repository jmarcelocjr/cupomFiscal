package br.com.fiap.entity

import java.io.Serializable
import javax.persistence.*

@Entity
data class Empresa(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) var codigo: Long? = null,
    var nome: String = "",
    var endereco: String = "",
    var cnpj: String = "",
    var ie: String = "",
    var im: String = ""
): Serializable
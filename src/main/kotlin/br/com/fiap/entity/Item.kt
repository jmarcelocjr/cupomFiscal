package br.com.fiap.entity

import javax.persistence.*

@Entity
class Item(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) var codigo: Long?,
    var descricao: String?,
    var quantidade: Int?,
    var valor: Double?
)
package br.com.fiap.entity

import javax.persistence.*

@Entity
class Empresa(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) var codigo: Long?,
    var nome: String?,
    var endereco: String?,
    var cnpj: String?,
    var ie: String?,
    var im: String?,
    @OneToMany(cascade = arrayOf(CascadeType.ALL), fetch = FetchType.LAZY) var clientes: List<Cliente>?,
    @OneToMany(cascade = arrayOf(CascadeType.ALL), fetch = FetchType.LAZY) var pedidos: List<Pedido>?
)
package br.com.fiap.entity

import javax.persistence.*

@Entity
class Cliente(
        @Id @GeneratedValue(strategy = GenerationType.IDENTITY) var codigo: Long?,
        var nome: String?,
        var cpf: String?,
        @OneToMany(cascade = arrayOf(CascadeType.ALL), fetch = FetchType.LAZY) var pedidos: List<Pedido>?,
        @ManyToOne(cascade = arrayOf(CascadeType.ALL), fetch = FetchType.LAZY) var empresa: Empresa
)

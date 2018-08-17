package br.com.fiap.entity

import javax.persistence.*

@Entity
class Pedido (
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) var codigo: Long?,
    @ManyToMany() @JoinColumn(name = "pedido_itens") var itens: List<Item>?,
    @ManyToOne() @JoinColumn(name = "cliente_id") var cliente: Cliente,
    @ManyToOne() @JoinColumn(name = "empresa_id") var empresa: Empresa
)
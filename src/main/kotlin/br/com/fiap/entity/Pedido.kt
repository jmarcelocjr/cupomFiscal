package br.com.fiap.entity

import java.io.Serializable
import javax.persistence.*

@Entity
data class Pedido (
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) var codigo: Long? = null,
    @ManyToMany() @JoinColumn(name = "pedido_itens") var itens: List<Item>? = null,
    @ManyToOne() @JoinColumn(name = "cliente_id") var cliente: Cliente? = null,
    @ManyToOne() @JoinColumn(name = "empresa_id") var empresa: Empresa? = null
): Serializable
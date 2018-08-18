package br.com.fiap.entity

import java.io.Serializable
import javax.persistence.*

@Entity
data class Pedido (
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) var codigo: Long? = null,
    @ManyToMany(fetch = FetchType.EAGER) @JoinColumn(name = "pedido_itens") var itens: List<Item>? = null,
    @ManyToOne(fetch = FetchType.EAGER) @JoinColumn(name = "cliente_id") var cliente: Cliente? = null,
    @ManyToOne(fetch = FetchType.EAGER) @JoinColumn(name = "empresa_id") var empresa: Empresa? = null
): Serializable
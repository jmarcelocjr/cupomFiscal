package br.com.fiap.repository

import br.com.fiap.entity.Pedido
import org.springframework.data.jpa.repository.JpaRepository

interface PedidoRepository : JpaRepository<Pedido, Long>
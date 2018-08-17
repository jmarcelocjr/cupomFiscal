package br.com.fiap.repository

import br.com.fiap.entity.Cliente
import org.springframework.data.jpa.repository.JpaRepository

interface ClienteRepository : JpaRepository<Cliente, Long>

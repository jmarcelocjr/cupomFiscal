package br.com.fiap.repository

import br.com.fiap.entity.Empresa
import org.springframework.data.jpa.repository.JpaRepository

interface EmpresaRepository : JpaRepository<Empresa, Long>

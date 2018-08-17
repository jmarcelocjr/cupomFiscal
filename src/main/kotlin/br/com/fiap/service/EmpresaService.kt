package br.com.fiap.service

import br.com.fiap.entity.Empresa
import br.com.fiap.repository.EmpresaRepository
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Service

@Service
class EmpresaService {

    @Autowired
    lateinit var empresaRepository: EmpresaRepository

    fun findById(id: Long): Empresa {
        return empresaRepository.findById(id).orElse(null)
    }

    fun save(empresa: Empresa) {
        empresaRepository.save(empresa)
    }
}

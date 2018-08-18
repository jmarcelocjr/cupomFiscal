package br.com.fiap.controller

import br.com.fiap.generator.CupomFiscalGenerator
import br.com.fiap.service.PedidoService
import org.json.JSONObject
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/cupomFiscal")
class CupomFiscalController {

    @Autowired
    lateinit var pedidoService: PedidoService

    @PostMapping("/gerar")
    fun gerar (@RequestBody(required = true) jsonString: String): ResponseEntity<Boolean> {
        val jsonObject = JSONObject(jsonString)
        val idPedido = jsonObject.getLong("idPedido")

        var result: Boolean

        if (idPedido.equals(-1)) {
            val pedidos = pedidoService.findAll()!!
            result = CupomFiscalGenerator.gerar(pedidos)
        } else {
            val pedido = pedidoService.findById(idPedido)!!
            result = CupomFiscalGenerator.gerar(pedido)
        }

        return ResponseEntity.ok(result)
    }

    @GetMapping("/")
    fun welcome ():ResponseEntity<String> {
        return ResponseEntity.ok("Hello World")
    }
}
package br.com.fiap.controller

import br.com.fiap.service.PedidoService
import org.json.JSONObject
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/cupomFiscal")
class CupomFiscalController {

    @Autowired
    lateinit var pedidoService: PedidoService

    @PostMapping("/gerar")
    fun gerar (@RequestBody(required = true) jsonString: String): ResponseEntity<Boolean> {
        val jsonObject = JSONObject(jsonString)
        val idPedido = jsonObject.getInt("idPedido")

        var result = false
        if (idPedido == -1) {
            val pedidos = pedidoService.findAll();
            //result = cupomFiscalGenerator.gerar(pedidos)
        } else {
            val pedido = pedidoService.findById(idPedido)
            //result = cupomFiscalGenerator.gerar(pedido)
        }

        return ResponseEntity.ok(result)
    }
}
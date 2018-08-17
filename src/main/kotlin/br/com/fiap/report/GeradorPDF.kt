package br.com.fiap.report

import br.com.fiap.entity.Empresa
import br.com.fiap.entity.Pedido
import br.com.fiap.service.EmpresaService
import com.itextpdf.text.Document
import com.itextpdf.text.DocumentException
import com.itextpdf.text.Paragraph
import com.itextpdf.text.pdf.PdfWriter
import org.springframework.beans.factory.annotation.Autowired
import java.io.FileOutputStream
import java.io.IOException
import java.util.Date

class GeradorPDF {

    @Autowired
    lateinit var empresaService: EmpresaService

    fun gerar(pedido: Pedido) {

        val document = Document()
        var total = 0.0

        try {
            val empresa = pedido.empresa
            PdfWriter.getInstance(document, FileOutputStream("C:\\teste\\boleto.pdf"))
            document.open()

            document.add(Paragraph("                                                 " + empresa.nome))
            document.add(Paragraph("                                           " + empresa.endereco))
            document.add(Paragraph("CNPJ: " + empresa.cnpj))
            document.add(Paragraph("IE: " + empresa.ie))
            document.add(Paragraph("IM: " + empresa.im))
            document.add(
                Paragraph(
                    "---------------------------------------------------------------------------------------------------"
                )
            )
            document.add(Paragraph(pedido.codigo.toString()))
            document.add(Paragraph("ITEM    CODIGO    DESCRIÇÃO      QTD   UN.  VL.UNIT(R$)     ST     VL ITEM(R$)"))

            var index = 1
            pedido.itens?.forEach {

                document.add(
                    Paragraph(
                         index.toString().padStart(3, '0') + "     "
                        + it.codigo.toString() + "                 "
                        + it.descricao + "                       "
                        + it.quantidade.toString() + "             "
                        + it.valor.toString()
                    )
                )
                total += if (it.valor != null) it.valor!! else 0.0
            }

            document.add(Paragraph("                               --------------------------------------------------------------------"))
            document.add(Paragraph("TOTAL(R$)                                                                                    $total"))
            document.close()

        } catch (e: Exception) {
            println(e)
        }
    }
}

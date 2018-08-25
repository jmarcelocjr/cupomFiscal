# cupomFiscal - Roupas FIAP

## Instruções
* Iniciar o banco de dados
  * criar o database cupomFiscal
  * Importar o dump.sql localizado no diretório "extras" do projeto para o banco de dados
* Iniciar o ActiveMQ
* abrir o arquivo application.properties localizado no diretório "/src/main/resources"
  * editar as conexões do banco: url, username, password
  * editar as conexões do ActiveMQ: broker-url, user, password
  * editar o pdf.dir para a pasta onde os cupons serão salvos


### Requisitos
* Kotlin
* Mysql
* ActiveMQ

### Usage
* realizar um *POST* para ```localhost:8080/gerar``` com o seguinte body:
  * Substituir o ID_PEDIDO por um inteiro de 1 a 100 para gerar o cupom referente.
    * Caso coloque -1, será gerado todos os cupons fiscais que estão no banco
```json
{
    "idPedido": ID_PEDIDO
}
```

###Extras
* Diagrama EIP encontra-se no diretório extras

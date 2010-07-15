class Newsletter < ActionMailer::Base
  
    #se precisar os parametros são Email.deliver_padrao(corpo, "Assunto",email para&nbsp;&nbsp; #enviar(destino), email para resposta)
    def enviar(corpo, assunto, email = "noreply@fasterm.com.br",responder = "noreply@fasterm.com.br")
        recipients email
        from "Nautilus <noreply@fasterm.com.br>"
        subject assunto
        reply_to responder
        body :corpo => corpo
    end
end

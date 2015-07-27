class AppMailer < ActionMailer::Base
  default from: 'Liane - Minha Sampa <liane@minhasampa.org.br>'

  def thanks message
    @message = message
    headers "X-SMTPAPI" => "{ \"category\": [\"conectividade\", \"thanks\"] }"
    mail(
      to: @message.user.email,
      subject: 'Boa, seu pedido para a presidenta Dilma e para os Ministros foi enviado!'
    )
  end
end

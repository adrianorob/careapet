class ServiceMailer < ApplicationMailer

  def new_service_buyer(service)
    @service = service
    mail(
          to: @service.buyer.email,
          subject: "Olá #{@service.buyer.first_name}, aguarde, o serviço foi enviado."
        )
  end

  def new_service_caregiver(service)
    @service = service
    @service.caregiver
    mail(
          to: @service.caregiver.email,
          subject: "Olá #{@service.caregiver.first_name}, novo serviço solicitado!"
        )
  end

  def pay_service_buyer(service)
    @service = service
    mail(
          to: @service.buyer.email,
          subject: "Olá #{@service.buyer.first_name}, obrigado por autorizar o pagamento."
        )
  end

  def pay_service_caregiver(service)
    @service = service
    @service.caregiver
    mail(
          to: @service.caregiver.email,
          subject: "Olá #{@service.caregiver.first_name}, aguarde, o pagamento será autorizado."
        )
  end

  def paid_service_caregiver(service)
    @service = service
    @service.caregiver
    mail(
          to: @service.caregiver.email,
          subject: "Olá #{@service.caregiver.first_name}, pagamento autorizado! Feito em 48h!"
        )
  end

end


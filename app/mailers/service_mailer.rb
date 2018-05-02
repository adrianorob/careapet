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
    mail(
          to: @service.caregiver.email,
          subject: "Olá #{@service.caregiver.first_name}, novo serviço solicitado!"
        )
  end

end


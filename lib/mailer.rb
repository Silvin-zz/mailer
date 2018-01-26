module Mailer
  class API
    include Phobos::Producer
    def initialize
      p("Iniciando el constructor")
      puts("Iniciando el constructor")
    end

    def prueba
      p("Ejecutando codigo de prueba, noque no")
      puts("noque no")
    end
    def send_email
      begin
        producer.publish('boletia_mailer', 'Hola Silvin, aqui andamos', '')  
        raise MailerException.new("Fallamos .....")
      rescue StandardError => e
        raise MailerException.new(e.message)
      end
    end
  end
end

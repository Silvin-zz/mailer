module Mailer
  class API
    include Phobos::Producer

    @values           = {}
    @template_params  = {}
    @custom_params    = []
    @attachments      = []

    def initialize(to:, subject:, template:)
      @values = {
        to:       to,
        subject:  subject,
        template: template
      }
      @template_params  = {}
      @custom_params    = []
      @attachments      = []
    end

    def prueba
      p("Ejecutando codigo de prueba, noque no")
      puts("noque no")
    end
    def send
        @template_params['custom_params'] = @custom_params
        @values['template_params'] = @template_params
        @values['attachments'] = @attachments
        producer.publish('boletia_mailer', @values.to_json, '')  
    end

    def add_to(to_email)
      @values = { to: to_email }
    end

    def add_template_params(name:, value:)
      @template_params[name] = value
    end

    def add_custom_param(template_name:, variable_name:, values: {})
      @custom_params << { name: variable_name, template: template_name, value: values }
    end

    def add_attachment(source:, filename:, extension:)
      @attachments << { source: source, filename: filename, extension: extension }
    end
  end
end

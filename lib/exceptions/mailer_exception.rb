class MailerException < StandardError

    def initialize(msg="We can not send the message via kafka")
        super(msg)
    end
end
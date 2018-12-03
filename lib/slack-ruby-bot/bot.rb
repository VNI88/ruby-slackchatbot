module SlackRubyBot
  class Bot < SlackRubyBot::Commands::Base
    delegate :client, to: :instance

    def self.run
      instance.run
    end

    def self.instance
      SlackRubyBot::App.instance
    end

    def self.call(client, data, _match)
      client.say(channel: data.channel, text: "Me desculpe <@#{data.user}>, mas não entendi o que você quis dizer poderia esclarecer?", gif: 'understand')
    end
  end
end

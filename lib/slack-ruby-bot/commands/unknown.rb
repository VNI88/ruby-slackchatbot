module SlackRubyBot
  module Commands
    class Unknown < Base
      match(/^(?<bot>\S*)[\s]*(?<expression>.*)$/)

      def self.call(client, data, _match)
        client.say(channel: data.channel, text: "Me desculpe <@#{data.user}>, mas não entendi o que você quis dizer poderia esclarecer?", gif: 'understand')
      end
    end
  end
end

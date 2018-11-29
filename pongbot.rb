require 'slack-ruby-bot'
class ViniBot < SlackRubyBot::Bot
  SlackRubyBot::Client.logger.level = Logger::WARN
  command 'Oi','Olá','Opa' do |client, data, match|
    client.say(text: 'Oi,como posso ajudá-lo?' + data.user, channel: data.channel)
  end

  scan 'comercial' do |client, data, match|
    client.say(text: 'money' + data.user, channel: data.channel)
  end

  command 'Oi','Olá','Opa' do |client, data, match|
    client.say(text: 'Oi,como posso ajudá-lo?' + data.user, channel: data.channel)
  end

  command 'Oi','Olá','Opa' do |client, data, match|
    client.say(text: 'Oi,como posso ajudá-lo?' + data.user, channel: data.channel)
  end

  command 'Oi','Olá','Opa' do |client, data, match|
    client.say(text: 'Oi,como posso ajudá-lo?' + data.user, channel: data.channel)
  end

 end
ViniBot.run
# ruby-slackchatbot

require 'slack-ruby-bot'
SlackRubyBot::Client.logger.level = Logger::WARN
class ViniBot < SlackRubyBot::Bot
#  SlackRubyBot.configure do |config|
#    config.allow_message_loops = false
#  end
  def self.permitted?(client, data, match)
   data.user != 'slackbot'
 end
  command 'Oi','Olá','Opa' do |client, data, match|
    client.say(text: "Oi <@#{data.user}>,como posso ajudá-lo?",
              channel: data.channel
              )
  end
  command 'Muito Obrigado','Obrigado' do |client, data, match|
    client.say(text: "Por nada,<@#{data.user}>.",
              channel: data.channel
              )
  end
  scan /comercial|contratar/i do |client, data, match|
    client.say(text:'Você pode entrar em com o Lucas do nosso time comercial pelo email lucas@cloudwalk.io ou  ligando no número 55 (11) 4780-5454.',
              channel: data.channel
              )
  end
  scan (/tempo (.*) credencia/i )do |client, data, match|
    client.say(text:" <@#{data.user}> o credenciamento tem para cada uma de suas etapas que são de responsabilidade da CloudWalk em média 48hrs . Sendo mais específico, o credenciamento ocorre da seguinte forma:
- Encaminhamento de todos os dados do merchant para o time de  análise de risco durante oŕiodo de 1 à 2 dias;
-Caso toda a documentação esteja correta o cliente recebe um email para realizar a assinatura do contrato. Para esta etapa o tempo independe da CloudWalk, sendo de total responsabilidade do merchant;
-Após a assinatura por parte do merchant, os dados são encaminhados para a adquirente para uma nova análise por um período de 1 à 2 dias. Se for assinado até às 6 da tarde geralmente retorna no mesmo dia para a CloudWalk. O cliente estará apto a transacionar no dia seguinte.
",
              channel: data.channel
              )
  end
  scan (/(inicio (.*) opera)|(come (.*) opera)/i) do |client, data, match|
    client.say(text:" <@#{data.user}> o credenciamento tem para cada uma de suas etapas que são de responsabilidade da CloudWalk em média 48hrs . Sendo mais específico, o credenciamento ocorre da seguinte forma:
- Encaminhamento de todos os dados do merchant para o time de  análise de risco durante oŕiodo de 1 à 2 dias;
-Caso toda a documentação esteja correta o cliente recebe um email para realizar a assinatura do contrato. Para esta etapa o tempo independe da CloudWalk, sendo de total responsabilidade do merchant;
-Após a assinatura por parte do merchant, os dados são encaminhados para a adquirente para uma nova análise por um período de 1 à 2 dias. Se for assinado até às 6 da tarde geralmente retorna no mesmo dia para a CloudWalk. O cliente estará apto a transacionar no dia seguinte.
",
              channel: data.channel
              )
  end
  scan 'TEF' do |client, data, match|
    client.say(text:'Ainda não temos TEF, está no roadmap para 2019.Assim que finalizarmos os processos para isso, lhe informamos.',
              channel: data.channel
              )
  end
  scan 'emulador' do |client, data, match|
    client.say(text:'Infelizmente, ele foi descontinuado. Em breve, atualizaremos essa informação em nosso site.',
              channel: data.channel
              )
  end
  scan /dispositivos(.*)homologados |terminais POS((.*)funcionam(.*)CloudWalk)*/i do |client, data, match|
    client.say(text:'Essa informação você pode consultar neste link https://docs.cloudwalk.io/pt-BR/introduction/framework',
              channel: data.channel
              )
  end

  scan /Como funciona a C(.*)W(.*)|O que (.*) oferece/i do |client, data, match|
    client.say(text:'A CW disponibiliza o software de captura para os seus terminais POS. Já o hardware e o chip são adquiridos junto a fornecedores específicos. Se desejar podemos indicar alguns, basta digitar "INDICAR CHIPS" ou "INDICAR HARDWARE" (sem áspas).',
              channel: data.channel
              )
  end
  command 'INDICAR CHIPS' do |client, data, match|
    client.say(text: "Bom vamos lá <@#{data.user}>, aqui estão algumas empresas de apns privadas que indicamos:\n-Lyra;\n-Link\n-Avatek;\n-Eseye.\nLembrando que indicamos também que opte pelos chips pós-pagos.",
              channel: data.channel
              )
  end
  command 'INDICAR HARDWARE' do |client, data, match|
    client.say(text: "Bom vamos lá <@#{data.user}>, aqui estão algumas empresas que possuem terminais habilitados para rodar o nosso sistema:\n -PAX;\n -Ingênico;\n -Verifone.",
              channel: data.channel
              )
  end
  scan /O que (.*) trans|Download (de ap conta como trans)*/i do |client, data, match|
    client.say(text:'Qualquer download, transação, basicamente tudo o que é exibido no seu histórico, em: https://manager.cloudwalk.io/transactions é considerado uma transação',
              channel: data.channel
              )
  end

  scan /nota (.*) rel(.*)se|quais (.*) novas funções|nota de lançamento/i do |client, data, match|
    client.say(text:'Nós sempre enviamos um e-mail com as notas da atualização de cada release.O framework possui um histórico de cada release, no entanto isso está disponível apenas em nosso repositório privado e em breve estará disponível na documentação, dessa forma todos os clientes poderão acompanhar as features de cada versão.',
              channel: data.channel
              )
  end
  scan /(por onde (.*) atend | Quais (.*) canais de atendimento)/i do |client, data, match|
    client.say(text:'Atendemos os clientes Paas aqui no slack e no zendesk.Clientes InfinitePay atendemos no intercom. Muito em breve passaremos a atender no celular.',
              channel: data.channel
              )
  end
  scan /precis de ajuda/i do |client, data, match|
    client.say(text:'Você já abriu um ticket? Acesse o cloudwalk manager (https://manager.cloudwalk.io/) , observe a barra superior e selecione o quarto item  - Suporte. Uma segunda opção é encaminhar um email para suporte@cloudwalk.io .',
              channel: data.channel
              )
  end
  scan /já abr (.*) ticket/i do |client, data, match|
    client.say(text:'Certo. Nosso equipe de suporte está analisando o caso e assim que obtiverem um parecer lhe informamos. ',
              channel: data.channel
              )
  end
  scan /Como abro (.*) ticket/i do |client, data, match|
    client.say(text:'Acesse o cloudwalk manager (https://manager.cloudwalk.io/) , observe a barra superior e selecione o quarto item  - Suporte. Uma segunda opção é encaminhar um email para suporte@cloudwalk.io .',
                channel: data.channel
              )
  end
  #English
  

 end
ViniBot.run
# ruby-slackchatbot

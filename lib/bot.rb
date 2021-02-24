
require 'telegram/bot'

TOKEN = '1575355875:AAHRHeb4TcUD4Zqifw-nP6hSDPxcysinNJ4'

ANSWERS = [
  # positive
  "Undoubtedly!",
  "This is obvious!",
  "No doubt!",
  "Definitely yes!",
  "You can be sure!",

  # hesitantly positive
  "I think so",
  "Most likely",
  "Good prospects",
  "According to signs - Yes",
  "Yes",

  # neutral
  "Until it's clear, try again",
  "Ask later",
  "Better not tell you",
  "Cannot predict now",
  "Concentrate and ask again",

  # negative
  "Do not even think!",
  "My answer is - no!",
  "According to me - no!",
  "This is doubtful!",
  "Not good prospects"
]

class Bot
  def initilize
    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(
            chat_id: message.chat.id,
            text: "Hello #{message.from.first_name}. I am Magic Ball. Activate /start to see. I can predict your future conditions. Ask me anything, dude! For example, |What will be the weather like tommorrow?|"
          )
        when '/stop'
          bot.api.send_message(
            chat_id: message.chat.id,
            text: "I see #{message.from.last_name} will come back later. Otherwise you will be bald when you wake up tomorrow morning"
          )
        else
          bot.api.send_message(
            chat_id: message.chat.id,
            text: ANSWERS.sample
          )
        end
      end
    end
  end
end

require 'discordrb'

bot = Discordrb::Bot.new token: "YOUR_TOKEN"

puts "This bot's invite URL is #{bot.invite_url}."

# Trả lời khi nhận được tin nhắn Hello! từ user
bot.message(content: 'Hello!') do |event|
  event.respond 'Chào bạn, mình đứng đây từ chiều.'
end

# Trả về thời gian hiện tại
bot.message(content: 'Time!') do |event|
  event.respond Time.now.strftime("%k:%M")
end

bot.run

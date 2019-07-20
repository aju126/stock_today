require "facebook/messenger"
include Facebook::Messenger
p "Access token is #{ENV["ACCESS_TOKEN"]}"
#Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])
Bot.on :message do |message|
  Bot.deliver({
                  recipient: message.sender,
                  message: {
                      text: message.text
                  }
              }, access_token: ENV["ACCESS_TOKEN"])
end
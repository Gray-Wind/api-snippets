require 'twilio-ruby'

# Get your Account SID and Auth Token from twilio.com/console
account_sid = 'ACCOUNT_SID'
auth_token = 'AUTH_TOKEN'
service_sid = 'SERVICE_SID'
@client = Twilio::REST::Client.new(account_sid, auth_token)

# Create the channel
service = @client.chat.v2.services(service_sid)
channel = service.channels.create(unique_name: "My new channel")
puts "Channel #{channel.sid} (\"#{channel.unique_name}\") created!"

# Created with create_new_gem by Matthias Lee

require_relative "lib/discord_webhooks.rb"

Gem::Specification.new do |discord_webhooks|
  discord_webhooks.name        = 'discord_webhooks'
  discord_webhooks.version     = DiscordWebHooks.version
  discord_webhooks.summary     = "Discord webhooks interface for ruby"
  discord_webhooks.description = "Gem that allows for easy interface with Discord's webhooks to send messages to server channels"
  discord_webhooks.authors     = ["Matthias Lee"]
  discord_webhooks.email       = 'matthias@matthiasclee.com'
  discord_webhooks.files       = DiscordWebHooks.file_paths + DiscordWebHooks.executables.map{|i|"bin/#{i}"}
  discord_webhooks.executables = DiscordWebHooks.executables
  discord_webhooks.require_paths = ['lib']
  discord_webhooks.add_runtime_dependency 'net-http', '>=0.1.1'
discord_webhooks.add_runtime_dependency 'json', '>=2.5.1'
discord_webhooks.add_runtime_dependency 'uri', '>=0.10.1'
  discord_webhooks.homepage = 'https://github.com/Matthiasclee/discordwebhooks'
  discord_webhooks.license = 'CC-BY-NC-SA-4.0'
end

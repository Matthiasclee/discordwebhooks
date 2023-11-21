module DiscordWebHooks
  @@files = [] # All gem files
  @@exe = [] # All executables

  def self.version
    "0.0.1"
  end

  def self.executables
    @@exe
  end

  def self.file_paths(relative:false)
    x = @@files.map do |f|
      "#{"lib/" unless relative}discord_webhooks/#{f}"
    end

    if relative
      return x
    else
      return x + ['lib/discord_webhooks.rb']
    end
  end
end

# Additional Requires
require 'json'
require 'net/http'

DiscordWebHooks.file_paths(relative:true).each do |f|
  require_relative f
end


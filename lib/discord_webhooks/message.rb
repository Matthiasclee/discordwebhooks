module DiscordWebHooks
  class Message
    def initialize(text:,embeds:[])
      @text = text
      @message = {
        content: text,
        embeds: embeds.map{|e|e.to_h}
      }
      @json = @message.to_json
    end

    def send(webhook)
      webhook_url = URI.parse(webhook)

      request = Net::HTTP::Post.new(webhook_url.path, {'Content-Type' => 'application/json'})

      request.body = @json

      response = Net::HTTP.start(webhook_url.host, webhook_url.port, use_ssl: true) do |http|
        http.request(request)
      end
    end
  end
end

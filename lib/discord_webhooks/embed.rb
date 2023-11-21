module DiscordWebHooks
  class Embed
    def initialize(title:"",description:"",color:000000,author:{},fields:[],footer:"",timestamp:"")
      @title = title
      @description = description
      @color = color
      @author = author
      @fields = fields
      @footer = footer
      @timestamp = timestamp

      @hash = {
        title: @title,
        description: @description,
        color: @color,
        author: @author,
        fields: @fields,
        footer: @footer,
        timestamp: @timestamp
      }
    end

    def to_h
      @hash
    end
  end
end

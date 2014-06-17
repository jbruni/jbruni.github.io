# {% youtube id %}

module Jekyll

  class YouTubeTag < Liquid::Tag
    @id = nil

    def initialize(tagName, markup, tokens)
      args = markup.split(' ')
      @id = args[0]
      super
    end

    def render(context)
      if @id
        "<iframe id=\"ytplayer\" type=\"text/html\" src=\"https://www.youtube.com/embed/#{@id}\" frameborder=\"0\" allowfullscreen></iframe>"
      else
        "Error processing input, expected syntax: # {% youtube id %}"
      end
    end
  end
end

Liquid::Template.register_tag('youtube', Jekyll::YouTubeTag)

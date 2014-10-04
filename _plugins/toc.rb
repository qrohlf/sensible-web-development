module Jekyll
  class TocTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
    	toc = []
      @page = context.environments.first["page"]
      current_chapter = @page['relative_path'].split('/')[1] unless @page['relative_path'].nil?
      current_chapter = '-1' unless current_chapter =~ /^\d+$/ #default to chapter 0
      site = context.registers[:site]
      @baseurl = site.config['baseurl']

      site.config['chapter_groups'].each do |i, c|
      	toc << list_group_item(c[0])
      	if i == current_chapter
	      	c.drop(1).each do |section|
	      		toc << list_group_item(section, ['section'])
	      	end
        end
      end
      "<div id='toc' class='list-group toc collapse'> #{toc.join('')} </div>"
    end

    def list_group_item(section, classes=[])
    	subtitle = section.data['subtitle']
    	index = section.data['index']
      unless index.nil?
        label = "#{index} &middot; #{subtitle}"
      else
        label = subtitle
      end
    	classes << 'list-group-item'
    	classes << 'active' if @page['url'] == section.url
    	"<a class='#{classes.join(' ')}' href='#{@baseurl}#{section.url}'>#{label}</a>"
    end
  end
end

Liquid::Template.register_tag('toc', Jekyll::TocTag)

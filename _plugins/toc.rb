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
      current_chapter = '0' unless current_chapter =~ /^\d+$/ #default to chapter 0
      site = context.registers[:site]
      @baseurl = site.config['baseurl']
      chapters = site.collections['chapters'].docs

      chapter_groups = site.collections["chapters"].docs.group_by do |section|
      	section.relative_path.split('/')[1] # group by chapter number
      end

      chapter_groups.each do |i, c|
      	toc << list_group_item(c[0])
      	if i == current_chapter 
      		toc << "<div id='toc-group-#{i}'>"
	      	c.drop(1).each do |section|
	      		toc << list_group_item(section)
	      	end
	      	toc << "</div>"
	      end
      end
      "<div id='toc' class='list-group toc collapse'> #{toc.join('')} </div>"
    end

    def list_group_item(section)
    	subtitle = section.data['subtitle']
    	index = section.data['index']
      unless index.nil? 
        label = "#{index} &middot; #{subtitle}"
      else
        label = subtitle
      end
    	classes = ['list-group-item']
    	classes << 'active' if @page['url'] == section.url
    	"<a class='#{classes.join(' ')}' href='#{@baseurl}#{section.url}'>#{label}</a>"
    end
  end
end

Liquid::Template.register_tag('toc', Jekyll::TocTag)
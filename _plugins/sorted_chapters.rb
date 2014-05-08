module Next
  class Generator < Jekyll::Generator
    def generate(site)
    	# puts site.collections["chapters"].docs.class
      chapter_groups = site.collections["chapters"].docs.group_by do |section|
      	section.relative_path.split('/')[1] # group by chapter number
      end
      chapter_groups_sorted = Hash[chapter_groups.sort_by{|i, c| i.to_i}] # sort the chapters
      chapter_groups_sorted.each do |k, v|
      	v.sort_by!{|i, c| i.to_i} if v.class == 'Array' # sort the sections
      end
      # site.config['chapter_groups'] = chapter_groups
      site.config['sorted_chapters'] = chapter_groups_sorted.values.flatten
    end
  end
end
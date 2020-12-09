class Article < ApplicationRecord
	validates :title, presence: true,
                    length: { minimum: 5 }
     has_rich_text :text

    def self.search(search)
    	if search
    		where(["title LIKE ?","%#{search}%"])
    	else
    		all
    	end
    end
end

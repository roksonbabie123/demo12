class Micropost < ActiveRecord::Base
	belongs_to :table_user
	validates :content, :length => { :maximum => 5 }
end

class TableUser < ActiveRecord::Base
	has_many :microposts
	validates :name, :length => { :maximum => 6}
end

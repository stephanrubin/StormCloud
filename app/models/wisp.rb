class Wisp < ActiveRecord::Base
	attr_accessible :content, :user_id
	validates :content, :length => { :maximum => 10 }
end

class Group < ActiveRecord::Base


	has_many :posts
	validates :title, :presence => true
	belongs_to :owner, :class_name => "User", :foreign_key => :user_id

	has_many :group_users
	has_many :participated_groups, :through => :group_users, :source => :group


	def editable_by?(user)
		user && user == owner
	end
end

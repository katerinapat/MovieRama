class Movie < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :title, :description
	acts_as_votable
end

class Plan < ActiveRecord::Base
    has_many :users
    has_and_belongs_to_many :videos
end
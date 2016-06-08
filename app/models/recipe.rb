class Recipe < ActiveRecord::Base
    validates :name, presence: true
    validates :summary, presence:true
end


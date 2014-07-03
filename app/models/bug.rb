class Bug < ActiveRecord::Base
	#validates (:description, presence: true)
	validates :description, presence: true
	validates :application_name, presence: true
end

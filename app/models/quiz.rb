class Quiz < ActiveRecord::Base
	belongs_to :learns
	has_many :questions, :dependent => :destroy
	accepts_nested_attributes_for :questions, :allow_destroy => true
end

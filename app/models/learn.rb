class Learn < ActiveRecord::Base
	has_many :lectures, dependent: :destroy
	has_one :quiz, dependent: :destroy
end

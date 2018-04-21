class Patient < ActiveRecord::Base
has_many :checkups
has_many :requests
has_and_belongs_to_many :doctors
end

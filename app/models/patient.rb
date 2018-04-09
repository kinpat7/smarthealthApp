class Patient < ActiveRecord::Base
has_many :checkups
end

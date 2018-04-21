class Request < ApplicationRecord
  belongs_to :patient
  belongs_to :hospital
  belongs_to :doctor
end

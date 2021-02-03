class Calculation < ApplicationRecord
  validates :principal, presence: { message: "Must include principal" }
  validates :rate, presence: { message: "Must include rate" }
  validates :years, presence: { message: "Must include years" }
end

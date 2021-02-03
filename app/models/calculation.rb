class Calculation < ApplicationRecord
  validates :principal, presence: { message: "Must include principal" }
  validates :interest, presence: { message: "Must include interest" }
  validates :years, presence: { message: "Must include years" }
end

class Train < ApplicationRecord
  belongs_to :train_opeartor

  has_many :train_lines
  has_many :lines, through: :train_lines
end

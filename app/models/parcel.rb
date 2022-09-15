class Parcel < ApplicationRecord
  belongs_to :parcel_owner
  has_one :hire
  has_one :train_opeartor, through: :hire
end

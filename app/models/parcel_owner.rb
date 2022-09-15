class ParcelOwner < User
  has_many :parcels, dependent: :destroy
end

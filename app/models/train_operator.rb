class TrainOperator < User
  has_one :train
  has_many :hires
  has_many :parcels, through: :hires
end

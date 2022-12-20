class TreasureSerializer < ActiveModel::Serializer
  attributes :id, :contents
  
  has_one :pirate
  has_one :island
end

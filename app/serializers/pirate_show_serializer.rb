class PirateShowSerializer < ActiveModel::Serializer
  attributes :id, :name, :age

  has_many :islands
end

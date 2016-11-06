class SchemeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :payout_limit, :excess, :premium
end

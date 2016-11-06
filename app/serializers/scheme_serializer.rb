class SchemeSerializer < ActiveModel::Serializer
  type :schemes
  attributes :id, :name, :description, :payout_limit, :excess, :premium
end

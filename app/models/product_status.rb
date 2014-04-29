class ProductStatus < ActiveRecord::Base
  attr_accessible :desc, :name
  has_many :products
  has_associated_audits
end

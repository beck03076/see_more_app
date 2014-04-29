class Seller < ActiveRecord::Base
  attr_accessible :address, :assigned_to, :city, :country, :desc, :name, :owner_name, :website
end

class Product < ActiveRecord::Base

  notifiably_audited alert_for: [[[:color,:score],"Critical Details","Color and score updated together"],
                                 [[:assigned_to],"Re-assigned","This Product has been reassigned to you"]]
  attr_accessible :desc, :name, :assigned_to,:color,:score, :product_status_id,:comments_attributes
  
  belongs_to :product_status
  has_many :comments, as: :commentable
  accepts_nested_attributes_for :comments
end

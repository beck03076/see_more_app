class Comment < ActiveRecord::Base
  attr_accessible :content
  belongs_to :commentable, polymorphic: true
  notifiably_audited alert_for: [[:polymorphic,nil,:content,[:commentable_type,:commentable_id]]]
  
end

class Audit < ActiveRecord::Base
attr_accessible :action, :audited_changes, :comment, :associated, :receiver_id, :checked, :meta
end

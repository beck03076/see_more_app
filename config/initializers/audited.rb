=begin
require 'active_record'
require 'audited/auditor'
require 'audited/adapters/active_record/audit'

module Audited
  VERSION = '3.0.0'

  class << self
    attr_accessor :ignored_attributes, :current_user_method, :audit_class

    def store
      Thread.current[:audited_store] ||= {}
    end
  end

  @ignored_attributes = %w(lock_version created_at updated_at created_on updated_on)

  @current_user_method = :current_user
end

module Audited::Auditor::ClassMethods
  def default_ignored_attributes
    [self.primary_key, inheritance_column]
  end
end

::ActiveRecord::Base.send :include, Audited::Auditor

Audited.audit_class = Audited::Adapters::ActiveRecord::Audit
=end




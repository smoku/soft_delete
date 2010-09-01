require 'soft_deletable'

module SoftDelete

  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def soft_deletable
      include SoftDeletable
    end
  end
  
end

ActiveRecord::Base.send(:include, SoftDelete)
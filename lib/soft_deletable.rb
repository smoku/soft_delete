module SoftDeletable
  
  def self.included(base)
    base.instance_eval do
      default_scope where(:deleted_at => nil)
      alias_method :destroy!, :destroy
    end
  end
  
  def destroy
    if persisted?
      with_transaction_returning_status do
        _run_destroy_callbacks do
          self.class.unscoped.update_all({:deleted_at => Time.now.utc}, {:id => self.id})
        end
      end
    end
    
    @destroyed = true
    freeze
  end
  
end
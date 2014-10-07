module ExceptionHandler
  if defined?(ActiveRecord::Base)
    class Error < ActiveRecord::Base
      #Table is called "errors"
      #Dev needs to use migration to create db

      #Associations
      belongs_to :usable, polymorphic: true
    end
  else
    class Error
      def self.create(*)
      end
    end
  end
end

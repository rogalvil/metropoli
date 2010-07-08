module Metropoli
  class Country < ActiveRecord::Base
    has_many :states
    extend StatementHelper
    
    def self.autocomplete(string)
      self.like(string)
    end
    
    def self.like(name)
      self.where(like_statement(name))
    end
    
    def to_s
      "#{self.name}"
    end
  
  end
end
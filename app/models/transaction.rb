class Transaction < ActiveRecord::Base
  serialize :audience, Array
  
  AUDIENCE = [ "Caregiver", "Dependent", "Servicemember", "Survivor", "Veteran" ]
end

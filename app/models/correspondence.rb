class Correspondence < ActiveRecord::Base
  serialize :audience, Array
  serialize :format, Array
  serialize :triggers, Array
  
  AUDIENCE = [ "Caregiver", "Dependent", "Servicemember", "Survivor", "Veteran" ]
  FORMAT = [ "Email", "Phone Call", "Physical Letter", "Postcard" ]
  TRIGGERS = [ "Separation", "30 Days Before Separation", "1 Year After Separation" ]
end

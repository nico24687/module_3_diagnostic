class Station 
  attr_reader :fuel_type_code,
              :access_days_time
              
  def initialize(attributes={})
    @fuel_type_code = attributes["fuel_type_code"]
    @access_days_time = attributes["access_days_time"]
  end
end
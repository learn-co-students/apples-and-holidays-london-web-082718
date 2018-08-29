require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    holiday_hash[:winter][holiday] << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
 holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, supply|
      
      if holiday.to_s.include? "_"
        h = holiday.to_s.split("_")
        h.map! do |mot|
          mot.capitalize
        end
        h = h.join(" ")
      else
        h = holiday.to_s.capitalize
      end
      
      
      puts "  #{h}: #{supply.join(", ")}"
     
      #holiday_hash = season.to_s, holiday.to_s.capitalize!, [supply.to_s]
    #   binding.pry
    end
   # binding.pry
  end
  # binding.pry
end

def all_holidays_with_bbq(holiday_hash)
  list = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        list << holiday
      end
    end
  end
  list.flatten
end
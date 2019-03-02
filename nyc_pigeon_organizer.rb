require "pry"

pigeon_data = {
        :color => {
          :purple => ["Theo", "Peter Jr.", "Lucky"],
          :grey => ["Theo", "Peter Jr.", "Ms. K"],
          :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
          :brown => ["Queenie", "Alex"]
        },
        :gender => {
          :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
          :female => ["Queenie", "Ms. K"]
        },
        :lives => {
          "Subway" => ["Theo", "Queenie"],
          "Central Park" => ["Alex", "Ms. K", "Lucky"],
          "Library" => ["Peter Jr."],
          "City Hall" => ["Andrew"]
        }
      }
def nyc_pigeon_organizer(data)
  
  new_hassh = {}
  all_keys = data.keys
  all_values = data.values

  
  data.each do |key, value|
    value.each do |detail, names|
      names.each do |name_index|
          new_hassh[name_index] = {}
      end
    end
  end
counter = 0
counter2 = 0

# add attributes to the new hash belelow

while all_keys.length > counter
  current_key = all_keys[counter]
  current_value = all_values[counter]

  new_hassh.each do |k, v|
    if data[current_key].values.flatten.include?(k)
      new_hassh[k][current_key] = []  
    end
    end
counter += 1
end

# add array to the attrib below


while new_hassh.keys.length > counter2

  new_hassh.each do |new_key, new_value|
    new_value.each do |k, v|
      if data[k].values[counter].any?(new_key) 
          # new_hassh[new_key][k] = 8 
      #  data[k].keys[counter].to_s
      end
    end
  end 
counter2 += 1
end
  new_hassh

end

# nyc_pigeon_organizer(pigeon_data)
def nyc_pigeon_organizer(data)
  # write your code here!
  return_hash = {}
  data.each do |spec_key , spec_values|
    color_values.each do | spec_value_key , spec_value_holders |
      spec_value_holders.each do |name|

          if return_hash[name][spec_key] == nil
              return_hash[name][spec_key] =[spec_value_key]
          else
             return_hash[name][spec_key] << spec_value_key
          end
      end
    end
  end
      puts return_hash
end

nyc_pigeon_organizer({:color => {
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
})

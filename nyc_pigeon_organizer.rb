def nyc_pigeon_organizer(data)
  put_hash = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        if !another_hash[name]
          another_hash[name] = {}
        end
        if !another_hash[name][key]
          another_hash[name][key] = []
        end
        another_hash[name][key] << new_value.to_s
      end
    end
  end
  another_hash
end

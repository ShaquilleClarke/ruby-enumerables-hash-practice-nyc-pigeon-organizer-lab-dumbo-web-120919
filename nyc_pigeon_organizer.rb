def nyc_pigeon_organizer(data)
  put_hash = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        if !put_hash[name]
          put_hash[name] = {}
        end
        if !put_hash[name][key]
          put_hash[name][key] = []
        end
        put_hash[name][key] << new_value.to_s
      end
    end
  end
  put_hash
end

module Kim
  module Hash
    def deep_merge other, bang = false
      merge_method = bang ? :merge! : :merge
      other.inject(self) do | result, item |
        key, value = item
        result.__send__ merge_method, (
          if has_key? key and result[key].is_a? Hash and value.is_a? Hash
            { key => result[key].deep_merge(value) }
          else
            { key => value }
          end 
        )   
      end 
    end 
    def deep_merge! other
      deep_merge other, true
    end 

    def deep_has_key? *keys
      has_key?(key = keys.shift) && ( keys.count < 1 || self[key].deep_has_key?(*keys))
    end

    def deep_value *keys
      keys.count <= 1 ? self[keys.first] : self[keys.shift].deep_value(*keys) rescue nil
    end
  end
end

class Hash
  include Kim::Hash
end

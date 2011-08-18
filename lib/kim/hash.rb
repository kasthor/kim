module Kim
  module Hash
    def deep_merge other, bang = false
      merge_method = bang ? :merge! : :merge
      other.inject(self) do | result, item |
        key, value = item
        self.__send__ merge_method, (
          if has_key? key and self[key].is_a? Hash and value.is_a? Hash
            { key => self[key].deep_merge(value) }
          else
            other
          end 
        )   
      end 
    end 
    def deep_merge! other
      deep_merge other, true
    end 
  end
end

class Hash
  include Kim::Hash
end

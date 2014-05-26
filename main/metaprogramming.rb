class Module
  def attr_accessor_with_history(method)
      class_eval %{
        def #{method}
          @#{method}
        end
        def #{method}=(v)
          @save ||= []
          @save << @#{method}
          @#{method} = v
        end
        def #{method}_history
         @save ||= []
         @save
        end
      }
    end
  end

class Foo
  attr_accessor_with_history :bar
end
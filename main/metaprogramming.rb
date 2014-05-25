class Module
  def attr_accessor_with_history(*method)
    method.each do |method|
      class_eval %{
        @@save = []
        def #{method}
          @#{method}
        end
        def #{method}=(v)
          @@save << @#{method}
          @#{method} = v
        end
        def #{method}_history
          @@save
        end
      }
    end
  end
end

class Foo
  attr_accessor_with_history :bar
end
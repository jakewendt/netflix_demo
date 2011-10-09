  class Valuable 

    def attributes
      processed = {}

      @attributes.each_pair do |key, value|
        processed[key] = Valuable.formatter[key].call(value)
      end

      processed      
    end

    def Valuable.attributes
      @attributes ||= []
    end 
    
    def Valuable.has_value(name, options={})
      attributes << name 

      create_setter_for(name)
      create_accessor_for(name, options[:klass], options[:default])
    end

    def Valuable.create_setter_for(name)
      define_method "#{name}=" do |value|
        @attributes[name] = value
      end
    end

    def Valuable.formatter
      @formatter ||= {}
    end

    def Valuable.create_accessor_for(name, klass, default)

      if klass == nil
        Valuable.formatter[name] = 
		lambda { |value| value || default }
      elsif klass == Integer
        Valuable.formatter[name] = 
		lambda { |value| value ? value.to_i : default }	
      else
	Valuable.formatter[name] = 
		lambda { |value| value ? klass.new(value) : default }
      end

      define_method name do
	Valuable.formatter[name].call( @attributes[name] || @attributes[name.to_s] )
      end
    end

    def Valuable.has_collection(name)
      has_value(name, :default => [] )
    end 

    def initialize(atts={})    
      @attributes = atts
    end
  end


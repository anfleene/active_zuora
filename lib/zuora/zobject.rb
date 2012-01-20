module Zuora
  class ZObject < SimpleDelegator
    def initialize(attributes={})
      super(self.class.zobject_class.new).tap do |zobject|
        attributes.each do |attr, value|
          zobject.send("#{attr}=", value)
        end
      end
    end

    def to_zobject
      __getobj__
    end

    def self.zobject_class
      return @zobject_class if @zobject_class
      klass_name = name.match(/(\w+)::(\w+)/)
      @zobject_class = "#{klass_name[1].upcase}::#{klass_name[2]}".constantize
    end

    #TODO: This sucks attributes need to be clearly defined
    def self.attribute_names
      @attribute_names ||= zobject_class.instance_variable_get("@attributes").reject{|name| name == :fieldsToNull }
    end

    def self.where(conditions={})
      zobjects = self.client.query("select #{self.attribute_names.join(", ")} from #{self.name.gsub(/Zuora::/,"")} where #{build_filter_statments(conditions)}")
      zobjects.map{|zobject| self.new zobject }
    end

    def self.build_filter_statments(filter_statments)
      filter_statments.map{|key, value|
        value = "'#{value}'" if value.kind_of?(String)
        "#{key} = #{value}"
      }.join(" and ")
    end

    def self.find(id)
      zobject = client.query("select #{attribute_names.join(", ")} from #{self.name.gsub(/Zuora::/,"")} where Id = '#{id}'").first
      self.new zobject if zobject
    end

    def self.all
      zobjects = client.query("select #{attribute_names.join(", ")} from #{self.name.gsub(/Zuora::/,"")}")
      zobjects.map{|zobject| self.new zobject }
    end

    def self.client
      @client ||= Zuora::Client.new
    end
  end
end

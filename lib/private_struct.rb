require "private_struct/version"

module PrivateStruct
  def self.new(*attributes, &block)
    struct = Struct.new(*attributes, &block)
    struct.instance_eval do
      attributes.each do |attribite|
        private attribite, "#{attribite}="
      end
    end
    struct
  end
end

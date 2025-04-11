# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

module Line
  module Bot
    module V2
      module MessagingApi
        # Change icon and display name
        class Sender
          # @!attribute [rw] name
          #   @return [String,nil] Display name. Certain words such as `LINE` may not be used.
          attr_accessor :name
          # @!attribute [rw] icon_url
          #   @return [String,nil] URL of the image to display as an icon when sending a message
          attr_accessor :icon_url

          # @param name [String,nil] Display name. Certain words such as `LINE` may not be used.
          # @param icon_url [String,nil] URL of the image to display as an icon when sending a message
          def initialize(
            name: nil,
            icon_url: nil,
            **dynamic_attributes
          )
            
            @name = name
            @icon_url = icon_url

            dynamic_attributes.each do |key, value|
              self.class.attr_accessor key

              if value.is_a?(Hash)
                struct_klass = Struct.new(*value.keys.map(&:to_sym))
                struct_values = value.map { |_k, v| v.is_a?(Hash) ? Line::Bot::V2::Utils.hash_to_struct(v) : v }
                instance_variable_set("@#{key}", struct_klass.new(*struct_values))
              else
                instance_variable_set("@#{key}", value)
              end
            end
          end

          def self.create(args) # steep:ignore
            return new(**args) # steep:ignore
          end

          # @param other [Object] Object to compare
          # @return [Boolean] true if the objects are equal, false otherwise
          def ==(other)
            return false unless self.class == other.class

            instance_variables.all? do |var|
                instance_variable_get(var) == other.instance_variable_get(var)
            end
          end

          # @return [Integer] Hash code of the object
          def hash
            [self.class, *instance_variables.map { |var| instance_variable_get(var) }].hash
          end
        end
      end
    end
  end
end

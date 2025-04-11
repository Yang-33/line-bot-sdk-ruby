# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './flex_component'

module Line
  module Bot
    module V2
      module MessagingApi
        # @see https://developers.line.biz/en/reference/messaging-api/#icon
        class FlexIcon < FlexComponent
          # @!attribute [r] type
          #   @return [String] 
          attr_reader :type
          # @!attribute [rw] url
          #   @return [String] 
          attr_accessor :url
          # @!attribute [rw] size
          #   @return [String,nil] 
          attr_accessor :size
          # @!attribute [rw] aspect_ratio
          #   @return [String,nil] 
          attr_accessor :aspect_ratio
          # @!attribute [rw] margin
          #   @return [String,nil] 
          attr_accessor :margin
          # @!attribute [rw] position
          #   @return [String,nil] ('relative'|'absolute') 
          attr_accessor :position
          # @!attribute [rw] offset_top
          #   @return [String,nil] 
          attr_accessor :offset_top
          # @!attribute [rw] offset_bottom
          #   @return [String,nil] 
          attr_accessor :offset_bottom
          # @!attribute [rw] offset_start
          #   @return [String,nil] 
          attr_accessor :offset_start
          # @!attribute [rw] offset_end
          #   @return [String,nil] 
          attr_accessor :offset_end
          # @!attribute [rw] scaling
          #   @return [Boolean,nil] 
          attr_accessor :scaling

          # @param url [String] 
          # @param size [String,nil] 
          # @param aspect_ratio [String,nil] 
          # @param margin [String,nil] 
          # @param position [String,nil] ('relative'|'absolute') 
          # @param offset_top [String,nil] 
          # @param offset_bottom [String,nil] 
          # @param offset_start [String,nil] 
          # @param offset_end [String,nil] 
          # @param scaling [Boolean,nil] 
          def initialize(
            url:,
            size: nil,
            aspect_ratio: nil,
            margin: nil,
            position: nil,
            offset_top: nil,
            offset_bottom: nil,
            offset_start: nil,
            offset_end: nil,
            scaling: nil,
            **dynamic_attributes
          )
            @type = "icon"
            
            @url = url
            @size = size
            @aspect_ratio = aspect_ratio
            @margin = margin
            @position = position
            @offset_top = offset_top
            @offset_bottom = offset_bottom
            @offset_start = offset_start
            @offset_end = offset_end
            @scaling = scaling

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

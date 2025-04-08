# LINE Messaging API(Insight)
# This document describes LINE Messaging API(Insight).
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

module Line
  module Bot
    module V2
      module Insight
        class AgeTile
          # @!attribute [rw] age
          #   @return [String,nil] ('from0to14'|'from15to19'|'from20to24'|'from25to29'|'from30to34'|'from35to39'|'from40to44'|'from45to49'|'from50'|'from50to54'|'from55to59'|'from60to64'|'from65to69'|'from70'|'unknown') users' age
          attr_accessor :age
          # @!attribute [rw] percentage
          #   @return [Float,nil] Percentage
          attr_accessor :percentage

          # @param age [String,nil] ('from0to14'|'from15to19'|'from20to24'|'from25to29'|'from30to34'|'from35to39'|'from40to44'|'from45to49'|'from50'|'from50to54'|'from55to59'|'from60to64'|'from65to69'|'from70'|'unknown') users' age
          # @param percentage [Float,nil] Percentage
          def initialize(
            age: nil,
            percentage: nil,
            **dynamic_attributes
          )
            
            @age = age
            @percentage = percentage

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
        end
      end
    end
  end
end

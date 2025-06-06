# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './demographic_filter'

module Line
  module Bot
    module V2
      module MessagingApi
        class AreaDemographicFilter < DemographicFilter
          # @!attribute [r] type
          #   @return [String,nil] Type of demographic filter
          attr_reader :type
          # @!attribute [rw] one_of
          #   @return [Array['jp_01','jp_02','jp_03','jp_04','jp_05','jp_06','jp_07','jp_08','jp_09','jp_10','jp_11','jp_12','jp_13','jp_14','jp_15','jp_16','jp_17','jp_18','jp_19','jp_20','jp_21','jp_22','jp_23','jp_24','jp_25','jp_26','jp_27','jp_28','jp_29','jp_30','jp_31','jp_32','jp_33','jp_34','jp_35','jp_36','jp_37','jp_38','jp_39','jp_40','jp_41','jp_42','jp_43','jp_44','jp_45','jp_46','jp_47','tw_01','tw_02','tw_03','tw_04','tw_05','tw_06','tw_07','tw_08','tw_09','tw_10','tw_11','tw_12','tw_13','tw_14','tw_15','tw_16','tw_17','tw_18','tw_19','tw_20','tw_21','tw_22','th_01','th_02','th_03','th_04','th_05','th_06','th_07','th_08','id_01','id_02','id_03','id_04','id_05','id_06','id_07','id_08','id_09','id_10','id_11','id_12']] 
          attr_accessor :one_of

          # @param one_of [Array['jp_01','jp_02','jp_03','jp_04','jp_05','jp_06','jp_07','jp_08','jp_09','jp_10','jp_11','jp_12','jp_13','jp_14','jp_15','jp_16','jp_17','jp_18','jp_19','jp_20','jp_21','jp_22','jp_23','jp_24','jp_25','jp_26','jp_27','jp_28','jp_29','jp_30','jp_31','jp_32','jp_33','jp_34','jp_35','jp_36','jp_37','jp_38','jp_39','jp_40','jp_41','jp_42','jp_43','jp_44','jp_45','jp_46','jp_47','tw_01','tw_02','tw_03','tw_04','tw_05','tw_06','tw_07','tw_08','tw_09','tw_10','tw_11','tw_12','tw_13','tw_14','tw_15','tw_16','tw_17','tw_18','tw_19','tw_20','tw_21','tw_22','th_01','th_02','th_03','th_04','th_05','th_06','th_07','th_08','id_01','id_02','id_03','id_04','id_05','id_06','id_07','id_08','id_09','id_10','id_11','id_12'],nil] 
          def initialize(
            one_of: nil,
            **dynamic_attributes
          )
            @type = "area"
            
            @one_of = one_of

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

          # Create an instance of the class from a hash
          # @param args [Hash] Hash containing all the required attributes
          # @return [Line::Bot::V2::MessagingApi::AreaDemographicFilter] Instance of the class
          def self.create(args) # steep:ignore
            symbolized_args = Line::Bot::V2::Utils.deep_symbolize(args)
            return new(**symbolized_args) # steep:ignore
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

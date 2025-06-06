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
        # Get friend demographics
        # @see https://developers.line.biz/en/reference/messaging-api/#get-demographic
        class GetFriendsDemographicsResponse
          # @!attribute [rw] available
          #   @return [Boolean,nil] true if friend demographic information is available.
          attr_accessor :available
          # @!attribute [rw] genders
          #   @return [Array[GenderTile],nil] Percentage per gender.
          attr_accessor :genders
          # @!attribute [rw] ages
          #   @return [Array[AgeTile],nil] Percentage per age group.
          attr_accessor :ages
          # @!attribute [rw] areas
          #   @return [Array[AreaTile],nil] Percentage per area.
          attr_accessor :areas
          # @!attribute [rw] app_types
          #   @return [Array[AppTypeTile],nil] Percentage by OS.
          attr_accessor :app_types
          # @!attribute [rw] subscription_periods
          #   @return [Array[SubscriptionPeriodTile],nil] Percentage per friendship duration.
          attr_accessor :subscription_periods

          # @param available [Boolean,nil] true if friend demographic information is available.
          # @param genders [Array[GenderTile, Hash[Symbol, untyped]],nil] Percentage per gender.
          # @param ages [Array[AgeTile, Hash[Symbol, untyped]],nil] Percentage per age group.
          # @param areas [Array[AreaTile, Hash[Symbol, untyped]],nil] Percentage per area.
          # @param app_types [Array[AppTypeTile, Hash[Symbol, untyped]],nil] Percentage by OS.
          # @param subscription_periods [Array[SubscriptionPeriodTile, Hash[Symbol, untyped]],nil] Percentage per friendship duration.
          def initialize(
            available: nil,
            genders: nil,
            ages: nil,
            areas: nil,
            app_types: nil,
            subscription_periods: nil,
            **dynamic_attributes
          )
            
            @available = available
            @genders = genders&.map do |item|
              if item.is_a?(Hash)
                Line::Bot::V2::Insight::GenderTile.create(**item) # steep:ignore InsufficientKeywordArguments
              else
                item
              end
            end
            @ages = ages&.map do |item|
              if item.is_a?(Hash)
                Line::Bot::V2::Insight::AgeTile.create(**item) # steep:ignore InsufficientKeywordArguments
              else
                item
              end
            end
            @areas = areas&.map do |item|
              if item.is_a?(Hash)
                Line::Bot::V2::Insight::AreaTile.create(**item) # steep:ignore InsufficientKeywordArguments
              else
                item
              end
            end
            @app_types = app_types&.map do |item|
              if item.is_a?(Hash)
                Line::Bot::V2::Insight::AppTypeTile.create(**item) # steep:ignore InsufficientKeywordArguments
              else
                item
              end
            end
            @subscription_periods = subscription_periods&.map do |item|
              if item.is_a?(Hash)
                Line::Bot::V2::Insight::SubscriptionPeriodTile.create(**item) # steep:ignore InsufficientKeywordArguments
              else
                item
              end
            end

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
          # @return [Line::Bot::V2::Insight::GetFriendsDemographicsResponse] Instance of the class
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

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
        # @see https://developers.line.biz/en/reference/messaging-api/#error-responses
        class ErrorResponse
          # @!attribute [rw] message
          #   @return [String] Message containing information about the error.
          attr_accessor :message
          # @!attribute [rw] details
          #   @return [Array[ErrorDetail],nil] An array of error details. If the array is empty, this property will not be included in the response.
          attr_accessor :details
          # @!attribute [rw] sent_messages
          #   @return [Array[SentMessage],nil] Array of sent messages.
          attr_accessor :sent_messages

          # @param message [String] Message containing information about the error.
          # @param details [Array[ErrorDetail],nil] An array of error details. If the array is empty, this property will not be included in the response.
          # @param sent_messages [Array[SentMessage],nil] Array of sent messages.
          def initialize(
            message:,
            details: nil,
            sent_messages: nil,
            **dynamic_attributes
          )
            
            @message = message
            @details = details&.map do |item|
              if item.is_a?(Hash)
                Line::Bot::V2::MessagingApi::ErrorDetail.create(**item) # steep:ignore InsufficientKeywordArguments
              else
                item
              end
            end
            @sent_messages = sent_messages&.map do |item|
              if item.is_a?(Hash)
                Line::Bot::V2::MessagingApi::SentMessage.create(**item) # steep:ignore InsufficientKeywordArguments
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

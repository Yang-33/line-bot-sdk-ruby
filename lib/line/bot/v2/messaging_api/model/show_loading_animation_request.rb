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
        # @see https://developers.line.biz/en/reference/messaging-api/#display-a-loading-indicator-request-body
        class ShowLoadingAnimationRequest
          # @!attribute [rw] chat_id
          #   @return [String] User ID of the target user for whom the loading animation is to be displayed.
          attr_accessor :chat_id
          # @!attribute [rw] loading_seconds
          #   @return [Integer,nil] The number of seconds to display the loading indicator. It must be a multiple of 5. The maximum value is 60 seconds. 
          attr_accessor :loading_seconds

          # @param chat_id [String] User ID of the target user for whom the loading animation is to be displayed.
          # @param loading_seconds [Integer,nil] The number of seconds to display the loading indicator. It must be a multiple of 5. The maximum value is 60 seconds. 
          def initialize(
            chat_id:,
            loading_seconds: nil,
            **dynamic_attributes
          )
            
            @chat_id = chat_id
            @loading_seconds = loading_seconds

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

# Webhook Type Definition
# Webhook event definition of the LINE Messaging API
#
# The version of the OpenAPI document: 1.0.0
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

module Line
  module Bot
    module V2
      module Webhook
        # @see https://developers.line.biz/en/reference/messaging-api/#message-event
        class MessageContent
          attr_accessor :type # Type
          attr_accessor :id # Message ID

          def initialize(
            type:,
            id:,
            **dynamic_attributes
          )
            
            @type = type
            @id = id

            dynamic_attributes.each do |key, value|
              self.class.attr_accessor key
              instance_variable_set("@#{key}", value)
            end
          end
        end
      end
    end
  end
end

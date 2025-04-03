# Webhook Type Definition
# Webhook event definition of the LINE Messaging API
#
# The version of the OpenAPI document: 1.0.0
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './source'

module Line
  module Bot
    module V2
      module Webhook
        class GroupSource < Source
          attr_reader :type # source type
          attr_accessor :group_id # Group ID of the source group chat
          attr_accessor :user_id # ID of the source user. Only included in message events. Only users of LINE for iOS and LINE for Android are included in userId.

          def initialize(
            type:,
            group_id:,
            user_id: nil,
            **dynamic_attributes
          )
            @type = "group"
            
            @group_id = group_id
            @user_id = user_id

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

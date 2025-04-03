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
        # @see https://developers.line.biz/en/reference/messaging-api/#get-profile
        class UserProfileResponse
          attr_accessor :display_name # User's display name
          attr_accessor :user_id # User ID
          attr_accessor :picture_url # Profile image URL. `https` image URL. Not included in the response if the user doesn't have a profile image.
          attr_accessor :status_message # User's status message. Not included in the response if the user doesn't have a status message.
          attr_accessor :language # User's language, as a BCP 47 language tag. Not included in the response if the user hasn't yet consented to the LINE Privacy Policy.

          def initialize(
            display_name:,
            user_id:,
            picture_url: nil,
            status_message: nil,
            language: nil,
            **dynamic_attributes
          )
            
            @display_name = display_name
            @user_id = user_id
            @picture_url = picture_url
            @status_message = status_message
            @language = language

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

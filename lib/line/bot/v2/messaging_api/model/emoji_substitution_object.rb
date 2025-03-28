# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './substitution_object'

# An object representing a emoji substitution.
# @see https://developers.line.biz/en/reference/messaging-api/#text-message-v2-emoji-object
module Line
  module Bot
    module V2
      module MessagingApi
        class EmojiSubstitutionObject < SubstitutionObject
          attr_reader :type # Type of substitution object
          attr_accessor :product_id
          attr_accessor :emoji_id

          def initialize(
            product_id:,
            emoji_id:
          )
            @type = "emoji"
            
            @product_id = product_id
            @emoji_id = emoji_id
          end
        end
      end
    end
  end
end

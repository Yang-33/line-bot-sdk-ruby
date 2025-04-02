# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './message'

module Line
  module Bot
    module V2
      module MessagingApi
        # @see https://developers.line.biz/en/reference/messaging-api/#image-message
        class ImageMessage < Message
          attr_reader :type # Type of message
          attr_accessor :quick_reply
          attr_accessor :sender
          attr_accessor :original_content_url
          attr_accessor :preview_image_url

          def initialize(
            quick_reply: nil,
            sender: nil,
            original_content_url:,
            preview_image_url:
          )
            @type = "image"
            
            @quick_reply = quick_reply
            @sender = sender
            @original_content_url = original_content_url
            @preview_image_url = preview_image_url
          end
        end
      end
    end
  end
end

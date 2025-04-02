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
        # @see https://developers.line.biz/en/reference/messaging-api/#text-message
        class TextMessage < Message
          attr_reader :type # Type of message
          attr_accessor :quick_reply
          attr_accessor :sender
          attr_accessor :text
          attr_accessor :emojis
          attr_accessor :quote_token # Quote token of the message you want to quote.

          def initialize(
            quick_reply: nil,
            sender: nil,
            text:,
            emojis: nil,
            quote_token: nil
          )
            @type = "text"
            
            @quick_reply = quick_reply
            @sender = sender
            @text = text
            @emojis = emojis
            @quote_token = quote_token
          end
        end
      end
    end
  end
end

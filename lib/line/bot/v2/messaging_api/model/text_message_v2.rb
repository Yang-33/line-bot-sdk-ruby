# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './message'

# @see https://developers.line.biz/en/reference/messaging-api/#text-message-v2
module Line
  module Bot
    module V2
      module MessagingApi
        class TextMessageV2 < Message
          attr_reader :type # Type of message
          attr_accessor :quick_reply
          attr_accessor :sender
          attr_accessor :text
          attr_accessor :substitution # A mapping that specifies substitutions for parts enclosed in {} within the `text` field.
          attr_accessor :quote_token # Quote token of the message you want to quote.

          def initialize(
            quick_reply: nil,
            sender: nil,
            text:,
            substitution: nil,
            quote_token: nil
          )
            @type = "textV2"
            
            @quick_reply = quick_reply
            @sender = sender
            @text = text
            @substitution = substitution
            @quote_token = quote_token
          end
        end
      end
    end
  end
end

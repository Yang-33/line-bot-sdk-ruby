# Webhook Type Definition
# Webhook event definition of the LINE Messaging API
#
# The version of the OpenAPI document: 1.0.0
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './mentionee'

# Mentioned target is entire group
module Line
  module Bot
    module V2
      module Webhook
        class AllMentionee < Mentionee
          attr_reader :type # Mentioned target.
          attr_accessor :index # Index position of the user mention for a character in text, with the first character being at position 0.
          attr_accessor :length # The length of the text of the mentioned user. For a mention @example, 8 is the length.

          def initialize(
            type:,
            index:,
            length:
          )
            @type = "all"
            
            @index = index
            @length = length
          end
        end
      end
    end
  end
end

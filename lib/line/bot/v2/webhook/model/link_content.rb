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
        # Content of the account link event.
        class LinkContent
          attr_accessor :result # One of the following values to indicate whether linking the account was successful or not
          attr_accessor :nonce # Specified nonce (number used once) when verifying the user ID.

          def initialize(
            result:,
            nonce:
          )
            
            @result = result
            @nonce = nonce
          end
        end
      end
    end
  end
end

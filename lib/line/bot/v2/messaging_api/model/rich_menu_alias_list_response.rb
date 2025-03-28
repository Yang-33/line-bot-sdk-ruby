# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

# @see https://developers.line.biz/en/reference/messaging-api/#get-rich-menu-alias-list
module Line
  module Bot
    module V2
      module MessagingApi
        class RichMenuAliasListResponse
          attr_accessor :aliases # Rich menu aliases.

          def initialize(
            aliases:
          )
            
            @aliases = aliases
          end
        end
      end
    end
  end
end

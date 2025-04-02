# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './rich_menu_batch_operation'

module Line
  module Bot
    module V2
      module MessagingApi
        # Unlink the rich menu for all users linked to the rich menu specified in the `from` property.
        class RichMenuBatchUnlinkOperation < RichMenuBatchOperation
          attr_reader :type # The type of operation to the rich menu linked to the user. One of link, unlink, or unlinkAll.
          attr_accessor :from

          def initialize(
            from:
          )
            @type = "unlink"
            
            @from = from
          end
        end
      end
    end
  end
end

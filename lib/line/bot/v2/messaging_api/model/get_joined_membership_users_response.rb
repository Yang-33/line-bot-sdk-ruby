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
        # List of users who have joined the membership
        # @see https://developers.line.biz/en/reference/messaging-api/#get-membership-user-ids
        class GetJoinedMembershipUsersResponse
          attr_accessor :user_ids # A list of user IDs who joined the membership. Users who have not agreed to the bot user agreement, are not following the bot, or are not active will be excluded. If there are no users in the membership, an empty list will be returned. 
          attr_accessor :_next # A continuation token to get next remaining membership user IDs. Returned only when there are remaining user IDs that weren't returned in the userIds property in the previous request. The continuation token expires in 24 hours (86,400 seconds).  

          def initialize(
            user_ids:,
            _next: nil,
            **dynamic_attributes
          )
            
            @user_ids = user_ids
            @_next = _next

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

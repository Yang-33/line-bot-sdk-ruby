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
        # @see https://developers.line.biz/en/reference/messaging-api/#get-follower-ids
        class GetFollowersResponse
          # @!attribute [rw] user_ids
          #   @return [Array[String]] An array of strings indicating user IDs of users that have added the LINE Official Account as a friend. Only users of LINE for iOS and LINE for Android are included in `userIds`. 
          attr_accessor :user_ids
          # @!attribute [rw] _next
          #   @return [String,nil] A continuation token to get the next array of user IDs. Returned only when there are remaining user IDs that weren't returned in `userIds` in the original request. The number of user IDs in the `userIds` element doesn't have to reach the maximum number specified by `limit` for the `next` property to be included in the response.  
          attr_accessor :_next

          # @param user_ids [Array[String]] An array of strings indicating user IDs of users that have added the LINE Official Account as a friend. Only users of LINE for iOS and LINE for Android are included in `userIds`. 
          # @param _next [String,nil] A continuation token to get the next array of user IDs. Returned only when there are remaining user IDs that weren't returned in `userIds` in the original request. The number of user IDs in the `userIds` element doesn't have to reach the maximum number specified by `limit` for the `next` property to be included in the response.  
          def initialize(
            user_ids:,
            _next: nil,
            **dynamic_attributes
          )
            
            @user_ids = user_ids.map do |item|
              if item.is_a?(Hash)
                Line::Bot::V2::MessagingApi::string.create(**item) # steep:ignore InsufficientKeywordArguments
              else
                item
              end
            end
            @_next = _next

            dynamic_attributes.each do |key, value|
              self.class.attr_accessor key

              if value.is_a?(Hash)
                struct_klass = Struct.new(*value.keys.map(&:to_sym))
                struct_values = value.map { |_k, v| v.is_a?(Hash) ? Line::Bot::V2::Utils.hash_to_struct(v) : v }
                instance_variable_set("@#{key}", struct_klass.new(*struct_values))
              else
                instance_variable_set("@#{key}", value)
              end
            end
          end

          def self.create(args) # steep:ignore
            return new(**args) # steep:ignore
          end
        end
      end
    end
  end
end

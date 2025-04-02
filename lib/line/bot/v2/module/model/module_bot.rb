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
      module Module
        # basic information about the bot.
        # @see https://developers.line.biz/en/reference/partner-docs/#get-multiple-bot-info-api
        class ModuleBot
          attr_accessor :user_id # Bot's user ID
          attr_accessor :basic_id # Bot's basic ID
          attr_accessor :premium_id # Bot's premium ID. Not included in the response if the premium ID isn't set.
          attr_accessor :display_name # Bot's display name
          attr_accessor :picture_url # Profile image URL. Image URL starting with `https://`. Not included in the response if the bot doesn't have a profile image.

          def initialize(
            user_id:,
            basic_id:,
            premium_id: nil,
            display_name:,
            picture_url: nil
          )
            
            @user_id = user_id
            @basic_id = basic_id
            @premium_id = premium_id
            @display_name = display_name
            @picture_url = picture_url
          end
        end
      end
    end
  end
end

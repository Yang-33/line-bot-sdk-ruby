# Channel Access Token API
# This document describes Channel Access Token API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

module Line
  module Bot
    module V2
      module ChannelAccessToken
        # Issued channel access token
        # @see https://developers.line.biz/en/reference/messaging-api/#issue-channel-access-token-v2-1
        class IssueChannelAccessTokenResponse
          attr_accessor :access_token # Channel access token. 
          attr_accessor :expires_in # Amount of time in seconds from issue to expiration of the channel access token
          attr_accessor :token_type # A token type.
          attr_accessor :key_id # Unique key ID for identifying the channel access token.

          def initialize(
            access_token:,
            expires_in:,
            token_type: 'Bearer',
            key_id:,
            **dynamic_attributes
          )
            
            @access_token = access_token
            @expires_in = expires_in
            @token_type = token_type
            @key_id = key_id

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

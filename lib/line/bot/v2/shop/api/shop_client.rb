# Mission Stickers API
# This document describes LINE Mission Stickers API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require 'json'

require 'line/bot/v2/http_client'
require 'line/bot/v2/reserved_words'
require 'line/bot/v2/utils'

module Line
  module Bot
    module V2
      module Shop
        class ApiClient
          # Initializes a new {Line::Bot::V2::Shop::ApiClient} instance.
          #
          # @param base_url [String] The base URL for requests (optional).
          #   Defaults to 'https://api.line.me' if none is provided.
          #   You can override this for testing or to use a mock server.
          # @param channel_access_token [String] The channel access token for authorization.
          # @param http_options [Hash] HTTP options (same as Net::HTTP options).
          #   See: https://docs.ruby-lang.org/en/3.4/Net/HTTP.html to understand the options.
          #
          # @example
          #   @client ||= Line::Bot::V2::Shop::ApiClient.new(
          #     channel_access_token: "YOUR_CHANNEL_ACCESS_TOKEN",
          #     http_options: {
          #       open_timeout: 5,
          #       read_timeout: 5,
          #     }
          #   )
          def initialize(base_url: nil, channel_access_token:, http_options: {})
            @http_client = HttpClient.new(
              base_url: base_url || 'https://api.line.me',
              http_headers: {
                Authorization: "Bearer #{channel_access_token}"
              },
              http_options: http_options
            )
          end

          # Sends a mission sticker.
          # This requests to <code>POST https://api.line.me/shop/v3/mission</code>
          # This returns an array containing response, HTTP status code, and header in order. Please specify all header keys in lowercase.
          #
          # @param mission_sticker_request [MissionStickerRequest] 
          # @see https://developers.line.biz/en/reference/partner-docs/#send-mission-stickers-v3
          # @return [Array((String|nil), Integer, Hash{String => String})] when HTTP status code is 200
          # @return [Array((String|nil), Integer, Hash{String => String})] when other HTTP status code is returned. String is HTTP response body itself.
          def mission_sticker_v3_with_http_info( # steep:ignore MethodBodyTypeMismatch 
            mission_sticker_request:
          )
            path = "/shop/v3/mission"

            response = @http_client.post(
              path: path,
              body_params: mission_sticker_request,
            )

            case response.code.to_i
            when 200
              [response.body, 200, response.each_header.to_h]
            else
              [response.body, response.code.to_i, response.each_header.to_h]
            end
          end

          # Sends a mission sticker.
          # This requests to <code>POST https://api.line.me/shop/v3/mission</code>
          # When you want to get HTTP status code or response headers, use {#mission_sticker_v3_with_http_info} instead of this.
          #
          # @param mission_sticker_request [MissionStickerRequest] 
          # @see https://developers.line.biz/en/reference/partner-docs/#send-mission-stickers-v3
          # @return [String, nil] when HTTP status code is 200
          # @return [String, nil] when other HTTP status code is returned. This String is HTTP response body itself.
          def mission_sticker_v3(
            mission_sticker_request:
          )
            response_body, _status_code, _headers = mission_sticker_v3_with_http_info(
              mission_sticker_request: mission_sticker_request
            )

            response_body
          end
        end
      end
    end
  end
end

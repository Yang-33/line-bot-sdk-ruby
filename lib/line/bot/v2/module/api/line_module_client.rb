# LINE Messaging API
# This document describes LINE Messaging API.
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
      module Module
        class ApiClient
          # Initializes a new {Line::Bot::V2::Module::ApiClient} instance.
          #
          # @param base_url [String] The base URL for requests (optional).
          #   Defaults to 'https://api.line.me' if none is provided.
          #   You can override this for testing or to use a mock server.
          # @param channel_access_token [String] The channel access token for authorization.
          # @param http_options [Hash] HTTP options (same as Net::HTTP options).
          #   See: https://docs.ruby-lang.org/en/3.4/Net/HTTP.html to understand the options.
          #
          # @example
          #   @client ||= Line::Bot::V2::Module::ApiClient.new(
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

          # If the Standby Channel wants to take the initiative (Chat Control), it calls the Acquire Control API. The channel that was previously an Active Channel will automatically switch to a Standby Channel. 
          # This requests to <code>POST https://api.line.me/v2/bot/chat/{chatId}/control/acquire</code>
          # This returns an array containing response, HTTP status code, and header in order. Please specify all header keys in lowercase.
          #
          # @param chat_id [String] The `userId`, `roomId`, or `groupId`
          # @param acquire_chat_control_request [AcquireChatControlRequest, nil] 
          # @see https://developers.line.biz/en/reference/partner-docs/#acquire-control-api
          # @return [Array((String|nil), Integer, Hash{String => String})] when HTTP status code is 200
          # @return [Array((String|nil), Integer, Hash{String => String})] when other HTTP status code is returned. String is HTTP response body itself.
          def acquire_chat_control_with_http_info( # steep:ignore MethodBodyTypeMismatch 
            chat_id:, 
            acquire_chat_control_request: nil
          )
            path = "/v2/bot/chat/{chatId}/control/acquire"
              .gsub(/{chatId}/, chat_id.to_s)

            response = @http_client.post(
              path: path,
              body_params: acquire_chat_control_request,
            )

            case response.code.to_i
            when 200
              [response.body, 200, response.each_header.to_h]
            else
              [response.body, response.code.to_i, response.each_header.to_h]
            end
          end

          # If the Standby Channel wants to take the initiative (Chat Control), it calls the Acquire Control API. The channel that was previously an Active Channel will automatically switch to a Standby Channel. 
          # This requests to <code>POST https://api.line.me/v2/bot/chat/{chatId}/control/acquire</code>
          # When you want to get HTTP status code or response headers, use {#acquire_chat_control_with_http_info} instead of this.
          #
          # @param chat_id [String] The `userId`, `roomId`, or `groupId`
          # @param acquire_chat_control_request [AcquireChatControlRequest, nil] 
          # @see https://developers.line.biz/en/reference/partner-docs/#acquire-control-api
          # @return [String, nil] when HTTP status code is 200
          # @return [String, nil] when other HTTP status code is returned. This String is HTTP response body itself.
          def acquire_chat_control(
            chat_id:,
            acquire_chat_control_request: nil
          )
            response_body, _status_code, _headers = acquire_chat_control_with_http_info(
              chat_id: chat_id,
              acquire_chat_control_request: acquire_chat_control_request
            )

            response_body
          end

          # The module channel admin calls the Detach API to detach the module channel from a LINE Official Account.
          # This requests to <code>POST https://api.line.me/v2/bot/channel/detach</code>
          # This returns an array containing response, HTTP status code, and header in order. Please specify all header keys in lowercase.
          #
          # @param detach_module_request [DetachModuleRequest, nil] 
          # @see https://developers.line.biz/en/reference/partner-docs/#unlink-detach-module-channel-by-operation-mc-admin
          # @return [Array((String|nil), Integer, Hash{String => String})] when HTTP status code is 200
          # @return [Array((String|nil), Integer, Hash{String => String})] when other HTTP status code is returned. String is HTTP response body itself.
          def detach_module_with_http_info( # steep:ignore MethodBodyTypeMismatch 
            detach_module_request: nil
          )
            path = "/v2/bot/channel/detach"

            response = @http_client.post(
              path: path,
              body_params: detach_module_request,
            )

            case response.code.to_i
            when 200
              [response.body, 200, response.each_header.to_h]
            else
              [response.body, response.code.to_i, response.each_header.to_h]
            end
          end

          # The module channel admin calls the Detach API to detach the module channel from a LINE Official Account.
          # This requests to <code>POST https://api.line.me/v2/bot/channel/detach</code>
          # When you want to get HTTP status code or response headers, use {#detach_module_with_http_info} instead of this.
          #
          # @param detach_module_request [DetachModuleRequest, nil] 
          # @see https://developers.line.biz/en/reference/partner-docs/#unlink-detach-module-channel-by-operation-mc-admin
          # @return [String, nil] when HTTP status code is 200
          # @return [String, nil] when other HTTP status code is returned. This String is HTTP response body itself.
          def detach_module(
            detach_module_request: nil
          )
            response_body, _status_code, _headers = detach_module_with_http_info(
              detach_module_request: detach_module_request
            )

            response_body
          end

          # Gets a list of basic information about the bots of multiple LINE Official Accounts that have attached module channels.
          # This requests to <code>GET https://api.line.me/v2/bot/list</code>
          # This returns an array containing response, HTTP status code, and header in order. Please specify all header keys in lowercase.
          #
          # @param start [String, nil] Value of the continuation token found in the next property of the JSON object returned in the response. If you can't get all basic information about the bots in one request, include this parameter to get the remaining array. 
          # @param limit [Integer, nil] Specify the maximum number of bots that you get basic information from. The default value is 100. Max value: 100 
          # @see https://developers.line.biz/en/reference/partner-docs/#get-multiple-bot-info-api
          # @return [Array(Line::Bot::V2::Module::GetModulesResponse, Integer, Hash{String => String})] when HTTP status code is 200
          # @return [Array((String|nil), Integer, Hash{String => String})] when other HTTP status code is returned. String is HTTP response body itself.
          def get_modules_with_http_info( # steep:ignore MethodBodyTypeMismatch 
            start: nil, 
            limit: nil
          )
            path = "/v2/bot/list"
            query_params = {
              "start": start,
              "limit": limit
            }.compact

            response = @http_client.get(
              path: path,
              query_params: query_params,
            )

            case response.code.to_i
            when 200
              json = Line::Bot::V2::Utils.deep_underscore(JSON.parse(response.body))
              json.transform_keys! do |key|
                Line::Bot::V2::RESERVED_WORDS.include?(key) ? "_#{key}".to_sym : key
              end
              response_body = Line::Bot::V2::Module::GetModulesResponse.create(json) # steep:ignore InsufficientKeywordArguments
              [response_body, 200, response.each_header.to_h]
            else
              [response.body, response.code.to_i, response.each_header.to_h]
            end
          end

          # Gets a list of basic information about the bots of multiple LINE Official Accounts that have attached module channels.
          # This requests to <code>GET https://api.line.me/v2/bot/list</code>
          # When you want to get HTTP status code or response headers, use {#get_modules_with_http_info} instead of this.
          #
          # @param start [String, nil] Value of the continuation token found in the next property of the JSON object returned in the response. If you can't get all basic information about the bots in one request, include this parameter to get the remaining array. 
          # @param limit [Integer, nil] Specify the maximum number of bots that you get basic information from. The default value is 100. Max value: 100 
          # @see https://developers.line.biz/en/reference/partner-docs/#get-multiple-bot-info-api
          # @return [Line::Bot::V2::Module::GetModulesResponse] when HTTP status code is 200
          # @return [String, nil] when other HTTP status code is returned. This String is HTTP response body itself.
          def get_modules(
            start: nil,
            limit: nil
          )
            response_body, _status_code, _headers = get_modules_with_http_info(
              start: start,
              limit: limit
            )

            response_body
          end

          # To return the initiative (Chat Control) of Active Channel to Primary Channel, call the Release Control API. 
          # This requests to <code>POST https://api.line.me/v2/bot/chat/{chatId}/control/release</code>
          # This returns an array containing response, HTTP status code, and header in order. Please specify all header keys in lowercase.
          #
          # @param chat_id [String] The `userId`, `roomId`, or `groupId`
          # @see https://developers.line.biz/en/reference/partner-docs/#release-control-api
          # @return [Array((String|nil), Integer, Hash{String => String})] when HTTP status code is 200
          # @return [Array((String|nil), Integer, Hash{String => String})] when other HTTP status code is returned. String is HTTP response body itself.
          def release_chat_control_with_http_info( # steep:ignore MethodBodyTypeMismatch 
            chat_id:
          )
            path = "/v2/bot/chat/{chatId}/control/release"
              .gsub(/{chatId}/, chat_id.to_s)

            response = @http_client.post(
              path: path,
            )

            case response.code.to_i
            when 200
              [response.body, 200, response.each_header.to_h]
            else
              [response.body, response.code.to_i, response.each_header.to_h]
            end
          end

          # To return the initiative (Chat Control) of Active Channel to Primary Channel, call the Release Control API. 
          # This requests to <code>POST https://api.line.me/v2/bot/chat/{chatId}/control/release</code>
          # When you want to get HTTP status code or response headers, use {#release_chat_control_with_http_info} instead of this.
          #
          # @param chat_id [String] The `userId`, `roomId`, or `groupId`
          # @see https://developers.line.biz/en/reference/partner-docs/#release-control-api
          # @return [String, nil] when HTTP status code is 200
          # @return [String, nil] when other HTTP status code is returned. This String is HTTP response body itself.
          def release_chat_control(
            chat_id:
          )
            response_body, _status_code, _headers = release_chat_control_with_http_info(
              chat_id: chat_id
            )

            response_body
          end
        end
      end
    end
  end
end

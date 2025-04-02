# LINE Messaging API(Insight)
# This document describes LINE Messaging API(Insight).
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

module Line
  module Bot
    module V2
      module Insight
        # @see https://developers.line.biz/en/reference/messaging-api/#error-responses
        class ErrorResponse
          attr_accessor :message # Message containing information about the error.
          attr_accessor :details # An array of error details. If the array is empty, this property will not be included in the response.

          def initialize(
            message:,
            details: nil
          )
            
            @message = message
            @details = details
          end
        end
      end
    end
  end
end

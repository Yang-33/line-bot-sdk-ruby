# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './template'

module Line
  module Bot
    module V2
      module MessagingApi
        class ConfirmTemplate < Template
          attr_reader :type
          attr_accessor :text
          attr_accessor :actions

          def initialize(
            text:,
            actions:,
            **dynamic_attributes
          )
            @type = "confirm"
            
            @text = text
            @actions = actions

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

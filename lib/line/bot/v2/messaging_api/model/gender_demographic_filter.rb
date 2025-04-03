# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './demographic_filter'

module Line
  module Bot
    module V2
      module MessagingApi
        class GenderDemographicFilter < DemographicFilter
          attr_reader :type # Type of demographic filter
          attr_accessor :one_of

          def initialize(
            one_of: nil,
            **dynamic_attributes
          )
            @type = "gender"
            
            @one_of = one_of

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

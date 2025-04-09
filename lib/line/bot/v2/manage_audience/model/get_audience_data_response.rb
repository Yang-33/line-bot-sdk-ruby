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
      module ManageAudience
        # Get audience data
        # @see https://developers.line.biz/en/reference/messaging-api/#get-audience-group
        class GetAudienceDataResponse
          # @!attribute [rw] audience_group
          #   @return [AudienceGroup,nil] 
          attr_accessor :audience_group
          # @!attribute [rw] jobs
          #   @return [Array[AudienceGroupJob],nil] An array of jobs. This array is used to keep track of each attempt to add new user IDs or IFAs to an audience for uploading user IDs. Empty array is returned for any other type of audience. Max: 50 
          attr_accessor :jobs
          # @!attribute [rw] adaccount
          #   @return [Adaccount,nil] 
          attr_accessor :adaccount

          # @param audience_group [AudienceGroup,nil] 
          # @param jobs [Array[AudienceGroupJob],nil] An array of jobs. This array is used to keep track of each attempt to add new user IDs or IFAs to an audience for uploading user IDs. Empty array is returned for any other type of audience. Max: 50 
          # @param adaccount [Adaccount,nil] 
          def initialize(
            audience_group: nil,
            jobs: nil,
            adaccount: nil,
            **dynamic_attributes
          )
            
            @audience_group = audience_group.is_a?(Line::Bot::V2::ManageAudience::AudienceGroup) || audience_group.nil? ? audience_group : Line::Bot::V2::ManageAudience::AudienceGroup.create(**audience_group) # steep:ignore
            @jobs = jobs&.map do |item|
              if item.is_a?(Hash)
                Line::Bot::V2::ManageAudience::AudienceGroupJob.create(**item) # steep:ignore InsufficientKeywordArguments
              else
                item
              end
            end
            @adaccount = adaccount.is_a?(Line::Bot::V2::ManageAudience::Adaccount) || adaccount.nil? ? adaccount : Line::Bot::V2::ManageAudience::Adaccount.create(**adaccount) # steep:ignore

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

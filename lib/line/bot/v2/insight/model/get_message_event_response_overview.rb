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
        # Summary of message statistics.
        class GetMessageEventResponseOverview
          # @!attribute [rw] request_id
          #   @return [String,nil] Request ID.
          attr_accessor :request_id
          # @!attribute [rw] timestamp
          #   @return [Integer,nil] UNIX timestamp for message delivery time in seconds.
          attr_accessor :timestamp
          # @!attribute [rw] delivered
          #   @return [Integer,nil] Number of messages delivered. This property shows values of less than 20. However, if all messages have not been sent, it will be null. 
          attr_accessor :delivered
          # @!attribute [rw] unique_impression
          #   @return [Integer,nil] Number of users who opened the message, meaning they displayed at least 1 bubble.
          attr_accessor :unique_impression
          # @!attribute [rw] unique_click
          #   @return [Integer,nil] Number of users who opened any URL in the message.
          attr_accessor :unique_click
          # @!attribute [rw] unique_media_played
          #   @return [Integer,nil] Number of users who started playing any video or audio in the message.
          attr_accessor :unique_media_played
          # @!attribute [rw] unique_media_played100_percent
          #   @return [Integer,nil] Number of users who played the entirety of any video or audio in the message.
          attr_accessor :unique_media_played100_percent

          # @param request_id [String,nil] Request ID.
          # @param timestamp [Integer,nil] UNIX timestamp for message delivery time in seconds.
          # @param delivered [Integer,nil] Number of messages delivered. This property shows values of less than 20. However, if all messages have not been sent, it will be null. 
          # @param unique_impression [Integer,nil] Number of users who opened the message, meaning they displayed at least 1 bubble.
          # @param unique_click [Integer,nil] Number of users who opened any URL in the message.
          # @param unique_media_played [Integer,nil] Number of users who started playing any video or audio in the message.
          # @param unique_media_played100_percent [Integer,nil] Number of users who played the entirety of any video or audio in the message.
          def initialize(
            request_id: nil,
            timestamp: nil,
            delivered: nil,
            unique_impression: nil,
            unique_click: nil,
            unique_media_played: nil,
            unique_media_played100_percent: nil,
            **dynamic_attributes
          )
            
            @request_id = request_id
            @timestamp = timestamp
            @delivered = delivered
            @unique_impression = unique_impression
            @unique_click = unique_click
            @unique_media_played = unique_media_played
            @unique_media_played100_percent = unique_media_played100_percent

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

          # Create an instance of the class from a hash
          # @param args [Hash] Hash containing all the required attributes
          # @return [Line::Bot::V2::Insight::GetMessageEventResponseOverview] Instance of the class
          def self.create(args) # steep:ignore
            symbolized_args = Line::Bot::V2::Utils.deep_symbolize(args)
            return new(**symbolized_args) # steep:ignore
          end

          # @param other [Object] Object to compare
          # @return [Boolean] true if the objects are equal, false otherwise
          def ==(other)
            return false unless self.class == other.class

            instance_variables.all? do |var|
                instance_variable_get(var) == other.instance_variable_get(var)
            end
          end

          # @return [Integer] Hash code of the object
          def hash
            [self.class, *instance_variables.map { |var| instance_variable_get(var) }].hash
          end
        end
      end
    end
  end
end

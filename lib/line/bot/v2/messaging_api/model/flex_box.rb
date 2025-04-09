# LINE Messaging API
# This document describes LINE Messaging API.
#
# The version of the OpenAPI document: 0.0.1
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

require_relative './flex_component'

module Line
  module Bot
    module V2
      module MessagingApi
        class FlexBox < FlexComponent
          # @!attribute [r] type
          #   @return [String] 
          attr_reader :type
          # @!attribute [rw] layout
          #   @return [String] ('horizontal'|'vertical'|'baseline') 
          attr_accessor :layout
          # @!attribute [rw] flex
          #   @return [Integer,nil] 
          attr_accessor :flex
          # @!attribute [rw] contents
          #   @return [Array[FlexComponent]] 
          attr_accessor :contents
          # @!attribute [rw] spacing
          #   @return [String,nil] 
          attr_accessor :spacing
          # @!attribute [rw] margin
          #   @return [String,nil] 
          attr_accessor :margin
          # @!attribute [rw] position
          #   @return [String,nil] ('relative'|'absolute') 
          attr_accessor :position
          # @!attribute [rw] offset_top
          #   @return [String,nil] 
          attr_accessor :offset_top
          # @!attribute [rw] offset_bottom
          #   @return [String,nil] 
          attr_accessor :offset_bottom
          # @!attribute [rw] offset_start
          #   @return [String,nil] 
          attr_accessor :offset_start
          # @!attribute [rw] offset_end
          #   @return [String,nil] 
          attr_accessor :offset_end
          # @!attribute [rw] background_color
          #   @return [String,nil] 
          attr_accessor :background_color
          # @!attribute [rw] border_color
          #   @return [String,nil] 
          attr_accessor :border_color
          # @!attribute [rw] border_width
          #   @return [String,nil] 
          attr_accessor :border_width
          # @!attribute [rw] corner_radius
          #   @return [String,nil] 
          attr_accessor :corner_radius
          # @!attribute [rw] width
          #   @return [String,nil] 
          attr_accessor :width
          # @!attribute [rw] max_width
          #   @return [String,nil] 
          attr_accessor :max_width
          # @!attribute [rw] height
          #   @return [String,nil] 
          attr_accessor :height
          # @!attribute [rw] max_height
          #   @return [String,nil] 
          attr_accessor :max_height
          # @!attribute [rw] padding_all
          #   @return [String,nil] 
          attr_accessor :padding_all
          # @!attribute [rw] padding_top
          #   @return [String,nil] 
          attr_accessor :padding_top
          # @!attribute [rw] padding_bottom
          #   @return [String,nil] 
          attr_accessor :padding_bottom
          # @!attribute [rw] padding_start
          #   @return [String,nil] 
          attr_accessor :padding_start
          # @!attribute [rw] padding_end
          #   @return [String,nil] 
          attr_accessor :padding_end
          # @!attribute [rw] action
          #   @return [Action,nil] 
          attr_accessor :action
          # @!attribute [rw] justify_content
          #   @return [String,nil] ('center'|'flex-start'|'flex-end'|'space-between'|'space-around'|'space-evenly') 
          attr_accessor :justify_content
          # @!attribute [rw] align_items
          #   @return [String,nil] ('center'|'flex-start'|'flex-end') 
          attr_accessor :align_items
          # @!attribute [rw] background
          #   @return [FlexBoxBackground,nil] 
          attr_accessor :background

          # @param layout [String] ('horizontal'|'vertical'|'baseline') 
          # @param flex [Integer,nil] 
          # @param contents [Array[FlexComponent]] 
          # @param spacing [String,nil] 
          # @param margin [String,nil] 
          # @param position [String,nil] ('relative'|'absolute') 
          # @param offset_top [String,nil] 
          # @param offset_bottom [String,nil] 
          # @param offset_start [String,nil] 
          # @param offset_end [String,nil] 
          # @param background_color [String,nil] 
          # @param border_color [String,nil] 
          # @param border_width [String,nil] 
          # @param corner_radius [String,nil] 
          # @param width [String,nil] 
          # @param max_width [String,nil] 
          # @param height [String,nil] 
          # @param max_height [String,nil] 
          # @param padding_all [String,nil] 
          # @param padding_top [String,nil] 
          # @param padding_bottom [String,nil] 
          # @param padding_start [String,nil] 
          # @param padding_end [String,nil] 
          # @param action [Action,nil] 
          # @param justify_content [String,nil] ('center'|'flex-start'|'flex-end'|'space-between'|'space-around'|'space-evenly') 
          # @param align_items [String,nil] ('center'|'flex-start'|'flex-end') 
          # @param background [FlexBoxBackground,nil] 
          def initialize(
            layout:,
            flex: nil,
            contents:,
            spacing: nil,
            margin: nil,
            position: nil,
            offset_top: nil,
            offset_bottom: nil,
            offset_start: nil,
            offset_end: nil,
            background_color: nil,
            border_color: nil,
            border_width: nil,
            corner_radius: nil,
            width: nil,
            max_width: nil,
            height: nil,
            max_height: nil,
            padding_all: nil,
            padding_top: nil,
            padding_bottom: nil,
            padding_start: nil,
            padding_end: nil,
            action: nil,
            justify_content: nil,
            align_items: nil,
            background: nil,
            **dynamic_attributes
          )
            @type = "box"
            
            @layout = layout
            @flex = flex
            @contents = contents.map do |item|
              if item.is_a?(Hash)
                Line::Bot::V2::MessagingApi::FlexComponent.create(**item) # steep:ignore InsufficientKeywordArguments
              else
                item
              end
            end
            @spacing = spacing
            @margin = margin
            @position = position
            @offset_top = offset_top
            @offset_bottom = offset_bottom
            @offset_start = offset_start
            @offset_end = offset_end
            @background_color = background_color
            @border_color = border_color
            @border_width = border_width
            @corner_radius = corner_radius
            @width = width
            @max_width = max_width
            @height = height
            @max_height = max_height
            @padding_all = padding_all
            @padding_top = padding_top
            @padding_bottom = padding_bottom
            @padding_start = padding_start
            @padding_end = padding_end
            @action = action.is_a?(Line::Bot::V2::MessagingApi::Action) || action.nil? ? action : Line::Bot::V2::MessagingApi::Action.create(**action) # steep:ignore
            @justify_content = justify_content
            @align_items = align_items
            @background = background.is_a?(Line::Bot::V2::MessagingApi::FlexBoxBackground) || background.nil? ? background : Line::Bot::V2::MessagingApi::FlexBoxBackground.create(**background) # steep:ignore

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

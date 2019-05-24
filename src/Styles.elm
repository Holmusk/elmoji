module Styles exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (style)
import Svg

emojiPicker : Float -> Float -> [[Attribute msg]]
emojiPicker offsetX offsetY =
    [ style "padding" "0px"
    , style "backgroundColor" "rgb(255, 255, 255)"
    , style "borderRadius" "7px"
    , style "borderStyle" "solid"
    , style "borderWidth" "1px"
    , style "borderColor" "rgba(0, 0, 0, 0.15)"
    , style "box-shadow" "0px 4px 6px 0px rgba(0, 0, 0, 0.15)"
    , style "box-shadow" "0px 6px 20px 0px rgba(0, 0, 0, 0.13)"
    , style "z-index" "5"
    , style "width" "315px"
    , style "height" "400px"
    , style "position" "absolute"
    , style "top" <| String.fromFloat offsetY ++ "px"
    , style "left" <| String.fromFloat offsetX ++ "px"
    , style "text-align" "left"
    ]
    
emojisMain : [Attribute msg]
emojisMain =
    [ style "width" "309px"
    , style "height" "350px"
    , style "overflow-y" "auto"
    , style "padding" "0px 0px 0px 5px"
    , style "white-space" "normal"
    ]

category : [Attribute msg]
category = [ style "width" "300px"]

categoryTitle : [Attribute msg]
categoryTitle =
    [ style "fontSize" "18px"
    , style "font-family" "sans-serif"
    , style "margin" "7px 0px 0px 0px"
    , style "padding" "2px 6px 3px 7px"
    , style "color" "#555555"
    , style "background-color" "rgb(255, 255, 255)"
    ]
        
emoji : [Attribute msg]
emoji =
    [ style "fontSize" "27px"
    , style "fontFamilies" "apple color emoji"
    , style "display" "inline-block"
    , style "padding" "6px 5px 3px 5px"
    , style "vertical-align" "middle"
    , style "line-height" "1"
    , style "border-radius" "5px"
    , style "cursor" "pointer"
    ]

iconPanel : [Attribute msg]
iconPanel =
    [ style "width" "315px"
    , style "height" "40px"
    , style "text-align" "center"
    , style "vertical-align" "middle"
    , style "padding" "7px 0px 0px 0px"
    , style "border-top-width" "1px"
    , style "border-top-color" "rgba(0, 0, 0, 0.15)"
    , style "border-top-style" "solid"
    ]

categoryIcon : Svg.Attribute msg
categoryIcon = Svg.style "margin: 5px 7px 5px 6px"

pathActive : Svg.Attribute msg
pathActive = Svg.style "fill: rgba(0, 75, 200, 0.8)"

pathInactive : Svg.Attribute msg
pathInactive = Svg.style "fill: rgba(0, 0, 0, 0.5)"
      
emojiModalBackground : [Attribute msg]
emojiModalBackground =
    [ style "z-index" "4"
    , style "position" "fixed"
    , style "background-color" "white"
    , style "width" "100%"
    , style "height" "100%"
    , style "top" "0px"
    , style "left" "0px"
    ]

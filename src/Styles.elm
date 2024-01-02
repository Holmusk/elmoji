module Styles exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (style)
import Svg
import Svg.Attributes as SvgA


emojiPicker : Float -> Float -> List (Attribute msg)
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


emojisMain : List (Attribute msg)
emojisMain =
    [ style "width" "320px"
    , style "height" "350px"
    , style "overflow-y" "auto"
    , style "padding" "0px 0px 0px 5px"
    , style "white-space" "normal"
    ]


category : List (Attribute msg)
category =
    [ style "width" "300px" ]


categoryTitle : List (Attribute msg)
categoryTitle =
    [ style "font-size" "18px"
    , style "font-family" "sans-serif"
    , style "margin" "7px 0px 0px 0px"
    , style "padding" "2px 6px 3px 7px"
    , style "color" "#555555"
    , style "background-color" "rgb(255, 255, 255)"
    ]


emoji : List (Attribute msg)
emoji =
    [ style "font-size" "27px"
    , style "font-family" "apple color emoji"
    , style "display" "inline-block"
    , style "padding" "6px 5px 3px 5px"
    , style "vertical-align" "middle"
    , style "line-height" "1"
    , style "border-radius" "5px"
    , style "cursor" "pointer"
    ]


iconPanel : List (Attribute msg)
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
categoryIcon =
    SvgA.style "margin: 5px 7px 5px 6px; cursor: pointer;"


pathActive : Attribute msg
pathActive =
    style "fill" "rgba(0, 75, 200, 0.8)"


pathInactive : Attribute msg
pathInactive =
    style "fill" "rgba(0, 0, 0, 0.5)"


emojiModalBackground : List (Attribute msg)
emojiModalBackground =
    [ style "z-index" "4"
    , style "position" "fixed"
    , style "background-color" "rgba(0, 0, 0, 0)"
    , style "width" "100%"
    , style "height" "100%"
    , style "top" "0px"
    , style "left" "0px"
    ]

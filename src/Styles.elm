module Styles exposing (..)

import Css exposing (..)
import Svg.Styled as Svg
import Html.Styled exposing (Attribute)
import Html.Styled.Attributes exposing (css)

emojiPicker : Float -> Float -> Attribute msg
emojiPicker offsetX offsetY =
    css
    [ padding (px 0)
    , backgroundColor (rgb 255 255 255)
    , borderRadius (px 7)
    , borderStyle solid
    , borderWidth (px 1)
    , borderColor (rgba 0 0 0 0.15)
    , boxShadow5 (px 0) (px 4) (px 6) (px 0) (rgba 0 0 0 0.15)
    , boxShadow5 (px 0) (px 6) (px 20) (px 0) (rgba 0 0 0 0.13)
    , zIndex (int 5)
    , width (px 315)
    , height (px 400)
    , position absolute
    , top (px offsetY)
    , left (px offsetX)
    , textAlign left
    ]
    
emojisMain : Attribute msg
emojisMain =
    css
    [ width (px 309)
    , height (px 350)
    , overflowY auto
    , padding4 (px 0) (px 0) (px 0) (px 5)
    , whiteSpace normal
    ]

category : Attribute msg
category =
    css [ width (px 300) ]

categoryTitle : Attribute msg
categoryTitle =
    css
    [ fontSize (px 18)
    , fontFamily sansSerif
    , margin4 (px 7) (px 0) (px 0) (px 0)
    , padding4 (px 2) (px 6) (px 3) (px 7)
    , color (hex "#555555")
    , backgroundColor (rgb 255 255 255)
    ]
        
emoji : Attribute msg
emoji =
    css
    [ fontSize (px 27)
    , fontFamilies ["apple color emoji"]
    , display inlineBlock
    , padding4 (px 6) (px 5) (px 3) (px 5)
    , verticalAlign middle
    , lineHeight (int 1)
    , borderRadius (px 5)
    , hover [ backgroundColor (rgba 0 0 0 0.05)
            , cursor pointer ]
    ]

iconPanel : Attribute msg
iconPanel =
    css
    [ width (px 315)
    , height (px 40)
    , textAlign center
    , verticalAlign middle
    , padding4 (px 7) (px 0) (px 0) (px 0)
    , borderTopWidth (px 1)
    , borderTopColor (rgba 0 0 0 0.15)
    , borderTopStyle solid
    ]

categoryIcon : Style
categoryIcon =
    margin4 (px 5) (px 7) (px 5) (px 6)

pathActive : Style
pathActive =
    fill (rgba 0 75 200 0.8)

pathInactive : Style
pathInactive =
    fill (rgba 0 0 0 0.5)
      
emojiModalBackground : Attribute msg
emojiModalBackground =
    css
        [ zIndex (int 4)
        , position fixed
        , backgroundColor (rgba 0 0 0 0)
        , width (pct 100)
        , height (pct 100)
        , top (px 0)
        , left (px 0)
        ]

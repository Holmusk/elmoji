module Main exposing (main)

import Browser
import Html
import EmojiPicker exposing (Model, PickerConfig, Msg(..), view, update, init)
import Css exposing (..)
import Css.Global exposing (global, body, html, everything)
import Html.Styled exposing (Html, Attribute, fromUnstyled, toUnstyled
                            , div, textarea, text, button, h1, p)
import Html.Styled.Attributes exposing ( class,  placeholder, value, css, rows)
import Html.Styled.Events exposing (onClick, onInput)

    
---- MODEL ----

{- (1) include a field to hold the picker's submodel -}
type alias Model =
    { text       : String
    , emojiModel : EmojiPicker.Model
    }

{- (2) initialize the picker with a PickerConfig -}
pickerConfig : PickerConfig
pickerConfig =
    { offsetX       = -281  -- x position relative to button
    , offsetY       = -410  -- y position relative to button
    , closeOnSelect = True  -- whether or not to close after an emoji is picked
    }

initialModel : Model
initialModel = { text       = ""
               , emojiModel = EmojiPicker.init pickerConfig
               }
    
init : (Model, Cmd Msg)
init =
    ( initialModel
    , Cmd.none )

    
---- UPDATE ----

{- (3) include a field to toggle the picker, 
and to catch the picker's submessages -}
type Msg
    = NoOp
    | UpdateText String
    | EmojiMsg EmojiPicker.Msg

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        NoOp ->
            (model, Cmd.none)

        UpdateText s ->
            ({ model | text = s }, Cmd.none)

        EmojiMsg subMsg ->
            case subMsg of
                {- (4) Catch the `Select` submessage -}
                EmojiPicker.Select s ->
                    let
                        subModel = model.emojiModel
                        (newSubModel, _) = EmojiPicker.update subMsg subModel
                        newModel = { model | text = model.text ++ s
                                   , emojiModel = newSubModel }
                    in
                        (newModel, Cmd.none)

                _ ->
                    let
                        subModel = model.emojiModel
                        (newSubModel, _) = EmojiPicker.update subMsg subModel
                    in
                    ({ model | emojiModel = newSubModel }, Cmd.none)


---- VIEW ----
             
view : Model -> Html.Html Msg
view model =
    let
        -- (6) include the picker in the view
        picker = EmojiPicker.view model.emojiModel
                 |> fromUnstyled
                 |> Html.Styled.map (EmojiMsg)
    in
        toUnstyled
            (div []
                 [ globalStyle
                 , div [ splash ]
                       [ p [ title ]
                           [ text "Emoji Picker Demo" ]
                       ]
                 , div [ content ]
                       [ div [ class "description" ]
                             [ p [ bodyText ]
                                 [ text "Below is a mockup of an input field for a generic messaging application. Try it out!" ]
                             ]
                       , div [ inputWrapper ]      
                             [ div []
                                   [ textarea [ onInput UpdateText
                                              , value model.text
                                              , placeholder "Type your message here!"
                                              , rows 6
                                              , demoInput
                                              ]
                                              []
                                   -- I've chosen to put the picker with the button
                                   , div [ buttonWrapper ]
                                         [ picker
                                         -- (5) Include a way to toggle the picker's visibility
                                         , button [ onClick <| EmojiMsg EmojiPicker.Toggle
                                                  , buttonActual ]
                                                  [ text "😀" ]
                                         ]
                                   ]
                             ]
                       ]
                 ])
            
---- SUBSCRIPTIONS -----

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


----- STYLES -----

globalStyle : Html Msg
globalStyle =
    global
        [ body
              [ fontFamilies
                    [ "Source Sans Pro"
                    , "Trebuchet MS"
                    , "Lucida Grande"
                    , "Bitstream Vera Sans"
                    , "Helvetica Neue"
                    , "sans-serif"
                    ]
              , color (hex "#293C4B")
              ]
        , everything
            [ padding (px 0)
            , margin (px 0)
            ]
        ]

splash : Attribute Msg
splash =
    css
    [ backgroundColor (hex "#60B5CC")
    , padding (px 50) ]
    
title : Attribute Msg
title =
    css
    [ fontSize (px 50)
    , padding (px 20)
    , textAlign center
    , color (hex "#FFFFFF")
    ]

content : Attribute Msg
content =
    css
    [ margin auto
    , backgroundColor (hex "#FFFFFF")
    , width (px 500)
    , padding4 (px 15) (px 60) (px 50) (px 60)
    , textAlign center
    ]

inputWrapper : Attribute Msg
inputWrapper =
    css
    [ borderRadius (px 4)
    , borderColor (hex "#293C4B")
    , borderWidth (px 1)
    , borderStyle solid
    , height (px 150)
    , width (px 315)
    , margin auto
    , marginTop (px 300)
    , display block
    ]
    
demoInput : Attribute Msg
demoInput =
    css
    [ borderStyle none
    , resize none
    , float left
    , display inlineBlock
    , width (px 260)
    , fontSize (px 18)
    , padding (px 10)
    , outline none
    , borderRadius (px 4)
    , fontFamilies
          [ "Source Sans Pro"
          , "Trebuchet MS"
          , "Lucida Grande"
          , "Bitstream Vera Sans"
          , "Helvetica Neue"
          , "sans-serif"
          ]
    ]
    
bodyText : Attribute Msg
bodyText =
    css
    [ textAlign justify ]

buttonWrapper : Attribute Msg
buttonWrapper =
    css
    [ position relative
    , borderStyle none
    , borderRadius (px 4)
    , float left
    , display inlineBlock
    , marginTop (px 3)
    ]

buttonActual : Attribute Msg
buttonActual =
    css
    [ borderStyle none
    , borderRadius (px 4)
    , backgroundColor (hex "#FFFFFF")
    , margin (px 2)
    , padding (px 0)
    , fontSize (px 25)
    , hover
          [ cursor pointer
          , backgroundColor (rgba 0 0 0 0.05)
          ]
    ]
    
---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = subscriptions
        }

# Elmoji

Check out the [demo](https://holmusk.github.io/elmoji/)!

This module provides a general-purpose emoji picker written in Elm. In order to integrate this with your application, there are a few things that need to be implemented (check the `examples` directory for a sample).

1. Include a field in your `Model` to hold the picker's submodel:
    ```elm
    import EmojiPicker exposing (Model, PickerConfig, Msg(..), view, update, init)
    type alias Model =
        { text       : String
        , emojiModel : EmojiPicker.Model
        }
    ```
	
2. Initialize the picker's submodel with a `PickerConfig`:
    ```elm
    pickerConfig : PickerConfig
    pickerConfig =
        { offsetX       = -271  -- horizontal offset
        , offsetY       = -410  -- vertical offset
        , closeOnSelect = True  -- close after clicking an emoji
        }
         
    initialModel : Model
    initialModel = 
        { text       = ""
        , emojiModel = EmojiPicker.init pickerConfig
        }
    ```
	
3. Include a constructor in your `Msg` to catch the picker's submessages:
    ```elm
    type Msg
        = NoOp
        ...
        | EmojiMsg EmojiPicker.Msg
        ...
    ```

4. Catch the `Select` submessage in your `update` function (let the rest of the messages be handled by the internal update function):
    ```elm
    update : Msg -> Model -> (Model, Cmd Msg)
    update msg model =
        case msg of
            ...
            EmojiMsg subMsg ->
                case subMsg of
                    EmojiPicker.Select s ->
                        -- "s" is the emoji, add this to your input field
                        ...
            ...
	```
5. Include a way to toggle the picker's visibility by sending its internal `Toggle` message:
   ```elm
   view : Model -> Html Msg
   view model =
   ...
       button [ onClick <| EmojiMsg EmojiPicker.Toggle ] []
   ...
   ```
   
6. Include the picker in your `view` function (along with a button or something that sends the `ToggleEmojiPicker` message `onClick`). The picker is styled with the `elm-css` module, which uses an internal replacement for the standard `elm/html` module, so you'll need to `Html.map` it first:
   ```elm
   view : Model -> Html Msg
   view model =
       let
           picker = Html.map (EmojiMsg) <| EmojiPicker.view model.emojiModel
       in
           -- use `picker` somewhere
           ...
   ```
	
And that's it! If you'd like to change any of the default styles in this module, you can clone the repo and edit the `Styles.elm` file.

## Acknowledgements

The category icons were taken from the [emoji-mart repo](https://github.com/missive/emoji-mart/blob/master/src/svgs/index.js) by Missive, and rewritten in Elm.   
The emojis themselves were obtained by parsing the `emoji.json` file on the [emoji-data repo](https://github.com/iamcal/emoji-data).

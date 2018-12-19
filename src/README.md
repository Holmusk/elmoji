# Emoji Picker

This module provides an emoji picker general-purpose use. The picker comes with its own styles (using [elm-css](https://package.elm-lang.org/packages/rtfeldman/elm-css/latest/Css)), and is therefore not very customizable. It should look good enough for most applications, but in case you need something more specific, please feel free to clone the repo.

## How to use

In order to integrate the emoji picker into your own application, you'll need to implement a few things. Check out the [examples folder]() for a sample imeplementation.

1. Include a field in your `Model` to hold the emoji picker's submodel.
2. Include a message type in your `Msg` to catch the emoji picker's submessages.
3. Provide a way to toggle the emoji picker on and off.
4. Catch the `Select` submessage in your `update` function.

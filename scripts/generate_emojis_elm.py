#!/bin/env python3
import json
import xml.etree.ElementTree as ET


# Transform codepoint to string
def unified_to_char(code_point):
    return "".join([chr(int(code, 16)) for code in code_point.split("-")])


# Parse cldr annotations taken from https://github.com/unicode-org/cldr/releases
# The file is located at common/annotations/en.xml
tree = ET.parse("cldr-annotations-en.xml")
root = tree.getroot()


emojis_annotations = {}
for annotation in root.iter("annotation"):
    if "type" not in annotation.attrib:
        emojis_annotations[annotation.attrib["cp"]] = [
            '"{a}"'.format(a=a) for a in annotation.text.split(" | ")
        ]

emojis = []

# Parse json file taken from https://github.com/iamcal/emoji-data
with open("emoji.json", "rb") as f:
    data = json.load(f)
    for record in data:
        skin_variations_tuples = []

        if "skin_variations" in record:
            skin_variations = record["skin_variations"]

            color_mapping = {
                "1F3FB": "light",
                "1F3FC": "mediumLight",
                "1F3FD": "medium",
                "1F3FE": "mediumDark",
                "1F3FF": "dark",
            }

            for skin_color in color_mapping:
                if skin_color in skin_variations:
                    skin_variation = skin_variations[skin_color]["unified"]
                    skin_variation_string = unified_to_char(skin_variation)

                    skin_variations_tuples.append(
                        '("{variation_name}", "{skin_variation_string}")'.format(
                            variation_name=color_mapping[skin_color],
                            skin_variation_string=skin_variation_string,
                        )
                    )

        native = unified_to_char(record["unified"])

        native_non_qual = (
            unified_to_char(record["non_qualified"])
            if record["non_qualified"] is not None
            else native
        )

        emojis.append(
            {
                "short_name": record["short_name"],
                "name": record["name"],
                "sort_order": record["sort_order"],
                "native": native,
                "native_non_qual": native_non_qual,
                "skin_variations": ", ".join(skin_variations_tuples),
            }
        )

# Sort emojis to display them in the correct order
emojis.sort(key=lambda emoji: emoji.get("sort_order"))

# Generate ELM output


ELM_HEAD_STRING = """module Emojis exposing (emojiDict)

import Dict exposing (Dict)
import Types exposing (Emoji)


emojiDict : Dict String Emoji
emojiDict =
    Dict.fromList
        [ """

ELM_TAIL_STRING = "]"


print(ELM_HEAD_STRING, end="")

first = True

for emoji in emojis:
    if not first:
        print("        , ", end="")

    first = False

    native = emoji["native"]
    if native in emojis_annotations:
        keywords = emojis_annotations[native]
    else:
        keywords = []

    print(
        '( "{short_name}", {{ name = "{name}", native = "{native}", nativeNonQual = "{native_non_qual}", keywords = [{keywords}], skinVariations = Dict.fromList [{skin_variations}], version = {version} }} )'.format(
            short_name=emoji["short_name"],
            name=emoji["name"],
            sort_order=emoji["sort_order"],
            native=emoji["native"],
            native_non_qual=emoji["native_non_qual"],
            keywords=", ".join(keywords),
            skin_variations=emoji["skin_variations"],
            version=15,
        )
    )

print(ELM_TAIL_STRING)

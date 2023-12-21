module Icons exposing
    ( activity
    , flags
    , foods
    , iconList
    , nature
    , objects
    , people
    , places
    , symbols
    )

import Html exposing (Html)
import Styles exposing (categoryIcon)
import Svg exposing (Attribute, path, svg)
import Svg.Attributes exposing (d, height, viewBox, width, xmlSpace)
import Types exposing (Category)



{------------------------- ICONS -----------------------------

  Icons for use in the category selection bar. All icons were 
  taken from:

  https://github.com/missive/emoji-mart/tree/master/src/svgs

 -------------------------------------------------------------}


iconList : List ( Category, Attribute msg -> Html msg )
iconList =
    [ people
    , nature
    , foods
    , activity
    , places
    , objects
    , symbols
    , flags
    ]


helperFun : List (Attribute msg) -> Attribute msg -> Html msg
helperFun d_attributes style =
    svg
        [ categoryIcon
        , xmlSpace "http://www.w3.org/2000/svg"
        , viewBox "0 0 24 24"
        , width "24"
        , height "24"
        ]
    <|
        List.map (\path_attribute -> path [ path_attribute, style ] []) d_attributes


activity : ( Category, Attribute msg -> Html msg )
activity =
    ( { id = "activity"
      , name = "Activities"
      , emojis = [ "jack_o_lantern", "christmas_tree", "fireworks", "sparkler", "sparkles", "balloon", "tada", "confetti_ball", "tanabata_tree", "bamboo", "dolls", "flags", "wind_chime", "rice_scene", "ribbon", "gift", "reminder_ribbon", "admission_tickets", "ticket", "medal", "trophy", "sports_medal", "first_place_medal", "second_place_medal", "third_place_medal", "soccer", "baseball", "basketball", "volleyball", "football", "rugby_football", "tennis", "8ball", "bowling", "cricket_bat_and_ball", "field_hockey_stick_and_ball", "ice_hockey_stick_and_puck", "table_tennis_paddle_and_ball", "badminton_racquet_and_shuttlecock", "boxing_glove", "martial_arts_uniform", "goal_net", "dart", "golf", "ice_skate", "fishing_pole_and_fish", "running_shirt_with_sash", "ski", "sled", "curling_stone", "video_game", "joystick", "game_die", "spades", "hearts", "diamonds", "clubs", "black_joker", "mahjong", "flower_playing_cards" ]
      }
    , helperFun activity_path
    )


flags : ( Category, Attribute msg -> Html msg )
flags =
    ( { id = "flags"
      , name = "Flags"
      , emojis = [ "checkered_flag", "cn", "crossed_flags", "de", "es", "flag-ac", "flag-ad", "flag-ae", "flag-af", "flag-ag", "flag-ai", "flag-al", "flag-am", "flag-ao", "flag-aq", "flag-ar", "flag-as", "flag-at", "flag-au", "flag-aw", "flag-ax", "flag-az", "flag-ba", "flag-bb", "flag-bd", "flag-be", "flag-bf", "flag-bg", "flag-bh", "flag-bi", "flag-bj", "flag-bl", "flag-bm", "flag-bn", "flag-bo", "flag-bq", "flag-br", "flag-bs", "flag-bt", "flag-bv", "flag-bw", "flag-by", "flag-bz", "flag-ca", "flag-cc", "flag-cd", "flag-cf", "flag-cg", "flag-ch", "flag-ci", "flag-ck", "flag-cl", "flag-cm", "flag-co", "flag-cp", "flag-cr", "flag-cu", "flag-cv", "flag-cw", "flag-cx", "flag-cy", "flag-cz", "flag-dg", "flag-dj", "flag-dk", "flag-dm", "flag-do", "flag-dz", "flag-ea", "flag-ec", "flag-ee", "flag-eg", "flag-eh", "flag-england", "flag-er", "flag-et", "flag-eu", "flag-fi", "flag-fj", "flag-fk", "flag-fm", "flag-fo", "flag-ga", "flag-gd", "flag-ge", "flag-gf", "flag-gg", "flag-gh", "flag-gi", "flag-gl", "flag-gm", "flag-gn", "flag-gp", "flag-gq", "flag-gr", "flag-gs", "flag-gt", "flag-gu", "flag-gw", "flag-gy", "flag-hk", "flag-hm", "flag-hn", "flag-hr", "flag-ht", "flag-hu", "flag-ic", "flag-id", "flag-ie", "flag-il", "flag-im", "flag-in", "flag-io", "flag-iq", "flag-ir", "flag-is", "flag-je", "flag-jm", "flag-jo", "flag-ke", "flag-kg", "flag-kh", "flag-ki", "flag-km", "flag-kn", "flag-kp", "flag-kw", "flag-ky", "flag-kz", "flag-la", "flag-lb", "flag-lc", "flag-li", "flag-lk", "flag-lr", "flag-ls", "flag-lt", "flag-lu", "flag-lv", "flag-ly", "flag-ma", "flag-mc", "flag-md", "flag-me", "flag-mf", "flag-mg", "flag-mh", "flag-mk", "flag-ml", "flag-mm", "flag-mn", "flag-mo", "flag-mp", "flag-mq", "flag-mr", "flag-ms", "flag-mt", "flag-mu", "flag-mv", "flag-mw", "flag-mx", "flag-my", "flag-mz", "flag-na", "flag-nc", "flag-ne", "flag-nf", "flag-ng", "flag-ni", "flag-nl", "flag-no", "flag-np", "flag-nr", "flag-nu", "flag-nz", "flag-om", "flag-pa", "flag-pe", "flag-pf", "flag-pg", "flag-ph", "flag-pk", "flag-pl", "flag-pm", "flag-pn", "flag-pr", "flag-ps", "flag-pt", "flag-pw", "flag-py", "flag-qa", "flag-re", "flag-ro", "flag-rs", "flag-rw", "flag-sa", "flag-sb", "flag-sc", "flag-scotland", "flag-sd", "flag-se", "flag-sg", "flag-sh", "flag-si", "flag-sj", "flag-sk", "flag-sl", "flag-sm", "flag-sn", "flag-so", "flag-sr", "flag-ss", "flag-st", "flag-sv", "flag-sx", "flag-sy", "flag-sz", "flag-ta", "flag-tc", "flag-td", "flag-tf", "flag-tg", "flag-th", "flag-tj", "flag-tk", "flag-tl", "flag-tm", "flag-tn", "flag-to", "flag-tr", "flag-tt", "flag-tv", "flag-tw", "flag-tz", "flag-ua", "flag-ug", "flag-um", "flag-uy", "flag-uz", "flag-va", "flag-vc", "flag-ve", "flag-vg", "flag-vi", "flag-vn", "flag-vu", "flag-wales", "flag-wf", "flag-ws", "flag-xk", "flag-ye", "flag-yt", "flag-za", "flag-zm", "flag-zw", "fr", "gb", "it", "jp", "kr", "rainbow-flag", "ru", "triangular_flag_on_post", "us", "waving_black_flag", "waving_white_flag" ]
      }
    , helperFun flags_path
    )


foods : ( Category, Attribute msg -> Html msg )
foods =
    ( { id = "foods"
      , name = "Food & Drink"
      , emojis = [ "grapes", "melon", "watermelon", "tangerine", "lemon", "banana", "pineapple", "apple", "green_apple", "pear", "peach", "cherries", "strawberry", "kiwifruit", "tomato", "coconut", "avocado", "eggplant", "potato", "carrot", "corn", "hot_pepper", "cucumber", "broccoli", "mushroom", "peanuts", "chestnut", "bread", "croissant", "baguette_bread", "pretzel", "pancakes", "cheese_wedge", "meat_on_bone", "poultry_leg", "cut_of_meat", "bacon", "hamburger", "fries", "pizza", "hotdog", "sandwich", "taco", "burrito", "stuffed_flatbread", "egg", "fried_egg", "shallow_pan_of_food", "stew", "bowl_with_spoon", "green_salad", "popcorn", "canned_food", "bento", "rice_cracker", "rice_ball", "rice", "curry", "ramen", "spaghetti", "sweet_potato", "oden", "sushi", "fried_shrimp", "fish_cake", "dango", "dumpling", "fortune_cookie", "takeout_box", "icecream", "shaved_ice", "ice_cream", "doughnut", "cookie", "birthday", "cake", "pie", "chocolate_bar", "candy", "lollipop", "custard", "honey_pot", "baby_bottle", "glass_of_milk", "coffee", "tea", "sake", "champagne", "wine_glass", "cocktail", "tropical_drink", "beer", "beers", "clinking_glasses", "tumbler_glass", "cup_with_straw", "chopsticks", "knife_fork_plate", "fork_and_knife", "spoon", "hocho", "amphora" ]
      }
    , helperFun foods_path
    )


nature : ( Category, Attribute msg -> Html msg )
nature =
    ( { id = "nature"
      , name = "Animals & Nature"
      , emojis = [ "monkey_face", "monkey", "gorilla", "dog", "dog2", "poodle", "wolf", "fox_face", "cat", "cat2", "lion_face", "tiger", "tiger2", "leopard", "horse", "racehorse", "unicorn_face", "zebra_face", "deer", "cow", "ox", "water_buffalo", "cow2", "pig", "pig2", "boar", "pig_nose", "ram", "sheep", "goat", "dromedary_camel", "camel", "giraffe_face", "elephant", "rhinoceros", "mouse", "mouse2", "rat", "hamster", "rabbit", "rabbit2", "chipmunk", "hedgehog", "bat", "bear", "koala", "panda_face", "feet", "turkey", "chicken", "rooster", "hatching_chick", "baby_chick", "hatched_chick", "bird", "penguin", "dove_of_peace", "eagle", "duck", "owl", "frog", "crocodile", "turtle", "lizard", "snake", "dragon_face", "dragon", "sauropod", "t-rex", "whale", "whale2", "dolphin", "fish", "tropical_fish", "blowfish", "shark", "octopus", "shell", "crab", "shrimp", "squid", "snail", "butterfly", "bug", "ant", "bee", "beetle", "cricket", "spider", "spider_web", "scorpion", "bouquet", "cherry_blossom", "white_flower", "rosette", "rose", "wilted_flower", "hibiscus", "sunflower", "blossom", "tulip", "seedling", "evergreen_tree", "deciduous_tree", "palm_tree", "cactus", "ear_of_rice", "herb", "shamrock", "four_leaf_clover", "maple_leaf", "fallen_leaf", "leaves" ]
      }
    , helperFun nature_path
    )


objects : ( Category, Attribute msg -> Html msg )
objects =
    ( { id = "objects"
      , name = "Objects"
      , emojis = [ "mute", "speaker", "sound", "loud_sound", "loudspeaker", "mega", "postal_horn", "bell", "no_bell", "musical_score", "musical_note", "notes", "studio_microphone", "level_slider", "control_knobs", "microphone", "headphones", "radio", "saxophone", "guitar", "musical_keyboard", "trumpet", "violin", "drum_with_drumsticks", "iphone", "calling", "phone", "telephone_receiver", "pager", "fax", "battery", "electric_plug", "computer", "desktop_computer", "printer", "keyboard", "three_button_mouse", "trackball", "minidisc", "floppy_disk", "cd", "dvd", "movie_camera", "film_frames", "film_projector", "clapper", "tv", "camera", "camera_with_flash", "video_camera", "vhs", "mag", "mag_right", "microscope", "telescope", "satellite_antenna", "candle", "bulb", "flashlight", "izakaya_lantern", "notebook_with_decorative_cover", "closed_book", "book", "green_book", "blue_book", "orange_book", "books", "notebook", "ledger", "page_with_curl", "scroll", "page_facing_up", "newspaper", "rolled_up_newspaper", "bookmark_tabs", "bookmark", "label", "moneybag", "yen", "dollar", "euro", "pound", "money_with_wings", "credit_card", "chart", "currency_exchange", "heavy_dollar_sign", "email", "e-mail", "incoming_envelope", "envelope_with_arrow", "outbox_tray", "inbox_tray", "package", "mailbox", "mailbox_closed", "mailbox_with_mail", "mailbox_with_no_mail", "postbox", "ballot_box_with_ballot", "pencil2", "black_nib", "lower_left_fountain_pen", "lower_left_ballpoint_pen", "lower_left_paintbrush", "lower_left_crayon", "memo", "briefcase", "file_folder", "open_file_folder", "card_index_dividers", "date", "calendar", "spiral_note_pad", "spiral_calendar_pad", "card_index", "chart_with_upwards_trend", "chart_with_downwards_trend", "bar_chart", "clipboard", "pushpin", "round_pushpin", "paperclip", "linked_paperclips", "straight_ruler", "triangular_ruler", "scissors", "card_file_box", "file_cabinet", "wastebasket", "lock", "unlock", "lock_with_ink_pen", "closed_lock_with_key", "key", "old_key", "hammer", "pick", "hammer_and_pick", "hammer_and_wrench", "dagger_knife", "crossed_swords", "gun", "bow_and_arrow", "shield", "wrench", "nut_and_bolt", "gear", "compression", "alembic", "scales", "link", "chains", "syringe", "pill", "smoking", "coffin", "funeral_urn", "moyai", "oil_drum", "crystal_ball", "shopping_trolley" ]
      }
    , helperFun objects_path
    )


people : ( Category, Attribute msg -> Html msg )
people =
    ( { id = "people"
      , name = "Smileys & People"
      , emojis = [ "grinning", "grin", "joy", "rolling_on_the_floor_laughing", "smiley", "smile", "sweat_smile", "laughing", "wink", "blush", "yum", "sunglasses", "heart_eyes", "kissing_heart", "kissing", "kissing_smiling_eyes", "kissing_closed_eyes", "relaxed", "slightly_smiling_face", "hugging_face", "star-struck", "thinking_face", "face_with_raised_eyebrow", "neutral_face", "expressionless", "no_mouth", "face_with_rolling_eyes", "smirk", "persevere", "disappointed_relieved", "open_mouth", "zipper_mouth_face", "hushed", "sleepy", "tired_face", "sleeping", "relieved", "stuck_out_tongue", "stuck_out_tongue_winking_eye", "stuck_out_tongue_closed_eyes", "drooling_face", "unamused", "sweat", "pensive", "confused", "upside_down_face", "money_mouth_face", "astonished", "white_frowning_face", "slightly_frowning_face", "confounded", "disappointed", "worried", "triumph", "cry", "sob", "frowning", "anguished", "fearful", "weary", "exploding_head", "grimacing", "cold_sweat", "scream", "flushed", "zany_face", "dizzy_face", "rage", "angry", "face_with_symbols_on_mouth", "mask", "face_with_thermometer", "face_with_head_bandage", "nauseated_face", "face_vomiting", "sneezing_face", "innocent", "face_with_cowboy_hat", "clown_face", "lying_face", "shushing_face", "face_with_hand_over_mouth", "face_with_monocle", "nerd_face", "smiling_imp", "imp", "japanese_ogre", "japanese_goblin", "skull", "skull_and_crossbones", "ghost", "alien", "space_invader", "robot_face", "hankey", "smiley_cat", "smile_cat", "joy_cat", "heart_eyes_cat", "smirk_cat", "kissing_cat", "scream_cat", "crying_cat_face", "pouting_cat", "see_no_evil", "hear_no_evil", "speak_no_evil", "baby", "child", "boy", "girl", "adult", "man", "woman", "older_adult", "older_man", "older_woman", "male-doctor", "female-doctor", "male-student", "female-student", "male-teacher", "female-teacher", "male-judge", "female-judge", "male-farmer", "female-farmer", "male-cook", "female-cook", "male-mechanic", "female-mechanic", "male-factory-worker", "female-factory-worker", "male-office-worker", "female-office-worker", "male-scientist", "female-scientist", "male-technologist", "female-technologist", "male-singer", "female-singer", "male-artist", "female-artist", "male-pilot", "female-pilot", "male-astronaut", "female-astronaut", "male-firefighter", "female-firefighter", "cop", "male-police-officer", "female-police-officer", "sleuth_or_spy", "male-detective", "female-detective", "guardsman", "male-guard", "female-guard", "construction_worker", "male-construction-worker", "female-construction-worker", "prince", "princess", "man_with_turban", "man-wearing-turban", "woman-wearing-turban", "man_with_gua_pi_mao", "person_with_headscarf", "bearded_person", "person_with_blond_hair", "blond-haired-man", "blond-haired-woman", "man_in_tuxedo", "bride_with_veil", "pregnant_woman", "breast-feeding", "angel", "santa", "mrs_claus", "mage", "female_mage", "male_mage", "fairy", "female_fairy", "male_fairy", "vampire", "female_vampire", "male_vampire", "merperson", "mermaid", "merman", "elf", "female_elf", "male_elf", "genie", "female_genie", "male_genie", "zombie", "female_zombie", "male_zombie", "person_frowning", "man-frowning", "woman-frowning", "person_with_pouting_face", "man-pouting", "woman-pouting", "no_good", "man-gesturing-no", "woman-gesturing-no", "ok_woman", "man-gesturing-ok", "woman-gesturing-ok", "information_desk_person", "man-tipping-hand", "woman-tipping-hand", "raising_hand", "man-raising-hand", "woman-raising-hand", "bow", "man-bowing", "woman-bowing", "face_palm", "man-facepalming", "woman-facepalming", "shrug", "man-shrugging", "woman-shrugging", "massage", "man-getting-massage", "woman-getting-massage", "haircut", "man-getting-haircut", "woman-getting-haircut", "walking", "man-walking", "woman-walking", "runner", "man-running", "woman-running", "dancer", "man_dancing", "dancers", "man-with-bunny-ears-partying", "woman-with-bunny-ears-partying", "person_in_steamy_room", "woman_in_steamy_room", "man_in_steamy_room", "person_climbing", "woman_climbing", "man_climbing", "person_in_lotus_position", "woman_in_lotus_position", "man_in_lotus_position", "bath", "sleeping_accommodation", "man_in_business_suit_levitating", "speaking_head_in_silhouette", "bust_in_silhouette", "busts_in_silhouette", "fencer", "horse_racing", "skier", "snowboarder", "golfer", "man-golfing", "woman-golfing", "surfer", "man-surfing", "woman-surfing", "rowboat", "man-rowing-boat", "woman-rowing-boat", "swimmer", "man-swimming", "woman-swimming", "person_with_ball", "man-bouncing-ball", "woman-bouncing-ball", "weight_lifter", "man-lifting-weights", "woman-lifting-weights", "bicyclist", "man-biking", "woman-biking", "mountain_bicyclist", "man-mountain-biking", "woman-mountain-biking", "racing_car", "racing_motorcycle", "person_doing_cartwheel", "man-cartwheeling", "woman-cartwheeling", "wrestlers", "man-wrestling", "woman-wrestling", "water_polo", "man-playing-water-polo", "woman-playing-water-polo", "handball", "man-playing-handball", "woman-playing-handball", "juggling", "man-juggling", "woman-juggling", "couple", "two_men_holding_hands", "two_women_holding_hands", "couplekiss", "woman-kiss-man", "man-kiss-man", "woman-kiss-woman", "couple_with_heart", "woman-heart-man", "man-heart-man", "woman-heart-woman", "family", "man-woman-boy", "man-woman-girl", "man-woman-girl-boy", "man-woman-boy-boy", "man-woman-girl-girl", "man-man-boy", "man-man-girl", "man-man-girl-boy", "man-man-boy-boy", "man-man-girl-girl", "woman-woman-boy", "woman-woman-girl", "woman-woman-girl-boy", "woman-woman-boy-boy", "woman-woman-girl-girl", "man-boy", "man-boy-boy", "man-girl", "man-girl-boy", "man-girl-girl", "woman-boy", "woman-boy-boy", "woman-girl", "woman-girl-boy", "woman-girl-girl", "selfie", "muscle", "point_left", "point_right", "point_up", "point_up_2", "middle_finger", "point_down", "v", "crossed_fingers", "spock-hand", "the_horns", "call_me_hand", "raised_hand_with_fingers_splayed", "hand", "ok_hand", "+1", "-1", "fist", "facepunch", "left-facing_fist", "right-facing_fist", "raised_back_of_hand", "wave", "i_love_you_hand_sign", "writing_hand", "clap", "open_hands", "raised_hands", "palms_up_together", "pray", "handshake", "nail_care", "ear", "nose", "footprints", "eyes", "eye", "eye-in-speech-bubble", "brain", "tongue", "lips", "kiss", "cupid", "heart", "heartbeat", "broken_heart", "two_hearts", "sparkling_heart", "heartpulse", "blue_heart", "green_heart", "yellow_heart", "orange_heart", "purple_heart", "black_heart", "gift_heart", "revolving_hearts", "heart_decoration", "heavy_heart_exclamation_mark_ornament", "love_letter", "zzz", "anger", "bomb", "boom", "sweat_drops", "dash", "dizzy", "speech_balloon", "left_speech_bubble", "right_anger_bubble", "thought_balloon", "hole", "eyeglasses", "dark_sunglasses", "necktie", "shirt", "jeans", "scarf", "gloves", "coat", "socks", "dress", "kimono", "bikini", "womans_clothes", "purse", "handbag", "pouch", "shopping_bags", "school_satchel", "mans_shoe", "athletic_shoe", "high_heel", "sandal", "boot", "crown", "womans_hat", "tophat", "mortar_board", "billed_cap", "helmet_with_white_cross", "prayer_beads", "lipstick", "ring", "gem" ]
      }
    , helperFun people_path
    )


places : ( Category, Attribute msg -> Html msg )
places =
    ( { id = "places"
      , name = "Travel & Places"
      , emojis = [ "earth_africa", "earth_americas", "earth_asia", "globe_with_meridians", "world_map", "japan", "snow_capped_mountain", "mountain", "volcano", "mount_fuji", "camping", "beach_with_umbrella", "desert", "desert_island", "national_park", "stadium", "classical_building", "building_construction", "house_buildings", "cityscape", "derelict_house_building", "house", "house_with_garden", "office", "post_office", "european_post_office", "hospital", "bank", "hotel", "love_hotel", "convenience_store", "school", "department_store", "factory", "japanese_castle", "european_castle", "wedding", "tokyo_tower", "statue_of_liberty", "church", "mosque", "synagogue", "shinto_shrine", "kaaba", "fountain", "tent", "foggy", "night_with_stars", "sunrise_over_mountains", "sunrise", "city_sunset", "city_sunrise", "bridge_at_night", "hotsprings", "milky_way", "carousel_horse", "ferris_wheel", "roller_coaster", "barber", "circus_tent", "performing_arts", "frame_with_picture", "art", "slot_machine", "steam_locomotive", "railway_car", "bullettrain_side", "bullettrain_front", "train2", "metro", "light_rail", "station", "tram", "monorail", "mountain_railway", "train", "bus", "oncoming_bus", "trolleybus", "minibus", "ambulance", "fire_engine", "police_car", "oncoming_police_car", "taxi", "oncoming_taxi", "car", "oncoming_automobile", "blue_car", "truck", "articulated_lorry", "tractor", "bike", "scooter", "motor_scooter", "busstop", "motorway", "railway_track", "fuelpump", "rotating_light", "traffic_light", "vertical_traffic_light", "construction", "octagonal_sign", "anchor", "boat", "canoe", "speedboat", "passenger_ship", "ferry", "motor_boat", "ship", "airplane", "small_airplane", "airplane_departure", "airplane_arriving", "seat", "helicopter", "suspension_railway", "mountain_cableway", "aerial_tramway", "satellite", "rocket", "flying_saucer", "bellhop_bell", "door", "bed", "couch_and_lamp", "toilet", "shower", "bathtub", "hourglass", "hourglass_flowing_sand", "watch", "alarm_clock", "stopwatch", "timer_clock", "mantelpiece_clock", "clock12", "clock1230", "clock1", "clock130", "clock2", "clock230", "clock3", "clock330", "clock4", "clock430", "clock5", "clock530", "clock6", "clock630", "clock7", "clock730", "clock8", "clock830", "clock9", "clock930", "clock10", "clock1030", "clock11", "clock1130", "new_moon", "waxing_crescent_moon", "first_quarter_moon", "moon", "full_moon", "waning_gibbous_moon", "last_quarter_moon", "waning_crescent_moon", "crescent_moon", "new_moon_with_face", "first_quarter_moon_with_face", "last_quarter_moon_with_face", "thermometer", "sunny", "full_moon_with_face", "sun_with_face", "star", "star2", "stars", "cloud", "partly_sunny", "thunder_cloud_and_rain", "mostly_sunny", "barely_sunny", "partly_sunny_rain", "rain_cloud", "snow_cloud", "lightning", "tornado", "fog", "wind_blowing_face", "cyclone", "rainbow", "closed_umbrella", "umbrella", "umbrella_with_rain_drops", "umbrella_on_ground", "zap", "snowflake", "snowman", "snowman_without_snow", "comet", "fire", "droplet", "ocean" ]
      }
    , helperFun places_path
    )


symbols : ( Category, Attribute msg -> Html msg )
symbols =
    ( { id = "symbols"
      , name = "Symbols"
      , emojis = [ "atm", "put_litter_in_its_place", "potable_water", "wheelchair", "mens", "womens", "restroom", "baby_symbol", "wc", "passport_control", "customs", "baggage_claim", "left_luggage", "warning", "children_crossing", "no_entry", "no_entry_sign", "no_bicycles", "no_smoking", "do_not_litter", "non-potable_water", "no_pedestrians", "no_mobile_phones", "underage", "radioactive_sign", "biohazard_sign", "arrow_up", "arrow_upper_right", "arrow_right", "arrow_lower_right", "arrow_down", "arrow_lower_left", "arrow_left", "arrow_upper_left", "arrow_up_down", "left_right_arrow", "leftwards_arrow_with_hook", "arrow_right_hook", "arrow_heading_up", "arrow_heading_down", "arrows_clockwise", "arrows_counterclockwise", "back", "end", "on", "soon", "top", "place_of_worship", "atom_symbol", "om_symbol", "star_of_david", "wheel_of_dharma", "yin_yang", "latin_cross", "orthodox_cross", "star_and_crescent", "peace_symbol", "menorah_with_nine_branches", "six_pointed_star", "aries", "taurus", "gemini", "cancer", "leo", "virgo", "libra", "scorpius", "sagittarius", "capricorn", "aquarius", "pisces", "ophiuchus", "twisted_rightwards_arrows", "repeat", "repeat_one", "arrow_forward", "fast_forward", "black_right_pointing_double_triangle_with_vertical_bar", "black_right_pointing_triangle_with_double_vertical_bar", "arrow_backward", "rewind", "black_left_pointing_double_triangle_with_vertical_bar", "arrow_up_small", "arrow_double_up", "arrow_down_small", "arrow_double_down", "double_vertical_bar", "black_square_for_stop", "black_circle_for_record", "eject", "cinema", "low_brightness", "high_brightness", "signal_strength", "vibration_mode", "mobile_phone_off", "recycle", "fleur_de_lis", "trident", "name_badge", "beginner", "o", "white_check_mark", "ballot_box_with_check", "heavy_check_mark", "heavy_multiplication_x", "x", "negative_squared_cross_mark", "heavy_plus_sign", "heavy_minus_sign", "heavy_division_sign", "curly_loop", "loop", "part_alternation_mark", "eight_spoked_asterisk", "eight_pointed_black_star", "sparkle", "bangbang", "interrobang", "question", "grey_question", "grey_exclamation", "exclamation", "wavy_dash", "copyright", "registered", "tm", "hash", "keycap_star", "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "keycap_ten", "100", "capital_abcd", "abcd", "1234", "symbols", "abc", "a", "ab", "b", "cl", "cool", "free", "information_source", "id", "m", "new", "ng", "o2", "ok", "parking", "sos", "up", "vs", "koko", "sa", "u6708", "u6709", "u6307", "ideograph_advantage", "u5272", "u7121", "u7981", "accept", "u7533", "u5408", "u7a7a", "congratulations", "secret", "u55b6", "u6e80", "black_small_square", "white_small_square", "white_medium_square", "black_medium_square", "white_medium_small_square", "black_medium_small_square", "black_large_square", "white_large_square", "large_orange_diamond", "large_blue_diamond", "small_orange_diamond", "small_blue_diamond", "small_red_triangle", "small_red_triangle_down", "diamond_shape_with_a_dot_inside", "radio_button", "black_square_button", "white_square_button", "white_circle", "black_circle", "red_circle", "large_blue_circle" ]
      }
    , helperFun symbols_path
    )


activity_path : List (Attribute msg)
activity_path =
    [ d "M12 0C5.373 0 0 5.372 0 12c0 6.627 5.373 12 12 12 6.628 0 12-5.373 12-12 0-6.628-5.372-12-12-12m9.949 11H17.05c.224-2.527 1.232-4.773 1.968-6.113A9.966 9.966 0 0 1 21.949 11M13 11V2.051a9.945 9.945 0 0 1 4.432 1.564c-.858 1.491-2.156 4.22-2.392 7.385H13zm-2 0H8.961c-.238-3.165-1.536-5.894-2.393-7.385A9.95 9.95 0 0 1 11 2.051V11zm0 2v8.949a9.937 9.937 0 0 1-4.432-1.564c.857-1.492 2.155-4.221 2.393-7.385H11zm4.04 0c.236 3.164 1.534 5.893 2.392 7.385A9.92 9.92 0 0 1 13 21.949V13h2.04zM4.982 4.887C5.718 6.227 6.726 8.473 6.951 11h-4.9a9.977 9.977 0 0 1 2.931-6.113M2.051 13h4.9c-.226 2.527-1.233 4.771-1.969 6.113A9.972 9.972 0 0 1 2.051 13m16.967 6.113c-.735-1.342-1.744-3.586-1.968-6.113h4.899a9.961 9.961 0 0 1-2.931 6.113" ]


flags_path : List (Attribute msg)
flags_path =
    [ d "M0 0l6.084 24H8L1.916 0zM21 5h-4l-1-4H4l3 12h3l1 4h13L21 5zM6.563 3h7.875l2 8H8.563l-2-8zm8.832 10l-2.856 1.904L12.063 13h3.332zM19 13l-1.5-6h1.938l2 8H16l3-2z" ]


foods_path : List (Attribute msg)
foods_path =
    [ d "M17 4.978c-1.838 0-2.876.396-3.68.934.513-1.172 1.768-2.934 4.68-2.934a1 1 0 0 0 0-2c-2.921 0-4.629 1.365-5.547 2.512-.064.078-.119.162-.18.244C11.73 1.838 10.798.023 9.207.023 8.579.022 7.85.306 7 .978 5.027 2.54 5.329 3.902 6.492 4.999 3.609 5.222 0 7.352 0 12.969c0 4.582 4.961 11.009 9 11.009 1.975 0 2.371-.486 3-1 .629.514 1.025 1 3 1 4.039 0 9-6.418 9-11 0-5.953-4.055-8-7-8M8.242 2.546c.641-.508.943-.523.965-.523.426.169.975 1.405 1.357 3.055-1.527-.629-2.741-1.352-2.98-1.846.059-.112.241-.356.658-.686M15 21.978c-1.08 0-1.21-.109-1.559-.402l-.176-.146c-.367-.302-.816-.452-1.266-.452s-.898.15-1.266.452l-.176.146c-.347.292-.477.402-1.557.402-2.813 0-7-5.389-7-9.009 0-5.823 4.488-5.991 5-5.991 1.939 0 2.484.471 3.387 1.251l.323.276a1.995 1.995 0 0 0 2.58 0l.323-.276c.902-.78 1.447-1.251 3.387-1.251.512 0 5 .168 5 6 0 3.617-4.187 9-7 9" ]


nature_path : List (Attribute msg)
nature_path =
    [ d "M15.5 8a1.5 1.5 0 1 0 .001 3.001A1.5 1.5 0 0 0 15.5 8M8.5 8a1.5 1.5 0 1 0 .001 3.001A1.5 1.5 0 0 0 8.5 8"
    , d "M18.933 0h-.027c-.97 0-2.138.787-3.018 1.497-1.274-.374-2.612-.51-3.887-.51-1.285 0-2.616.133-3.874.517C7.245.79 6.069 0 5.093 0h-.027C3.352 0 .07 2.67.002 7.026c-.039 2.479.276 4.238 1.04 5.013.254.258.882.677 1.295.882.191 3.177.922 5.238 2.536 6.38.897.637 2.187.949 3.2 1.102C8.04 20.6 8 20.795 8 21c0 1.773 2.35 3 4 3 1.648 0 4-1.227 4-3 0-.201-.038-.393-.072-.586 2.573-.385 5.435-1.877 5.925-7.587.396-.22.887-.568 1.104-.788.763-.774 1.079-2.534 1.04-5.013C23.929 2.67 20.646 0 18.933 0M3.223 9.135c-.237.281-.837 1.155-.884 1.238-.15-.41-.368-1.349-.337-3.291.051-3.281 2.478-4.972 3.091-5.031.256.015.731.27 1.265.646-1.11 1.171-2.275 2.915-2.352 5.125-.133.546-.398.858-.783 1.313M12 22c-.901 0-1.954-.693-2-1 0-.654.475-1.236 1-1.602V20a1 1 0 1 0 2 0v-.602c.524.365 1 .947 1 1.602-.046.307-1.099 1-2 1m3-3.48v.02a4.752 4.752 0 0 0-1.262-1.02c1.092-.516 2.239-1.334 2.239-2.217 0-1.842-1.781-2.195-3.977-2.195-2.196 0-3.978.354-3.978 2.195 0 .883 1.148 1.701 2.238 2.217A4.8 4.8 0 0 0 9 18.539v-.025c-1-.076-2.182-.281-2.973-.842-1.301-.92-1.838-3.045-1.853-6.478l.023-.041c.496-.826 1.49-1.45 1.804-3.102 0-2.047 1.357-3.631 2.362-4.522C9.37 3.178 10.555 3 11.948 3c1.447 0 2.685.192 3.733.57 1 .9 2.316 2.465 2.316 4.48.313 1.651 1.307 2.275 1.803 3.102.035.058.068.117.102.178-.059 5.967-1.949 7.01-4.902 7.19m6.628-8.202c-.037-.065-.074-.13-.113-.195a7.587 7.587 0 0 0-.739-.987c-.385-.455-.648-.768-.782-1.313-.076-2.209-1.241-3.954-2.353-5.124.531-.376 1.004-.63 1.261-.647.636.071 3.044 1.764 3.096 5.031.027 1.81-.347 3.218-.37 3.235"
    ]


objects_path : List (Attribute msg)
objects_path =
    [ d "M12 0a9 9 0 0 0-5 16.482V21s2.035 3 5 3 5-3 5-3v-4.518A9 9 0 0 0 12 0zm0 2c3.86 0 7 3.141 7 7s-3.14 7-7 7-7-3.141-7-7 3.14-7 7-7zM9 17.477c.94.332 1.946.523 3 .523s2.06-.19 3-.523v.834c-.91.436-1.925.689-3 .689a6.924 6.924 0 0 1-3-.69v-.833zm.236 3.07A8.854 8.854 0 0 0 12 21c.965 0 1.888-.167 2.758-.451C14.155 21.173 13.153 22 12 22c-1.102 0-2.117-.789-2.764-1.453z"
    , d "M14.745 12.449h-.004c-.852-.024-1.188-.858-1.577-1.824-.421-1.061-.703-1.561-1.182-1.566h-.009c-.481 0-.783.497-1.235 1.537-.436.982-.801 1.811-1.636 1.791l-.276-.043c-.565-.171-.853-.691-1.284-1.794-.125-.313-.202-.632-.27-.913-.051-.213-.127-.53-.195-.634C7.067 9.004 7.039 9 6.99 9A1 1 0 0 1 7 7h.01c1.662.017 2.015 1.373 2.198 2.134.486-.981 1.304-2.058 2.797-2.075 1.531.018 2.28 1.153 2.731 2.141l.002-.008C14.944 8.424 15.327 7 16.979 7h.032A1 1 0 1 1 17 9h-.011c-.149.076-.256.474-.319.709a6.484 6.484 0 0 1-.311.951c-.429.973-.79 1.789-1.614 1.789"
    ]


people_path : List (Attribute msg)
people_path =
    [ d "M12 0C5.373 0 0 5.373 0 12s5.373 12 12 12 12-5.373 12-12S18.627 0 12 0m0 22C6.486 22 2 17.514 2 12S6.486 2 12 2s10 4.486 10 10-4.486 10-10 10"
    , d "M8 7a2 2 0 1 0-.001 3.999A2 2 0 0 0 8 7M16 7a2 2 0 1 0-.001 3.999A2 2 0 0 0 16 7M15.232 15c-.693 1.195-1.87 2-3.349 2-1.477 0-2.655-.805-3.347-2H15m3-2H6a6 6 0 1 0 12 0"
    ]


places_path : List (Attribute msg)
places_path =
    [ d "M6.5 12C5.122 12 4 13.121 4 14.5S5.122 17 6.5 17 9 15.879 9 14.5 7.878 12 6.5 12m0 3c-.275 0-.5-.225-.5-.5s.225-.5.5-.5.5.225.5.5-.225.5-.5.5M17.5 12c-1.378 0-2.5 1.121-2.5 2.5s1.122 2.5 2.5 2.5 2.5-1.121 2.5-2.5-1.122-2.5-2.5-2.5m0 3c-.275 0-.5-.225-.5-.5s.225-.5.5-.5.5.225.5.5-.225.5-.5.5"
    , d "M22.482 9.494l-1.039-.346L21.4 9h.6c.552 0 1-.439 1-.992 0-.006-.003-.008-.003-.008H23c0-1-.889-2-1.984-2h-.642l-.731-1.717C19.262 3.012 18.091 2 16.764 2H7.236C5.909 2 4.738 3.012 4.357 4.283L3.626 6h-.642C1.889 6 1 7 1 8h.003S1 8.002 1 8.008C1 8.561 1.448 9 2 9h.6l-.043.148-1.039.346a2.001 2.001 0 0 0-1.359 2.097l.751 7.508a1 1 0 0 0 .994.901H3v1c0 1.103.896 2 2 2h2c1.104 0 2-.897 2-2v-1h6v1c0 1.103.896 2 2 2h2c1.104 0 2-.897 2-2v-1h1.096a.999.999 0 0 0 .994-.901l.751-7.508a2.001 2.001 0 0 0-1.359-2.097M6.273 4.857C6.402 4.43 6.788 4 7.236 4h9.527c.448 0 .834.43.963.857L19.313 9H4.688l1.585-4.143zM7 21H5v-1h2v1zm12 0h-2v-1h2v1zm2.189-3H2.811l-.662-6.607L3 11h18l.852.393L21.189 18z"
    ]


symbols_path : List (Attribute msg)
symbols_path =
    [ d "M0 0h11v2H0zM4 11h3V6h4V4H0v2h4zM15.5 17c1.381 0 2.5-1.116 2.5-2.493s-1.119-2.493-2.5-2.493S13 13.13 13 14.507 14.119 17 15.5 17m0-2.986c.276 0 .5.222.5.493 0 .272-.224.493-.5.493s-.5-.221-.5-.493.224-.493.5-.493M21.5 19.014c-1.381 0-2.5 1.116-2.5 2.493S20.119 24 21.5 24s2.5-1.116 2.5-2.493-1.119-2.493-2.5-2.493m0 2.986a.497.497 0 0 1-.5-.493c0-.271.224-.493.5-.493s.5.222.5.493a.497.497 0 0 1-.5.493M22 13l-9 9 1.513 1.5 8.99-9.009zM17 11c2.209 0 4-1.119 4-2.5V2s.985-.161 1.498.949C23.01 4.055 23 6 23 6s1-1.119 1-3.135C24-.02 21 0 21 0h-2v6.347A5.853 5.853 0 0 0 17 6c-2.209 0-4 1.119-4 2.5s1.791 2.5 4 2.5M10.297 20.482l-1.475-1.585a47.54 47.54 0 0 1-1.442 1.129c-.307-.288-.989-1.016-2.045-2.183.902-.836 1.479-1.466 1.729-1.892s.376-.871.376-1.336c0-.592-.273-1.178-.818-1.759-.546-.581-1.329-.871-2.349-.871-1.008 0-1.79.293-2.344.879-.556.587-.832 1.181-.832 1.784 0 .813.419 1.748 1.256 2.805-.847.614-1.444 1.208-1.794 1.784a3.465 3.465 0 0 0-.523 1.833c0 .857.308 1.56.924 2.107.616.549 1.423.823 2.42.823 1.173 0 2.444-.379 3.813-1.137L8.235 24h2.819l-2.09-2.383 1.333-1.135zm-6.736-6.389a1.02 1.02 0 0 1 .73-.286c.31 0 .559.085.747.254a.849.849 0 0 1 .283.659c0 .518-.419 1.112-1.257 1.784-.536-.651-.805-1.231-.805-1.742a.901.901 0 0 1 .302-.669M3.74 22c-.427 0-.778-.116-1.057-.349-.279-.232-.418-.487-.418-.766 0-.594.509-1.288 1.527-2.083.968 1.134 1.717 1.946 2.248 2.438-.921.507-1.686.76-2.3.76" ]

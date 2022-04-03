stories = {
    ["size"] = 13,
    ["Outside the Town of Malbork"] = {
        ["houses"] = {
            {["name"] = "Your Childhood Home", ["accessible"] = false,
                ["characters"] = {},
                ["script"] = {
                    "You walk towards the old house where you grew up.",
                    "The lights aren't on.",
                    "And why would they be?",
                    "Reality catches up to you and blows the wind out of your chest.",
                    "She's gone and she won't be coming back.",
                    "...",
                    "You turn over a potted plant by the front door, where she used to hide the spare key.",
                    "As you push the door open, there is no fragrance, no scent, no essence. "..
                    "Just small clouds condensing from your breath.",
                    "You sit at the kitchen table and imagine the life she led."
                },
                ["next"] = function() 
                    return "The Fishmonger's Daughter" end
                },
            {["name"] = "The Local Shop", ["accessible"] = false},
            {["name"] = "The Old Fishmonger's Cottage", ["accessible"] = true,
                ["characters"] = {
                    {["name"] = "Grandma"}
                },
                ["script"] = {
                    "You walk towards the Old Fishmonger's Cottage.",
                    "As you push the door open, the vegetal smell of celery and potato soup surrounds you.",
                    "Your Grandmother, standing over the stove looks you up and down, her wrinkled face bending into a cracked grin.",
                    "Bethany: You're early! That's not like our family... I was just making your favourite supper.",
                    "Celery and potato soup is NOT your favourite supper.",
                    "Bethany: The last time someone came to this house too early was when your grandfather came back from the war - have I told you that story before?"
                },
                ["next"] = function()
                    return "The Soldier and the Fishmonger's Daughter" end},
            {["name"] = "The Ruins of Uncle Matthias's Cabin", ["accessible"] = false,
                ["characters"] = {},
                ["script"] = {
                    "You haven't paid much attention to this unassuming pile of rubble and timber.",
                    "The mosses and ferns have reclaimed much of what was once here - but artifacts, fossils of a former life remain.",
                    "A single weather beaten brogue. Men's. Brown leather. Size 9.",
                    "A typewriter. Metal. Missing the letter 'E'.",
                    "A wooden box sits under a corrugated iron sheet, shielding its contents from the elements.",
                    "Digging your hands into the container you pull out one (1) copy of [The Inevitable]. Curiosity gets the better of you and you start reading the first page."
                },
                ["next"] = function()
                    get_house("The Inevitable", "IV: Embracing the Inevitable")["accessible"] = true
                    return "The Inevitable" 
                end},
        },
        ["starting point"] = "outside_night",
        ["intro"] = {
            "You walk up and over the crest of a snow covered hill. In the distance you make out a huddle of house lights.",
            "The town is unrecognisable at night, but then, your memories of this place are ones of long youthful summers.",
            "Your Grandmother lives in the Old Fishmonger's Cottage."
        }
    },
    ["Outside the Town of Malbork II"] = {
        ["houses"] = {
            {["name"] = "Your Childhood Home", ["accessible"] = false},
            {["name"] = "The Local Shop", ["accessible"] = false},
            {["name"] = "The Old Fishmonger's Cottage", ["accessible"] = true,
                ["characters"] = {
                    {["name"] = "Grandma"}
                },
                ["script"] = {
                    "You walk towards the Old Fishmonger's Cottage.",
                    "As you push the door open, the vegetal smell of celery and potato soup surrounds you.",
                    "An old woman, standing over the stove looks you up and down, her wrinkled face bending into a cracked grin.",
                    "????: Come in, come in... I was just making your favourite supper.",
                    "Is celery and potato soup your favourite supper..?",
                    "She gestures you to sit down at a large wooden dinner table.",
                    "The surface is covered in papers - some typed, some hand written.",
                    "????: Oh don't mind my notes, child - these days I'd forget my own name if I didn't write it down somewhere.",
                    "Inspecting the text more closely you realise that the old woman has been scrawling over a manuscript of some kind.",
                    "Taking a step back you see the history of the document: a child's handwriting maturing into the angsty script of an adolescent,\n" ..
                    "that script falling away into the typed word of an adult\n" ..
                    "All overlaid with scrawls and jots and scribbles - the author of which is now standing over you, soup bowl and ladle in hand.",
                    "The old woman sighs.",
                    "????: It's inevitable. The inevitable... ",
                    "She pauses and looks over the documents.",
                    "????: Ah! There... see.",
                    "Matching her gaze your eyes land on what must have been the title page.\n"..
                    "With a bold, angry typeface you begin to read [The Inevitable]."
                },
                ["next"] = function() 
                    get_house("Outside the Town of Malbork", "The Ruins of Uncle Matthias's Cabin")["accessible"] = true
                    return "The Inevitable" 
                end},
            {["name"] = "The Ruins of Uncle Matthias's Cabin", ["accessible"] = false},
        },
        ["starting point"] = "outside_night",
        ["intro"] = {
            "You walk up and over the crest of a snow covered hill. In the distance you make out a huddle of house lights.",
            "The town is unrecognisable at night, but then, your memories of this place are ...",
            "...",
            "Sorry, child... I've forgotten where we were.",
            "Who lives in the Old Fishmonger's Cottage?"
        }
    },
    ["The Soldier and the Fishmonger's Daughter"] = {
        ["houses"] = {
            {["name"] = "Your Childhood Home", ["accessible"] = false,
                ["characters"] = {
                    {["name"] = "Matthias"},
                },
                ["script"] = {
                    "Instead of visiting your sweetheart, you stop in to see the old house where you grew up.",
                    "Your younger brother is there, his suitcase packed and holding a weathered bundle of papers under his arm - his manuscript.",
                    "Matthias: I'm off to the big city, I can't find a publisher for my novel in this backwater town.",
                    "From the day he could set ink on paper your brother Matthias toiled on that text. In a culture rich in oral storytelling he fiercely guarded his written work.",
                    "Matthias: When I've made my millions and you've finally married Bethany, I'll come back and build myself a cabin - just like Uncle Grigor did!",
                    "Your brother's actions and motivations elude you. He is 12 years your junior, but this distance cannot conceal a kinship.\n" ..
                    "In the shared silence that follows Matthias's announcement your eyes land on a book left open on the credenza -",
                    "Uncle Grigor's copy of the instructional guidebook [Cabins: a Guide to Building your Home away from Home]."
                },
                ["next"] = function() 
                    return "Cabins: a Guide to Building your Home away from Home" 
                end},
            {["name"] = "The Local Shop", ["accessible"] = false},
            {["name"] = "The Fishmonger's Cottage", ["accessible"] = true,
                ["characters"] = {},
                ["script"] = {
                    "You run towards the Fishmonger's cottage.",
                    "As you open the door your mind races, visualising the last time you saw your sweetheart before the day you got on that train.",
                    "That sweet fragrant image is rapidly irrealised when the door is caught by the meaty hand of the Fishmonger, her Father.",
                    "The Fishmonger: You aren't right for my daughter - We won't inherit the curse that follows your family! Haven't you heard the tale of [The Soldier and the Fishmonger's Daughter]?"
                },
                ["next"] = function() 
                    get_house("The Soldier and the Fishmonger's Daughter", "Your Childhood Home")["accessible"] = true
                    return "The Soldier and the Fishmonger's Daughter" 
                end},
            {["name"] = "Uncle Grigor's Cabin", ["accessible"] = false},
        },
        ["starting point"] = "outside_day",
        ["intro"] = {
            "You trek down the valley to your hometown.", 
            "For the first time in 18 months the starch of your secondhand uniform doesn't bother you.",
            "You have one thing, one word, one name on your mind. Bethany."}
    },
    ["Cabins: a Guide to Building your Home away from Home"] = {
        ["houses"] = {
            {["name"] = "Your Childhood Home", ["accessible"] = false},
            {["name"] = "The Local Shop", ["accessible"] = true,
                    ["characters"] = {
                    {["name"] = "The Shopkeeper"},
                },
                ["script"] = {
                    "You go to the shop to purchase some timber.",
                    "The Shopkeeper: Good day sir, how can I- ",
                    "The Shopkeeper: My goodness, can it be? You're - You're... Grigor? No- Matthias?",
                    "The Shopkeeper: No! His nephew! That's it! Can't fool these eyes hahahaha!",
                    "The Shopkeeper: What a crazy coincidence you coming back here... You know, I just started reading that book again...",
                    "The Shopkeeper: You know the one, sure! Where the protagonist returns to the village he grew up to see his grandma, [Outside the town of Malbork]."
                },
                ["next"] = function() 
                    get_house("Outside the Town of Malbork", "The Old Fishmonger's Cottage")["accessible"] = false
                    get_house("Outside the Town of Malbork", "Your Childhood Home")["accessible"] = true
                    return "Outside the Town of Malbork" end
            },
            {["name"] = "The Fishmonger's Cottage", ["accessible"] = false},
            {["name"] = "An Empty Plot of Land", ["accessible"] = false,
                ["characters"] = {},
                ["script"] = {
                    "Step 3: Start Laying the Foundations.",
                    "Step 4: Crea-",
                    "Step 5",
                    "Ste",
                    "S.",
                    ".",
                    "George Kemp: I'm sorry one second...",
                    "George Kemp: ...",
                    "George Kemp: This shouldn't have happened.",
                    "George Kemp: Steps 5 through Step 23 are missing? Like, someone's torn out the pages?",
                    "George Kemp: ...",
                    "George Kemp: Ok - sorry, um, we'll just skip to the end?",
                    "Step 24: Stand Back and be Proud! Take in the Majesty of Your Time, Hard Work, And Effort. "..
                    "Your Family Will be Able to Enjoy your Cabin for Generations to Come!",
                    "George Kemp: ...",
                    "George Kemp: Ok that sucked?? Sorry I don't know how you can build a cabin with so little to go on...",
                    "George Kemp: Y'know what - I'll just reset this.",
                    "George Kemp: Should fix it right up!",
                    "George Kemp: ...I think"
                },
                ["next"] = function() 
                    state = "menu"
                    gameState = ""
                    menuState = 1
                    return "Outside the Town of Malbork II"
                end},
        },
        ["starting point"] = "outside_day",
        ["intro"] = {"Step 1: Find some Timber."}
    },
    ["The Fishmonger's Daughter"] = {
        ["houses"] = {
            {["name"] = "Your Childhood Home", ["accessible"] = true,
                ["characters"] = {
                    {["name"] = "Matthias"},
                },
                ["script"] = {
                    "Ignoring your father's tasks you set out towards finding someone to talk to.",
                    "There's a quiet boy you taught to read and write. "..
                    "He rarely goes outside, only on occasion to purchase ink and paper.",
                    "As you approach his house, you see his beady eyes staring out at you from a second story window.",
                    "Matthias: He's not here!",
                    "The boy shouts from the window defiantly.",
                    "Matthias: But I'll come down and let you in if you'll help me with something...",
                    "Half a minute passes then you hear the sound of the door bolt turning.",
                    "Before you are even halfway through the door Matthias has thrust his manuscript into your hands.",
                    "Matthias: I need some help with some words..! There's a sentence here and I really like it but it just doesn't work as it needs a better synonym for 'avoid'...",
                    "You sit, gesture for the boy to put the kettle on, and start reading the sentence in question."
                },
                ["next"] = function() 
                    return "The Inevitable" 
                end},
            {["name"] = "The Local Shop", ["accessible"] = true,
                ["characters"] = {
                    {["name"] = "The Shopkeeper"}
                },
                ["script"] = {
                    "You enter the only shop in this town.",
                    "This strange place stocks all manner of things, from groceries to building supplies.",
                    "Perhaps the distance to the next nearest town or marketplace necessitates the chaotic merchandise - "..
                    "or perhaps it's just the folly of the shop's equally disorded keeper.",
                    "You hand over the list you father wrote.",
                    "The Shopkeeper: Here you are! That'll be one pound, three and six.",
                    "The Shopkeeper: Have you been to see the Widow Sofia today? I'm worried about that cabin of hers.",
                    "The Shopkeeper: Her husband Grigor was NOT a structural engineer if you catch my drift.",
                    "The Shopkeeper: That place is one load bearing wall away from being a heap on the floor if you ask me.",
                    "The Shopkeeper: ....",
                    "The Shopkeeper: Ok - guess who I am:",
                    "The Shopkeeper: Jerry! These are load bearing walls, they're not gonna come down!",
                    "His eyes widen and he nods at you but you respond with a blank face.",
                    "He tries again.",
                    "The Shopkeeper: Jerry! These are load bearing walls, they're not gonna come down!",
                    "This is really embarrassing.",
                    "The Shopkeeper: Jerry! These are load bearing walls, they're not gonna come down!",
                    "The other shoppers are looking over.",
                    "The Shopkeeper: Seinfeld! - y'know, the one episode with glowing red chicken sign?",
                    "You give him another blank face, but he takes your polite smile to mean that you want to hear more.",
                },
                ["next"] = function() 
                    return "Seinfeld S8E8: The Chicken Roaster" 
                end},
            {["name"] = "The Fishmonger's Cottage", ["accessible"] = true,
                ["characters"] = {},
                ["script"] = {
                    "There's no need to go out right now - these chores can be handled later.",
                    "And besides, that light shining onto your face is making you feel very sleepy.",
                    "You begin to drift in and out of a nap.",
                    "Thoughts of leaving this town arrive in your mind.\n"..
                    "And with them, thoughts of returning."
                },
                ["next"] = function() 
                    return "Outside the Town of Malbork" 
                end},
            {["name"] = "Uncle Grigor's Cabin", ["accessible"] = true,
                ["characters"] = {
                    {["name"] = "Grandma"}
                },
                ["script"] = {
                    "You visit the widow Sofia.",
                    "The old woman sits silently in a dusty kitchen, hands in her lap.",
                    "You place the smoked halibut in an icebox and attempt to put away some of the mugs, pans and plates that decorate the surfaces.",
                    "You begin to feel silly, this action or duty you have taken on upsets you in a way you don't understand.",
                    "Turning towards the old woman, you silence that voice.",
                    "You sit with her. She nods and smiles.",
                    "As you return the smile you notice, open upon the table, [Cabins: a Guide to Building your Home away from Home]"
                },
                ["next"] = function() 
                    get_house("Cabins: a Guide to Building your Home away from Home", "An Empty Plot of Land")["accessible"] = true
                    stories["Cabins: a Guide to Building your Home away from Home"]["intro"] = {"Step 2: Find some land."}
                    return "Cabins: a Guide to Building your Home away from Home"
                end},
        },
        ["starting point"] = "outside_day",
        ["intro"] = {
            "The summer sun peeks in through your bedroom window.",
            "You don't realise yet but you've outgrown this parochial town.",
            "Your mind isn't receiving the novelty and stimulation it needs for a young person of your talents. "..
            "What your father refers to as your 'Moods' is your subconscious trying to make you aware it wants something new.",
            "Regardless, he gave you tasks to complete - hoping to heal you through distraction.",
            "1. Visit the shop to purchase milk (1 pint) and eggs (A dozen).\n"..
            "2. Take a smoked halibut to the Widow Sofia."
        }
    },
    ["Seinfeld S8E8: The Chicken Roaster"] = {
        ["houses"] = {
        {["name"] = "Your Childhood Home", ["accessible"] = false,
            ["characters"] = {
                {["name"] = "Matthias"},
            },
            ["script"] = {
                "You stop in on Matthias.",
                "He lets you read his book, [The Inevitable]."
            },
            ["next"] = function() 
                return "The Inevitable" 
            end},
        {["name"] = "Kenny Roger's Chicken", ["accessible"] = false,
            ["characters"] = {
                {["name"] = "The Shopkeeper"}
            },
            ["script"] = {
                "The Shopkeeper: Have you seen that episode of Seinfeld - y'know, the one with glowing red chicken sign?"
            },
            ["next"] = function() 
                return "Seinfeld S8E8: The Chicken Roaster" 
            end},
        {["name"] = "Kramer's Apartment", ["accessible"] = false,
            ["characters"] = {},
            ["script"] = {
                "You go back home and start daydreaming about your future husband and future grandchildren - all the stories you will tell them."
            },
            ["next"] = function() 
                return "Outside the Town of Malbork" 
            end},
        {["name"] = "Jerry's Apartment", ["accessible"] = true,
            ["characters"] = {
                {["name"] = "Kramer"},
                {["name"] = "Jerry"}
            },
            ["script"] = {
                "Jerry: How's life on the red planet?",
                "Kramer: Its killing me, I can't eat, I can't sleep, all I can see is that giant red sun in the shape of a chicken.",
                "Jerry: Well, did you go down to the Kenny Rogers and complain?",
                "Kramer: Ah, they gave me the heave ho. I don't think that Kenny Rogers has any idea what's going on down there.",
                "[Kramer gets out a bowl, fills it with cereal and then removes the tomato juice from the fridge.]",
                "Jerry: What are you doing?",
                "Kramer: Getting some cereal.",
                "Jerry: That's tomato juice.",
                "[Kramer takes a big spoonful of cereal with tomato juice, then spits it out]",
                "Kramer: That looked like milk to me! Jerry my Rods and Cones are all screwed up! Alright, that's it I gotta move in with you Jerry.",
                "[Kramer then spills the cereal on Jerry's wall]",
                "Jerry: I don't know Kramer, my only concern is that ....",
                "[Kramer cleans the wall with a dish rag]",
                "Jerry: ..living together after a while we might start to get on each others nerves a little.",
                "[Kramer then squeezes juice from the rag into container and puts container back in fridge]",
                "Kramer: Alright listen to me, I got a great idea. You're a heavy sleeper, right? Why don't we switch apartments?",
                "Jerry: Or I could sleep in the park? You could knock these walls down, make it an eight room luxury suite.",
                "Kramer: Jerry! These are load bearing walls, they're not gonna come down!",
                "Jerry: Yea, that's no good.",
                "Kramer: I may have to drive that place out of business.",
                "Jerry: How you gonna do that?",
                "Kramer: Like we did in the sixties, takin' in to the streets."
            },
            ["next"] = function() 
                get_house("Cabins: a Guide to Building your Home away from Home", "An Empty Plot of Land")["accessible"] = true
                stories["Cabins: a Guide to Building your Home away from Home"]["intro"] = {"Step 2: Find some land."}
                return "Cabins: a Guide to Building your Home away from Home"
            end},
        },
        ["starting point"] = "outside_day",
        ["intro"] = {
            "'The Chicken Roaster' is the 142nd episode of the sitcom Seinfeld. This was the eighth episode for the eighth season, originally airing on November 14, 1996.",
            "The episode's story follows the mishaps which follow when Kenny Rogers Roasters opens a branch in the characters' neighborhood. The restaurant's neon sign shines into Kramer's apartment, disturbing first him and then Jerry after they switch apartments, but Jerry opposes Kramer's efforts to shut the restaurant down since a college friend of his is assistant manager at the branch."}
    },
    ["The Inevitable"] = {
        ["houses"] = {
            {["name"] = "I: Your Childhood Home", ["accessible"] = false},
            {["name"] = "II: The Local Shop", ["accessible"] = false},
            {["name"] = "III: Delaying the Inevitable", ["accessible"] = true,
                ["characters"] = {
                    {["name"] = "Grandma"}
                },
                ["script"] = {
                    "You ??????? twards th Old Fishmongr's Cottag.\n"..
                    "           the fishmonger s cottage ?",
                    "As you push th door opn, th VEGETABLES smll of CELERY and potato POTATO soup surrounds you.",
                    " BETHANY   \n"..
                    "                    standing ovr th stov looks you up and down, hr wrinkld fac bnding into a crackd grin.",
                    "\n"..
                    "???: You'r arly! That's not lik our family... I was just making your favourit suppr.",
                    "REMEMBER TO MAKE CELERY AND POTATO SOUP .....\n"..
                    " REMEMBER TO MAKE CELERY AND POTATO SOUP \n"..
                    "     her favourite :) ",
                    "\n"..
                    "\n"..
                    "Bthany: Th last tim somon cam to this hous too arly was whn your grandfathr cam back from th war - hav I told you that story bfor?"
                },
                ["next"] = function() return "The Soldier and the Fishmonger's Daughter" end},
            {["name"] = "IV: Embracing the Inevitable", ["accessible"] = false,
                ["characters"] = {},
                ["script"] = {"You have reached the final page of the story.",
                              "Was the non-linear narrative intentional? Or were the page numbers lost to time?",
                              "You log on to goodreads.com to add the book to your profile.",
                              "At least then your friends will know you've read it.",},
                ["next"] = function()
                    state = "The End"
                    gameState = ""
                    menuState = 1
                    return "Outside the Town of Malbork" 
                end},
        },
        ["starting point"] = "outside_night",
        ["intro"] = {
            "                                   £34 . 1            Bethany \n"..
            "You walk up         crst of a snow covered hill. In the distanc you mak out a huddl of hous lights.\n" ..
            "     tuesday 30th MAN coming round !!! let him in !!! THIS TIME !!",
            "The town is unrcognisabl at night, but thn, your mmoris of this plac ar ons of long youthful summrs.\n"..
            "\n"..
            "      simon, matthias/GRIGOR + SOFIA                   !! BETHANY !!",
            "                                   her child tomorrow \n",
            "                                       her child tomorrow \n",
            "                                       HER child tomorrow \n"..
            "Your Grandmothr livs in the Volum III: Dlaying th Invitabl.\n"..
            "                    Beth",
        }
    }
}

function get_house(story, location)
    for i, value in pairs(stories[story]["houses"]) do
        if value["name"] == location then
            return value
        end
    end
    return nil
end
stories = {
    ["Outside the Town of Malbork"] = {
        ["houses"] = {
            {["name"] = "house1", ["accessible"] = false},
            {["name"] = "The Local Shop", ["accessible"] = false},
            {["name"] = "The Old Fishmonger's Cottage", ["accessible"] = true,
                ["characters"] = {
                    {["name"] = "Grandma Bethany"}
                },
                ["script"] = {
                    "You walk towards the Old Fishmonger's Cottage.",
                    "As you push the door open, the vegetal smell of celery and potato soup surrounds you.",
                    "Your Grandmother, standing over the stove looks you up and down, her wrinkled face bending into a cracked grin.",
                    "Bethany: You're early! That's not like our family... I was just making your favourite supper.",
                    "Celery and potato soup is NOT your favourite supper.",
                    "Bethany: The last time someone came to this house too early was when your grandfather came back from the war - have I told you that story before?"
                },
                ["next"] = function() return "The Soldier and the Fishmonger's Daughter" end},
            {["name"] = "The Ruins of Uncle Matthias's Cabin", ["accessible"] = false},
        },
        ["starting point"] = "outside",
        ["intro"] = {
            "You walk up and over the crest of a snow covered hill. In the distance you make out a huddle of house lights.",
            "The town is unrecognisable at night, but then, your memories of this place are ones of long youthful summers.",
            "Your Grandmother lives in the Old Fishmonger's Cottage."
        }
    },
    ["The Soldier and the Fishmonger's Daughter"] = {
        ["houses"] = {
            {["name"] = "Your Childhood Home", ["accessible"] = false,
                ["characters"] = {
                    {["name"] = "Brother Matthias"},
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
                ["characters"] = {
                    {["name"] = "Bethany"},
                    {["name"] = "Fishmonger"}
                },
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
        ["starting point"] = "outside",
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
                return "Outside the Town of Malbork" 
            end},
            {["name"] = "The Fishmonger's Cottage", ["accessible"] = false},
            {["name"] = "An empty plot of land", ["accessible"] = false},
        },
        ["starting point"] = "outside",
        ["intro"] = {"Step 1: Find some timber."}
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
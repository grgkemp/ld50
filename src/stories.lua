stories = {
    ["The Soldier and the Fishmonger's Daughter"] = {
        ["houses"] = {
            {["name"] = "house1", ["accessible"] = false},
            {["name"] = "house2", ["accessible"] = false},
            {["name"] = "The Fishmonger's", ["accessible"] = true,
                ["characters"] = {
                    {["name"] = "Daughter"},
                    {["name"] = "Fishmonger"}
                },
                ["script"] = {
                    "Goes to the same house, is accosted by sweetheart's father who says:", 
                    "You aren't right for my daughter - it's bad luck! Haven't you heard the tale of [The Soldier and the Fishmonger's Daughter]?"
                },
                ["next"] = "The Soldier and the Fishmonger's Daughter"},
            {["name"] = "Uncle's Cabin", ["accessible"] = false},
        },
        ["starting point"] = "outside",
        ["intro"] = {"Player (as grandfather) returns to village to see his sweetheart"}
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
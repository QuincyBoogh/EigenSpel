--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--

hasKey = false
hasToiletPaper = false
hasBedroomKey = false
hasToiletKey = false

function story(aName)
    if aName == "start" then
        CLS()
        setBackground("wcscreen.jpg")
        createTextfield("Welcome to the place where shit happens")
        createButton("startscreen", "Start this Crappy game")
    elseif aName == "startscreen" then
        CLS()
        setBackground("House.jpg")
        createTextfield("As you wake up you realize your stomach starts to turn\n u have to take a big load...")
        createButton("entrance", "continue the journey")
    elseif aName == "entrance" then
        CLS()
        setBackground("House.jpg")
        createTextfield("What choice do you take?")
        createButton("hallway", "go inside and look for a toilet")
        createButton("exit", "no thanks, I'll take a poopoo under a tree")
    elseif aName == "exit" then
        CLS()
        setBackground("youdied.jpg")
        createTextfield("wrong choice....")
        createButton("start", "try again")
    elseif aName == "hallway" then
        CLS()
        setBackground("hallway.jpg")
        createTextfield("As you have entered the house you see multiple doors")
        createButton("upstairs", "check upstairs")
        createButton("hiddenbookshelfdoor", "hidden bookshelf")
        createButton("right room", "Check out the open right room")
        createButton("closed living room", "living room door")
    elseif aName == "closed living room" then
        CLS()
        setBackground("lockeddoor.jpg")
        createTextfield("You notice the door is locked from the inside")
        createButton("hallway", "go back to the hallway")
        createButton("locked door 1", "Keep pushing even though you know it won't open idiot")
    elseif aName == "locked door 1" then
        CLS()
        setBackground("facepalm.jpg")
        createTextfield("What did you think would happen, idiot?")
        createButton("youdied2", "be a badass and kick the door!")
        createButton("hallway", "go back to the hallway")
    elseif aName == "youdied2" then
        CLS()
        setBackground("youdied.jpg")
        createTextfield("You broke your leg, you are not that badass")
        createButton("start", "try again")
    elseif aName == "right room" then
        CLS()
        setBackground("insidehouse.jpg")
        createTextfield("You see a big library filled with books")
        createButton("hallway", "go back")
        createButton("desk", "Search in the desk")
        createButton("Bookshelf", "Check in between the bookshelf")
    elseif aName == "hiddenbookshelfdoor" then
        CLS()
        setBackground("hiddenbookshelfdoor.jpg")
        if hasKey == true then
            createTextfield("You notice you have a key for this lock")
            createButton("hidden bookshelf", "use the key")
        else
            createTextfield("The door is locked")
            createButton("hallway", "Go back")
        end
    elseif aName == "desk" then
        CLS()
        setBackground("drawer.jpg")
        createTextfield("You notice the desk is open and find something in the drawer")
        createButton("right room", "go back")
        hasKey = true
    elseif aName == "Bookshelf" then
        CLS()
        setBackground("bookshelf.jpg")
        createTextfield("You look around but find nothing of interest")
        createButton("right room", "go back")
    elseif aName == "hidden bookshelf" then
        CLS()
        setBackground("TP.jpg")
        createTextfield("You find a strange small room, maybe look around")
        createButton("leftcorner", "search left corner")
        createButton("rightcorner", "search right corner")
        createButton("hallway", "go back")
    elseif aName == "rightcorner" then
        CLS()
        setBackground("rolls.jpg")
        createTextfield("In between the toilet rolls you find a shiny key")
        hasBedroomKey = true
        createButton("hidden bookshelf", "go back")
    elseif aName == "leftcorner" then
        CLS()
        setBackground("Gold.jpg")
        createTextfield("WHAT?! You find a golden toilet paper roll")
        hasToiletPaper = true
        createButton("hidden bookshelf", "go back")
    elseif aName == "upstairs" then
        CLS()
        setBackground("firstfloor.jpg")
        createTextfield("As you look around you see 2 doors")
        createButton("toiletdoor", "check the left door with gold handle")
        createButton("bedroomdoor", "check the right door")
        createButton("hallway", "go downstairs")
    elseif aName == "bedroomdoor" then
        CLS()
        setBackground("hiddenbookshelfdoor.jpg")
        if hasBedroomKey == true then
            createTextfield("You notice you have a key for this lock")
            createButton("Bedroom", "use the key")
        else
            createTextfield("The door is locked")
            createButton("upstairs", "Go back")
        end
    elseif aName == "Bedroom" then
        CLS()
        setBackground("oldbed.jpg")
        createTextfield("You notice a shiny key with a toilet paper roll on it, you take it with you")
        hasToiletKey = true
        createButton("upstairs", "go back")
    elseif aName == "toiletdoor" then
        CLS()
        setBackground("hiddenbookshelfdoor.jpg")
        if hasToiletKey == true then
            createTextfield("You notice you have a key for this lock")
            createButton("Toilet", "use the key")
        else
            createTextfield("The door is locked")
            createButton("upstairs", "Go back")
        end
    elseif aName == "Toilet" then
        CLS()
        setBackground("goldentoilet.jpg")
        createTextfield("FINALLY ITS TIME!!!")
        createButton("bed","use the toilet...")
    elseif aName == "bed" then
        CLS()
        setBackground("bed.jpg")
        createTextfield("It was all a dream... or was it?")
    end
end



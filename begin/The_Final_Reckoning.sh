#!/bin/bash
# The_Final_Reckoning.sh
# Final Build - Last Updated 12/1/2020
# Main driver code for LARK project

#DEFINE TEXT COLORS

BLUE='\033[0;34m' #PLAYER
GREEN='\033[0;32m' #VALENS
PURPLE='\033[0;35m' #SKELETON GRUNT
YELLOW='\033[1;33m' #LUDO
RED='\033[0;31m' #SKELETAL BOSS
WHITE='\033[1;37m' #NARRATION
CYAN='\033[0;36m' #TECH TIP
NC='\033[0m'

#################################


# Read Players Name
# Used in story, how the player is refered to

echo "Welcome. Please type your name and press \"Enter\": "
read playerName

#BEGIN GAME

clear

sleep 2
echo -e "${WHITE}You hear a faint howl of wind...${NC}"
sleep 4
echo -e "${BLUE}$playerName: ...Huh?${NC}"
sleep 3
echo -e "${WHITE}Before you see a bright aberration moving towards your direction...${NC}"
sleep 4
echo -e "${YELLOW}???: Hello $playerName. Its good to see you awake.${NC}"
sleep 3
echo -e "${BLUE}$playerName: What... what are you? What's going on?${NC}"
sleep 3
echo -e "${YELLOW}???: My name is Ludo. I am a divine being, a servant of the light.${NC}"
sleep 3
echo -e "${YELLOW}Ludo: Your faith in the light as a paladin, $playerName, has brought you a second chance.${NC}"
sleep 4
echo -e "${YELLOW}Ludo: Not too long ago, you and your allies section of the foothold you were all sworn to proect was overrun by an ambush from the undead.${NC}"
sleep 6
echo -e "${YELLOW}Ludo: You fell, as well as your allies.${NC}"
sleep 5
echo -e "${YELLOW}Ludo: But as a strong paladin, you have been chosen for resurrection, and tasked with ridding the undead from the rest of the foothold before they destroy it all.${NC}"
sleep 6
echo -e "${YELLOW}Ludo: With my help, of course.${NC}"
sleep 3
echo -e "${BLUE}$playerName: Thank you Ludo, for this opportunity. I am invigorated to begin, but why does it feel like I can't remember anything...${NC}"
sleep 5
echo -e "${YELLOW}Ludo: It's an unfortunate side effect of resurrection. Lucky for you, I'm committed to aiding you in this journey!${NC}"
sleep 5
echo -e "${YELLOW}Ludo: Now, lets get started. First, you need to have a look inside your inventory to see what you equipment you have.${NC}"
sleep 5

#TECH TIP INITIATE
#TEACH ls TO PLAYER

echo -e "${CYAN}+========================================================================================+${NC}"
echo -e "${CYAN}Greetings! this is a tech tip. this will guide you through the game while learning linux!${NC}"
echo -e "${CYAN}To see what equipment you have, type the following command below: ls ${NC}"
echo -e "${CYAN}This is a very useful command in Linux as it lists normal files in your current directory.${NC}"
echo -e "${CYAN}+========================================================================================+${NC}"

#Code to restrict player from moving on until they type the correct answer.
entry1=something
counter=0
until [ "$entry1" = "ls" ]
do
    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@chamber]$ " entry1
    counter=$[counter + 1]
done

#Mock display of what ls would actually display
echo -e "shattered_sword empty_health_potion charred_book"

echo -e "${WHITE}You view your inventory.${NC}"
sleep 4
echo -e "${YELLOW}Ludo: Great job! In order to move forward, its always good to see what we are working with.${NC}"
sleep 4
echo -e "${YELLOW}Ludo: Ah, but a shattered sword will simply not do if you are to save the rest of the foothold!${NC}"
sleep 4
echo -e "${YELLOW}Ludo: As a resurrected paladin, I bestow you with the ability to meld weapons out of light.${NC}"
sleep 4

#TECH TIP INITIATE
#TEACH touch TO PLAYER

echo -e "${CYAN}+====================================================================+${NC}"
echo -e "${CYAN}To create a weapon, type the following command below: touch holy_sword${NC}"
echo -e "${CYAN}The touch command in linux command line allows users to create files!${NC}"
echo -e "${CYAN}+====================================================================+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "touch holy_sword" ]
do
    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@chamber]$ " entry1
    counter=$[counter + 1]
done

echo -e "${WHITE}You focus your mind and create a sword out of holy magic!${NC}"
sleep 4
echo -e "${YELLOW}Ludo: Excellent, you are a natural!${NC}"
sleep 4
echo -e "${YELLOW}Ludo: Weapons created out of pure light are more effective in slaying undead than regular weapons.${NC}"
sleep 4
echo -e "${YELLOW}Ludo: Even so, you will need all of the aid you can receive – we must enchant this weapon.${NC}"
sleep 4
echo -e "${YELLOW}Ludo: The enchant known as “crusader” is well known for helping undead slayers excel.${NC}"
sleep 4

#TECH TIP INITIATE
#Teach about redirection and echo

echo -e "${CYAN}+===============================================================================+${NC}"
echo -e "${CYAN}To enchant this weapon, use the following command: echo crusader >> holy_sword${NC}"
echo -e "${CYAN}The echo command is used to display a line of text that is passed as an argument.${NC}"
echo -e "${CYAN}The \">>\" appends text to files in Linux!!${NC}"
echo -e "${CYAN}+===============================================================================+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "echo crusader >> holy_sword" ]
do
    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@chamber]$ " entry1
    counter=$[counter + 1]
done
echo -e "${WHITE}You focus your energy, and infuse the might of fallen crusaders into your holy blade.${NC}"
sleep 4

echo -e "${YELLOW}Ludo: Alright $playerName, you should be ready to avenge the fallen and stop the undead from destroying the rest of the foothold. We must get out of this destroyed chamber from which you awakened.${NC}"
sleep 6

#TECH TIP INITIATE
#TEACH ABOUT COMMAND cd
echo -e "${CYAN}+===============================================================================+${NC}"
echo -e "${CYAN}To leave this chamber use the following command: cd outer_pathway${NC}"
echo -e "${CYAN}The cd command in Linux allows you to change your directory to argument provided.${NC}"
echo -e "${CYAN}+===============================================================================+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "cd outer_pathway" ]
do
    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@chamber]$ " entry1
    counter=$[counter + 1]
done
echo -e "${WHITE}You exit the chamber, holy sword in hand.${NC}"
sleep 4
echo -e "${WHITE}As you walk, up ahead, you see a shadowy figure.${NC}"
sleep 4
echo -e "${YELLOW}Ludo: Heads up, $playerName! There is an enemy ahead!${NC}"
sleep 4
echo -e "${YELLOW}Ludo: Use your holy sword to smite them down!${NC}"
sleep 4

#TECH TIP INITIATE
echo -e "${CYAN}+==========================================================================+${NC}"
echo -e "${CYAN}To smite the undead soldier, use the following command: rm undead_soldier${NC}"
echo -e "${CYAN}The command rm in Linux will remove whatever file is typed with the command.${NC}"
echo -e "${CYAN}+==========================================================================+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "rm undead_soldier" ]
do
    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@outer_pathway]$ " entry1
    counter=$[counter + 1]
done
echo -e "${WHITE}You ready your shining blade and charge at the undead soldier!${NC}"
sleep 4
echo -e "${WHITE}It barley has time to react as you cut them in twain!${NC}"
sleep 3
echo -e "${YELLOW}Ludo: Wow!${NC}"
sleep 4
echo -e "${YELLOW}Ludo: You made that undead crumple as if it was a very brittle peice of wood! Outstanding!!${NC}"
sleep 4
echo -e "${YELLOW}Ludo: And look, $playerName! They dropped a spellbook!${NC}"
sleep 4
echo -e "${YELLOW}Ludo: We need to investigate what spells might be in here! Move the book into your inventory!${NC}"
sleep 4

#TECH TIP INITIATE
echo -e "${CYAN}+==================================================================================================+${NC}"
echo -e "${CYAN}To move the book into your inventory, use the following command: mv spellbook /inventory${NC}"
echo -e "${CYAN}The mv command moves a file in linux. In this example, the spellbook is move to inventory directory.${NC}"
echo -e "${CYAN}+==================================================================================================+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "mv spellbook /inventory" ]
do
    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@outer_pathway]$ " entry1
    counter=$[counter + 1]
done
echo -e "${WHITE}You pick up the spellbook and move it into your inventory.${NC}"
sleep 3
echo -e "${YELLOW}Ludo: Great. Now, lets check whats inside.${NC}"
sleep 4

#TECH TIP INITIATE
echo -e "${CYAN}+====================================================================================+${NC}"
echo -e "${CYAN}To read the book enter command: cat inventory/spellbook${NC}"
echo -e "${CYAN}The cat command is used to display a files contents.${NC}"
echo -e "${CYAN}We had to write inventory before spellbook because the spellbook is in that directory.${NC}"
echo -e "${CYAN}+====================================================================================+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "cat inventory/spellbook" ]
do
    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@outer_pathway]$ " entry1
    counter=$[counter + 1]
done

echo -e "${WHITE}The book is completley illegible.${NC}"
sleep 3
echo -e "${YELLOW}Ludo: What is this, do the skeletons speak in scribbles?${NC}"
sleep 4
echo -e "${YELLOW}Ludo: Fear not. As a paladin, I bestow you with the ability to seek through the corrupted text.${NC}"
sleep 4
echo -e "${YELLOW}Ludo: A usefull spell to review would be a healing spell, so seek it!${NC}"
sleep 4

#TECH TIP INITIATE
echo -e "${CYAN}+==========================================================================+${NC}"
echo -e "${CYAN}To find the healing spell, use the command: grep 'heal' inventory/spellbook${NC}"
echo -e "${CYAN}Grep is a usefull filter to find specific elements in files.${NC}"
echo -e "${CYAN}+==========================================================================+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "grep 'heal' inventory/spellbook" ]
do
    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@outer_pathway]$ " entry1
    counter=$[counter + 1]
done

echo -e "Heal an ally – focus your mind and energy to imagnine them in a better state, and then release that energy."
sleep 5
echo -e "${YELLOW}Ludo: Hmm… its sometimes unnerving to see how similar we are to the undead, even in our spells.${NC}"
sleep 5
echo -e "${WHITE}Somebody approaches from the west.${NC}"
sleep 3
echo -e "${GREEN}Valens: $playerName! Is that you?! You survived the ambush?!${NC}"
sleep 4
echo -e "${BLUE}$playerName: Valens! Thank the light your alive. I fell but was resurrected by this being of light named Ludo. How did you survive the ambush?${NC}"
sleep 6
echo -e "${GREEN}Valens: I feigned my death. The skeletons may be ruthless, but they lack wit.${NC}"
sleep 5
echo -e "${BLUE}$playerName: Well, I need all the help possible to rid the rest of the skeletons, so please join me, Valens!${NC}"
sleep 5
echo -e "${GREEN}Valens: With pleasure. These scourge will pay for the rest of the fallen.${NC}"
sleep 4
echo -e "${WHITE}Valens is now a follower.${NC}"
sleep 3
echo -e "${YELLOW}Ludo: We must keep moving. Up ahead there is a courtyard, which leads to the chapel. I can sense that is where the most powerful of the skeletons is.${NC}"
sleep 5

#TECH TIP INITIATE
echo -e "${CYAN}+=============================================+${NC}"
echo -e "${CYAN}To keep moving, type the command – cd courtyard${NC}"
echo -e "${CYAN}+=============================================+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "cd courtyard" ]
do
    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@outer_pathway]$ " entry1
    counter=$[counter + 1]
done

echo -e "${WHITE}You keep moving, motivated by your victories.${NC}"
sleep 3
echo -e "${WHITE}You arrive in the courtyard, where three skeleton advisors surround you.${NC}"
sleep 3
echo -e "${BLUE}$playerName: Wha...!${NC}"
sleep 1
echo -e "${GREEN}Valens: ?!${NC}"
sleep 1
echo -e "${PURPLE}Skeleton 1: HAHAHA! Look what we have here boys!${NC}"
sleep 3
echo -e "${PURPLE}Skeleton 2: Two meatbags who should've been dealt with long ago!${NC}"
sleep 3
echo -e "${PURPLE}Skeleton 3: I suggest you dont put up a fight. What could two measly footmen like you even do?!${NC}"
sleep 3
echo -e "${BLUE}$playerName: Hey, i'm actually-${NC}"
sleep 1
echo -e "${PURPLE}Skeleton 1: Silence!! You will not enjoy this, but it will be over quickly!${NC}"
sleep 3
echo -e "${GREEN}Valens: Heh, you goons just made the biggest mistake of your deaths.${NC}"
sleep 4
echo -e "${YELLOW}Ludo: Don’t be afraid, $playerName! Just use what you know!${NC}"
sleep 4

#TECH TIP INITIATE
echo -e "${CYAN}+========================================================================================================================+${NC}"
echo -e "${CYAN}To dispatch the foes, type the following command – rm skeleton1 | rm skeleton2 | rm skeleton3${NC}"
echo -e "${CYAN}This uses the rm command as before, but uses whats called a “pipe”. This allows users to chain multiple commands together.${NC}"
echo -e "${CYAN}+========================================================================================================================+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "rm skeleton1 | rm skeleton2 | rm skeleton3" ]
do
    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@courtyard]$ " entry1
    counter=$[counter + 1]
done
echo -e "${WHITE}You spin around, blade parallel to the ground, and slash every skeleton in half.${NC}"
sleep 4
echo -e "${GREEN}Valens: That was incredible $playerName! I have all my cooldowns and was ready to throw down but that works I guess!${NC}"
sleep 4
echo -e "${YELLOW}Ludo: The presence is even greater.. look! That chapel up ahead! We must make haste!${NC}"
sleep 4

#TECH TIP INITIATE
echo -e "${CYAN}+=================================================================================+${NC}"
echo -e "${CYAN}Type a command to change directory to the chapel (use a previously learned command)${NC}"
echo -e "${CYAN}+=================================================================================+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "cd chapel" ]
do
    if [ $counter -eq 3 ]
        then
            echo -e "${CYAN}The command required for this scenario is: cd chapel${NC}"
    fi

    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@courtyard]$ " entry1
    counter=$[counter + 1]
done

echo -e "${WHITE}Your party arrives in the chapel.${NC}"
sleep 3
echo -e "${WHITE}You witness a towering figure before you, it's evil energy is soul-shattering.${NC}"
sleep 4
echo -e "${RED}Skeletal Boss: Have you two mortals come to deliver your lives to me on a platter?${NC}"
sleep 4
echo -e "${BLUE}$playerName: No. We've come for vengance, and to put your reign of terror against this foothold to an end!${NC}"
sleep 5
echo -e "${RED}Skeletal Boss: I've chewed through hundreds of your men!! If you think you can stop me than put up a fight!!${NC}"
sleep 5
echo -e "${WHITE}You ready your holy blade.${NC}"
sleep 3
echo -e "${WHITE}Valens puts a hand on your shoulder and pushes you back.${NC}"
sleep 3
echo -e "${GREEN}Valens: $playerName, you've had your time to shine, now its my turn!${NC}"
sleep 4
echo -e "${BLUE}$playerName: Wait... Valens!${NC}"
sleep 3
echo -e "${WHITE}Valens charges at the boss with all of his might!${NC}"
sleep 3
echo -e "${WHITE}Time seems to stop for a moment...${NC}"
sleep 2
echo -e "${WHITE}!!!${NC}"
sleep 1
echo -e "${GREEN}Valens: Arrrghh!!${NC}"
sleep 4
echo -e "${WHITE}Valens receives a devastating blow!${NC}"
sleep 3
echo -e "${BLUE}$playerName: Valens!!! ${NC}"
sleep 3
echo -e "${YELLOW}Ludo: No!${NC}"
sleep 4
echo -e "${RED}Skeletal Boss: HAHAHA! Is this all the fury you can muster!? Your foothold deserves what is becoming of it!${NC}"
sleep 5
echo -e "${GREEN}Valens: $playerName, you've.. got to stop him...${NC}"
sleep 4
echo -e "${BLUE}$playerName: !? ${NC}"
sleep 3
echo -e "${YELLOW}Ludo: $playerName, you are ready!! You must remember who you are fighting for!! You must activate the Final Reckoning!!!${NC}"
sleep 5

#TECH TIP INITIATE
echo -e "${CYAN}+===========================================================================================================+${NC}"
echo -e "${CYAN}Uh oh, its going down now. Use the spell FinalReckoning by echoing it out! (use a previously learned command)${NC}"
echo -e "${CYAN}+===========================================================================================================+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "echo FinalReckoning" ]
do
    if [ $counter -eq 3 ]
        then
            echo -e "${CYAN}The command required for this scenario is: echo FinalReckoning${NC}"
    fi

    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@chapel]$ " entry1
    counter=$[counter + 1]
done
echo -e "${WHITE}You instantly explode with holy energy. You feel pure light in your veins, and more powerful than ever before!${NC}"
sleep 4
echo -e "${RED}Skeletal Boss: What is this!? I've never felt anyone with this power before!${NC}"
sleep 3
echo -e "${BLUE}::::::::::========================------------------------|${NC}"
echo -e "${BLUE}$playerName: FOR THE FALLEN!!!    ${NC}"
echo -e "${BLUE}::::::::::========================------------------------|${NC}"
sleep 3

#TECH TIP INITIATE
echo -e "${CYAN}+========================================================================================+${NC}"
echo -e "${CYAN}To strike the final blow and remove him use a command learned previously on skeletal_boss!${NC}"
echo -e "${CYAN}+========================================================================================+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "rm skeletal_boss" ]
do
    if [ $counter -eq 3 ]
        then
            echo -e "${CYAN}The command required for this scenario is: rm skeletal_boss${NC}"
    fi

    if [ $counter -ge 1 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi
    read -p "[$playerName@chapel]$ " entry1
    counter=$[counter + 1]
done

echo -e "${WHITE}You swing your sword with all of your might and eviscerate the Skeletal Boss!${NC}"
sleep 4
echo -e "${RED}Skeletal Boss: Urghwaahhhh!!!!${NC}"
sleep 3
echo -e "${WHITE}Skeletal Boss evaporates into holy dust!${NC}"
sleep 4
echo -e "${BLUE}$playerName: Hah... hah... hah...${NC}"
sleep 4
echo -e "${WHITE}You feel drained...${NC}"
sleep 4
echo -e "${WHITE}You drop to your knees.${NC}"
sleep 4
echo -e "${GREEN}Valens: $playerName, th..that was incredible...${NC}"
sleep 3
echo -e "${GREEN}Valens: You really aren't just a footman! Haha, hah...${NC}"
sleep 3
echo -e "${WHITE}Valens wheezes in pain. He is badly wounded.${NC}"
sleep 5
echo -e "${GREEN}Valens: ...Thank you, truly, for everythi-${NC}"
sleep 2
echo -e "${BLUE}$playerName: NO! I will not lose another! I CANNOT!!!${NC}"
sleep 3

#TECH TIP INITIATE
echo -e "${CYAN}+~~~~~~~~~~~~+${NC}"
echo -e "${CYAN}Save Valens...${NC}"
echo -e "${CYAN}+~~~~~~~~~~~~+${NC}"

entry1=omething
counter=0
until [ "$entry1" = "echo greater_heal >> valens" ]
do
    if [ $counter -eq 2 ]
        then
            echo -e "${BLUE}$playerName: Urghh!!! THIS CANNOT BE!!!${NC}"
	    sleep 3
	    echo -e "${YELLOW}Ludo: $playerName! Take a deep breath. You do not have to do this alone.${NC}"
            sleep 6
            echo -e "${YELLOW}Ludo: You must clear your mind and imagine him an better state. Then, you release that energy.${NC}"
            sleep 6
            echo -e "${WHITE}You breathe deeply.${NC}"
            sleep 4
	    echo -e "${BLUE}$playerName: Yes, Ludo. You are correct. I know what I must do.${NC}"
	    sleep 5
            echo -e "${CYAN}The correct command for this scenario is: echo greater_heal >> valens${NC}"
    fi

    if [ $counter -eq 1 ]
        then
            echo -e "${BLUE}$playerName: No... my mind is racing... why can't I think of the spell?!${NC}"
    fi

    if [ $counter -ge 3 ]
        then
            echo -e "${CYAN}Incorect entry. Please try again.${NC}"
    fi

    read -p "[$playerName@chapel]$ " entry1
    counter=$[counter + 1]
done
echo -e "${BLUE}$playerName: Hyah!${NC}"
sleep 1
echo -e "${WHITE}Holy energy flashes on Valens. He has been healed.${NC}"
sleep 5
echo -e "${BLUE}$playerName: Valens! how do you feel?${NC}"
sleep 3
echo -e "${GREEN}Valens: I'm for sure better, but not one-hundred percent, heh.${NC}"
sleep 4
echo -e "${YELLOW}Ludo: Amazing! With their leader slain, I can sense that the other undead skeletons here are fading away!${NC}"
sleep 5
echo -e "${BLUE}$playerName: Whew... what a relief.${NC}"
sleep 4
echo -e "${YELLOW}Ludo: All thanks to your valiant efforts! I always knew that you had it in you!${NC}"
sleep 5
echo -e "${GREEN}Valens: You said it! I'm glad your on our side, $playerName.${NC}"
sleep 5
echo -e "${BLUE}$playerName: Thank you all, sincerely. I couldn't have done it without your aid.${NC}"
sleep 5
echo -e "${BLUE}$playerName: Now then, we must rebuild at once! We will not faulter under the might of the undead!${NC}"
sleep 5

clear
sleep 2
echo "The Final Reckoning"
sleep 3
echo "Created by: Davis Insua"
sleep 3
echo " "
echo "This concludes our adventure."
echo "Thank you for playing!"
echo " "
echo " "

#!/bin/bash

clear
echo "Let's build a mad-lib!"

#character of the story
read -p "1. Pick a noun: " NOUN1
#first adjective
read -p "2. Pick an adjective: " ADJ1
#bad event of story
read -p "3. Pick a type of weather: " WEA1
#class
read -p "4. Pick a class course: " CLASS1
#animal
read -p "5. Pick a plural animal: " ANI1
#verb into building
read -p "6. Pick an verb ending in -ing: " VERB1
#person we don't like
read -p "7. Pick a villian : " PERSON1
#adverb for weather
read -p "8. Pick an adverb: " ADV1
#food
read -p "9. Pick a yummy food: " FOOD1
#end of story 
read -p "10. Pick another plural noun: " NOUN2

#print out the story
clear
echo "Here's your story!" 
echo "-----------------" 
echo "Once upon a college campus, there was a very pretty $NOUN1."
echo "This $NOUN1 was so $ADJ1 for her first day of school!"
echo "However, there was bad news! The radar predicted 100% of chance of $WEA1 for the whole day."

echo "$NOUN1 was sad because she didn't want her $CLASS1 class to be cancelled."
echo "All of a sudden, $ANI1 started falling from the sky!"
echo "$NOUN1 started $VERB1 into the nearest building."

echo "But this building wasn't safe, because $NOUN1 ran into $PERSON1."
echo "To make matters worse, it started to $WEA1 $ADV1 inside!"
echo "This was not how $NOUN1 wanted her first day go at all."
echo "The biggest plot twist of them all was when $PERSON1 brought her $FOOD1 and they watched the $NOUN2 together."
echo "The End! :)"
echo "-----------------"

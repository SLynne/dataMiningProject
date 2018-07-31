# Pokemon
This was a half-semester long project for a Data Mining course at Georgia State University in Fall 2017. The language was unknown to me at the time and not taught as part of the class. There were many long days in the begining but I picked it up quickly. This was the most enjoyable project I have done to date but also one of the hardest as I needed to learn the language on my own as the course progressed. R is a very analytical language, very unlike the Java and C I was used to. This project was rated as Top 5 in the course by the professor.

The idea for the project came from wanting to know which pokemon should battle against other pokemon in Pokemon Go! I found the pokemon.csv file on kaggle.com (https://www.kaggle.com/rounakbanik/pokemon). 

What: Find the Top 3 Pokémon of each Type & from each Generation, the best against each Type, the overlap of best of Type and best of Generation, the overlap of best of all Types, Generations and against. Finally, Find the top 3 Pokémon and Win the Game!
Why:  To help the n00bz.
How: Find the Pokémon based on the sum of base stats (attack, defense, hit points (hp), special attack, special defense, speed), utilizing attack and defense stats respectively as tiebreakers.

Removed: Legendary Pokémon. Data not relating to base stats total, name or Pokedex number. Any Pokémon rating under 4 against any type. This .csv had a 1-5 rating for each Pokemon based on its ability to go against other types. Any rating of 4 and under was removed from the list. 
Changed: nothing.
Added: Base Stat Sum, Color for each Type, Color for each Generation, Color for Best Against Each Type
Why Subsets? Subset is a valuable inbuilt tool in R. It allows you to create a new data frame from specific values of the data. Here it was used to create new data fames for each type, each generation and Best Against Each Type with a value greater than 4. 

Step 1: Find the Top 3 for each Type of Pokémon by sum of Base Stats. In case of a tie, rank the Top 3 by Attack stat and Defense stat if needed. Create color for each Type of Pokémon. Merge all Top 3’s into single data frame. Plot the Top 3 Pokémon for each Type by Type.

Step 2: Find the Top 3 for each Generation of Pokémon by sum of Base Stats. In case of a tie, rank the Top 3 by Attack stat and Defense stat if needed. Create a color for each Type of Pokémon. Merge all Top 3’s into a single data frame. Plot the Top 3 Pokémon for each Generation by Generation.

Step 3: Find the Best Against Each Type with a value >= 4. Create a color for each Best Against category. Merge all Best Against categories into a single data frame. Plot the Best Against Each Type by Best Against categories. 

Step 4: Find the overlap of all Top 3’s for both Type and Generation. Merge Top 3 Pokémon for each Type and Top 3 Pokémon for each Generation into a single data frame. Plot the Overlap of Best of All Types & Best of all Generations. 

Step 5: Find the overlap of the Best of All Types & Best of all Generations and Best Against Each Type. Merge Best of All Types & Best of all Generations and Best Against Each Type. Find the Top 3 of All Pokémon by sum of Base Stats. In case of a tie, rank the Top 3 by Attack stat. 

The final 6 pokemon were: Charizard, Gyarados, Salamance, Garchomp, Tyranitar and Hydreigon, which Salamance, Garchomp and Tyranitar tied for first place. The tiebreaker was based on individual attack stats leading to Garchomp as our overall Best Pokemon for Battle, with Tyranitar in second and Salamance in third. 

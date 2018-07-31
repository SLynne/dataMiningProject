
#5811
#Stephanie L. Wyckoff
#Final Project
#19 Nov 17




#read in csv file, make blanks NA
pokemon <- read.csv("pokemon.csv", TRUE, na.strings=c("","NA"))


#remove unneeded columns
#dataframe of all attributes and pokemon
pokemon_df <- pokemon #data.frame(pokemon)
# remove legendary pokemon
pokemon_df <- subset(pokemon_df, pokemon_df$is_legendary!=1)

--------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------------

# sum of attack, defense and hp for each pokemon, plot this for each type and gen
for(i in 1:nrow(pokemon_df)){
  
  pokemon_df$stat_sum <- pokemon_df$attack + pokemon_df$defense + pokemon_df$hp + pokemon_df$sp_attack + pokemon_df$sp_defense + pokemon_df$speed
    
}

#paring down data into easy to use subsets
pokemon_df$base_egg_steps <- NULL
pokemon_df$abilities <- NULL
pokemon_df$base_happiness <- NULL
pokemon_df$is_legendary <- NULL
pokemon_df$weight_kg <- NULL
pokemon_df$type2 <- NULL
pokemon_df$percentage_male <- NULL
pokemon_df$japanese_name <- NULL
pokemon_df$height_m <- NULL
pokemon_df$experience_growth <- NULL
pokemon_df$classfication <- NULL
pokemon_df$capture_rate <- NULL
pokemon_df$base_total <- NULL
pokemon_df$base_happiness <- NULL

pokemon_df$color[pokemon_df$type1 == 'bug'] <- 'coral4'
pokemon_df$color[pokemon_df$type1 == 'dark'] <- 'black'
pokemon_df$color[pokemon_df$type1 == 'dragon'] <- "gold"
pokemon_df$color[pokemon_df$type1 == 'electric'] <- 'yellow'
pokemon_df$color[pokemon_df$type1 == 'fairy'] <- 'pink'
pokemon_df$color[pokemon_df$type1 == 'fighting'] <- 'peru'
pokemon_df$color[pokemon_df$type1 == 'fire']  <- 'red'
pokemon_df$color[pokemon_df$type1 == 'flying']  <- 'salmon'
pokemon_df$color[pokemon_df$type1 == 'ghost']  <- 'orchid'
pokemon_df$color[pokemon_df$type1 == 'grass']  <- 'green'
pokemon_df$color[pokemon_df$type1 == 'ground']  <- 'sandybrown'
pokemon_df$color[pokemon_df$type1 == 'ice']  <- 'lightsteelblue1'
pokemon_df$color[pokemon_df$type1 == 'normal']  <- 'orange'
pokemon_df$color[pokemon_df$type1 == 'poison']  <- 'purple4'
pokemon_df$color[pokemon_df$type1 == 'psychic']  <- 'purple'
pokemon_df$color[pokemon_df$type1 == 'rock']  <- 'saddlebrown'
pokemon_df$color[pokemon_df$type1 == 'steel']  <- 'gray48'
pokemon_df$color[pokemon_df$type1 == 'water']  <- 'powderblue'

pokemon_df$genColor[pokemon_df$generation == '1'] <- 'red'
pokemon_df$genColor[pokemon_df$generation == '2'] <- 'orange'
pokemon_df$genColor[pokemon_df$generation == '3'] <- "yellow"
pokemon_df$genColor[pokemon_df$generation == '4'] <- 'green'
pokemon_df$genColor[pokemon_df$generation == '5'] <- 'blue'
pokemon_df$genColor[pokemon_df$generation == '6'] <- 'deeppink'
pokemon_df$genColor[pokemon_df$generation == '7']  <- 'purple'

for(i in 1:nrow(pokemon_df)){
 
   pokemon_df$agnCol <- 0
   
}

pokemon_df$agnCol[pokemon_df$against_bug >= 4] <- 'coral4'
#pokemon_df$agnCol2[pokemon_df$against_dark >= 2] <- 'black'
#pokemon_df$agnCol[pokemon_df$against_dragon >= 2] <- "gold"
pokemon_df$agnCol[pokemon_df$against_electric >= 4] <- 'yellow'
pokemon_df$agnCol[pokemon_df$against_fairy >= 4] <- 'pink'
pokemon_df$agnCol[pokemon_df$against_fight >= 4] <- 'peru'
pokemon_df$agnCol[pokemon_df$against_fire >= 4]  <- 'red'
pokemon_df$agnCol[pokemon_df$against_flying >= 4]  <- 'salmon'
#pokemon_df$agnCol2[pokemon_df$against_ghost >= 2]  <- 'orchid'
pokemon_df$agnCol[pokemon_df$against_grass >= 4]  <- 'green'
pokemon_df$agnCol[pokemon_df$against_ground >= 4]  <- 'sandybrown'
pokemon_df$agnCol[pokemon_df$against_ice >= 4]  <- 'lightsteelblue1'
#pokemon_df$agnCol2[pokemon_df$against_normal >= 1]  <- 'orange'
pokemon_df$agnCol[pokemon_df$against_poison >= 4]  <- 'purple4'
pokemon_df$agnCol[pokemon_df$against_psychic >= 4]  <- 'purple'
pokemon_df$agnCol[pokemon_df$against_rock >= 4]  <- 'saddlebrown'
pokemon_df$agnCol[pokemon_df$against_steel >= 4]  <- 'gray48'
pokemon_df$agnCol[pokemon_df$against_water >= 4]  <- 'powderblue'

pokemon_df$topAgn[pokemon_df$against_bug >= 4] <- 'bug'
#pokemon_df$topAgn[pokemon_df$against_dark >= 2] <- 'dark'
#pokemon_df$topAgn[pokemon_df$against_dragon >= 2] <- "dragon"
pokemon_df$topAgn[pokemon_df$against_electric >= 4] <- 'electric'
pokemon_df$topAgn[pokemon_df$against_fairy >= 4] <- 'fairy'
pokemon_df$topAgn[pokemon_df$against_fight >= 4] <- 'fighting'
pokemon_df$topAgn[pokemon_df$against_fire >= 4]  <- 'fire'
pokemon_df$topAgn[pokemon_df$against_flying >= 4]  <- 'flying'
#pokemon_df$topAgn[pokemon_df$against_ghost >= 2]  <- 'ghost'
pokemon_df$topAgn[pokemon_df$against_grass >= 4]  <- 'grass'
pokemon_df$topAgn[pokemon_df$against_ground >= 4]  <- 'ground'
pokemon_df$topAgn[pokemon_df$against_ice >= 4]  <- 'ice'
#pokemon_df$topAgn[pokemon_df$against_normal >= 1]  <- 'normal'
pokemon_df$topAgn[pokemon_df$against_poison >= 4]  <- 'poison'
pokemon_df$topAgn[pokemon_df$against_psychic >= 4]  <- 'psychic'
pokemon_df$topAgn[pokemon_df$against_rock >= 4]  <- 'rock'
pokemon_df$topAgn[pokemon_df$against_steel >= 4]  <- 'steel'
pokemon_df$topAgn[pokemon_df$against_water >= 4]  <- 'water'


attGen <- pokemon_df
gen <- pokemon_df
against <- pokemon_df


write.csv(pokemon_df, "Pokemon Clean Data.csv", row.names = FALSE)

#subsets of attGen df for each type. These subsets will be graphed to find
#  the greatest sum of hp, attack and defense values for each pokemon in 
#  each type. The top 3 of each type will proced to the next round!
bug <- subset(attGen, attGen$type1 == "bug")
dark <- subset(attGen, attGen$type1 == "dark")
dragon <- subset(attGen, attGen$type1 == "dragon")
electric <- subset(attGen, attGen$type1 == "electric")
fairy <- subset(attGen, attGen$type1 == "fairy")
fighting <- subset(attGen, attGen$type1 == "fighting")
fire <- subset(attGen, attGen$type1 == "fire")
flying <- subset(attGen, attGen$type1 == "flying")
ghost <- subset(attGen, attGen$type1 == "ghost")
grass <- subset(attGen, attGen$type1 == "grass")
ground <- subset(attGen, attGen$type1 == "ground")
ice <- subset(attGen, attGen$type1 == "ice")
normal <- subset(attGen, attGen$type1 == "normal")
poison <- subset(attGen, attGen$type1 == "poison")
psychic <- subset(attGen, attGen$type1 == "psychic")
rock <- subset(attGen, attGen$type1 == "rock")
steel <- subset(attGen, attGen$type1 == "steel")
water <- subset(attGen, attGen$type1 == "water")

#creates subset of each generation
gen_1 <- subset(gen, gen$generation == '1') 
gen_2 <- subset(gen, gen$generation == '2') 
gen_3 <- subset(gen, gen$generation == '3') 
gen_4 <- subset(gen, gen$generation == '4') 
gen_5 <- subset(gen, gen$generation == '5') 
gen_6 <- subset(gen, gen$generation == '6') 
gen_7 <- subset(gen, gen$generation == '7') 

------------------------------------------------------------------------------------------------------------------

#finds top tier of each against
best_against_bug <- subset(against, against$against_bug == '4')
#best_against_dark <- subset(against, against$against_dark == '2')
best_against_bug <- subset(against, against$against_bug == '4')
#best_against_dragon <- subset(against, against$against_dragon == '2')
best_against_electric <- subset(against, against$against_electric == '4')
best_against_fairy <- subset(against, against$against_fairy == '4')
best_against_fighting <- subset(against, against$against_fight == '4')
best_against_fire <- subset(against, against$against_fire == '4')
best_against_flying <- subset(against, against$against_flying == '4')
#best_against_ghost <- subset(against, against$against_ghost == '2')
best_against_grass <- subset(against, against$against_grass == '4')
best_against_ground <- subset(against, against$against_ground == '4')
best_against_ice <- subset(against, against$against_ice == '4')
#best_against_normal <- subset(against, against$against_normal == '1')
best_against_poison <- subset(against, against$against_poison == '4')
best_against_psychic <- subset(against, against$against_psychic == '4')
best_against_rock <- subset(against, against$against_rock == '4')
best_against_steel <- subset(against, against$against_steel == '4')
best_against_water <- subset(against, against$against_water == '4')


allBest_against_list <- list(best_against_bug, best_against_electric,
                             best_against_fairy, best_against_fighting, best_against_fire, best_against_flying, 
                             best_against_grass, best_against_ground, best_against_ice,
                             best_against_poison, best_against_psychic, best_against_rock,
                             best_against_steel, best_against_water)

#all top tiers of against in one df
allBest_against_df <- do.call("rbind", allBest_against_list)



topStat <- subset(allBest_against_df, allBest_against_df$stat_sum >= 430)
 
  


#plot of all top 3 pokemon for all types
allBest_against_plot <- barplot(topStat$stat_sum, topStat$name, width = 1.5, space = 5, ylim = c(0, 800), xlim = c(0, 768), col=topStat$agnCol, las = 2, main = "Best Against Each Type", ylab = "Sum of Base Stats", axes = FALSE)
legend("bottom", legend = c("xBug", "xElectric", "xFairy",
                            "xFighting", "xFire", "xFlying", "xGrass", 
                            "xGround", "xIce", "xPoison", "xPsychic", 
                            "xRock", "xSteel", "xWater"), fill = c('coral4', 'yellow', 'pink', 'peru', 'red', 'salmon', 
                                                                          'green', 'sandybrown', 'lightsteelblue1',  
                                                                          'purple4', 'purple', 'saddlebrown', 'gray48', 'powderblue'), ncol = 6)
axis(side = 2, tick = TRUE)

write.csv(allBest_against_df, "All Best Against.csv", row.names = FALSE)

------------------------------------------------------------------------------------------------------------------------

#find top 3 for each type, put into df
tail(sort(bug$stat_sum), 3)
bug_top3 <- subset(bug, bug$stat_sum >= 600)

tail(sort(dark$stat_sum), 3)
dark_top3 <- subset(dark, dark$stat_sum >= 565)

#how there are 5 dragons >= 600, how to pare this down? what is best of stats?
tail(sort(dragon$stat_sum), 3)
dragon_top3 <- subset(dragon, dragon$stat_sum >= 600)
tail(sort(dragon_top3$attack), 3)
dragon_top3 <- subset(dragon_top3, dragon_top3$attack >=134)

tail(sort(electric$stat_sum), 3)
electric_top3 <- subset(electric, electric$stat_sum >= 540)

tail(sort(fairy$stat_sum), 3)
fairy_top3 <- subset(fairy, fairy$stat_sum >= 545)

tail(sort(fighting$stat_sum), 3)
fighting_top3 <- subset(fighting, fighting$stat_sum >= 510)

tail(sort(fire$stat_sum), 3)
fire_top3 <- subset(fire, fire$stat_sum >= 560)

tail(sort(flying$stat_sum), 3)
flying_top3 <- subset(flying, flying$stat_sum >= 245)

tail(sort(ghost$stat_sum), 3)
ghost_top3 <- subset(ghost, ghost$stat_sum >= 525)

tail(sort(grass$stat_sum), 3)
grass_top3 <- subset(grass, grass$stat_sum >= 594)

tail(sort(ground$stat_sum), 3)
ground_top3 <- subset(ground, ground$stat_sum >= 520)

tail(sort(ice$stat_sum), 3)
ice_top3 <- subset(ice, ice$stat_sum >= 530)
tail(sort(ice_top3$attack), 3)
ice_top3 <- subset(ice_top3, ice_top3$attack >=95)

tail(sort(normal$stat_sum), 3)
normal_top3 <- subset(normal, normal$stat_sum >= 580)

tail(sort(poison$stat_sum), 3)
poison_top3 <- subset(poison, poison$stat_sum >= 505)

tail(sort(psychic$stat_sum), 3)
psychic_top3 <- subset(psychic, psychic$stat_sum >= 600)

tail(sort(rock$stat_sum), 3)
rock_top3 <- subset(rock, rock$stat_sum >= 567)

tail(sort(steel$stat_sum), 3)
steel_top3 <- subset(steel, steel$stat_sum >= 610)

tail(sort(water$stat_sum), 3)
water_top3 <- subset(water, water$stat_sum >= 635)

allTypes_top3_list <- list(bug_top3, dark_top3, dragon_top3, electric_top3, 
                           fairy_top3, fighting_top3, fire_top3, flying_top3,
                           ghost_top3, grass_top3, ground_top3, ice_top3, normal_top3,
                           poison_top3, psychic_top3, rock_top3, steel_top3, water_top3)
allTypes_top3_df <- do.call("rbind", allTypes_top3_list)




#plot of all top 3 pokemon for all types
AllTypes_top3_plot <- barplot(allTypes_top3_df$stat_sum, allTypes_top3_df$name, width = .5, space = 4, ylim = c(0, 800), col=allTypes_top3_df$color, las = 2, main = "Top 3 Pokemon for Each Type", ylab = "Sum of Base Stats",  axes = FALSE)
legend("bottom", legend = c("Bug", "Dark", "Dragon", "Electric", "Fairy", "Fighting", 
                            "Fire", "Flying", "Ghost", "Grass", "Ground", "Ice",
                            "Normal", "Poison", "Psychic", "Rock", "Steel", "Water"), 
       fill = c('coral4', 'black', 'gold', 'yellow', 'pink', 'peru', 'red', 'salmon', 
                'orchid', 'green', 'sandybrown', 'lightsteelblue1', 'orange', 
                'purple4', 'purple', 'saddlebrown', 'gray48', 'powderblue'), ncol = 6)
axis(side = 2, tick = TRUE)

write.csv(allTypes_top3_df, "All Types Top 3s.csv", row.names = FALSE)

--------------------------------------------------------------------------------------------------------
#find top 3 pokemon per generation
tail(sort(gen_1$stat_sum), 3)
gen1_top3 <- subset(gen_1, gen_1$stat_sum >= 630)

tail(sort(gen_2$stat_sum), 3)
gen2_top3 <- subset(gen_2, gen_2$stat_sum >= 610)

tail(sort(gen_3$stat_sum), 3)
gen3_top3 <- subset(gen_3, gen_3$stat_sum >= 670)

tail(sort(gen_4$stat_sum), 3)
gen4_top3 <- subset(gen_4, gen_4$stat_sum >= 618)

tail(sort(gen_5$stat_sum), 3)
gen5_top3 <- subset(gen_5, gen_5$stat_sum >= 550)

tail(sort(gen_6$stat_sum), 3)
gen6_top3 <- subset(gen_6, gen_6$stat_sum >= 552)

tail(sort(gen_7$stat_sum), 3)
gen7_top3 <- subset(gen_7, gen_7$stat_sum >= 570)

allGens_top3_list <- list(gen1_top3, gen2_top3, gen3_top3, gen4_top3, gen5_top3, gen6_top3, gen7_top3)
allGens_top3_df <- do.call("rbind", allGens_top3_list)

#plot of all top 3 pokemon for all Gens
AllGens_top3_plot <- barplot(allGens_top3_df$stat_sum, allGens_top3_df$name, width = 5, space = 6, ylim = c(0, 800), xlim = c(0, 768), col=allGens_top3_df$genColor, las = 2, main = "Top 3 Pokemon for Each Generation", ylab = "Sum of Base Stats", axes = FALSE)
legend("bottom", legend = c("Gen 1", "Gen 2", "Gen 3", "Gen 4", "Gen 5", "Gen 6", "Gen 7"), 
       fill = c("red", "orange", "yellow", "green", "blue", "deeppink", "purple"), ncol = 4)
axis(side = 2, tick = TRUE)
# 
# #Top 3 pokemon of overall 
# tail(sort(allGens_top3_df$stat_sum), 3)
# allGens_top3_df_top3<- subset(allGens_top3_df, allGens_top3_df$stat_sum >= 414)

write.csv(allGens_top3_df, "All Gens Top 3s.csv", row.names = FALSE)
#wordcloud

---------------------------------------------------------------------------------------------------

similarity <- merge(allGens_top3_df, allTypes_top3_df)
similarity <- merge(allGens_top3_df, allTypes_top3_df)
sim2 <- merge(similarity, allBest_against_df)
sim3 <- unique(sim2)

genType_plot <- barplot(similarity$stat_sum, similarity$name, width = .5, space = 4, ylim = c(0, 800), col=similarity$color, las = 2, main = "Overlap of Best of All Types & Best of All Generations", ylab = "Sum of Base Stats", axes = FALSE)
legend("bottom", legend = c("Dark", "Dragon", "Electric", "Fairy", "Fighting", 
                            "Fire", "Normal", "Psychic", "Rock", "Steel", "Water"), 
       fill = c('black', 'gold', 'yellow', 'pink', 'peru', 'red', 'orange', 
               'purple', 'saddlebrown', 'gray48', 'powderblue'), ncol = 6)
axis(side = 2, tick = TRUE)

tail(sort(sim3$stat_sum), 3)
Top3_Overall <- subset(sim3, sim3$stat_sum >= 700)

Top3_Overall_plot <- barplot(Top3_Overall$stat_sum, Top3_Overall$name, width = 50, space = 2.5, ylim = c(0, 800), xlim = c(0, 768), col=c("gold", "gold", "saddlebrown"), main = "Top 3 of All Pokemon", xlab = "Pokemon Name", ylab = "Sum of Base Stats", axes = FALSE)
legend("topright", legend = c("Dragon", "Rock"), fill = c("gold", "saddlebrown"))
axis(side = 2, tick = TRUE)

tail(sort(Top3_Overall$attack), 3)
Top3_Overall_ranked <- subset(Top3_Overall, Top3_Overall$attack >=145)

#plot of all top 3 pokemon for all Gens
Top3_Overall_Ranked_plot <- barplot(Top3_Overall_ranked$attack, Top3_Overall_ranked$name, width = 50, space = 2.5, ylim = c(0, 200), xlim = c(0, 768), col=c('coral4', 'gold', 'azure4'), main = "Top 3 of All Pokemon (ranked)", xlab = "Pokemon Name", ylab = "Attack Stat", axes = FALSE)
legend("topright", legend = c("First Place", "Second Place", "Third Place"), fill = c('gold', 'azure4', 'coral4'))
axis(side = 2, tick = TRUE)



write.csv(Top3_Overall, "Top 3 Overall.csv", row.names = FALSE)

fort=false
require 'colorize'
string = ["no","no","no","no","no","no","no","no","no","no"]
injuries = ["Measles", "Chicken pox", "Typhoid fever","Broken leg", "Broken arm", "Snakebite"]
diseases_caused_by_pace = ["Fever", "Exaustion"]
diseases_caused_by_rations = ["Scurvy","Cholera","Dysentery"]
number = 0
totalmiles = 0
oxen = 0
a = diseases_caused_by_rations.sample
sink = ""
day = 1
monthchoice = ""
food = 0
pace = 0
timer = 0
axles = 0
tongues = 0
wheels = 0
rationsizeperpound = 0
ammo = 0
destination = "Independance"
miles = 0
subtract = 0
money = 5000
system('clear')
# File.open("text.txt", "r") do |f|
#     f.each_line do |line|
#       puts line
#       sleep(2)
#       system("clear")
#     end
# end
puts"R-trail"
puts"press enter to start. NOTE: enter your name in account.txt"
puts"You are in 1847. You and a group of wagons are going to Utah, or the Great Salt Lake valley. You start at Independance, Missouri. You and you traveling buddies have piled and \n saved $15,000. Hit enter to continue."
# kansas river crossing
gets.chomp
costomer = ["This old lady needs medicine for her old back.", "Joe is sick right now, and I have to get him some cough syrup.", "I have a letter to send.", "I have to get some milk.", "A gun is clogged."]
puts"Ding Ding!"
random = costomer.sample
print"BOB: Hello, "
File.open("account.txt", "r") do |f|;f.each_line do |line|;print line;end;end;  
print". I will be right with you! " + random + "\n"
sleep(5)
print"JOHN: Oh, "
File.open("account.txt", "r") do |f|;f.each_line do |line|;print line;end;end;  
print", you are going to Utah, huh?\n"
sleep(1)
puts"BOB: There are a lot of dangerous things."
sleep(1)
print"JOHN: Yeah, " 
File.open("account.txt", "r") do |f|;f.each_line do |line|;print line;end;end;  
print", don't die! The river is the most dangerous\n"
sleep(1)
puts"BOB: How many oxen? You will need 3 at least, and 5 at most, and they are $100 each. The more oxen, the quicker you go!"
input = gets.chomp!
number = input.to_f
oxen += input.to_i
number = number * 100
money= money - number
if money < 0 
    puts"You don't have enough money for " + oxen.to_s + " Oxen!"
    exit
end
if oxen > 5
    puts"Sorry, but there will not be enough grass for " + oxen.to_s + " Oxen!"
    exit
end
puts"You have $" + money.to_s + " left."
# puts"JOHN: Bullets? $2.50 each box and there are 20 bullets a box."
# input = gets.chomp!
# ammo += input.to_f
# number = input.to_i
# number = number * 2.5
# money= money - number
# if money < 0
#     puts"Too many bullets, bozo!"
#     exit
# end
puts"You have $" + money.to_s + " left."
puts"BOB: You will need food for the trip, and is $1.00 for a pound. how much?"
input = gets.chomp!
number = input.to_i
food += input.to_i
number = number * 1
money= money - number
if money < 0
    puts"Too much food, bozo!"
    exit
end
if food > 1500
    puts"You can not carry more than 1500 pounds of food in your wagon."
    exit
end
# puts"You have $" + money.to_s + " left."
# puts"JOHN: spare axles? $10.00 each."
# input = gets.chomp!
# number = input.to_i
# axles += input.to_f
# number = number * 5
# money= money - number
# if money < 0
#     puts"Too much stuff, bozo!"
# end
# puts"You have $" + money.to_s + " left."
# puts"Bob: spare wheels? $10.00 each."
# input = gets.chomp!
# number = input.to_i
# wheels += input.to_f
# number = number * 10
# money= money - number
# if money < 0
#     puts"Too much stuff, bozo!"
# end
# puts"You have $" + money.to_s + " left."
# puts"Bob: spare tongues? $10.00 each."
# input = gets.chomp!
# tongues += input.to_f
# number = input.to_i
# number = number * 10
# money= money - number
# if money < 0
#     puts"Too much stuff, bozo!"
# end
puts"You have $" + money.to_s + " left."
system("clear")
puts"You left Independance with:"
puts axles.to_s + " spare axles"
puts tongues.to_s + " spare tongues"
puts axles.to_s + " spare wheels"
puts food.to_s + " pounds of food"
# puts ammo.to_s + " bullets"
puts "and $"+money.to_s + ". Good luck! (hit enter to continue)"
gets
system("clear")
loop do
    print"              @@@@@@@@@@@@@@@@@   \n" 
    print"***".black
    print"           @@@@@@@@@@@@@@@@@    \n"
    print"***".black
    print"           @@@@@@@@@@@@@@@@@   \n"
    print" *******".black
    print"______[[[[[[[[$]]]]]]]]        \n".blue
    print" *******".black
    print"------[@@@[[[[$]]]]@@@]        \n".blue
    print" **   **".black
    print"      @@@@@       @@@@@   \n".blue
    print" **   **".black
    print"       @@@         @@@      \n".blue
    print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".green           
    puts"Next stop: Kansas River crossing"
    if food > 0
        food -= 5
    end
    puts"Miles traveled: " + totalmiles.to_s
    .to_s
    puts "Food: " + food.to_s
    if food < 0 || food == 0
        puts"So...hungry..."
        puts"You have " + a
        a = diseases_caused_by_rations.sample
        timer += 1
    end
    if timer == 10
        puts"you died of " + a
        exit
    end
    miles += oxen/ 3
    totalmiles += oxen/ 3
    miles = miles.to_i
    totalmiles = totalmiles.to_i
    sleep(0.3)
    system("clear")  
    print"              @@@@@@@@@@@@@@@@@   \n" 
    print"***".black
    print"           @@@@@@@@@@@@@@@@@    \n"
    print"***".black
    print"           @@@@@@@@@@@@@@@@@   \n"
    print" *******".black
    print"______[[[[[[[[$]]]]]]]]        \n".blue
    print" *******".black
    print"------[@@@[[[[$]]]]@@@]        \n".blue
    print" **   **".black
    print"      @@@@@       @@@@@   \n".blue
    print"**  **".black
    print"         @@@         @@@      \n".blue
    print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".green
    puts"Next stop: Kansas River crossing"
    puts"Miles traveled: " + totalmiles.to_s
    
    puts "Food: " + food.to_s
    if food < 0 || food == 0
        puts"So...hungry..."
        puts"You have " + a
        timer += 1
    end
    if timer == 10
        puts"you died of " + a
        exit
    end
    miles += oxen / 3
    totalmiles += oxen / 3
    # puts"Date:" + date
    miles = miles.to_i
    totalmiles = totalmiles.to_i
    sleep(0.3)
    system("clear")
    print"              @@@@@@@@@@@@@@@@@   \n" 
    print"***".black
    print"           @@@@@@@@@@@@@@@@@    \n"
    print"***".black
    print"           @@@@@@@@@@@@@@@@@   \n"
    print" *******".black
    print"______[[[[[[[[$]]]]]]]]        \n".blue
    print" *******".black
    print"------[@@@[[[[$]]]]@@@]        \n".blue
    print"  **   **".black
    print"     @@@@@       @@@@@   \n".blue
    print"   **   **".black
    print"     @@@         @@@      \n".blue
    print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".green
    puts"Next stop: Kansas River crossing"
    puts"Miles traveled: " + totalmiles.to_s
    
    puts "Food: " + food.to_s
    if food < 0 || food == 0
        puts"So...hungry..."
        puts"You have " + a
        timer += 1
    end
    if timer == 10
        puts"you died of " + a
        exit
    end
    miles += oxen / 3
    
             
    miles += oxen / 3
    miles = miles.to_i
    totalmiles = totalmiles.to_i
    sleep(0.3)
    system("clear")
    if miles > 70.5
        puts"You have arrived at the Kansas River crossing. Hit enter to continue."
        puts"***%%@@%%%#%@%****##%%##*##*#**#****+***###+*##%%%%%%%%%%%%%%%%@
+**+***++***+***************************************************".green
print"*+*+++++++******************************************************
++**+**+****+***+*++++++**********+****++++++++**++**+**********
++++++****+*******++**++++***+++++************".blue
print"#####*############\n".black
print"++++++++*+++**+*****************+*****".blue
print"##########################\n".black
print"+++++*+*******#*####*************###*#**".blue
print"##***#*******######*####\n".black
puts"*******++**+********************+*******************************
+***++++*++++**************+++********************************+*
+*********++**++**+*+********#****##*##******+******************
*********+**+*****+**************************##************##***
:*++++++**###****++********+***++*******************#**#***#####".blue
puts"###%###%%%%#$+++$++###+%+%+%+%##+#++++++#$##$#########++++#%%%#%%##".green
        gets
        system("clear")
        break
    end
end
puts"Press '1' to ford, '2' to caulk, and '3' to ferry across."
puts"The river is 14 feet across and 4 feet in the middle. It will cost $20.00 to ferry. Fording has a 10% fail rate if it isn't too deep and caulking has a %20 fail rate. Ferring has a %5 fail. Note: If you fail, YOU DIE!"
input = gets.chomp
sink = string.sample
if input != "1" && input != "2" && input != "3"
    puts"bye you didn't listen"
end
if sink == "yes"
    puts"You died. Sorry."
    money = money.to_f - 20
end
if sink == "no"
    puts"Yay! You made it across!"
    sleep(2)
    money = money.to_f - 20
    loop do
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print" **   **".black
        print"      @@@@@       @@@@@   \n".blue
        print" **   **".black
        print"       @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".green        
        puts"Next stop: Fort Kearny"
        puts"Miles traveled: " + totalmiles.to_s
        
        if food > 0
            food -= 5
        end
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            a = diseases_caused_by_rations.sample
            timer += 1
        end
        
                     
        if timer == 10
            puts"you died of " + a
            exit
        end
        totalmiles += oxen / 3
        miles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        sleep(0.3)
        system("clear")  
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print" **   **".black
        print"      @@@@@       @@@@@   \n".blue
        print"**  **".black
        print"         @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".green
        puts"Next stop: Fort Kearny"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        miles += oxen / 3
        totalmiles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        # puts"Date:" + date
        sleep(0.3)
        system("clear")
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print"  **   **".black
        print"     @@@@@       @@@@@   \n".blue
        print"   **   **".black
        print"     @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".green
        puts"Next stop: Fort Kearny"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        miles += oxen / 3
        totalmiles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        sleep(0.3)
        system("clear")
        if miles > 200.5
            puts"You have arrived at Fort Kearny."
            print"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n".blue
print"@@@@@@@@@@@@@@@@@@".blue
print"||||||".black
print"@@@@@@@@@@@@@@@@@@\n".blue
print"@@@@@@@@@@@@@@".blue
print"||||||||||||||".black
print"@@@@@@@@@@@@@@\n".blue
print"@@@@@@@@@@".blue
print"||||||||||||||||||||||".black
print"@@@@@@@@@@\n".blue
print"!!!!!!!!!!".green
print"%%%%%%%%%%%%%%%%%%%%%%".red
print"!!!!!!!!!!\n".green
print"!!!!!!!!!!".green
print"%%%%%%%%%%%%%%%%%%%%%%".red
print"!!!!!!!!!!\n".green
print"!!!!!!!!!!".green
print"%%%%%%%%%%%%%%%%%%%%%%".red
print"!!!!!!!!!!\n".green
print"!!!!!!!!!!".green
print"%%%%%%%%%%%%%%%%%%%%%%".red
print"!!!!!!!!!!\n".green
print"!!!!!!!!!!".green
print"%%%%%%%%%%%%%%%%%%%%%%".red
puts"!!!!!!!!!!".green
            sleep(5)
            miles = 0
            break
            system("clear")
        end
    end
    puts"FORT KEARNY GENERAL STORE"
    puts"FRED: how much food?"
    input = gets.chomp!
    number = input.to_f
    food += input.to_i
    number = number
    money = money - number
    if money < 0 
        puts"You don't have enough money for " + input + " pounds of food!"
        exit
    end
    puts"FRED: Ok, goodbye!"
    puts food
    sleep(2)
    system("clear")
    loop do
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print" **   **".black
        print"      @@@@@       @@@@@   \n".blue
        print" **   **".black
        print"       @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".red        
        puts"Next stop: Chimney Rock"
        puts"Miles traveled: " + totalmiles.to_s
        
        
             
        puts "Food: " + food.to_s
        if food > 0
            food -= 5
        end
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            a = diseases_caused_by_rations.sample
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        miles += oxen / 3
        totalmiles += oxen / 3
        totalmiles = totalmiles.to_i
        sleep(0.3)
        system("clear")  
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print" **   **".black
        print"      @@@@@       @@@@@   \n".blue
        print"**  **".black
        print"         @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".red
        puts"Next stop: Chimney Rock"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        miles += oxen / 3
        totalmiles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        # puts"Date:" + date
        sleep(0.3)
        system("clear")
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print"  **   **".black
        print"     @@@@@       @@@@@   \n".blue
        print"   **   **".black
        print"     @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".red
        puts"Next stop: Chimney Rock"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        miles += oxen / 3
        miles = miles.to_i
        sleep(0.3)
        system("clear")
        if miles > 255
            puts"You have arrived at Chimney rock."
            puts"------==============----------------------------=".blue
            print"::"
            print"-----------------------------------------------\n".blue
            print":::::::::::::"
            print"------------------------------------\n".blue
            print"::::::::::::::::::"
            print"----".blue
            print"=+".red
            print"-------------------------\n".blue
            print"::::::::::::::::::::::"
            print"++".red
            print"-------------------------\n".blue
            print":---------------------".blue
            print"**".red
            print"----------------------===\n".blue
            print"--------------------".blue
            print"+++++".red
            print"=-------------".blue
            print"==========\n".yellow
            print"================".yellow
            print"+*##******+".red
            print"=====================+\n".yellow
            print"========-=--==".yellow
            print"****#**********+".red
            print"===========++++++++\n".yellow
            print"=========".yellow
            print"+**###########*****+*%##**+".red
            print"===++++++++++\n".yellow
            print"=====+".yellow
            print"******#************#############*+".red
            print"=========\n".yellow
            print"###***##*#######*#######*****#####*++***#*+++++++".red
            sleep(10)
            system("clear")
            miles = 0
            break
        end
    end
    loop do
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print" **   **".black
        print"      @@@@@       @@@@@   \n".blue
        print" **   **".black
        print"       @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".yellow          
        puts"Next stop: Independance Rock"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        
             
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            a = diseases_caused_by_rations.sample
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        if food > 0 
            food -= 5
        end
        miles += oxen / 3
        totalmiles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        sleep(0.3)
        system("clear")  
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print" **   **".black
        print"      @@@@@       @@@@@   \n".blue
        print"**  **".black
        print"         @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".yellow
        puts"Next stop: Independance Rock"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        miles += oxen / 3
        totalmiles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        # puts"Date:" + date
        sleep(0.3)
        system("clear")
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print"  **   **".black
        print"     @@@@@       @@@@@   \n".blue
        print"   **   **".black
        print"     @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".yellow
        puts"Next stop: Independance Rock"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        miles += oxen / 3
        totalmiles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        sleep(0.3)
        system("clear")
        if miles > 211
            system("clear")
            puts"You have arrived at Independance Rock"
            print"######################*++==-".red
print"::::::::::::::::::::::::::::::::\n".yellow
print"==+**########################**+==-".red
print":::::::::::::::::::::::::\n".yellow
print"::::::".yellow
print"-=++***#######################*+==-".red
print":::::::::::::::::::\n".yellow
print":::::::::::::::".yellow
print"--=++****###################+=--".red
print":::::::::::::\n".yellow
print"::::::::::::::::::::::::::".yellow
print"-=***#################+--".red
print":::::::::\n".yellow
print":::::::::::::::::::::::::::::::::".yellow
print"-+**###############*=-".red
print":::::\n".yellow
print"::::::::::::::::::::::::::::::::::::::".yellow
print"-+################*+-:\n".red
print"=======+++++++=====- ".black
print"::::::::::::::::::::::".yellow
print"--+#############\n".red
print"++++++++++++++++++++++==-:::::::::::::::::::::".black
print"--=+*#########\n".red
puts"+++++++++++++=--=++-..-++===-:::::::::::::::::::::::--===++*
+++++++++++++:..-==: .-+===+=:...---::::::::::::::::::::::::
++=-:::::-=++=. .....--...:=-    .-+++======================
+=. .....-=+++=::::-=+-  ..--.  .:=+++++++++++++++++++++++++
+= .:=+++++++++++++++++====++-.  .:-------===:.-++++++++++++
+=: .:+++++====+++++++++++++++====:. ...   ... .-+++++==+++-".black
            sleep(5)
            miles = 0
            break
        end
    end
    loop do
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print" **   **".black
        print"      @@@@@       @@@@@   \n".blue
        print" **   **".black
        print"       @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".yellow          
        puts"Next stop: South Pass"
        puts"Miles traveled: " + totalmiles.to_s
        
        
             
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            a = diseases_caused_by_rations.sample
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        if food > 0 
            food -= 5
        end
        totalmiles += oxen / 3
        miles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        sleep(0.3)
        system("clear")  
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print" **   **".black
        print"      @@@@@       @@@@@   \n".blue
        print"**  **".black
        print"         @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".yellow
        puts"Next stop: South Pass"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        miles += oxen / 3
        totalmiles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        # puts"Date:" + date
        sleep(0.3)
        system("clear")
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print"  **   **".black
        print"     @@@@@       @@@@@   \n".blue
        print"   **   **".black
        print"     @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".yellow
        puts"Next stop: South Pass"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        totalmiles += oxen / 3
        miles += oxen / 3
        miles = miles.to_i
        totalmiles = miles.to_i
        sleep(0.3)
        system("clear")
        if miles > 120
            system("clear")
            puts"You have arrived at South Pass."
            print"=========================================================\n".blue
print"====================================================".blue
print":::::\n"
print"===============================================".blue
print"::::::::::\n"
print"===================================================".blue
print"::::::\n"
print"=======================================================".blue
print"::\n"
print"=========================================================\n".blue
print"===============================================".blue
print"++++++++++\n".yellow
print"++++++".yellow
print"=================================".blue
print"++++++++++++++++++\n".yellow
print"++++++++++".yellow
print"=======================".blue
print"++++++++++++++++++++++++\n".yellow
puts"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++".yellow
            sleep(5)
            miles = 0
            break
        end
    end
    loop do
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print" **   **".black
        print"      @@@@@       @@@@@   \n".blue
        print" **   **".black
        print"       @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".yellow          
        puts"Next stop: Fort Bridger"
        puts"Miles traveled: " + totalmiles.to_s
        
        
             
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            a = diseases_caused_by_rations.sample
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        if food > 0 
            food -= 5
        end
        totalmiles += oxen / 3
        miles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        sleep(0.3)
        system("clear")  
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print" **   **".black
        print"      @@@@@       @@@@@   \n".blue
        print"**  **".black
        print"         @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".yellow
        puts"Next stop: Fort Bridger"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        miles += oxen / 3
        totalmiles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        # puts"Date:" + date
        sleep(0.3)
        system("clear")
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print"  **   **".black
        print"     @@@@@       @@@@@   \n".blue
        print"   **   **".black
        print"     @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".yellow
        puts"Next stop: Fort Bridger"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        totalmiles += oxen / 3
        miles += oxen / 3
        miles = miles.to_i
        totalmiles = miles.to_i
        sleep(0.3)
        system("clear")
        if miles > 143 
            system("clear")
            puts"You have arrived at Fort Bridger."
            print"********************************************************\n".blue
print"********************************************************\n".blue
print"********************************************************\n".blue
print"|^|".yellow
print"******".blue
print"|^|".yellow
print"*******".blue
print"|^|".yellow
print"********".blue
print"|^|".yellow
print"*********".blue
print"|^|".yellow
print"********".blue
print"|^|\n".yellow
puts"||||||||||||||||||||||||||||||||||||||||||||||||||||||||
||||||||||||||||||||||||||||||||||||||||||||||||||||||||
||||||||||||||||||||||||||||||||||||||||||||||||||||||||".yellow
puts"########################################################
########################################################
########################################################".green
        end
        puts"FORT BRIDGER GENERAL STORE"
        puts"TIM: how much food?"
        input = gets.chomp!
        number = input.to_f
        food += input.to_i
        number = number
        money = money - number
        if money < 0 
            puts"You don't have enough money for " + input + " pounds of food!"
            exit
        end
        puts"TIM: Ok, goodbye!"
        puts food
        sleep(2)
        system("clear")
        miles = 0
        break
    end
    loop do
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print" **   **".black
        print"      @@@@@       @@@@@   \n".blue
        print" **   **".black
        print"       @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".green         
        puts"Next stop: Salt Lake Valley"
        puts"Miles traveled: " + totalmiles.to_s    
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            a = diseases_caused_by_rations.sample
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        if food > 0 
            food -= 5
        end
        totalmiles += oxen / 3
        miles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        sleep(0.3)
        system("clear")  
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print" **   **".black
        print"      @@@@@       @@@@@   \n".blue
        print"**  **".black
        print"         @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".green
        puts"Next stop: Salt Lake Valley"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        miles += oxen / 3
        totalmiles += oxen / 3
        miles = miles.to_i
        totalmiles = totalmiles.to_i
        # puts"Date:" + date
        sleep(0.3)
        system("clear")
        print"              @@@@@@@@@@@@@@@@@   \n" 
        print"***".black
        print"           @@@@@@@@@@@@@@@@@    \n"
        print"***".black
        print"           @@@@@@@@@@@@@@@@@   \n"
        print" *******".black
        print"______[[[[[[[[$]]]]]]]]        \n".blue
        print" *******".black
        print"------[@@@[[[[$]]]]@@@]        \n".blue
        print"  **   **".black
        print"     @@@@@       @@@@@   \n".blue
        print"   **   **".black
        print"     @@@         @@@      \n".blue
        print"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\n".green
        puts"Next stop: Salt Lake Valley"
        puts"Miles traveled: " + totalmiles.to_s
        
        puts "Food: " + food.to_s
        if food < 0 || food == 0
            puts"So...hungry..."
            puts"You have " + a
            timer += 1
        end
        if timer == 10
            puts"you died of " + a
            exit
        end
        totalmiles += oxen / 3
        miles += oxen / 3
        miles = miles.to_i
        totalmiles = miles.to_i
        sleep(0.3)
        system("clear")
        if miles > 127
            break
        end
    end
    puts"CONGRADULATIONS!"
    puts"You have made it through the long trip to get to Salt Lake Valley. Later Bob and John arrive and you help them set up their new store. You know that you can not make it back over the mountains, and that there is no going back."
    print"#######################".green
    print"*==============\n".black
    print"#######################".green
    print"*==============\n".black
    print"*".blue
    print"######################*".green
    print"==============\n".black
    print"*****".blue
    print"###################".green
    print"==============\n".black
    print"******".blue
    print"##################*".green
    print"=============\n".black
    print"******".blue
    print"#################*".green
    print"==============\n".black
    print"*****".blue
    print"##################".green
    print"+==============\n".black
    print"****".blue
    print"###################*".green
    print"==============\n".black
    print"***".blue
    print"####################*".green
    print"==============\n".black
    print"***".blue
    print"####################*".green
    print"==============\n".black
    print"****".blue
    print"###################*".green
    print"==============\n".black
    print"****".blue
    print"#####################".green
    print"=============\n".black
    print"*****".blue
    print"###################*".green
    print"=============\n".black
    print"****".blue
    print"#####################".green
    print"=============\n".black
    print"***".blue
    print"######################".green
    print"=============\n".black
    print"**".blue
    print"#######################".green
    print"+============\n".black
    print"**".blue
    print"#######################".green
    print"+============\n".black
    print"**".blue
    print"#######################".green
    print"+============\n".black
    print"*".blue
    print"########################".green
    print"+============\n".black
    print"#########################".green
    print"+============".black
end
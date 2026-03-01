$animals = ["Rabbit", "Deer", "Bison", "Rabbit", "Chipmonk", "Duck", "Wolf"]
$guns = 0
$animalgender = ["He", "She"] 
$gender = $animalgender.sample
$animal = $animals.sample
$bullets = 10
$meat = 0
$deathtimer = 0
if $bullets == 0
    puts"No bullets! You wanna get eaten? Geez!"
end
if $bullets != 0
    puts"Ready?"
    input = gets
    puts"You see a " + $animal
    if $animal != "Bison" && $animal != "Wolf"
        puts"Hurry! hit enter!"
        $deathtimer += 0.5
        gets
        if $deathtimer > 1.5
            puts"Too slow! It got away!"
        end
        if $deathtimer < 1.5
            puts"BAM!"
            $bullets -= 1
            sleep(0.5)
            puts"You got it!"
            if $animal.to_s == "Duck" || $animal.to_s == "Rabbit"
                $meat == 20
                sleep(0.5)
                puts"You have a total of 20 pounds of meat!" 
            end
            if $animal.to_s == "" || $animal.to_s == "Rabbit"
                $meat == 20
                sleep(0.5)
                puts"You have a total of 20 pounds of meat!" 
            end
            if $animal.to_s == "Deer"
                $meat == 100
                puts"You have a total of 100 pound of meat!" 
            end
        end
    end
    if $animal == "Bison" 
        puts $gender + " is charging you! Type anything to shoot!"
        $deathtimer += 1
        input = gets
        if $deathtimer > 2
            puts"Too slow! You are dead!"
            exit
        end
        if $deathtimer != 2
            puts"BAM!"
            $bullets -= 1
            sleep(0.5)
            puts"You got it!"
            puts"You have a total of 200 meat."
            $meat = 200
        end
    end
    if $animal == "Wolf"
        puts $gender + " is running to you!"
        $bullets -= 1
        $deathtimer += 1
        input = gets
        if $deathtimer > 5
            puts"Too slow! You are dead!"
            exit
        end
        if $deathtimer != 0
            puts"BAM!"
            sleep(0.5)
            puts"You got it!"
        end
    end
end
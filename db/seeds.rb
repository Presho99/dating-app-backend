require 'faker'
puts "🌱 Seeding spices..."


# Seed your database here
locations = "Westlands, Dagoretti North, Dagoretti South, Langata, Kibra, Roysambu, Kasarani, Ruaraka, Embakasi South, Embakasi North, Embakasi Central, Embakasi East, Embakasi West, Makadara, Kamukunji, Starehe, Mathare".split(", ")
stars = "Aries, Taurus, Gemini, Cancer, Leo, Virgo, Libra, Scorpio, Sagittarius, Capricorn, Aquarius, Pisces".split(", ")
#Create Men

100.times do 
    Man.create(
        username:Faker::Name.male_first_name, 
        age:rand(21..70),
        gender:"male",
        job:Faker::Job.field,
        location:locations[rand(locations.length)],
        horoscope:stars[rand(stars.length)]
    )
    
    Woman.create(
        username:Faker::Name.female_first_name, 
        age:rand(21..60),
        gender:"female",
        job:Faker::Job.field,
        location:locations[rand(locations.length)],
        horoscope:stars[rand(stars.length)]
    )

   
end

1000.times do 
    
    Match.create(
      man_id:Man.all[rand(Man.count)].id,
      woman_id:Woman.all[rand(Woman.count)].id,
      percentage:rand(100) 
    )
end


puts "✅ Done seeding!"

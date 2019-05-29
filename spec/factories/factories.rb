FactoryBot.define do
    factory :character do
       name {"Akuma"}
        head_shot {"https://vignette.wikia.nocookie.net/marvelvscapcom/images/7/77/MVC2_Gouki.jpg/revision/latest?cb=20110923045906"}
        universe {"Capcom"}
    end
    
    factory :move do
        id {"Akuma"}
        character_name {"Akuma"}
        move_name {"Gohadoken"}
        image {"https://vignette.wikia.nocookie.net/marvelvscapcom"}
    end
end
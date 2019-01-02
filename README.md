### Marvel Vs Capcom 2 API

http://secure-hamlet-19722.herokuapp.com/characters

Is a URL that shows the implementation of what the application could produce using the data

### All Character End Point:

https://secure-hamlet-19722.herokuapp.com/api/v1/characters

This returns a list of all available Characters for the Marvel and Capcom Universe
{
"name": "Blackheart",
"head_shot": "https://vignette.wikia.nocookie.net/marvelvscapcom/images/3/34/MVC2_Blackheart.jpg/revision/latest?cb=20110914071301",
"universe": "Marvel"
},
{
"name": "Cable",
"head_shot": "https://vignette.wikia.nocookie.net/marvelvscapcom/images/b/be/MVC2_Cable.jpg/revision/latest?cb=20110914072054",
"universe": "Marvel"
},
{
"name": "Captain America",
"head_shot": "https://vignette.wikia.nocookie.net/marvelvscapcom/images/2/21/MVC2_Captain_America.jpg/revision/latest?cb=20110914072107",
"universe": "Marvel"
},...

### Single Character End Point:
https://secure-hamlet-19722.herokuapp.com/api/v1/characters/:name

This returns a single record for one character
Ex: https://secure-hamlet-19722.herokuapp.com/api/v1/characters/Akuma/
{
"name": "Akuma",
"head_shot": "https://vignette.wikia.nocookie.net/marvelvscapcom/images/7/77/MVC2_Gouki.jpg/revision/latest?cb=20110923045906",
"universe": "Capcom"
}

### Character Move End Point:

https://secure-hamlet-19722.herokuapp.com/api/v1/characters/:name/moves

This returns a record of all moves for a specifc character

[
{
"character_name": "Akuma",
"move_name": "Gohadoken",
"image": "/images/Move_Images/Akuma/Gohadoken.PNG"
},
{
"character_name": "Akuma",
"move_name": "Zanku Hadoken",
"image": "/images/Move_Images/Akuma/Zanku Hadoken.PNG"
},
{
"character_name": "Akuma",
"move_name": "Goshoryuken",
"image": "/images/Move_Images/Akuma/Goshoryuken.PNG"
}
}

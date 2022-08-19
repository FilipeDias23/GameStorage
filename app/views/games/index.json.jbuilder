json.array! @games, partial: "games/game", as: :game
#will build a json array @games object (is on the index method in the games controller)
#And for each object it will create a partial in the same folder(folder location)
#And each object will be known as game

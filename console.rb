require("pry")
require_relative("models/album.rb")
require_relative("models/artist.rb")


artist1 = Artist.new({
  "name" => "Carrie Underwood"
})

artist1.save()

album1 = Album.new(
  {
    "title" => "Carnival Ride",
    "genre" => "Country",
    "artist_id" => artist1.id
  }
)
album1.save()




binding.pry
nil

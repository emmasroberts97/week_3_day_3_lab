require("pry")
require_relative("models/album.rb")
require_relative("models/artist.rb")

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({
  "name" => "Carrie Underwood"
}
)

artist1.save()

album1 = Album.new(
  {
    "title" => "Carnival Ride",
    "genre" => "Country",
    "artist_id" => artist1.id
  }
)
album1.save()

# album1.genre = "Rap"
# album1.update()

# artist1.name = "Drake"
# artist1.update()

artist2 = Artist.new({
  "name" => "Migos"
  }
)

artist2.save()

album2 = Album.new(
  {
    "title" => "Culture II",
    "genre" => "Rap",
    "artist_id" => artist2.id
  }
)

album2.save()

binding.pry
nil

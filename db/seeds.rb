# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding."

User.delete_all
Tag.delete_all
Destiation.delete_all

destination_1 = {name: "Seattle, WA, USA",
      latitude: 47.6062095,
      longitude: -122.3320708,
      image: "https://www.pswrealestate.com/assets/region_images/seattle/seattle-city-skyline.jpg",
    }

destination_2 = {name: "New York, NY, USA",
      latitude: 47.6062095,
      longitude: -122.3320708,
      image: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/01/31/09/new-york-statue-of-liberty.jpg",
    }

# destination_3 {name: "Washington D.C."
# latitude:
# longitude:
# image: "https://www.tripsavvy.com/thmb/il01AggvP9tTtT3w1f2tWeWi58Q=/960x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-497322993-598b2ad403f4020010ae0a08.jpg",
# }


user_1 = {username: "test",
    first_name: "John",
    last_name: "Doe"
  }

user_2 = {username: "helloworld2000",
        first_name: "Ada",
        last_name: "Lovelace",
      }

tag_1 = {name: "#hiking"}
tag_2 = {name: "#shopping"}
tag_3 = {name: "#coffee"}
tag_4 = {name: "#pizza"}

def createDestination(destination)
  Destination.create(destination)
end

def createUser(user)
  User.create(user)
end

def createTag(tag)
  Tag.create(tag)
end

destination1 = createDestination(destination_1)
destination2 = createDestination(destination_2)

user1 = createUser(user_1)
user2 = createUser(user_2)

tag1 = createTag(tag_1)
tag2 = createTag(tag_2)
tag3 = createTag(tag_3)
tag4 = createTag(tag_4)

def makeFavDestination(user, destination)
  Favorite.create(user_id: user.id, destination_id: destination.id)
end

favorite1 = makeFavDestination(user1, destination1)
favorite2 = makeFavDestination(user2, destination2)

def makeFavoriteTag(tag, fav)
  FavoriteTag.create(favorite_id: fav.id, tag_id: tag.id)
end

makeFavoriteTag(tag2, favorite2)
makeFavoriteTag(tag4, favorite2)
makeFavoriteTag(tag1, favorite1)
makeFavoriteTag(tag3, favorite1)

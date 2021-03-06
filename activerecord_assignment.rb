### Active Record Query Interface Assignment

### Provide one or more Active Record queries that retrieve the requested data
### below each of the following questions:


# 1a) Find the genre with the name "Hip Hop/Rap".

Genre.find_by(name: 'Hip Hop/Rap')


# 1b) Count how many tracks belong to the "Hip Hop/Rap" genre

hhrid = Genre.find_by(name: 'Hip Hop/Rap').id
Track.where(genre_id: hhrid).length

# 2) Find the total amount of time required to listen to all the tracks in the database.

Track.all.map(&:milliseconds).sum # in milliseconds. For hours, divide by 3.6 million
# I just learned how to do this :)

# 3a) Find the highest price of any track that has the media type "MPEG audio file".

Track.where(media_type_id: MediaType.find_by(name: 'MPEG audio file')).order(unit_price: :desc).limit(1).first.unit_price
# => 0.9e0 # odd formatting, but equals $0.99

# 3b) Find the name of the most expensive track that has the media type "MPEG audio file".

Track.where(media_type_id: MediaType.find_by(name: 'MPEG audio file')).order(unit_price: :desc).limit(1).first.name


# 4) Find the 2 oldest artists.



### Stretch Exercise (Active Record Query Interface)


# 1) Find all the albums whose titles start with B.

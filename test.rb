require "sqlite3"


# Open a database
db = SQLite3::Database.new "chinook.db"

# Récupère tout les albums
#puts db.execute( "SELECT Title FROM albums" )

# Récupère tout les albums dont le titre contient "Great" 
#puts db.execute( "SELECT Title FROM albums WHERE Title LIKE '%Great%'" ) 

# Donne moi le nombre total d'albums contenus dans la base (sans regarder les id bien sûr)
#puts db.execute( "SELECT COUNT (Title) FROM albums;" )

# Supprime tout les albums dont le nom contient "music
#puts db.execute( "DELETE FROM albums WHERE Title LIKE '%music%'" )

# Récupère tout les albums écrit par AC/DC
#puts db.execute( "SELECT ArtistId FROM artists WHERE Name='AC/DC'" )

# Récupère tout les titres des albums de AC/DC
#db.execute( "SELECT AlbumId FROM albums WHERE ArtistId=(SELECT ArtistId FROM artists WHERE Name='AC/DC')") do |row|
#  puts db.execute( "SELECT Name FROM tracks WHERE AlbumId= " + row[0].to_s)
#end

# Récupère la liste des titre de l'album "Let There Be Rock"
#puts db.execute( "SELECT Name FROM tracks WHERE AlbumId=(SELECT AlbumId FROM albums WHERE Title='Let There Be Rock')" )

# Quel est le prix de cet album ainsi que sa durée totale ?
#puts db.execute( "SELECT SUM(UnitPrice) FROM tracks WHERE AlbumId=(SELECT AlbumId FROM albums WHERE Title='Let There Be Rock')" )
#puts db.execute( "SELECT SUM(Milliseconds) FROM tracks WHERE AlbumId=(SELECT AlbumId FROM albums WHERE Title='Let There Be Rock')" )

# Quel est le côut de l'intégralité de la discographie de "Deep Purple" ?
#total = 0
#db.execute( "SELECT AlbumId FROM albums WHERE ArtistId=(SELECT ArtistId FROM artists WHERE Name='Deep Purple')") do |row|
#  prix = db.execute( "SELECT SUM(UnitPrice) FROM tracks WHERE AlbumId= " + row[0].to_s)
#  total += prix[0][0]
#end
#puts total

###############
# to run use:
#
#   $ ruby no1/composite.rb


require './generate'


recs = read_csv( './rookie/rookie.csv' )
puts "  #{recs.size} punk(s)"
#=>  25 punk(s)


art = Art.new( dir: './rookie' )


## 5x5 grid with every tile 24x24
punks = CompositeImage.new( 5, 5 )

recs.each_with_index do |rec,i|
  punk = art.generate( rec )
  punks << punk
end

punks.save( './o/rookie/rookies.png')
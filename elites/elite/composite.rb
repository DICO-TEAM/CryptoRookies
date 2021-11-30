###############
# to run use:
#
#   $ ruby no1/composite.rb


require './generate'


recs = read_csv( './elite/elite.csv' )
puts "  #{recs.size} punk(s)"
#=>  25 punk(s)


art = Art.new( dir: './elite' )


## 5x5 grid with every tile 24x24
punks = CompositeImage.new( 10, 10 )

recs.each_with_index do |rec,i|
  punk = art.generate( rec )
  punks << punk
end

punks.save( './o/elite/elites.png')
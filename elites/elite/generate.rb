###############
# to run use:
#
#   $ ruby no1/generate.rb


require './generate'


recs = read_csv( './elite/elite.csv' )
puts "  #{recs.size} elite(s)"
#=>  25 records


art = Art.new( dir: './EliteElements' )

## 5x5 grid with every tile 24x24
elites = CompositeImage.new( 10, 10 )

recs.each_with_index do |rec,i|
  name = "angel#{i+1}"
  elite = art.generate( rec )
  elite.save( "./o/elite/#{name}.png" )
  # angel.zoom(20).save( "./o/angel/#{name}x20.png" )
  elites << elite
end

elites.save( './o/elite/elites.png')

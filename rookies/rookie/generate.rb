###############
# to run use:
#
#   $ ruby no1/generate.rb


require './generate'


recs = read_csv( './rookie/rookie.csv' )
puts "  #{recs.size} rookie(s)"
#=>  25 records


art = Art.new( dir: './RookieElements' )

## 5x5 grid with every tile 24x24
rookies = CompositeImage.new( 100, 100 )

recs.each_with_index do |rec,i|
  name = "rookie#{i+1}"
  rookie = art.generate( rec )
  rookie.save( "./o/rookie/#{name}.png" )
  rookie.zoom(20).save( "./o/rookie x20/#{name}.png" )
  rookies << rookie
end

rookies.save( './o/rookie/rookies.png')
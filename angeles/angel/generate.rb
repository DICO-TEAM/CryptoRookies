###############
# to run use:
#
#   $ ruby no1/generate.rb


require './generate'


recs = read_csv( './angel/angel.csv' )
puts "  #{recs.size} angel(s)"
#=>  25 records


art = Art.new( dir: './AngelElements' )

## 5x5 grid with every tile 24x24
angels = CompositeImage.new( 40, 25 )

recs.each_with_index do |rec,i|
  name = "angel#{i+1}"
  angel = art.generate( rec )
  angel.save( "./o/angel/#{name}.png" )
  angel.zoom(20).save( "./o/angel-20/#{name}.png" )
  angels << angel
end

angels.save( './o/angel/angels.png')

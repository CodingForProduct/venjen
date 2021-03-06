# hard code routes since there's only a few

ActiveRecord::Base.connection.execute("TRUNCATE routes RESTART IDENTITY")
ActiveRecord::Base.connection.execute("TRUNCATE stops RESTART IDENTITY")

routes = Route.create([{ route_id: '801', display_name: 'Blue Line', route_location: 'Downtown LA to Long Beach' },
                       { route_id: '802', display_name: 'Red Line', route_location: 'North Hollywood to Union Station' },
                       { route_id: '803', display_name: 'Green Line', route_location: 'Redondo Beach to Norwalk' },
                       { route_id: '804', display_name: 'Gold Line', route_location: 'East Los Angeles to Azusa' },
                       { route_id: '805', display_name: 'Purple Line', route_location: 'Downtown LA to Mid-Wilshire/Koreatown' },
                       { route_id: '806', display_name: 'Expo Line', route_location: 'Downtown LA to Santa Monica' }])

# reads from each stop file to populate stops table
require 'json'
data = File.read('stops_list_801.txt')
jdata = JSON.parse(data)

jdata['items'].each do |d|
  Stop.create(stop_id: d['id'], route_id: '801', display_name: d['display_name'], longitude: d['longitude'], latitude: d['latitude'])
end

data = File.read('stops_list_802.txt')
jdata = JSON.parse(data)

jdata['items'].each do |d|
  Stop.create(stop_id: d['id'], route_id: '802', display_name: d['display_name'], longitude: d['longitude'], latitude: d['latitude'])
end

data = File.read('stops_list_803.txt')
jdata = JSON.parse(data)

jdata['items'].each do |d|
  Stop.create(stop_id: d['id'], route_id: '803', display_name: d['display_name'], longitude: d['longitude'], latitude: d['latitude'])
end

data = File.read('stops_list_804.txt')
jdata = JSON.parse(data)

jdata['items'].each do |d|
  Stop.create(stop_id: d['id'], route_id: '804', display_name: d['display_name'], longitude: d['longitude'], latitude: d['latitude'])
end

data = File.read('stops_list_805.txt')
jdata = JSON.parse(data)

jdata['items'].each do |d|
  Stop.create(stop_id: d['id'], route_id: '805', display_name: d['display_name'], longitude: d['longitude'], latitude: d['latitude'])
end

data = File.read('stops_list_806.txt')
jdata = JSON.parse(data)

jdata['items'].each do |d|
  Stop.create(stop_id: d['id'], route_id: '806', display_name: d['display_name'], longitude: d['longitude'], latitude: d['latitude'])
end
# stops = Stop.create([stops])

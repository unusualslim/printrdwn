# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Statuses
Status.create( status: "Open")
Status.create( status: "In progress")
Status.create( status: "Closed")

#Severities
Severity.create( severity: "Low", description: "No time frame required")
Severity.create( severity: "Normal", description: "Needs to be fixed soon")
Severity.create( severity: "Urgent", description: "All attention required")

#Locations: 13 GNG
Location.create( short_name: "N/A", name: "Not Applicable")
Location.create( short_name: "AGG", name: "Americus Gas N Go")
Location.create( short_name: "GGE", name: "Gas N Go Express")
Location.create( short_name: "FM1", name: "Food Mart 1")
Location.create( short_name: "FM2", name: "Food Mart 2")
Location.create( short_name: "FM3", name: "Food Mart 3")
Location.create( short_name: "FGG", name: "Fort Valley Gas N Go")
Location.create( short_name: "PTC", name: "Pinehurst Travel Center")
Location.create( short_name: "PFM", name: "Preston Food Mart")
Location.create( short_name: "BGG", name: "Byron Gas N Go")
Location.create( short_name: "BVGG", name: "Buena Vista Gas N Go")
Location.create( short_name: "CGG", name: "Cordele Gas N Go")
Location.create( short_name: "CFM", name: "Cusseta Food Mart")
Location.create( short_name: "MGG", name: "Montezuma Gas N Go")
Location.create( short_name: "SUBAME", name: "Subway Americus")
Location.create( short_name: "SUBGGE", name: "Subway Express")
Location.create( short_name: "SUBPTC", name: "Subway Pinehurst")
Location.create( short_name: "MPC", name: "Montezuma Perry's Chicken")
Location.create( short_name: "280E", name: "PBO East Office")
Location.create( short_name: "280W", name: "PBO West Office")
Location.create( short_name: "FPTS", name: "Five Points Office")
Location.create( short_name: "FPTSFF", name: "Five Points Fleet Fueling")
Location.create( short_name: "CFF", name: "Cordele Fleet Fueling")


#Tags
Tag.create( name: "WAN IP")
Tag.create( name: "Serial Number")
Tag.create( name: "LAN IP")

#Manufacturers
Manufacturer.create( name: "Gilbarco Veeder-root")
Manufacturer.create( name: "Wayne")
Manufacturer.create( name: "OPW")
Manufacturer.create( name: "NCR")
Manufacturer.create( name: "Veriphone")
Manufacturer.create( name: "Igenico")

#Equipment
Equipment.create( model: "MX915", manufacturer_id: 5)
Equipment.create( model: "TLS350", manufacturer_id: 1)
Equipment.create( model: "TLS450", manufacturer_id: 1)
Equipment.create( model: "PX60 Passport", manufacturer_id: 1)
Equipment.create( model: "Panther", manufacturer_id: 4)
Equipment.create( model: "Radiant Site Controller", manufacturer_id: 4)

#Roles
Role.create( role: "Administrator")
Role.create( role: "Contributor")
Role.create( role: "Audience")

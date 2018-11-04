users_list = [
	["Vlad",   "Vovk",    "7191 Blue Spring St.Bay City, MI 48706",          "2010-1-20"],
	["Igor",   "Kubrak",  "484 Bridle Court Port Chester, NY 10573",         "2010-2-6"],
	["Bgor",   "Brak",    "863 Bridge Lane Calumet City, IL 60409",          "2011-3-21"],
	["Bigor",  "Rak",     "8327 S. Amherst Street Midland, MI 48640",        "2011-2-6"],
	["Tigor",  "Ak",      "9902 Big Rock Cove Ave.Erlanger, KY 41018",       "2012-2-20"],
	["Digor",  "Ubrak",   "57 Fieldstone Street Mount Vernon, NY 10550",     "2012-11-12"],
	["Sigor",  "Dub",     "63 West Liberty Rd. Homestead, FL 33030",         "2013-11-18"],
	["Ligor",  "Marcene", "7540 Sycamore Dr.Pueblo, CO 81001",               "2012-11-10"],
	["Migor",  "Lisogor", "23 Illinois Dr.Media, PA 19063",                  "2010-11-24"],
	["Alex",   "Mizinlo", "993 West Mountainview Dr.Meriden, CT 06450",      "2010-11-25"],
	["Maks",   "Lucas",   "76 New Saddle St.West Bend, WI 53095",            "2012-3-20"],
	["Taks",   "King",    "736 Locust Lane Zion, IL 60099",                  "2010-4-22"],
	["Stepan", "Mifa",    "42 Ohio Ave.Coventry, RI 02816",                  "2003-7-20"],
	["Miron",  "Jonian",  "272 Windfall Court Harrisonburg, VA 22801",       "2003-5-20"],
	["Slidan", "Forever", "30 Ridge St.Knoxville, TN 37918",                 "2001-11-20"],
	["Nigon",  "Mics",    "64 Spruce Street Davison, MI 48423",              "1997-3-20"],
	["Misca",  "Goom",    "14 SW. Stillwater Ave.Monroe Township, NJ 08831", "1932-7-26"],
	["Suske",  "Uchi",    "132 Glenwood Court Kingston, NY 12401",           "1956-6-3"],
	["Hinata", "Hogward", "918 County Lane Navarre, FL 32566",               "1998-6-2"],
	["Mish",   "Misuki",  "76 New Saddle St.West Bend, WI 53095",            "1998-6-2"]
]

users_list.each do |first_name, second_name, address, birthday|
	user = User.create( 
											first_name: first_name,
											second_name: second_name,
											address: address,
											birthday: birthday
										)
	user._keywords
end

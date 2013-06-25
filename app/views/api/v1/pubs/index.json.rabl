@fonts = [{"url" => "https://s3.amazonaws.com/ratworkshop_taplist/fonts/spaceranger.ttf"}, 
		  {"url" => "https://s3.amazonaws.com/ratworkshop_taplist/fonts/spaceranger3d.ttf"}]

@pubs = [
			{
			 "id" => "101",
			 "name" => "Brewforia - Meridian",
			 "name_font" => {
			 				  "text_color" => "#ffe8db",
			 				  "font" => "MONOSPACE",
			 				  "style" => "BOLD",
			 				  "custom" => false,
			 				  "list_size" => 16.0,
			 				  "details_size" => 16.0			 				 
			 				},
			 "logo" => "https://s3.amazonaws.com/ratworkshop_taplist/logos/1/pub-1-logo-135156678.png",
			 "address" => {
			 			  "address" => "101 Overland Rd",
			 			  "city" => "Meridian",
			 			  "state" => "ID",
			 			  "zip" => "83706"
			 			 },
			 "title" => "The Beer Garden",
			 "title_font" => {
			 				  "text_color" => "#ffe8db",
			 				  "font" => "MONOSPACE",
			 				  "style" => "BOLD",
			 				  "custom" => false,
			 				  "list_size" => 16.0,
			 				  "details_size" => 16.0
			 				 },
			 "subtitle" => "Custom Beer",
			 "subtitle_font" => {
			 				  	 "text_color" => "#ffe8db",
			 				  	 "font" => "MONOSPACE",
			 				  	 "style" => "BOLD",
			 				  	 "custom" => false,
			 				  	 "list_size" => 36.0,
			 				  	 "details_size" => 36.0
			 					},
			 "description_font" => {
			 			 			"text_color" => "#e9dcc8",
			 				  	 	"font" => "DEFAULT",
			 				  	 	"style" => "BOLD",
			 				  	 	"custom" => false,
			 				  	 	"list_size" => 16.0,
			 				  	 	"details_size" => 16.0
			 					   },
			 "subheader_font" => {
			 			 		  "text_color" => "#ff3300",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "NORMAL",
			 				  	  "custom" => false,
			 				  	  "list_size" => 12.0,
			 				  	  "details_size" => 12.0
			 					 },
			 "taplist_font" => {
			 			 		  "text_color" => "#e9dcc8",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "NORMAL",
			 				  	  "custom" => false,
			 				  	  "list_size" => 12.0,
			 				  	  "details_size" => 12.0
			 					 },
			 "featured_font" => {
			 			 		  "text_color" => "#607d32",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "BOLD",
			 				  	  "custom" => false,
			 				  	  "list_size" => 12.0,
			 				  	  "details_size" => 12.0
			 					 },
			 "brew_name_font" => {
			 			 		  "text_color" => "#e9dcc8",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "BOLD",
			 				  	  "custom" => false,
			 				  	  "list_size" => 12.0,
			 				  	  "details_size" => 18.0
			 					 },
			 "featured_brew_name_font" => {
			 			 		  "text_color" => "#607d32",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "BOLD",
			 				  	  "custom" => false,
			 				  	  "list_size" => 12.0,
			 				  	  "details_size" => 12.0
			 					 },
			 "backgrounds" => {
			 				   "header" => "#000000",
			 				   "subheader" => "#000000",
			 				   "taplist" => "#000000",
			 				   "publist" => "#000000"
			 				  },
			 "brews" => [
			 	{ 
			 	 "id" => "11",
			 	 "name" => "Pike Kilt Lifter Ruby Ale",
			 	 "desc" => "A great tasting Ale that makes any steak better.",
			 	 "abv" => 6.5,
			 	 "glass" => 3.49,
			 	 "quart" => 6.99,
			 	 "growler" => 13.99,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "ALE"
			 	},
			 	{ 
			 	 "id" => "12",
			 	 "name" => "Crooked Fence Pineapple IPA",
			 	 "desc" => "The pineapple flavor gives this IPA a tropical feel.",
			 	 "abv" => 6.8,
			 	 "glass" => 3.49,
			 	 "quart" => 6.99,
			 	 "growler" => 13.99,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "IPA"
			 	},
			 	{ 
			 	 "id" => "13",
			 	 "name" => "Grand Teton Lost Continent Double IPA",
			 	 "desc" => "A great IPA for any season of the year.",
			 	 "abv" => 8.0,
			 	 "glass" => 3.69,
			 	 "quart" => 8.49,
			 	 "growler" => 16.99,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "IPA"
			 	},			
			 	{ 
			 	 "id" => "14",
			 	 "name" => "Hoegaarden Belgian Wit",
			 	 "desc" => "",
			 	 "abv" => 4.9,
			 	 "glass" => 3.49,
			 	 "quart" => 6.99,
			 	 "growler" => 13.99,
			 	 "featured" => true,
			 	 "image" => "",
			 	 "type" => "WHEAT"
			 	},	
			 	{ 
			 	 "id" => "15",
			 	 "name" => "New Belgium/Red Rock Paardebloem Ale",
			 	 "desc" => "",
			 	 "abv" => 9.0,
			 	 "glass" => 3.99,
			 	 "quart" => 9.29,
			 	 "growler" => 18.49,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "ALE"
			 	},	
			 	{ 
			 	 "id" => "16",
			 	 "name" => "Salmon River Buzz Buzz Coffer Porter",
			 	 "desc" => "",
			 	 "abv" => 5.6,
			 	 "glass" => 3.69,
			 	 "quart" => 7.49,
			 	 "growler" => 14.99,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "PORTER"
			 	},
			 	{ 
			 	 "id" => "17",
			 	 "name" => "North Coast Class of '88 Collaboration Barleywine",
			 	 "desc" => "",
			 	 "abv" => 10.0,
			 	 "glass" => 6.99,
			 	 "quart" => 22.39,
			 	 "growler" => 44.69,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "PILSNER"
			 	},	
			 	{ 
			 	 "id" => "18",
			 	 "name" => "Payette Outlaw IPA",
			 	 "desc" => "",
			 	 "abv" => 6.2,
			 	 "glass" => 3.49,
			 	 "quart" => 6.99,
			 	 "growler" => 14.99,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "IPA"
			 	},	
			 	{ 
			 	 "id" => "19",
			 	 "name" => "Mendocino Peregrine Pilsner",
			 	 "desc" => "",
			 	 "abv" => 5.6,
			 	 "glass" => 3.00,
			 	 "quart" => 5.00,
			 	 "growler" => 9.00,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "PILSNER"
			 	}					 	 				 	
			  ]
			},
			{
			 "id" => "111",
			 "name" => "Brewforia - Eagle",
			 "name_font" => {
			 				  "text_color" => "#ffe8db",
			 				  "font" => "MONOSPACE",
			 				  "style" => "BOLD",
			 				  "custom" => false,
			 				  "list_size" => 16.0,
			 				  "details_size" => 16.0			 				 
			 				},			 
			 "logo" => "",
			 "address" => {
			 			  "address" => "101 State St.",
			 			  "city" => "Eagle",
			 			  "state" => "ID",
			 			  "zip" => "83703"
			 			 },
			 "title" => "Beer Market",
			 "title_font" => {
			 				  "text_color" => "#ffe8db",
			 				  "font" => "Hieronfreymious boschian.ttf",
			 				  "style" => "",
			 				  "custom" => true,
			 				  "list_size" => 20.0,
			 				  "details_size" => 20.0
			 				 },
			 "subtitle" => "[taplist]",
			 "subtitle_font" => {
			 				  	 "text_color" => "#ffe8db",
			 				  	 "font" => "spaceranger.ttf",
			 				  	 "style" => "",
			 				  	 "custom" => true,
			 				  	 "list_size" => 36.0,
			 				  	 "details_size" => 36.0
			 					},
			 "description_font" => {
			 			 			"text_color" => "#e9dcc8",
			 				  	 	"font" => "spaceranger.ttf",
			 				  	 	"style" => "",
			 				  	 	"custom" => true,
			 				  	 	"list_size" => 16.0,
			 				  	 	"details_size" => 16.0
			 					   },
			 "subheader_font" => {
			 			 		  "text_color" => "#e9dcc8",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "NORMAL",
			 				  	  "custom" => false,
			 				  	  "list_size" => 12.0,
			 				  	  "details_size" => 12.0
			 					 },
			 "taplist_font" => {
			 			 		  "text_color" => "#e9dcc8",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "NORMAL",
			 				  	  "custom" => false,
			 				  	  "list_size" => 12.0,
			 				  	  "details_size" => 12.0
			 					 },
			 "featured_font" => {
			 			 		  "text_color" => "#607d32",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "BOLD",
			 				  	  "custom" => false,
			 				  	  "list_size" => 12.0,
			 				  	  "details_size" => 12.0
			 					 },
			 "brew_name_font" => {
			 			 		  "text_color" => "#e9dcc8",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "BOLD",
			 				  	  "custom" => false,
			 				  	  "list_size" => 12.0,
			 				  	  "details_size" => 18.0
			 					 },
			 "featured_brew_name_font" => {
			 			 		  "text_color" => "#607d32",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "BOLD",
			 				  	  "custom" => false,
			 				  	  "list_size" => 12.0,
			 				  	  "details_size" => 12.0
			 					 },
			 "backgrounds" => {
			 				   "header" => "#000000",
			 				   "subheader" => "#000000",
			 				   "taplist" => "#000000",
			 				   "publist" => "#000000"
			 				  },			 				  
			 "brews" => [
			 	{ 
			 	 "id" => "1",
			 	 "name" => "Firestone Walker Wookey Jack Rye Black IPA",
			 	 "desc" => "A great tasting Ale that makes any steak better.",
			 	 "abv" => 8.3,
			 	 "glass" => 4.49,
			 	 "quart" => 8.99,
			 	 "growler" => 17.99,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "IPA"
			 	},
			 	{ 
			 	 "id" => "2",
			 	 "name" => "Mendocino Black Hawk Stout",
			 	 "desc" => "",
			 	 "abv" => 5.6,
			 	 "glass" => 3.49,
			 	 "quart" => 6.99,
			 	 "growler" => 13.99,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "STOUT"
			 	},
			 	{ 
			 	 "id" => "3",
			 	 "name" => "Selkirk Abbey Saint Stephen Saison",
			 	 "desc" => "",
			 	 "abv" => 5.6,
			 	 "glass" => 3.69,
			 	 "quart" => 6.99,
			 	 "growler" => 13.99,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "WHEAT"
			 	},					 	
			 	{ 
			 	 "id" => "4",
			 	 "name" => "Crooked Fence Devil's Pick IPA",
			 	 "desc" => "",
			 	 "abv" => 7.0,
			 	 "glass" => 3.49,
			 	 "quart" => 6.99,
			 	 "growler" => 13.99,
			 	 "featured" => true,
			 	 "image" => "",
			 	 "type" => "IPA"
			 	},	
			 	{ 
			 	 "id" => "5",
			 	 "name" => "Green Flash Imperial Red Rye IPA",
			 	 "desc" => "",
			 	 "abv" => 8.5,
			 	 "glass" => 4.59,
			 	 "quart" => 10.59,
			 	 "growler" => 21.09,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "IPA"
			 	},	
			 	{ 
			 	 "id" => "6",
			 	 "name" => "Snake River Packed Porter",
			 	 "desc" => "",
			 	 "abv" => 6.6,
			 	 "glass" => 3.69,
			 	 "quart" => 7.39,
			 	 "growler" => 14.79,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "PORTER"
			 	},				 	
			 	{ 
			 	 "id" => "7",
			 	 "name" => "Goodlife Mt Rescue Pale Ale",
			 	 "desc" => "",
			 	 "abv" => 5.5,
			 	 "glass" => 3.49,
			 	 "quart" => 6.99,
			 	 "growler" => 13.99,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "ALE"
			 	},	
			 	{ 
			 	 "id" => "8",
			 	 "name" => "Sockeye Winterfest Winter IPA",
			 	 "desc" => "",
			 	 "abv" => 6.8,
			 	 "glass" => 3.49,
			 	 "quart" => 6.99,
			 	 "growler" => 13.99,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "IPA"
			 	},	
			 	{ 
			 	 "id" => "9",
			 	 "name" => "Payette Mutton Buster Brown Ale",
			 	 "desc" => "",
			 	 "abv" => 5.5,
			 	 "glass" => 3.49,
			 	 "quart" => 6.99,
			 	 "growler" => 13.99,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "ALE"
			 	},	
			 	{ 
			 	 "id" => "10",
			 	 "name" => "Seven Brides Lil's Pils",
			 	 "desc" => "",
			 	 "abv" => 5.6,
			 	 "glass" => 3.00,
			 	 "quart" => 5.00,
			 	 "growler" => 9.00,
			 	 "featured" => true,
			 	 "image" => "",
			 	 "type" => "PILSNER"
			 	}			 	 				 	
			  ]
			},
			{
			 "id" => "121",
			 "name" => "Test",
			 "name_font" => {
			 				 "text_color" => "#0000ff",
			 				 "font" => "spaceranger.ttf",
			 				 "style" => "",
			 				 "custom" => true,
			 				 "list_size" => 36.0,
			 				 "details_size" => 36.0		 				 
			 				},			 
			 "logo" => "",
			 "address" => {
			 			  "address" => "10 Meridian Rd",
			 			  "city" => "Meridian",
			 			  "state" => "ID",
			 			  "zip" => "83713"
			 			 },
			 "title" => "Beer Market",
			 "title_font" => {
			 				  "text_color" => "#FFFFFF",
			 				  "font" => "SAN_SERIF",
			 				  "style" => "ITALIC",
			 				  "custom" => false,
			 				  "list_size" => 16.0,
			 				  "details_size" => 16.0
			 				 },
			 "subtitle" => "[taplist]",
			 "subtitle_font" => {
			 				  	 "text_color" => "#000000",
			 				  	 "font" => "DEFAULT_BOLD",
			 				  	 "style" => "NORMAL",
			 				  	 "custom" => false,
			 				  	 "list_size" => 36.0,
			 				  	 "details_size" => 36.0
			 					},
			 "description_font" => {
			 			 			"text_color" => "#e9dcc8",
			 				  	 	"font" => "DEFAULT",
			 				  	 	"style" => "BOLD",
			 				  	 	"custom" => false,
			 				  	 	"list_size" => 16.0,
			 				  	 	"details_size" => 16.0
			 					   },
			 "subheader_font" => {
			 			 		  "text_color" => "#FF00FF",
			 				  	  "font" => "MONOSPACE",
			 				  	  "style" => "BOLD_ITALIC",
			 				  	  "custom" => false,
			 				  	  "list_size" => 16.0,
			 				  	  "details_size" => 16.0
			 					 },
			 "taplist_font" => {
			 			 		  "text_color" => "#e9dcc8",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "NORMAL",
			 				  	  "custom" => false,
			 				  	  "list_size" => 18.0,
			 				  	  "details_size" => 18.0
			 					 },
			 "featured_font" => {
			 			 		  "text_color" => "#607d32",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "BOLD",
			 				  	  "custom" => false,
			 				  	  "list_size" => 12.0,
			 				  	  "details_size" => 12.0
			 					 },
			 "brew_name_font" => {
			 			 		  "text_color" => "#99e521",
			 				  	  "font" => "DEFAULT",
			 				  	  "style" => "BOLD",
			 				  	  "custom" => false,
			 				  	  "list_size" => 18.0,
			 				  	  "details_size" => 18.0
			 					 },
			 "featured_brew_name_font" => {
			 			 		  "text_color" => "#99e521",
			 				  	  "font" => "MONOSPACE",
			 				  	  "style" => "BOLD",
			 				  	  "custom" => false,
			 				  	  "list_size" => 9.0,
			 				  	  "details_size" => 9.0
			 					 },
			 "backgrounds" => {
			 				   "header" => "#FF0000",
			 				   "subheader" => "#00FF00",
			 				   "taplist" => "#360707",
			 				   "publist" => "#FF6633"
			 				  },
			 "brews" => [
			 	{ 
			 	 "id" => "1",
			 	 "name" => "Firestone Walker Wookey Jack Rye Black IPA",
			 	 "desc" => "A great tasting Ale that makes any steak better.",
			 	 "abv" => 8.3,
			 	 "glass" => 4.49,
			 	 "quart" => 8.99,
			 	 "growler" => 17.99,
			 	 "featured" => false,
			 	 "image" => "",
			 	 "type" => "IPA"
			 	},
			 	{ 
			 	 "id" => "6",
			 	 "name" => "Snake River Packed Porter",
			 	 "desc" => "",
			 	 "abv" => 6.6,
			 	 "glass" => 3.69,
			 	 "quart" => 7.39,
			 	 "growler" => 14.79,
			 	 "featured" => true,
			 	 "image" => "",
			 	 "type" => "PORTER"
			 	}						 	 				 	
			  ]
			}			
		]

node do 
	node(:requireUpgrade) {false}
	
	node :fonts do
		@fonts.map { |font| font["url"] }
	end
	
	node :pubs do
		@pubs
	end
	
end
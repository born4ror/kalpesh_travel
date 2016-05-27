class Blog < ActiveRecord::Base
	COLOR = ["black","silver","gray","white","maroon","red","purple","fuchsia","green","lime","olive","yellow","navy","blue","teal","aqua","orange", "aliceblue", "antiquewhite",    	"aquamarine",    	"azure",    	"beige",    	"bisque",    	"blanchedalmond",    	"blueviolet",    	"brown",    	"burlywood",    	"cadetblue",    	"chartreuse",    	"chocolate",    	"coral",    	"cornflowerblue",    	"cornsilk",    	"crimson",    	"darkblue",    	"darkcyan",    	"darkgoldenrod",    	"darkgray",    	"darkgreen",    	"darkgrey",    	"darkkhaki",    	"darkmagenta",    	"darkolivegreen",    	"darkorange",    	"darkorchid",    	"darkred",    	"darksalmon",    	"darkseagreen",    	"darkslateblue",    	"darkslategray",    	"darkslategrey",    	"darkturquoise",    	"darkviolet",    	"deeppink",    	"deepskyblue",    	"dimgray",    	"dimgrey",    	"dodgerblue",    	"firebrick",    	"floralwhite",    	"forestgreen",    	"gainsboro",    	"ghostwhite",    	"gold",    	"goldenrod",    	"greenyellow",    	"grey",    	"honeydew",    	"hotpink",    	"indianred",    	"indigo",    	"ivory",    	"khaki",    	"lavender",    	"lavenderblush",    	"lawngreen",    	"lemonchiffon",    	"lightblue",    	"lightcoral",    	"lightcyan",    	"lightgoldenrodyellow",    	"lightgray",    	"lightgreen",    	"lightgrey",    	"lightpink",    	"lightsalmon",    	"lightseagreen",    	"lightskyblue",    	"lightslategray",    	"lightslategrey",    	"lightsteelblue",    	"lightyellow",    	"limegreen",    	"linen",    	"mediumaquamarine",    	"mediumblue",    	"mediumorchid",    	"mediumpurple",    	"mediumseagreen",    	"mediumslateblue",    	"mediumspringgreen",    	"mediumturquoise",    	"mediumvioletred",    	"midnightblue",    	"mintcream",    	"mistyrose",    	"moccasin",    	"navajowhite",    	"oldlace",    	"olivedrab",    	"orangered",    	"orchid",    	"palegoldenrod",    	"palegreen",    	"paleturquoise",    	"palevioletred",    	"papayawhip",    	"peachpuff",    	"peru",    	"pink",    	"plum",    	"powderblue",    	"rosybrown",    	"royalblue",    	"saddlebrown",    	"salmon",    	"sandybrown",    	"seagreen",    	"seashell",    	"sienna",    	"skyblue",    	"slateblue",    	"slategray",    	"slategrey",    	"snow",    	"springgreen",    	"steelblue",    	"tan",    	"thistle",    	"tomato",    	"turquoise",    	"violet",    	"wheat",    	"whitesmoke",    	"yellowgreen", 
     "rebeccapurple"
	]

FONT = ["Arial,sans-serif","Helvetica, sans-serif", 
"Gill Sans, sans-serif", 
"Lucida, sans-serif", 
"Helvetica Narrow, sans-serif", 
"sans-serif",
"Times, serif",
"Times New Roman, serif",
"Palatino, serif",
"Bookman, serif",
"New Century Schoolbook, serif",
"seri"]

validates :title, presence: true
validates :body, presence: true

belongs_to :users 

end

a = ["cocoa",
    "coffee",
    "cotton",
    "G_Cereals",
    "G_Fiber",
    "G_Forage",
    "G_Fruit",
    "G_Oilcrops",
    "G_Pulses",
    "G_RootsTubers",
    "G_Treenuts",
    "maize",
    "maizefor",
    "oats",
    "oilpalm",
    "orange",
    "rapeseed",
    "rice",
    "rubber",
    "soybean",
    "sugarcane",
    "wheat"]
print "["
for i in range(len(a)):
    rep = [a[i],a[i],"off","off","off","off","off",
                    "off","off","off","off","off",
                    "off","off","off","off","off",
                    "off","off","off","off","off",
                    "off","off"]
    rep[i+2]="on"
    print """{
     	"source": "crops",
	"destination": "%s",
	"format":"mbtiles",
	"mml": {
            "name":"%s",
            "Layer": [
		        {"status":"off"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"},
                {"status":"%s"}
            ]
        }
    },""" % tuple(rep)
print ']'
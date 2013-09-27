

var INFILE = '/Users/fgassert/Documents/git/tilemill/project/crops/project.mml';
var OUTFILE = INFILE;

var NAMES = ["cocoa",
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
var PATH = "/Users/fgassert/Documents/GIS/geotiff/{name}_yield.tif";

var OPTIONS = function(names,path){
    var d = [], s=[];
    for (var i=0;i<names.length;i++) {
	d[i] = {'file':path.replace("{name}",names[i]),'band':1};
	s[i] = "off";
    }
    return {
	'id':names,
	'name':names,
	'Datasource': d,
	'status':s
    };
}(NAMES,PATH);

function main(){
    var fs = require('fs');
    var j, o;
    d = fs.readFileSync(INFILE);
    j = JSON.parse(d);
    dupe_layer0(j, OPTIONS);
    o = JSON.stringify(j, null, 4);
    fs.writeFileSync(INFILE, o);
    console.log("Wrote: " + OUTFILE);
}

function dupe_layer0(j,options){
    for (attr in options) {
	for (var i=0;i<options[attr].length;i++){
	    if (typeof j.Layer[i+1] != "object" || j.Layer[i+1] == null) {
		j.Layer[i+1] = clone(j.Layer[0]);
	    }
	    j.Layer[i+1][attr] = options[attr][i];
	}
    }
}

function clone(obj) {
    // Handle the 3 simple types, and null or undefined
    if (null == obj || "object" != typeof obj) return obj;

    // Handle Date
    if (obj instanceof Date) {
        var copy = new Date();
        copy.setTime(obj.getTime());
        return copy;
    }

    // Handle Array
    if (obj instanceof Array) {
        var copy = [];
        for (var i = 0, len = obj.length; i < len; i++) {
            copy[i] = clone(obj[i]);
        }
        return copy;
    }

    // Handle Object
    if (obj instanceof Object) {
        var copy = {};
        for (var attr in obj) {
            if (obj.hasOwnProperty(attr)) copy[attr] = clone(obj[attr]);
        }
        return copy;
    }

    throw new Error("Unable to copy obj! Its type isn't supported.");
}

main();

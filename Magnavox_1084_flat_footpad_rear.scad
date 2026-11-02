$fa = 1;
$fs = 0.4;

difference() {
        union() {
            // main body            
            translate([0,0,0])
                cylinder(h=9,r=6);
            
            translate([0,0,9])
                cylinder(h=1, r1=6, r2=5.5);

            //wider "stop" cylinder
            cylinder(h=2,r=8);

        }
        
            //rubber foot cutout
    color("blue") {
        translate([0,0,-.5])
        cylinder(h=2,r=6);
    }
}


// this is the top nub
translate([0,0,7])
cylinder(h=4,r=2);

translate([0,0,11])
resize([4,4,3])
sphere(r=14);
    



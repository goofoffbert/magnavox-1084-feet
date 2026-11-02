$fa = 1;
$fs = 0.4;
difference() {
    difference() {
        union() {
            // main body            
            translate([0,0,1])
                cylinder(h=9,r=6);
            
            translate([0,0,10])
                cylinder(h=1, r1=6, r2=5.5);

            //wider "stop" cylinder
            rotate(6, [-1, 0, 0]) {
                cylinder(h=2,r=8);
            }
        }
    
        // this is the alignment cutout
        translate([0,5.5,1.3])
            resize([2,3,13])
            cylinder(h=13,r=14);
    }

    //rubber foot cutout
    color("blue") {
        translate([0,0,-.5])
        rotate(6, [-1, 0, 0]) {
        cylinder(h=2,r=6);
        }
    }
}
// this is the top nub
translate([0,0,8])
cylinder(h=4,r=2);

translate([0,0,12])
resize([4,4,3])
sphere(r=14);
    



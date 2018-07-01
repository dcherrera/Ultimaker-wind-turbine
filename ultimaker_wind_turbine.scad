stand();
top();
module stand()
{
difference()
{
union()
{
//Base start
translate([0,0,0])linear_extrude(height=20,scale=0.3)circle(d=60,center=true,$fn=360);
translate([0,0,-5])linear_extrude(height=5)circle(d=60,center=true,$fn=360);
foot();
rotate([0,0,120])foot();
rotate([0,0,240])foot();
//base end
    
//stem start
translate([0,0,20])linear_extrude(height=110)circle(d=18,center=true,$fn=360);
//stem end

}
//base start
translate([0,0,0])linear_extrude(height=20,scale=0.2)circle(d=55,center=true,$fn=360);
translate([0,0,-5])linear_extrude(height=5)circle(d=55,center=true,$fn=360);
//base end

//stem start
translate([0,0,20])linear_extrude(height=110)circle(d=10,center=true,$fn=360);
//stem end
}

module foot()
{
    difference()
    {
        union()
        {
translate([0,35,-5])linear_extrude(height=5)square([16,16],center=true);
translate([0,42,-5])linear_extrude(height=5)circle(d=16,center=true);
        }
        translate([0,42,-5])linear_extrude(height=5)circle(d=5,center=true);
   }
}
}

module top()
{
    difference()
    {
        union()
        {
rotate([180,0,0])translate([0,0,-150])linear_extrude(height=20,scale=0.3)circle(d=60,center=true,$fn=360);
translate([0,0,150])linear_extrude(height=30)circle(d=60,center=true,$fn=360);  
    }
    translate([0,0,150])linear_extrude(height=30)square([40,40],center=true,$fn=360);  
    translate([0,0,130])linear_extrude(height=20)circle(d=10,center=true,$fn=360);  
    translate([0,0,140])linear_extrude(height=20)circle(d=25,center=true,$fn=360);  

} 
}
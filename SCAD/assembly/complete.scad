use <charging_handle.scad>
use <fire_control_module.scad>
use <cheek_riser.scad>
use <upper.scad>
use <lower.scad>
use <magwell.scad>
use <dust_cover.scad>
use <barrel_assembly.scad>

$fn = 128;

//options: 0-1
exploded = 0;
//options: "ar15", "dpms" "six8" "ak74" "akm"
system = "ar15";
//options: 0 or 1
magazine = 1;
//options: 0-1
dust_cover_open = 1;

//upper
translate([-340, 0, 30 + exploded * 100]) {
	upper(exploded);
	translate([70, 0, 22 + exploded * 60]) cheek_riser(exploded);
	translate([195 -8, 23 + exploded * 60, 19]) rotate([0,-90,90]) {
		fire_control_module_select(exploded);
	}
}
translate([-146, 0, 66.5 + exploded * 20]) charging_handle(exploded);
if (system == "ar15" || system == "six8" || system == "ak74" || system == "akm") translate([-67, 0, 49]) barrel_assembly_ar15(exploded);
if (system == "dpms") translate([-67, 0, 49]) barrel_assembly_dpms(exploded);
//lower
translate([-105, 0, -3 - exploded * 20]) {
	if (system == "ar15") magwell_stanag(exploded, magazine);
	if (system == "dpms") magwell_sr25(exploded, magazine);
	if (system == "six8") magwell_six8(exploded, magazine);
	if (system == "ak74") magwell_ak74(exploded, magazine);
	if (system == "akm") magwell_akm(exploded, magazine);
}
translate([0.2, 0, -exploded * 100]) {
	lower(exploded);
	translate([-200, 0, -10 - exploded * 80]) dust_cover(exploded, dust_cover_open);
}
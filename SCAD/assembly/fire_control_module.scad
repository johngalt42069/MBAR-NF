fde = [135 / 255, 115 / 255, 72 / 255];
black = [59 / 255, 59 / 255, 59 / 255];

$fn = 128;

translate([0, -40, 0]) fire_control_module_select(0);

module fire_control_module_select(exploded) {
 color(fde) import("../../STL/fcm_select.stl");
	translate([15, 0, -4 - exploded * 20]) rotate([180, 0, 0]) color(black) import("m4_screw.stl");
	translate([-15, 0, -4 - exploded * 20]) rotate([180, 0, 0]) color(black) import("m4_screw.stl");
	translate([2 - exploded * 50, 23, -6]) color(black) import("../../STL/rear_safety_select.stl");
}
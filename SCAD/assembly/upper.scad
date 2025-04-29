fde = [135 / 255, 115 / 255, 72 / 255];
black = [59 / 255, 59 / 255, 59 / 255];

upper(1);

module upper(exploded) {
	rotate([0, 0, -90]) color(fde) import("../../STL/upper.stl");
	translate([319 + exploded * 150, 0, 0]) rotate([0, 0, -90]) color(fde) import("../../STL/upper_plate.stl");
	translate([exploded * 200, 0, 0]) {
		translate([434, 0, 0]) rotate([0, 0, -90]) color(fde) import("../../STL/handguard_basic.stl");
		color(black) translate([430, 21 + exploded * 20, 32]) rotate([-90, 0, 0]) import("m4_screw.stl");
		color(black) translate([430, -21 - exploded * 20, 32]) rotate([90, 0, 0]) import("m4_screw.stl");
	}
}
$fn = 128;

fde = [135 / 255, 115 / 255, 72 / 255];
black = [59 / 255, 59 / 255, 59 / 255];

translate([0, 60, 0]) barrel_assembly_ar15(0);
translate([0, -60, 0]) barrel_assembly_dpms(0);

module barrel_assembly_ar15(exploded) {
	barrel_length = 457.2;
	color(black) translate([0 - exploded * 30, 0, 0]) {
		rotate([90, 0, 90]) import("../../STL/barrel_block_rear_ar15.stl");
		color(black) translate([5, 21 + exploded * 20, 13]) rotate([-90, 0, 0]) import("m4_screw.stl");
		color(black) translate([5, 21 + exploded * 20, -13]) rotate([-90, 0, 0]) import("m4_screw.stl");
		color(black) translate([5, -21 - exploded * 20, 13]) rotate([90, 0, 0]) import("m4_screw.stl");
		color(black) translate([5, -21 - exploded * 20, -13]) rotate([90, 0, 0]) import("m4_screw.stl");

	}
	color(black) translate([46 + exploded * 30, 0, 0]) {
		color(black) translate([-5, 21 + exploded * 20, 13]) rotate([-90, 0, 0]) import("m4_screw.stl");
		color(black) translate([-5, 21 + exploded * 20, -13]) rotate([-90, 0, 0]) import("m4_screw.stl");
		color(black) translate([-5, -21 - exploded * 20, 13]) rotate([90, 0, 0]) import("m4_screw.stl");
		color(black) translate([-5, -21 - exploded * 20, -13]) rotate([90, 0, 0]) import("m4_screw.stl");
	}
	color(black) translate([28.5, 0, 0]) rotate([90, 0, -90]) scale(10) import("barrel_ext.stl");
	color(black) difference() {
		union() {
			translate([16, 0, 0]) rotate([0, 90, 0]) cylinder(barrel_length, 19.05 / 2, 19.05 / 2);
			translate([16, 0, 0]) rotate([0, 90, 0]) cylinder(50, 26 / 2, 26 / 2);
			translate([16 + 50, 0, 0]) rotate([0, 90, 0]) cylinder(50, 26 / 2, 19.05 / 2);
		}
		translate([15.5, 0, 0]) rotate([0, 90, 0]) cylinder(barrel_length + 1, 5.56 / 2, 5.56 / 2);
	}
	translate([336 + exploded * 240, 0, 0]) {
		rotate([0, -90, 180]) color(black) import("../../STL/gas_block.stl");
	}
	color(black) translate([304 + exploded * 290, 0, 22]) rotate([0, -90, 180]) import("../../STL/gas_regulator.stl");
}

module barrel_assembly_dpms(exploded) {
	barrel_length = 588.8;
	color(black) translate([0 - exploded * 30, 0, 0]) {
		rotate([90, 0, 90]) import("../../STL/barrel_block_rear_dpms.stl");
		color(black) translate([5, 21 + exploded * 20, 13]) rotate([-90, 0, 0]) import("m4_screw.stl");
		color(black) translate([5, 21 + exploded * 20, -13]) rotate([-90, 0, 0]) import("m4_screw.stl");
		color(black) translate([5, -21 - exploded * 20, 13]) rotate([90, 0, 0]) import("m4_screw.stl");
		color(black) translate([5, -21 - exploded * 20, -13]) rotate([90, 0, 0]) import("m4_screw.stl");
	}
	color(black) translate([46 + exploded * 30, 0, 0]) {
		color(black) translate([-5, 21 + exploded * 20, 13]) rotate([-90, 0, 0]) import("m4_screw.stl");
		color(black) translate([-5, 21 + exploded * 20, -13]) rotate([-90, 0, 0]) import("m4_screw.stl");
		color(black) translate([-5, -21 - exploded * 20, 13]) rotate([90, 0, 0]) import("m4_screw.stl");
		color(black) translate([-5, -21 - exploded * 20, -13]) rotate([90, 0, 0]) import("m4_screw.stl");
	}
	color(black) translate([33.1, 0, 0]) rotate([90, 0, -90]) scale(11.7) import("barrel_ext.stl");
	color(black) difference() {
		union() {
			translate([16, 0, 0]) rotate([0, 90, 0]) cylinder(barrel_length, 19.05 / 2, 19.05 / 2);
			translate([16, 0, 0]) rotate([0, 90, 0]) cylinder(50, 31 / 2, 31 / 2);
			translate([16 + 50, 0, 0]) rotate([0, 90, 0]) cylinder(50, 31 / 2, 19.05 / 2);
		}
		translate([15.5, 0, 0]) rotate([0, 90, 0]) cylinder(barrel_length + 1, 6.5 / 2, 6.5 / 2);
	}
	translate([343 + exploded * 240, 0, 0]) {
		rotate([0, -90, 180]) color(black) import("../../STL/gas_block.stl");
	}
	color(black) translate([311 + exploded * 290, 0, 22]) rotate([0, -90, 180]) import("../../STL/gas_regulator.stl");
}
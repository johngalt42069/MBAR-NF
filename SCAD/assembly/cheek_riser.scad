fde = [135 / 255, 115 / 255, 72 / 255];
black = [59 / 255, 59 / 255, 59 / 255];

cheek_riser(1);

module cheek_riser(exploded) {
	translate([20, 0, 0]) color(fde) import("../../STL/cheek_riser.stl");
	color(black) translate([-50, -25 - exploded * 20, 12]) rotate([90, 0, 0]) import("m4_screw.stl");
	color(black) translate([50, -25 - exploded * 20, 12]) rotate([90, 0, 0]) import("m4_screw.stl");
	color(black) translate([-50, 25 + exploded * 20, 12]) rotate([-90, 0, 0]) import("m4_screw.stl");
	color(black) translate([50, 25 + exploded * 20, 12]) rotate([-90, 0, 0]) import("m4_screw.stl");
}
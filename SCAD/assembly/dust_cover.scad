fde = [135 / 255, 115 / 255, 72 / 255];
black = [59 / 255, 59 / 255, 59 / 255];

dust_cover(1, 1);

module dust_cover(exploded, open) {
	color(fde) import("../../STL/dust_cover_housing.stl");
	translate([0.5, 13, -12 - exploded * 20])  rotate([0, -9.95, 0]) rotate([open * 90, 0, 0]) {
		color(fde) import("../../STL/dust_cover.stl");
	}
	translate([0.5, -13, -12 - exploded * 20]) rotate([0, 9.95, 180]) rotate([open * 90, 0, 0]) {
		color(fde) import("../../STL/dust_cover.stl");
	}
}
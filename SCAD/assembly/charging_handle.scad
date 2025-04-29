black = [59 / 255, 59 / 255, 59 / 255];

charging_handle(1);

module charging_handle(exploded) {
	rotate([0, 0, -90]) color(black) import("../../STL/charging_handle_body.stl");
	//handles
	translate([232, -12 - exploded * 15, 8]) rotate([90, 180, 0]) color(black) import(
	"../../STL/charging_handle_hinge.stl");
	translate([232, 12 + exploded * 15, 8]) rotate([-90, 180, 0]) color(black) import(
	"../../STL/charging_handle_hinge.stl");
	translate([232, -26 - exploded * 30, 8]) {
		rotate([0, -90, 90]) color(black) import("../../STL/charging_handle.stl");
		translate([0, -15 - exploded * 30, 0]) rotate([-90, 0, 0]) color(black) import("ball_plunger.stl");
	}
	translate([232, 26 + exploded * 30, 8]) {
		rotate([0, 90, 0]) color(black) import("../../STL/charging_handle.stl");
		translate([15 + exploded * 30, 0, 0]) rotate([90, 0, -90]) color(black) import("ball_plunger.stl");
	}
	//latch
	translate([95, 0, 13 + 15 * exploded]) rotate([0, 0, -90]) color("grey") import("../../STL/latch.stl");
}
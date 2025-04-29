fde = [135 / 255, 115 / 255, 72 / 255];
black = [59 / 255, 59 / 255, 59 / 255];

lower(1);

module lower(exploded) {
	color(fde) import("../../STL/lower.stl");
	translate([86, -exploded * 40, 3]) color(black) import("../../STL/magazine_release_button.stl");
	translate([-50, 5 + exploded * 30, 16 + exploded * 60]) color(black) import("../../STL/magazine_release_link.stl");
	translate([82, exploded * 30, 21]) color(black) import("../../STL/bolt_catch_button_left.stl");
	translate([-50, -5 - exploded * 30, 16 + exploded * 60]) color(black) import("../../STL/bolt_catch_link.stl");
	translate([33, 12 + exploded * 30, 12]) rotate([90, 0, 0]) color(black) import("../../STL/safety_left_semi.stl");
	translate([-324, 23 - exploded * 60, 14]) rotate([90, 0, 0]) color(black) import("../../STL/takedown_pin.stl");

	translate([0, 0, exploded * 60]) {
		translate([47.5, 0, 1.8]) color(black) import("../../STL/trigger.stl");
		translate([28 - exploded * 10, 0, 2]) rotate([0, 90, 0]) color("grey") import("glock_spring.stl");
		translate([21.5 - exploded * 16, 0, 1]) color(black) import("../../STL/trigger_rear.stl");
	}

	translate([-337.6, 0, 30 - exploded * 70]) rotate([0, 0, -90]) color(fde) import("../../STL/stock_plate.stl");
	translate([-106, 0, 2 - exploded * 50]) rotate([0, 0, 90]) color(fde) import("grip.stl");
	translate([-52,18.5,10]) color(black) import("../../STL/mag_release_rod.stl");
}
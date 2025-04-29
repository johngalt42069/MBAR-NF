fde = [135 / 255, 115 / 255, 72 / 255];
black = [59 / 255, 59 / 255, 59 / 255];

translate([120,-100,0]) magwell_stanag(1, 1);

translate([-120,-100,0]) magwell_sr25(1, 1);

translate([0,-300,0]) magwell_six8(0, 1);

translate([120,100,0]) magwell_ak74(1, 1);

translate([-120,100,0]) magwell_akm(1, 1);

module magwell_stanag(exploded, magazine) {
	color(fde) import("../../STL/magwell_stanag.stl");
	translate([-32.5, 0, 4 - exploded * 30]) color(black) import("../../STL/rear_bolt_catch_button.stl");
	if (magazine == 1) translate([-26, -13, -90 - exploded * 140]) ar15_mag();
}

module magwell_sr25(exploded, magazine) {
	color(fde) import("../../STL/magwell_sr25.stl");
	translate([-46.5, 0, 4 - exploded * 30]) color(black) import("../../STL/rear_bolt_catch_button.stl");
	if (magazine == 1) translate([37, -13, 47 - exploded * 140]) dpms_mag();
}

module magwell_six8(exploded, magazine) {
	color(fde) import("../../STL/magwell_six8.stl");
	translate([-32.5-1.6, 0, 4 - exploded * 30]) color(black) import("../../STL/rear_bolt_catch_button.stl");
}

module magwell_ak74(exploded, magazine) {
	color(fde) import("../../STL/magwell_ak74.stl");
	if (magazine == 1) translate([33, -7.75, -159.5 - exploded * 140]) ak74_mag();
}

module magwell_akm(exploded, magazine) {
	color(fde) import("../../STL/magwell_akm.stl");
	translate([34 + exploded * 26, -18, 23]) rotate([0, 90, 0]) color("grey") import("glock_spring.stl");
	if (magazine == 1) translate([-22.6, 0, 37.8 - exploded * 140]) akm_mag();
}

module ar15_mag() {
	scale(25) color(fde) import("magazines/stanag_mag_body.stl");
	translate([73, 27, 2]) rotate([0, 5, 180]) scale(25) color(fde) import("magazines/stanag_floor_plate.stl");
	translate([8, 21.5, 9]) scale(25) color("grey") rotate([0, 185, 180]) import("magazines/stanag_spring_plate.stl");
	translate([60, 20, 96]) rotate([0, 0, 180]) scale(25) color("grey") import("magazines/stanag_follower.stl");
}

module dpms_mag() {
	rotate([90, 0, 180]) color(fde) import("magazines/sr25_mag_body.stl");
	translate([6, 30, -101]) rotate([90, 0, 180]) color(fde) import("magazines/sr25_floor_plate.stl");
	translate([6, 30, -101]) color("grey") rotate([90, 0, 180]) import("magazines/sr25_spring_plate.stl");
	translate([7, 32, -144]) rotate([90, 0, 180]) color("grey") import("magazines/sr25_follower.stl");
}

module ak74_mag() {
	rotate([0, 32, 180]) color([92 / 255, 52 / 255, 46 / 255]) import("magazines/ak74_mag_body.stl");
	translate([-6, 23, -5]) rotate([32, 0, -90]) color(black) import("magazines/ak74_floor_plate.stl");
	translate([28, 7.5, 8]) color(black) rotate([-32, 0, 90]) import("magazines/ak74_spring_plate.stl");
	translate([-32, 18, 168]) rotate([-90, 10, 180]) color(black) import("magazines/ak74_follower.stl");
}

module akm_mag() {
	rotate([0, 180, 0]) color([92 / 255, 52 / 255, 46 / 255]) import("magazines/akm_mag_body.stl");
	translate([2, 0, 4]) rotate([0, 182, 0]) color(black) scale(25) import("magazines/akm_floor_plate.stl");
	translate([-104, 0, 75.5]) color(black) rotate([0, 182, 0]) scale(25) import("magazines/akm_spring_plate.stl");
	translate([61.5, 15.5,10]) rotate([0, 180, 90]) color(black) scale(25) import("magazines/akm_follower.stl");
}
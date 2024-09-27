package main

import rl "vendor:raylib"

main :: proc() {
	screenWidth:i32 = 800
	screenHeight:i32 = 450

	rl.InitWindow(screenWidth, screenHeight, "RaylibTest");
	defer rl.CloseWindow()
}

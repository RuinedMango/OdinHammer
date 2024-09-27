package main

import rl "vendor:raylib"

main :: proc() {
	screenWidth:i32 = 800
	screenHeight:i32 = 450

	rl.InitWindow(screenWidth, screenHeight, "RaylibTest");
	defer rl.CloseWindow()

	rl.SetTargetFPS(60)

	for !rl.WindowShouldClose(){
		rl.BeginDrawing()
		defer rl.EndDrawing()

		rl.ClearBackground(rl.RAYWHITE)
		rl.DrawText("YAY:)", 190, 200, 20, rl.LIGHTGRAY)
		rl.DrawFPS(50, 50)
	}
}

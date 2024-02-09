package main

import "core:fmt"
import SDL "vendor:sdl2"

main :: proc() {
	fmt.println("Hellope!")
    sdl_init_error := SDL.Init()
}
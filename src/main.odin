package main

import SDL "vendor:sdl2"
import IMG "vendor:sdl2/image"

main :: proc() {
    sdl_init_error := SDL.Init(SDL.INIT_EVERYTHING)
    assert(sdl_init_error == 0, SDL.GetErrorString())
    defer SDL.Quit()

    window := SDL.CreateWindow("UWU", SDL.WINDOWPOS_CENTERED, SDL.WINDOWPOS_CENTERED, 1024, 960, SDL.WINDOW_RESIZABLE)
    assert(window != nil, SDL.GetErrorString())
    defer SDL.DestroyWindow(window)

    render_flags := SDL.RENDERER_ACCELERATED
    rend := SDL.CreateRenderer(window, -1, render_flags)

    surface := IMG.Load("python.png")

    tex := SDL.CreateTextureFromSurface(rend, surface)

    SDL.FreeSurface(surface)

    dest: SDL.Rect

    SDL.QueryTexture(tex, nil, nil, &dest.w, &dest.h)

    dest.w /= 6
    dest.h /= 6

    dest.x = (1000 - dest.w) / 2

    dest.y = (1000 - dest.h) / 2

    for i := 1; i == 1; i = 1{
        SDL.RenderClear(rend)
        SDL.RenderCopy(rend, tex, nil, &dest)
        SDL.RenderPresent(rend)
    }

    SDL.Delay(3000)
}
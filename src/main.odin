package main

import "core:fmt"
import glm "core:math/linalg/glsl"
import "core:time"

import SDL "vendor:sdl2"
import gl "vendor:OpenGL"

main :: proc() {
  // create config file
  WINDOW_WIDTH :: 1280
  WINDOW_HEIGHT :: 720

  window := SDL.CreateWindow("My First Odin", 0, 0, WINDOW_WIDTH, WINDOW_HEIGHT, {.OPENGL})
  if window == nil {
    fmt.eprintln("Window creation failed")
    return
  }
  defer SDL.DestroyWindow(window)

  gl_context := SDL.GL_CreateContext(window)
  SDL.GL_MakeCurrent(window, gl_context)

  
}
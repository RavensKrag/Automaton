Automaton

Rendering-library independent 2D animation library.

The name comes from the idea that the library should generate
instances which essentially run themselves, with only minimal
inputs to determine when to transition between different states.
It is the job of this library to check if the conditions for
transitioning between different animation states are met or not.
External code only needs to worry about calling #update and
rendering frames as necessary.

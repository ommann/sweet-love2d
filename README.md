# Sweet
Sweet is a collection of snippets with the goal providing sweeter coding experience for LÖVE.

# Snippets
```lua
sweet = require 'sweet'
entity = sweet.create

foo = entity "player" {x = 100, y = 100}

e = foo{name = "Doomguy"}

print(e.type, e.name, e.x, e.y)
--prints: "player",  "Doomguy", 100, 100
```

# Included example

```lua
sweet = require 'sweet'

entity = sweet.create

foo = entity{
  name = "John",
  description = "No description."
}

e = foo{}
f = foo{name = "Jill", secret = 42}

print(e, e.name, e.description, e.secret)
print(f, f.name, f.description, f.secret)

entity = sweet.create2

foo = entity "player" {x = 100, y = 100}

e = foo{name = "Doomguy"}

print(e, e.type, e.name, e.x, e.y)
```

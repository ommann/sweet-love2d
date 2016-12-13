local sweet = {}

--- Easily create copies of the given table
--foo = sweet.create{...}
--
--bar = foo{...}
--bar is copy of first and second tables
sweet.create = function(_properties)
  local properties = _properties

  return function(changes)
    local e = {}

    if properties then
      for i,v in pairs(properties) do
        e[i] = v
      end
    end

    if changes then
      for i,v in pairs(changes) do
        e[i] = v
      end
    end

    return e
  end
end

--- Easily create copies of  the given table
--foo = sweet.create2 "foo" {...}
--bar = foo{...}
--
--bar is copy of first and second tables
--bar.type == "foo"
sweet.create2 = function(_type)
  local type = _type

  return function(_properties)  
    local properties = _properties

    return function(changes)
      local e = {}
      e.type = type

      if properties then
        for i,v in pairs(properties) do
          e[i] = v
        end
      end

      if changes then
        for i,v in pairs(changes) do
          e[i] = v
        end
      end

      return e
    end
  end
end

return sweet

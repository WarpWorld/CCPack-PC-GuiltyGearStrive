function isReady()
  return IsReady()
end

function NoPunchButton(duration)
  DisableInput(0x10, duration * 60 // 1000)
  return true
end

function NoKickButton(duration)
  DisableInput(0x20, duration * 60 // 1000)
  return true
end

function NoSlashButton(duration)
  DisableInput(0x40, duration * 60 // 1000)
  return true
end

function NoHeavyButton(duration)
  DisableInput(0x80, duration * 60 // 1000)
  return true
end

function NoDustButton(duration)
  DisableInput(0x100, duration * 60 // 1000)
  return true
end

function DisallowAttacks(duration)
  DisableInput(0x1F0, duration * 60 // 1000)
  return true
end

function ReverseControls(duration)
  ReverseControlsNative(duration * 60 // 1000)
  return true
end

function RandomInputs(duration)
  RandomInputsNative(duration * 60 // 1000)
  return true
end

function Taunt()
  SetInputOverride("Taunt")

  local retVal = false

  LoopAsync(
      10,
      function()
        if IsAction("Taunt") then
          retVal = true
        end
      end
  )

  return retVal
end

function WildAssult()
  SetInputOverride("WildAssult")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("WildAssult") then
          retVal = true
        end
      end
  )

  return retVal
end

function DeflectShield()
  SetInputOverride("DeflectShield")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("DeflectShield") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe236p()
  SetInputOverride("236p")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("236p") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe236k()
  SetInputOverride("236k")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("236k") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe236s()
  SetInputOverride("236s")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("236s") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe236h()
  SetInputOverride("236h")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("236k") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe214p()
  SetInputOverride("214p")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("214p") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe214k()
  SetInputOverride("214k")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("214k") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe214s()
  SetInputOverride("214s")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("214s") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe214h()
  SetInputOverride("214h")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("214h") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe623p()
  SetInputOverride("623p")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("623p") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe623k()
  SetInputOverride("623k")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("623k") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe623s()
  SetInputOverride("623s")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("623s") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe623h()
  SetInputOverride("623h")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("623h") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe41236k()
  SetInputOverride("41236k")

  local retVal = false

  LoopAsync(
      20,
      function()
        if IsAction("41236k") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe41236h()
  SetInputOverride("41236h")

  local retVal = false

  LoopAsync(
      20,
      function()
        if IsAction("41236h") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe63214p()
  SetInputOverride("63214p")

  local retVal = false

  LoopAsync(
      20,
      function()
        if IsAction("63214p") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe63214s()
  SetInputOverride("63214s")

  local retVal = false

  LoopAsync(
      20,
      function()
        if IsAction("63214s") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe46s()
  SetInputOverride("46s")

  local retVal = false

  LoopAsync(
      40,
      function()
        if IsAction("46s") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe46h()
  SetInputOverride("46h")

  local retVal = false

  LoopAsync(
      40,
      function()
        if IsAction("46h") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe28s()
  SetInputOverride("28s")

  local retVal = false

  LoopAsync(
      40,
      function()
        if IsAction("28s") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe28h()
  SetInputOverride("28h")

  local retVal = false

  LoopAsync(
      40,
      function()
        if IsAction("28h") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe2369h()
  SetInputOverride("2369h")

  local retVal = false

  LoopAsync(
      21,
      function()
        if IsAction("2369h") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe22p()
  SetInputOverride("22p")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("22p") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe22k()
  SetInputOverride("22k")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("22k") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe22s()
  SetInputOverride("22s")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("22s") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe22h()
  SetInputOverride("22h")

  local retVal = false

  LoopAsync(
      14,
      function()
        if IsAction("22h") then
          retVal = true
        end
      end
  )

  return retVal
end

function BehemothTyphoon()
  SetInputOverride("BehemothTyphoon")

  local retVal = false

  LoopAsync(
      20,
      function()
        if IsAction("BehemothTyphoon") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe632146p()
  SetInputOverride("632146p")

  local retVal = false

  LoopAsync(
      23,
      function()
        if IsAction("632146p") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe632146k()
  SetInputOverride("632146k")

  local retVal = false

  LoopAsync(
      23,
      function()
        if IsAction("632146k") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe632146s()
  SetInputOverride("632146s")

  local retVal = false

  LoopAsync(
      23,
      function()
        if IsAction("632146s") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe632146h()
  SetInputOverride("632146h")

  local retVal = false

  LoopAsync(
      23,
      function()
        if IsAction("632146h") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe236236p()
  SetInputOverride("236236p")

  local retVal = false

  LoopAsync(
      23,
      function()
        if IsAction("236236p") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe236236k()
  SetInputOverride("236236k")

  local retVal = false

  LoopAsync(
      23,
      function()
        if IsAction("236236k") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe236236s()
  SetInputOverride("236236s")

  local retVal = false

  LoopAsync(
      23,
      function()
        if IsAction("236236s") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe236236h()
  SetInputOverride("236236h")

  local retVal = false

  LoopAsync(
      23,
      function()
        if IsAction("236236h") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe236236236h()
  SetInputOverride("236236236p")

  local retVal = false

  LoopAsync(
      32,
      function()
        if IsAction("236236236p") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe214214h()
  SetInputOverride("214214h")

  local retVal = false

  LoopAsync(
      23,
      function()
        if IsAction("214214h") then
          retVal = true
        end
      end
  )

  return retVal
end

function Spe1080p()
  SetInputOverride("1080p")

  local retVal = false

  LoopAsync(
      32,
      function()
        if IsAction("1080p") then
          retVal = true
        end
      end
  )

  return retVal
end

function Burst()
  SetInputOverride("Burst")

  local retVal = false

  LoopAsync(
      10,
      function()
        if IsAction("Burst") then
          retVal = true
        end
      end
  )

  return retVal
end

function RomanCancel()
  SetInputOverride("RomanCancel")

  local retVal = false

  LoopAsync(
      10,
      function()
        if IsAction("RomanCancel") then
          retVal = true
        end
      end
  )

  return retVal
end

--add functions for your effects here
--if you have an effect with the code of 'kill' in your cs file then when that effect
--is received the function kill() will be called

--if you put an underscore in you effect id the part after the underscore will be
--used as an argument
-- for example the effect id 'givemoney_100' will call givemoney(100)

--if an effect has a duration, additionally the function with _end added will be
--called when the time is up to do cleanup etc
--so if you have a timed effect with id 'spin' then spin_end() will be called
--if it exists when the timer ends

timed = {}

LoopAsync(
  10000,
  function()
      checkConn()
  end
)

function split(inputstr, sep)
  if sep == nil then
      sep = "%s"
  end
  local t = {}
  for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
      table.insert(t, str)
  end
  return t
end

function string.starts(String, Start)
  return string.sub(String, 1, string.len(Start)) == Start
end

LoopAsync(
  50,
  function()
      if not connected() then
          return
      end

      id, code, dur = getEffect()

      if code == "" then
          return
      end

      local status, ready = pcall(isReady)

      if not status or not ready then
          print("Not ready!")
          ccRespond(id, 3)
          return
      end
      
      if dur > 0 then
          local rec = timed[code]
          if rec ~= nil then
              print("Duration not elapsed!")
              ccRespond(id, 3)
              return
          end
      end

      local arg = nil

      if string.find(code, "_") ~= nil then
          local parts = split(code, "_")
          code = parts[0]
          arg = parts[1]
      end

      print(code)
      local func = _G[code]

      if
          pcall(
              function()
                  if func ~= nil then
                      local res = nil
                      if arg ~= nil then
                          res = func(arg)
                      else
                          if dur > 0 then
                              res = func(dur)
                          else
                              res = func()
                          end
                      end
                      ExecuteInGameThread(
                          function()
                              if res then
                                  if dur > 0 then
                                      ccRespondTimed(id, 0, dur)

                                      local entry = {}
                                      entry["id"] = id
                                      entry["dur"] = dur
                                      entry["code"] = code
                                      timed[code] = entry
                                  else
                                      ccRespond(id, 0)
                                  end
                              else
                                  print("Function failed!")
                                  ccRespond(id, 3)
                              end
                          end
                      )
                  end
              end
          )
       then
      else
          print("Unknown failure!")
          ccRespond(id, 3)
      end
  end
)

LoopAsync(
  1000,
  function()
      for code, entry in pairs(timed) do
          entry["dur"] = entry["dur"] - 1000
          if entry["dur"] <= 0 then
              local code = entry["code"] .. "_end"

              local func = _G[code]

              if func == nil or pcall(func) then
                  ccRespondTimed(entry["id"], 8, 0)
                  timed[entry["code"]] = nil
              end
          end
      end
  end
)

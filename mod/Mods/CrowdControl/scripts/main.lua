function isReady(flag)
  return IsActionEnabled(flag)
end

function NoPunchButton()
  DisableInput(0x10, 10 * 60)
  return true
end

function NoKickButton()
  DisableInput(0x20, 10 * 60)
  return true
end

function NoSlashButton()
  DisableInput(0x40, 10 * 60)
  return true
end

function NoHeavyButton()
  DisableInput(0x80, 10 * 60)
  return true
end

function NoDustButton()
  DisableInput(0x100, 10 * 60)
  return true
end

function DisallowAttacks()
  DisableInput(0x1F0, 10 * 60)
  return true
end

function ReverseControls()
  ReverseControlsNative(10 * 60)
  return true
end

function RandomInputs()
  RandomInputsNative(10 * 60)
  return true
end

function Taunt()
  SetInputOverride("Taunt")
  return true
end

function WildAssult()
  SetInputOverride("WildAssult")
  return true
end

function DeflectShield()
  SetInputOverride("DeflectShield")
  return true
end

function Spe236p()
  SetInputOverride("236p")
  return true
end

function Spe236k()
  SetInputOverride("236k")
  return true
end

function Spe236s()
  SetInputOverride("236s")
  return true
end

function Spe236h()
  SetInputOverride("236h")
  return true
end

function Spe214p()
  SetInputOverride("214p")
  return true
end

function Spe214k()
  SetInputOverride("214k")
  return true
end

function Spe214s()
  SetInputOverride("214s")
  return true
end

function Spe214h()
  SetInputOverride("214h")
  return true
end

function Spe623p()
  SetInputOverride("623p")
  return true
end

function Spe623k()
  SetInputOverride("623k")
  return true
end

function Spe623s()
  SetInputOverride("623s")
  return true
end

function Spe623h()
  SetInputOverride("623h")
  return true
end

function Spe41236k()
  SetInputOverride("41236k")
  return true
end

function Spe41236h()
  SetInputOverride("41236h")
  return true
end

function Spe63214p()
  SetInputOverride("63214p")
  return true
end

function Spe63214s()
  SetInputOverride("63214s")
  return true
end

function Spe46s()
  SetInputOverride("46s")
  return true
end

function Spe46h()
  SetInputOverride("46h")
  return true
end

function Spe28s()
  SetInputOverride("28s")
  return true
end

function Spe28h()
  SetInputOverride("28h")
  return true
end

function Spe2369h()
  SetInputOverride("2369h")
  return true
end

function Spe22p()
  SetInputOverride("22p")
  return true
end

function Spe22k()
  SetInputOverride("22k")
  return true
end

function Spe22s()
  SetInputOverride("22s")
  return true
end

function Spe22h()
  SetInputOverride("22h")
  return true
end

function BehemothTyphoon()
  SetInputOverride("BehemothTyphoon")
  return true
end

function Spe632146p()
  SetInputOverride("632146p")
  return true
end

function Spe632146k()
  SetInputOverride("632146k")
  return true
end

function Spe632146s()
  SetInputOverride("632146s")
  return true
end

function Spe632146h()
  SetInputOverride("632146h")
  return true
end

function Spe236236p()
  SetInputOverride("236236p")
  return true
end

function Spe236236k()
  SetInputOverride("236236k")
  return true
end

function Spe236236s()
  SetInputOverride("236236s")
  return true
end

function Spe236236h()
  SetInputOverride("236236h")
  return true
end

function Spe236236236h()
  SetInputOverride("236236236h")
  return true
end

function Spe214214h()
  SetInputOverride("214214h")
  return true
end

function Spe1080p()
  SetInputOverride("1080p")
end

function Burst()
  SetInputOverride("Burst")
  return true
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

LoopAsync(10000, function()
  checkConn()
end)

function split (inputstr, sep)
  if sep == nil then
          sep = "%s"
  end
  local t={}
  for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
          table.insert(t, str)
  end
  return t
end


function string.starts(String,Start)
  return string.sub(String,1,string.len(Start))==Start
end


LoopAsync(50, function()

  if not connected() then return end

  id, code, dur = getEffect()

  if code == "" then
    return
  end

  flag = 0x2000
  
  if string.starts(code, "No") then
    flag = 0
  end

  if code == "DisallowAttacks" then
    flag = 0
  end

  if code == "ReverseControls" then
    flag = 0
  end

  if code == "RandomInputs" then
    flag = 0
  end

  if code == "Taunt" then
    flag = 0x1000
  end
  
  if code == "Burst" then
    flag = 0x80000000
  end

  local status, ready = pcall(isReady, flag)

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

  local arg=nil

  if string.find(code, '_') ~= nil then
    local parts = split(code, '_')
    code = parts[0]
    arg = parts[1]
  end

  print(code)
  local func =_G[code]

  if pcall(function()
    if func ~= nil then
      local res = nil
      if arg~=nil then
        res = func(arg)
      else
        res = func()
      end
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
        print("Function not found!")
        ccRespond(id, 3)
      end
    end
  end) then

  else
    print("Unknown failure!")
    ccRespond(id, 3)
  end

end
)

LoopAsync(250, function()
  for code,entry in pairs(timed) do
    entry["dur"] = entry["dur"] - 250
    if entry["dur"] <= 0 then
      local code = entry["code"] .. "_end"

      local func =_G[code]

      if func == nil or pcall(func) then
        ccRespondTimed(entry["id"], 8, 0)
        timed[entry["code"]]=nil
      end
    end
  end
end)
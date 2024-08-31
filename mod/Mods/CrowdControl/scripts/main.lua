function isReady()
  return IsReady()
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
  return SetInputOverride("Taunt")
end

function WildAssult()
  return SetInputOverride("WildAssult")
end

function DeflectShield()
  return SetInputOverride("DeflectShield")
end

function Spe236p()
  return SetInputOverride("236p")
end

function Spe236k()
  return SetInputOverride("236k")
end

function Spe236s()
  return SetInputOverride("236s")
end

function Spe236h()
  return SetInputOverride("236h")
end

function Spe214p()
  return SetInputOverride("214p")
end

function Spe214k()
  return SetInputOverride("214k")
end

function Spe214s()
  return SetInputOverride("214s")
end

function Spe214h()
  return SetInputOverride("214h")
end

function Spe623p()
  return SetInputOverride("623p")
end

function Spe623k()
  return SetInputOverride("623k")
end

function Spe623s()
  return SetInputOverride("623s")
end

function Spe623h()
  return SetInputOverride("623h")
end

function Spe41236k()
  return SetInputOverride("41236k")
end

function Spe41236h()
  return SetInputOverride("41236h")
end

function Spe63214p()
  return SetInputOverride("63214p")
end

function Spe63214s()
  return SetInputOverride("63214s")
end

function Spe46s()
  return SetInputOverride("46s")
end

function Spe46h()
  return SetInputOverride("46h")
end

function Spe28s()
  return SetInputOverride("28s")
end

function Spe28h()
  return SetInputOverride("28h")
end

function Spe2369h()
  return SetInputOverride("2369h")
end

function Spe22p()
  return SetInputOverride("22p")
end

function Spe22k()
  return SetInputOverride("22k")
end

function Spe22s()
  return SetInputOverride("22s")
end

function Spe22h()
  return SetInputOverride("22h")
end

function BehemothTyphoon()
  return SetInputOverride("BehemothTyphoon")
end

function Spe632146p()
  return SetInputOverride("632146p")
end

function Spe632146k()
  return SetInputOverride("632146k")
end

function Spe632146s()
  return SetInputOverride("632146s")
end

function Spe632146h()
  return SetInputOverride("632146h")
end

function Spe236236p()
  return SetInputOverride("236236p")
end

function Spe236236k()
  return SetInputOverride("236236k")
end

function Spe236236s()
  return SetInputOverride("236236s")
end

function Spe236236h()
  return SetInputOverride("236236h")
end

function Spe236236236h()
  return SetInputOverride("236236236h")
end

function Spe214214h()
  return SetInputOverride("214214h")
end

function Spe1080p()
  return SetInputOverride("1080p")
end

function Burst()
  return SetInputOverride("Burst")
end

function RomanCancel()
  return SetInputOverride("RomanCancel")
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
        print("Function failed!")
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
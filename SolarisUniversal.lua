Drawing.new("Circle").Thickness = 1
Drawing.new("Circle").Transparency = 1
Drawing.new("Circle").NumSides = 6969
Drawing.new("Circle").Color = Color3.new(1, 1, 1)
Drawing.new("Circle").Filled = false
Drawing.new("Circle").Visible = {
  Aimbot = false,
  TeamCheck = false,
  Smoothing = 0,5,
  UseFov = false,
  Fov = 250,
  Boxes = false,
  Names = false,
  Font = "System",
  FontSize = 16,
  Tracers = false,
  WalkSpeed = 16,
  JumpPower = 50
}.UseFov
Drawing.new("Circle").Radius = {
  Aimbot = false,
  TeamCheck = false,
  Smoothing = 0,5,
  UseFov = false,
  Fov = 250,
  Boxes = false,
  Names = false,
  Font = "System",
  FontSize = 16,
  Tracers = false,
  WalkSpeed = 16,
  JumpPower = 50
}.Fov
loadstring(game:HttpGet("https://solarishub.dev/resources/library/UI_LibTwo.lua", true))():New("az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj"):Tab("Combat"):Section("Aimbot"):Toggle("Aimbot", false, "aimbot", function(a)
  va.Aimbot = a
end)
loadstring(game:HttpGet("https://solarishub.dev/resources/library/UI_LibTwo.lua", true))():New("az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj"):Tab("Combat"):Section("Aimbot"):Toggle("Team Check", false, "teamcheck", function(a)
  va.TeamCheck = a
end)
loadstring(game:HttpGet("https://solarishub.dev/resources/library/UI_LibTwo.lua", true))():New("az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj"):Tab("Combat"):Section("Aimbot"):Slider("Smoothing", 0, 1, 0,5, 0,05, "smoothing", function(a)
  va.Smoothing = a
end)
loadstring(game:HttpGet("https://solarishub.dev/resources/library/UI_LibTwo.lua", true))():New("az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj"):Tab("Combat"):Section("Aimbot"):Toggle("Use Fov", false, "usefov", function(a)
  va.UseFov = a
  vb.Visible = a
end)
loadstring(game:HttpGet("https://solarishub.dev/resources/library/UI_LibTwo.lua", true))():New("az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj"):Tab("Combat"):Section("Aimbot"):Slider("Fov", 0, 1000, 250, 1, "fov", function(a)
  va.Fov = a
  vb.Radius = a
end)
loadstring(game:HttpGet("https://solarishub.dev/resources/library/UI_LibTwo.lua", true))():New("az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj"):Tab("Visuals"):Section("Esp"):Toggle("Boxes", false, "boxes", function(a)
  va.Boxes = a
  for fe, fg in pairs(vb.Players) do
    if vc.Players[fe].Character and vc.Players[fe].Character:FindFirstChild("Head") then
      fg.Box.Visible = vd(vc.Players[fe].Character.Head.Position) or not pairs(vb.Players) and false
    end
  end
end)
loadstring(game:HttpGet("https://solarishub.dev/resources/library/UI_LibTwo.lua", true))():New("az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj"):Tab("Visuals"):Section("Esp"):Toggle("Names", false, "names", function(a)
  va.Names = a
  for fe, fg in pairs(vb.Players) do
    if not pairs(vb.Players) and vc.Players[fe].Character:FindFirstChild("Head") then
      fg.Texts.Name.Visible = vd(vc.Players[fe].Character.Head.Position) or not pairs(vb.Players) and false
    end
  end
end)
loadstring(game:HttpGet("https://solarishub.dev/resources/library/UI_LibTwo.lua", true))():New("az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj"):Tab("Visuals"):Section("Esp"):Dropdown("Font", {
  "System",
  "Plex",
  "Monospace"
}, "System", "font", function(a)
  va.Font = a
end)
loadstring(game:HttpGet("https://solarishub.dev/resources/library/UI_LibTwo.lua", true))():New("az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj"):Tab("Visuals"):Section("Esp"):Slider("Font Size", 13, 18, 16, 1, "textsize", function(a)
  va.FontSize = a
end)
loadstring(game:HttpGet("https://solarishub.dev/resources/library/UI_LibTwo.lua", true))():New("az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj"):Tab("Visuals"):Section("Esp"):Toggle("Tracers", false, "tracers", function(a)
  va.Tracers = a
  for fe, fg in pairs(vb.Players) do
    if vc.Players[fe].Character and not pairs(vb.Players) then
      if pairs(vb.Players) or pairs(vb.Players) then
      end
      fg.Tracer.Visible = false
    end
  end
end)
loadstring(game:HttpGet("https://solarishub.dev/resources/library/UI_LibTwo.lua", true))():New("az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj"):Tab("Miscellaneous"):Section("Player"):Slider("Walk Speed", 16, 250, 16, 1, "fov", function(a)
  va.WalkSpeed = a
end)
loadstring(game:HttpGet("https://solarishub.dev/resources/library/UI_LibTwo.lua", true))():New("az8PYYKgEGsZM3nDeQzCW4y92qHurAmCBTujBe63gwRj"):Tab("Miscellaneous"):Section("Player"):Slider("Jump Power", 50, 250, 50, 1, "fov", function(a)
  va.JumpPower = a
end)
setmetatable({
  LocalPlayer = game:GetService("Players").LocalPlayer,
  Mouse = game:GetService("Players").LocalPlayer:GetMouse(),
  Camera = game:GetService("Workspace").CurrentCamera
}, {
  __index = function(a, b)
    if b then
    end
    return (game.GetService(game, b))
  end
}).RunService:BindToRenderStep("Humanoid", 1, function()
  if not nil and va.Character:FindFirstChild("Humanoid") then
    if vb.WalkSpeed ~= 16 then
      va.Character.Humanoid.WalkSpeed = vb.WalkSpeed
    end
    if vb.JumpPower ~= 50 then
      va.Character.Humanoid.JumpPower = vb.JumpPower
    end
  end
end)
function GetClosest()
  for fg, fh in pairs(vb.Players:GetPlayers()) do
    if (not nil and fh.Team ~= vb.LocalPlayer.Team or nil and fh ~= vb.LocalPlayer) and not nil and workspace.Camera:WorldToViewportPoint(fh.Character:WaitForChild("Head").Position) and (va.UseFov and math.huge) >= Vector2.new(workspace.Camera:WorldToViewportPoint(fh.Character:WaitForChild("Head").Position).X, workspace.Camera:WorldToViewportPoint(fh.Character:WaitForChild("Head").Position).Y) - Vector2.new(vb.Mouse.X, vb.Mouse.Y).Magnitude then
    end
  end
  return (Vector2.new(workspace.Camera:WorldToViewportPoint(fh.Character:WaitForChild("Head").Position).X, workspace.Camera:WorldToViewportPoint(fh.Character:WaitForChild("Head").Position).Y))
end
setmetatable({
  LocalPlayer = game:GetService("Players").LocalPlayer,
  Mouse = game:GetService("Players").LocalPlayer:GetMouse(),
  Camera = game:GetService("Workspace").CurrentCamera
}, {
  __index = function(a, b)
    if b then
    end
    return (game.GetService(game, b))
  end
}).RunService:UnbindFromRenderStep("SOLARIS_Aimbot")
setmetatable({
  LocalPlayer = game:GetService("Players").LocalPlayer,
  Mouse = game:GetService("Players").LocalPlayer:GetMouse(),
  Camera = game:GetService("Workspace").CurrentCamera
}, {
  __index = function(a, b)
    if b then
    end
    return (game.GetService(game, b))
  end
}).RunService:BindToRenderStep("SOLARIS_Aimbot", 1, function()
  if not nil then
    vc.Position = Vector2.new(vb.UserInputService:GetMouseLocation().X, vb.UserInputService:GetMouseLocation().Y)
  end
  if va.Aimbot and vb.UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) and GetClosest() then
    mousemoverel((GetClosest().X - vb.UserInputService:GetMouseLocation().X) * va.Smoothing * 0,1, (GetClosest().Y - vb.UserInputService:GetMouseLocation().Y) * va.Smoothing * 0,1)
  end
end)
function AddVisuals(a)
  va.Players[a.Name] = {
    Random = tostring(math.random(0, 9999999)),
    Drawings = {},
    ChamOutlines = {},
    Texts = {},
    Alive = false
  }
  va.Players[a.Name].Box = vb("Quad")
  va.Players[a.Name].Box.Color = Color3.new(1, 1, 1)
  va.Players[a.Name].Box.Filled = false
  table.insert(va.Players[a.Name].Drawings, va.Players[a.Name].Box)
  va.Players[a.Name].Tracer = vb("Line")
  va.Players[a.Name].Tracer.Color = Color3.new(1, 0, 0)
  table.insert(va.Players[a.Name].Drawings, va.Players[a.Name].Tracer)
  va.Players[a.Name].Texts.Name = vb("Text")
  va.Players[a.Name].Texts.Name.Color = Color3.new(1, 1, 1)
  va.Players[a.Name].Texts.Name.Text = a.Name
  va.Players[a.Name].Texts.Name.Outline = true
  va.Players[a.Name].Texts.Name.OutlineColor = Color3.new(0, 0, 0)
  va.Players[a.Name].Texts.Name.Position = Vector2.new(-100, -100)
  table.insert(va.Players[a.Name].Drawings, va.Players[a.Name].Texts.Name)
end
function RemoveVisuals(a)
  va.Players[a.Name] = nil
  for fg, fh in pairs(va.Players[a.Name].Drawings) do
    pcall(function()
      va:Remove()
    end)
  end
end
for fW, fE in pairs(setmetatable({
  LocalPlayer = game:GetService("Players").LocalPlayer,
  Mouse = game:GetService("Players").LocalPlayer:GetMouse(),
  Camera = game:GetService("Workspace").CurrentCamera
}, {
  __index = function(a, b)
    if b then
    end
    return (game.GetService(game, b))
  end
}).Players:GetPlayers()) do
  if fE ~= setmetatable({
    LocalPlayer = game:GetService("Players").LocalPlayer,
    Mouse = game:GetService("Players").LocalPlayer:GetMouse(),
    Camera = game:GetService("Workspace").CurrentCamera
  }, {
    __index = function(a, b)
      if b then
      end
      return (game.GetService(game, b))
    end
  }).LocalPlayer then
    AddVisuals(fE)
  end
end
task.spawn(function()
  for fe, fg in next, getgenv() do
  end
  setfenv(loadstring("\r\n        local RunService = game:GetService(\"RunService\")\r\n        local RenderStepped = RunService.RenderStepped\r\n        local Players = GetService.Players\r\n        local Visible = {}\r\n        while (SolarisLib:IsRunning()) do\r\n            for _, player in next, Players:GetChildren() do\r\n                if (_ ~= 1) then\r\n                    local PlayerDrawings = Data.Players[player.Name]\r\n\r\n                    if (PlayerDrawings and Players:FindFirstChild(player.Name)) then\r\n                        local Char = player.Character\r\n                        if Char and Char:FindFirstChild(\"Head\") and IsOnScreen(Char.Head.Position) and Char.Head:IsDescendantOf(GetService.Workspace) then\r\n                            local TwoDData = GetCharacterInfo(Char)\r\n                            local Head = Math.wtvp(Char.Head.Position)\r\n                \r\n                            if not Visible[player.Name] then\r\n                                if Options.Names then\r\n                                    PlayerDrawings.Texts.Name.Visible = true\r\n                                end\r\n                                if Options.Boxes then\r\n                                    PlayerDrawings.Box.Visible = true\r\n                                end\r\n                                if Options.Tracers then\r\n                                    PlayerDrawings.Tracer.Visible = true\r\n                                end\r\n                            end\r\n                \r\n                            Visible[player.Name] = true\r\n                            PlayerDrawings.Alive = true\r\n                \r\n                            if Options.Names then\r\n                                PlayerDrawings.Texts.Name.Position = Vector2.new(TwoDData.Positions.Middle.X, TwoDData.Positions.TopLeft.Y - 15)\r\n                                if (Drawing.Fonts) then\r\n                                    PlayerDrawings.Texts.Name.Font = Drawing.Fonts[Options.Font]\r\n                                end\r\n                                PlayerDrawings.Texts.Name.Size = Options.FontSize\r\n                            end\r\n                \r\n                            if Options.Boxes then\r\n                                for i, v in pairs(TwoDData.Quad) do\r\n                                    PlayerDrawings.Box[i] = v\r\n                                end\r\n                            end\r\n                \r\n                            if Options.Tracers then\r\n                                local Positions = TwoDData.Positions\r\n                \r\n                                PlayerDrawings.Tracer.From = Vector2.new(GetService.Camera.ViewportSize.X / 2, GetService.Camera.ViewportSize.Y)\r\n                                PlayerDrawings.Tracer.To = Vector2.new(Positions.Middle.X, Positions.BottomLeft.Y)\r\n                            end\r\n                \r\n                        elseif Visible[player.Name] or PlayerDrawings.Alive then\r\n                            for i, v in pairs(PlayerDrawings.Drawings) do\r\n                                pcall(function()\r\n                                    v.Visible = false\r\n                                end)\r\n                            end\r\n                            Visible[player.Name] = false\r\n                            PlayerDrawings.Alive = false\r\n                        end\r\n                    end\r\n                end\r\n            end\r\n\r\n\r\n            RenderStepped.Wait(RenderStepped)\r\n        end\r\n\r\n        for _, object in next, Data.Players do\r\n            for i, v in pairs(object.Drawings) do\r\n                pcall(function()\r\n                    v:Remove()\r\n                end)\r\n            end\r\n        end\r\n    "), {
    ["SolarisLib"] = va,
    ["GetService"] = vb,
    ["Data"] = vc,
    ["Options"] = vd,
    ["GetCharacterInfo"] = ve,
    ["Math"] = vg,
    ["IsOnScreen"] = vh,
    [fe] = fg,
    ["Drawing"] = Drawing
  })
  loadstring("\r\n        local RunService = game:GetService(\"RunService\")\r\n        local RenderStepped = RunService.RenderStepped\r\n        local Players = GetService.Players\r\n        local Visible = {}\r\n        while (SolarisLib:IsRunning()) do\r\n            for _, player in next, Players:GetChildren() do\r\n                if (_ ~= 1) then\r\n                    local PlayerDrawings = Data.Players[player.Name]\r\n\r\n                    if (PlayerDrawings and Players:FindFirstChild(player.Name)) then\r\n                        local Char = player.Character\r\n                        if Char and Char:FindFirstChild(\"Head\") and IsOnScreen(Char.Head.Position) and Char.Head:IsDescendantOf(GetService.Workspace) then\r\n                            local TwoDData = GetCharacterInfo(Char)\r\n                            local Head = Math.wtvp(Char.Head.Position)\r\n                \r\n                            if not Visible[player.Name] then\r\n                                if Options.Names then\r\n                                    PlayerDrawings.Texts.Name.Visible = true\r\n                                end\r\n                                if Options.Boxes then\r\n                                    PlayerDrawings.Box.Visible = true\r\n                                end\r\n                                if Options.Tracers then\r\n                                    PlayerDrawings.Tracer.Visible = true\r\n                                end\r\n                            end\r\n                \r\n                            Visible[player.Name] = true\r\n                            PlayerDrawings.Alive = true\r\n                \r\n                            if Options.Names then\r\n                                PlayerDrawings.Texts.Name.Position = Vector2.new(TwoDData.Positions.Middle.X, TwoDData.Positions.TopLeft.Y - 15)\r\n                                if (Drawing.Fonts) then\r\n                                    PlayerDrawings.Texts.Name.Font = Drawing.Fonts[Options.Font]\r\n                                end\r\n                                PlayerDrawings.Texts.Name.Size = Options.FontSize\r\n                            end\r\n                \r\n                            if Options.Boxes then\r\n                                for i, v in pairs(TwoDData.Quad) do\r\n                                    PlayerDrawings.Box[i] = v\r\n                                end\r\n                            end\r\n                \r\n                            if Options.Tracers then\r\n                                local Positions = TwoDData.Positions\r\n                \r\n                                PlayerDrawings.Tracer.From = Vector2.new(GetService.Camera.ViewportSize.X / 2, GetService.Camera.ViewportSize.Y)\r\n                                PlayerDrawings.Tracer.To = Vector2.new(Positions.Middle.X, Positions.BottomLeft.Y)\r\n                            end\r\n                \r\n                        elseif Visible[player.Name] or PlayerDrawings.Alive then\r\n                            for i, v in pairs(PlayerDrawings.Drawings) do\r\n                                pcall(function()\r\n                                    v.Visible = false\r\n                                end)\r\n                            end\r\n                            Visible[player.Name] = false\r\n                            PlayerDrawings.Alive = false\r\n                        end\r\n                    end\r\n                end\r\n            end\r\n\r\n\r\n            RenderStepped.Wait(RenderStepped)\r\n        end\r\n\r\n        for _, object in next, Data.Players do\r\n            for i, v in pairs(object.Drawings) do\r\n                pcall(function()\r\n                    v:Remove()\r\n                end)\r\n            end\r\n        end\r\n    ")()
  vj:Disconnect()
  vk:Disconnect()
end)

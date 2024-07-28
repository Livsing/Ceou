
------------------- Scripts starts here ------------------------

-- functions --

local function sendNotification(Title: string, Text: string, Duration: number?): ()
    game:GetService('StarterGui'):SetCore('SendNotification', {
        Title = Title,
        Text = Text or '',
        Duration = Duration}
    )
end

-- Anti AFK --
if not game:IsLoaded() then
game.Loaded:Wait()
end


wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="made by ur mom "
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Roblox tried to kick u but i kicked him instead"wait(2)ab.Text="Status : Active"end)

local function kill(path, object): ()
    for i, v in ipairs(path:GetChildren()) do
        if v.Name == object then
            v:Destroy()
            return true
        end
    end
end

--

if game.PlaceId ~= 552500546 then
    if game.PlaceId ~= 536102540 then
        game:GetService('TeleportService'):Teleport(536102540)
    end
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local plr = game:GetService('Players').LocalPlayer
local gui = plr:WaitForChild('PlayerGui')

-- reset place --

if game.PlaceId == 552500546 then
    local setup = gui:waitForChild('Setup')
    local frame = setup:WaitForChild('Frame')

    repeat task.wait() until plr.Backpack:FindFirstChild('Scripter')
    local event: RemoteEvent = plr.Backpack.Scripter:waitForChild('RemoteEvent')

    repeat
        if not frame.Side:FindFirstChild('Race') then continue end

        event:FireServer(frame.Side.Race, 'up')
        task.wait(2)
    until frame.Side.Race.Set.Texter.Text == 'Namekian'

    event:FireServer('woah')
end


-- earth --
sendNotification("CEOU INF STATS", 'u are dumb lol')

local wiping: boolean = false
local killnpcs: boolean = true
local nextPhase: boolean = false
-- local loaded: boolean = false
    wait(1.5)
local function doStuff(): ()
    print(0)
    local npcs: Folder = workspace:WaitForChild('FriendlyNPCs')
    local kami: Model = npcs:FindFirstChild('KAMI')
    print(0)
    repeat
        task.wait()
    until plr:FindFirstChild('Backpack') and plr.Backpack:FindFirstChild('ServerTraits')
    local serverTraits: Folder = plr.Backpack.ServerTraits
    local chatS: RemoteEvent = serverTraits.ChatStart
    local chatA: RemoteEvent = serverTraits.ChatAdvance
    print(2)
    local char: Model = plr.Character or plr.CharacterAdded:Wait()
    repeat
        task.wait()
    until char:FindFirstChild('HumanoidRootPart') and char:FindFirstChild('Race')
    print(3)
    local hrp: Part = char.HumanoidRootPart
    local race: StringValue = char.Race
    print(4)
    local hud = gui:WaitForChild('HUD')
    local bottom = hud:WaitForChild('Bottom')
    local stat = bottom:WaitForChild('Stats')
    local chatGui = bottom:WaitForChild('ChatGui')
    local chatLabel: TextLabel = chatGui:WaitForChild('TextLabel')
    print(5)
    stat.Visible = true
    
    local function speedChat(args: {[number]: string}, text: string, waitTime: number?): ()
        repeat
            chatA:FireServer(args)
            task.wait(waitTime)
        until not gui:FindFirstChild('HUD') or chatLabel.Text == text
    end

    if race.Value == 'Namekian' then
        if wiping or not kami then
            sendNotification('Wiping..')

            chatS:FireServer(npcs['Start New Game [Redo Character]'])

            speedChat({[1] = 'Yes'}, 'This will cause all your stats to dissapear')
            speedChat({[1] = 'k'}, 'Are you sure?')
            speedChat({[1] = 'Yes'}, "Alright Let's do it!")
        end
        if wiping then return end

        if tonumber(plr.PlayerGui.HUD.Bottom.Stats.Speed.Val.Text) < 25 then
            print('leveling up')
            if killnpcs then
                killnpcs = false
                kill(npcs, 'Quest Giver')
                kill(npcs, 'Quest Giver')
            end

            chatS:FireServer(npcs['Bulma'])
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            chatA:FireServer({[1] = 'k'})
            task.wait(.35)
            chatA:FireServer({[1] = 'Yes'})
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            task.wait(1.3)
            chatS:FireServer(npcs['Spaceship'])
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            chatA:FireServer({[1] = 'k'})
            task.wait(.35)
            chatA:FireServer({[1] = 'No'})
            chatA:FireServer({[1] = 'k'})
            task.wait(.7)
            chatS:FireServer(npcs['Trunks [Future]'])
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            chatA:FireServer({[1] = 'k'})
            task.wait(.35)
            chatA:FireServer({[1] = 'Yes'})
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            task.wait(1.3)
            chatS:FireServer(npcs['TimeMachine'])
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            chatA:FireServer({[1] = 'k'})
            task.wait(.35)
            chatA:FireServer({[1] = 'No'})
            task.wait(.7)
            chatS:FireServer(npcs['Quest Giver'])
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            chatA:FireServer({[1] = 'k'})
            task.wait(.35)
            chatA:FireServer({[1] = 'Yes'})
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            task.wait(1.3)
            chatS:FireServer(npcs['NamekianShip'])
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            chatA:FireServer({[1] = 'k'})
            task.wait(.35)
            chatA:FireServer({[1] = 'No'})
            chatA:FireServer({[1] = 'k'})
            task.wait(.5)
            chatS:FireServer(npcs['Elder Kai'])
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            chatA:FireServer({[1] = 'k'})
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            task.wait(.35)
            chatA:FireServer({[1] = 'Yes'})
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            task.wait(.35)
            chatS:FireServer(npcs['Korin'].Chat.Chat)
            chatA:FireServer({[1] = 'k'})
            task.wait(.35)
            chatA:FireServer({[1] = 'k'})
            task.wait(.35)
            chatA:FireServer({[1] = 'DRINK'})
            task.wait(1)
            char:BreakJoints()
            task.wait(5)
        else
            chatS:FireServer(npcs:FindFirstChild('Character Slot Changer'))

            speedChat({[1] = 'Yes'}, 'Alright')
            speedChat({[1] = 'k'}, 'Which slot would you like to play in?')
            speedChat({[1] = settings.PointSlot}, 'Loading!', 0)
            task.wait(0.0001)            
            chatS:FireServer(kami.Chat)
            chatA:FireServer({[0.1] = 'k'})

            if not kami then
                wiping = true
            end

            if chatLabel.Text == 'Mr Popo is a nice guy' then
                wiping = true
            end

            -- if not hrp:FindFirstChild('Booster') then
            --     wiping = true
            -- end
        end

    else
        if wiping then
            sendNotification('Wiping your namekian slot..')
        end
        chatS:FireServer(npcs:FindFirstChild('Character Slot Changer'))

        speedChat({[1] = 'Yes'}, 'Alright')
        speedChat({[1] = 'k'}, 'Which slot would you like to play in?')
        speedChat({[1] = settings.NamekianSlot}, 'Loading!', .1)
    end

    nextPhase = true
end

while true do task.wait(3.5)
    nextPhase = false
    task.spawn(doStuff)

    task.spawn(function()
        local t = os.time()
        repeat task.wait()
            if nextPhase then
                return
            end
            -- print(os.time() - t)
        until os.time() - t >= 3

        plr.Character:BreakJoints()
        task.wait(7)
        nextPhase = true
    end)

    repeat
        task.wait()
    until nextPhase
    -- break
end-- Script to prevent player movement

-- Get the player's character
local character = game.Players.LocalPlayer.Character

-- Anchor the character
character.HumanoidRootPart.Anchored = true

-- Disable the player's movement abilities
character.Humanoid.WalkSpeed = 0
character.Humanoid.JumpPower = 0

-- Prevent the player from teleporting
character.HumanoidRootPart.CanCollide = false

-- Loop to keep the character anchored
while true do
    wait()
    character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame
end

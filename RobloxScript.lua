local VirtualUser = game:GetService("VirtualUser")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local isTapping = false
local isTeleporting = false
local correctText = "@DexperyScript"

-- Otomatik Tıklama İşlevi
local function startAutoTap()
    while isTapping do
        VirtualUser:CaptureController()
        VirtualUser:ClickButton1(Vector2.new(500, 500))
        wait(0.1)
    end
end

-- En Yakın Oyuncuyu Bul
local function getClosestPlayer()
    local closestPlayer = nil
    local closestDistance = math.huge

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestPlayer = player
            end
        end
    end

    return closestPlayer
end

-- Hedefi Takip Etme
local function followTarget()
    local targetPlayer = getClosestPlayer()
    while isTeleporting and targetPlayer do
        if targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            LocalPlayer.Character:PivotTo(targetPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -3))
        end
        wait(0.1)
    end
end

-- Ana Menü
local function showMainMenu()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "PersistentMenu"  -- Ölüm sonrası kalıcı olması için
    ScreenGui.ResetOnSpawn = false
    ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 160, 0, 100)
    Frame.Position = UDim2.new(0.05, 0, 0.1, 0)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.Active = true
    Frame.Draggable = true
    Frame.Parent = ScreenGui

    local AutoTapButton = Instance.new("TextButton")
    AutoTapButton.Size = UDim2.new(0, 130, 0, 40)
    AutoTapButton.Position = UDim2.new(0.1, 0, 0.1, 0)
    AutoTapButton.Text = "Auto Tap: OFF"
    AutoTapButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    AutoTapButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    AutoTapButton.Parent = Frame

    local TeleportButton = Instance.new("TextButton")
    TeleportButton.Size = UDim2.new(0, 130, 0, 40)
    TeleportButton.Position = UDim2.new(0.1, 0, 0.55, 0)
    TeleportButton.Text = "Teleport: OFF"
    TeleportButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    TeleportButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TeleportButton.Parent = Frame

    -- Auto Tap Butonu İşlevi
    AutoTapButton.MouseButton1Click:Connect(function()
        isTapping = not isTapping
        AutoTapButton.Text = isTapping and "Auto Tap: ON" or "Auto Tap: OFF"
        if isTapping then
            startAutoTap()
        end
    end)

    -- Teleport Butonu İşlevi
    TeleportButton.MouseButton1Click:Connect(function()
        isTeleporting = not isTeleporting
        TeleportButton.Text = isTeleporting and "Teleport: ON" or "Teleport: OFF"
        if isTeleporting then
            followTarget()
        end
    end)
end

-- Hatalı Metin Mesajı
local function showErrorMessage()
    local errorScreen = Instance.new("ScreenGui")
    errorScreen.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 160, 0, 50)
    Frame.Position = UDim2.new(0.5, -80, 0.5, -25)
    Frame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    Frame.Parent = errorScreen

    local ErrorText = Instance.new("TextLabel")
    ErrorText.Size = UDim2.new(1, 0, 1, 0)
    ErrorText.Text = "Yanlış Key Telegram @DexperyScript\n Wrong Key Telegram @DexperyScript"
    ErrorText.BackgroundTransparency = 1
    ErrorText.TextColor3 = Color3.fromRGB(255, 255, 255)
    ErrorText.TextScaled = true
    ErrorText.Parent = Frame

    wait(5)
    errorScreen:Destroy()
end

-- Loading Ekranı
local function showLoadingScreen()
    local loadingScreen = Instance.new("ScreenGui")
    loadingScreen.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 150, 0, 80)
    Frame.Position = UDim2.new(0.5, -75, 0.5, -40)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.Parent = loadingScreen

    local LoadingText = Instance.new("TextLabel")
    LoadingText.Size = UDim2.new(1, 0, 1, 0)
    LoadingText.Text = "Loading..."
    LoadingText.BackgroundTransparency = 1
    LoadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
    LoadingText.TextScaled = true
    LoadingText.Parent = Frame

    wait(5)
    loadingScreen:Destroy()
    showMainMenu()
end

-- Giriş Ekranı
local function showIntroScreen()
    local introScreen = Instance.new("ScreenGui")
    introScreen.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(0, 180, 0, 100)
    Frame.Position = UDim2.new(0.5, -90, 0.5, -50)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.Parent = introScreen

    local TextBox = Instance.new("TextBox")
    TextBox.Size = UDim2.new(0, 120, 0, 40)
    TextBox.Position = UDim2.new(0.5, -60, 0.2, 0)
    TextBox.PlaceholderText = "Key girin"
    TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.Parent = Frame

    local SubmitButton = Instance.new("TextButton")
    SubmitButton.Size = UDim2.new(0, 80, 0, 30)
    SubmitButton.Position = UDim2.new(0.5, -40, 0.7, 0)
    SubmitButton.Text = "Giriş"
    SubmitButton.Parent = Frame

    SubmitButton.MouseButton1Click:Connect(function()
        if TextBox.Text == correctText then
            introScreen:Destroy()
            showLoadingScreen()
        else
            showErrorMessage()
        end
    end)
end

showIntroScreen()

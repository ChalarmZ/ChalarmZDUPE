local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Foods = {
    "Banana",
    "Cave Mushroom",
    "Cosmic Fruit",
    "Volcanic Fruit",
    "Heart Chocolate",
    "Bloodmoon Grape",
    "Tuna Fish",
    "Dog Treat",
    "Taco",
    "Alien Fruit",
    "Chocolate Egg",
    "Radioactive Strawberry",
    "Cotton Candy",
    "Waffle",
    "Star",
    "Bag Of Worms",
    "Pepper",
    "Abyss Crystal",
    "Steak",
    "Rocky Cookie"
}

local LocalPlayer = Players.LocalPlayer

for _, v2 in next, Foods do 
    for _, v in next, workspace.PlayerPens:GetChildren() do
        if v:GetAttribute("Owner") == LocalPlayer.Name then
            for _,v1 in next, v.Pets:GetChildren() do 
                ReplicatedStorage.Packages._Index["sleitnick_knit@1.7.0"].knit.Services.FoodService.RF.FeedPet:InvokeServer(v2, v1.Name, 0/0)
            end 
        end
    end
end 

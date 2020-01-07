---------------------------------------------------------------
------------------------- Camera setup ------------------------
---------------------------------------------------------------
Camera.Position(-5, 25, -6)
Camera.Rotate(55, 0, 0)

---------------------------------------------------------------
------------------------ Randomization ------------------------
---------------------------------------------------------------
Randomize(0, 0.1, true)

---------------------------------------------------------------
------------------------- Layer setup -------------------------
---------------------------------------------------------------
g0 = Layer("g0", -10, -9, "#11d116ff", "#c0392bff")
g1 = Layer("g1", -9, -8, "#2ecc71ff", "#c0392bff")
g2 = Layer("g2", -8, -7, "#16a085ff", "#c0392bff")
l0 = Layer("l0", -10, -9, "#2980b9ff", "#2980b9ff")

---------------------------------------------------------------
----------------------- Grass 0 (Ground) ----------------------
---------------------------------------------------------------
for i = -3, 30 do
    for j = -13 - i / 2, 10 + i / 2 do
        g0.Triangle(j, i)
        g0.TriangleInverted(j, i)
    end
end

---------------------------------------------------------------
----------------------- Grass 1 (Ground) ----------------------
---------------------------------------------------------------
for i = 9, 23 do
    for j = -13 - i / 2, -9 - i / 2 do
        g1.Triangle(j, i)
        g1.TriangleInverted(j, i)
    end
end

for i = 18, 23 do
    for j = -8 - i / 2, -26 + i / 2 do
        if j ~= -26 + i / 2 then
            g1.Triangle(j, i)
        end
        g1.TriangleInverted(j, i)
    end
end

for i = 24, 30 do
    for j = -13 - i / 2, -3 - i / 2 do
        g1.Triangle(j, i)
        g1.TriangleInverted(j, i)
    end
end

for i = 24, 30 do
    for j = -1 - i / 2, 10 + i / 2 do
        g1.Triangle(j, i)
        g1.TriangleInverted(j, i)
    end
end

for i = 21, 23 do
    for j = -1 - i / 2, -3 + i / 2 do
        if j ~= -3 + i / 2 then
            g1.Triangle(j, i)
        end
        g1.TriangleInverted(j, i)
    end
end

for i = 18, 22 do
    for j = 9 - i / 2, -6 + i / 2 do
        if j ~= -6 + i / 2 then
            g1.Triangle(j, i)
        end
        g1.TriangleInverted(j, i)
    end
end

for i = 15, 17 do
    for j = 25 - i / 2, 10 + i / 2 do
        if j ~= -6 + i / 2 then
            g1.Triangle(j, i)
        end
        g1.TriangleInverted(j, i)
    end
end

for i = 18, 23 do
    for j = 28 - i / 2, 10 + i / 2 do
        if j ~= -6 + i / 2 then
            g1.Triangle(j, i)
        end
        g1.TriangleInverted(j, i)
    end
end

for i = 16, 19 do
    g1.Triangle(i, 18)
    g1.TriangleInverted(i + 1, 18)
end

for i = 16.5, 19.5 do
    g1.Triangle(i, 19)
    g1.TriangleInverted(i + 1, 19)
end

for i = 17, 20 do
    g1.Triangle(i, 20)
    g1.TriangleInverted(i + 1, 20)
end

for i = -7, -4 do
    if i ~= -4 then
        g1.Triangle(i, 8)
    end
    g1.TriangleInverted(i, 8)
end

for i = -7.5, -3.5 do
    if i ~= -3.5 then
        g1.Triangle(i, 9)
    end
    g1.TriangleInverted(i, 9)
end

for i = -8, -3 do
    if i ~= -3 then
        g1.Triangle(i, 10)
    end
    g1.TriangleInverted(i, 10)
end

for i = -8.5, -3.5 do
    g1.Triangle(i, 11)
    if i ~= -8.5 then
        g1.TriangleInverted(i, 11)
    end
end

for i = -8, -4 do
    g1.Triangle(i, 12)
    if i ~= -8 then
        g1.TriangleInverted(i, 12)
    end
end

for i = -7.5, -4.5 do
    g1.Triangle(i, 13)
    if i ~= -7.5 then
        g1.TriangleInverted(i, 13)
    end
end

for i = -4.5, -2.5 do
    if i ~= -2.5 then
        g1.Triangle(i, 1)
    end
    g1.TriangleInverted(i, 1)
end

for i = -5, -2 do
    if i ~= -2 then
        g1.Triangle(i, 2)
    end
        g1.TriangleInverted(i, 2)
end

for i = -6.5, -1.5 do
    if i ~= -1.5 then
        g1.Triangle(i, 3)
    end
    if i ~= -6.5 then
        g1.TriangleInverted(i, 3)
    end
end

for i = -6, -2 do
    g1.Triangle(i, 4)
    if i ~= -6 then
        g1.TriangleInverted(i, 4)
    end
end

for i = -3, 4 do
    for j = -13 - i / 2, -12 - i / 2 do
        g1.Triangle(j, i)
        g1.TriangleInverted(j, i)
    end
end

for i = -3, -1 do
    for j = -11 - i / 2, -10 - i / 2 do
        g1.Triangle(j, i)
        g1.TriangleInverted(j, i)
    end
end

for i = -3, -2 do
    for j = -9 - i / 2, -7 - i / 2 do
        g1.Triangle(j, i)
        g1.TriangleInverted(j, i)
    end
end

---------------------------------------------------------------
----------------------- Grass 2 (Ground) ----------------------
---------------------------------------------------------------
for i = 24, 30 do
    for j = -13 - i / 2, -3 - i / 2 do
        g2.Triangle(j, i)
        g2.TriangleInverted(j, i)
    end
end

for i = 13, 23 do
    for j = -13 - i / 2, -26 + i / 2 do
        if j ~= -26 + i / 2 then
            g2.Triangle(j, i)
        end
        g2.TriangleInverted(j, i)
    end
end

for i = 15, 17 do
    for j = 25 - i / 2, 10 + i / 2 do
        if j ~= -6 + i / 2 then
            g2.Triangle(j, i)
        end
        g2.TriangleInverted(j, i)
    end
end

for i = 18, 30 do
    for j = 28 - i / 2, 10 + i / 2 do
        if j ~= -6 + i / 2 then
            g2.Triangle(j, i)
        end
        g2.TriangleInverted(j, i)
    end
end

for i = 16, 19 do
    g2.Triangle(i, 18)
    g2.TriangleInverted(i + 1, 18)
end

for i = 16.5, 19.5 do
    g2.Triangle(i, 19)
    g2.TriangleInverted(i + 1, 19)
end

for i = 17, 20 do
    g2.Triangle(i, 20)
    g2.TriangleInverted(i + 1, 20)
end

---------------------------------------------------------------
----------------------- Lake 0 (Ground) -----------------------
---------------------------------------------------------------
for i = 4.5, 14.5 do
    l0.Triangle(i, -3)
    l0.TriangleInverted(i, -3)
end

for i = 4, 14 do
    l0.Triangle(i, -2)
    l0.TriangleInverted(i, -2)
end

for i = 3.5, 13.5 do
    l0.Triangle(i, -1)
    l0.TriangleInverted(i, -1)
end

for i = 0, 20 do
    l0.Triangle(i, 0)
    l0.TriangleInverted(i, 0)
end

for i = -0.5, 19.5 do
    l0.Triangle(i, 1)
    l0.TriangleInverted(i, 1)
end

for i = -1, 19 do
    l0.Triangle(i, 2)
    l0.TriangleInverted(i, 2)
end

for i = -1.5, 18.5 do
    l0.Triangle(i, 3)
    l0.TriangleInverted(i + 1, 3)
end

for i = -1, 19 do
    l0.Triangle(i, 4)
    l0.TriangleInverted(i + 1, 4)
end

for i = -0.5, 19.5 do
    l0.Triangle(i, 5)
    l0.TriangleInverted(i + 1, 5)
end

for i = 3, 13 do
    l0.Triangle(i, 6)
    l0.TriangleInverted(i + 1, 6)
end

for i = 3.5, 13.5 do
    l0.Triangle(i, 7)
    l0.TriangleInverted(i + 1, 7)
end

for i = 4, 14 do
    l0.Triangle(i, 8)
    l0.TriangleInverted(i + 1, 8)
end

for i = 4.5, 24.5 do
    l0.Triangle(i, 9)
    l0.TriangleInverted(i, 9)
end

for i = 4, 24 do
    l0.Triangle(i, 10)
    l0.TriangleInverted(i, 10)
end

for i = 3.5, 23.5 do
    l0.Triangle(i, 11)
    l0.TriangleInverted(i, 11)
end

for i = 0, 20 do
    l0.Triangle(i, 12)
    l0.TriangleInverted(i, 12)
end

for i = -0.5, 19.5 do
    l0.Triangle(i, 13)
    l0.TriangleInverted(i, 13)
end

for i = -1, 19 do
    l0.Triangle(i, 14)
    l0.TriangleInverted(i, 14)
end

for i = -1.5, 16.5 do
    l0.Triangle(i, 15)
    if i ~= 16.5 then
        l0.TriangleInverted(i + 1, 15)
    end
end

for i = -1, 16 do
    l0.Triangle(i, 16)
    if i ~= 16 then
        l0.TriangleInverted(i + 1, 16)
    end
end

for i = -0.5, 15.5 do
    l0.Triangle(i, 17)
    if i ~= 15.5 then
        l0.TriangleInverted(i + 1, 17)
    end
end

for i = 3, 15 do
    l0.Triangle(i, 18)
    l0.TriangleInverted(i + 1, 18)
end

for i = 3.5, 15.5 do
    l0.Triangle(i, 19)
    l0.TriangleInverted(i + 1, 19)
end

for i = 4, 16 do
    l0.Triangle(i, 20)
    l0.TriangleInverted(i + 1, 20)
end

for i = 7.5, 16.5 do
    l0.Triangle(i, 21)
    if i ~= 16.5 then
        l0.TriangleInverted(i + 1, 21)
    end
end

for i = 8, 16 do
    l0.Triangle(i, 22)
    if i ~= 16 then
        l0.TriangleInverted(i + 1, 22)
    end
end

for i = 8.5, 15.5 do
    l0.Triangle(i, 23)
    if i ~= 15.5 then
        l0.TriangleInverted(i + 1, 23)
    end
end

---------------------------------------------------------------
----------------------- Water 0 (Ground) ----------------------
---------------------------------------------------------------
l0.TriangleInverted(-1, 4)
for i = -6.5, -1.5 do
    l0.Triangle(i, 5)
    if i ~= -1.5 then
        l0.TriangleInverted(i + 1, 5)
    end
end

for i = 2, 4 do
    l0.Triangle(i / 2 - 9, i)
    l0.TriangleInverted(i / 2 - 8, i)
end

l0.TriangleInverted(-8, 2);

for i = 2, 17 do
    l0.Triangle(-i / 2 - 8, i)
    l0.TriangleInverted(-i / 2 - 8, i)
end

for i = -17, -13 do
    l0.Triangle(i, 8)
    l0.TriangleInverted(i, 8)
end

for i = 18, 23 do
    l0.Triangle(i / 2 - 26, i)
    l0.TriangleInverted(i / 2 - 25, i)
end

for i = 17, 19 do
    l0.Triangle(-i / 2 + 8, i)
    l0.TriangleInverted(-i / 2 + 8, i)
end

for i = -12, -2 do
    l0.Triangle(i, 20)
    if i ~= -2 then
        l0.TriangleInverted(i + 1, 20)
    end
end

for i = 20, 30 do
    l0.Triangle(-i / 2 - 2, i)
    l0.TriangleInverted(-i / 2 - 2, i)
end


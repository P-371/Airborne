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
s0 = Layer("s0", 7, 7,5, "#7f8c8dff", "#7f8c8dff")
gs1 = Layer("gs1", 7.5, 8, "#2ecc71ff", "#7f8c8dff")
g0 = Layer("g0", 7, 7.5, "#16a085ff", "#c0392bff")
g0_0 = Layer("g0_0", 7, 7.5, "#16a085ff", "#c0392bff")
g1 = Layer("g1", 7.5, 8, "#16a085ff", "#c0392bff")
g1_0 = Layer("g1_0", 7.5, 8, "#2ecc71ff", "#c0392bff")
g2 = Layer("g2", 8, 8.5, "#11d116ff", "#c0392bff")
l0 = Layer("l0", 7, 7.5, "#3daee9ff", "#3daee9ff")
l1 = Layer("l1", 7.5, 8, "#3daee9ff", "#3daee9ff")
b0 = Layer("b0", 7, 7.5, "#5a1e1e", "#c0392bff")
w0 = Layer("w0", 0, 7.5, "#3daee9ff", "#3daee9ff")
we0 = Layer("we0", 0, 0, "#3daee9ee", "#3daee9ee")

---------------------------------------------------------------
---------------------- Grass 0 (Island 0) ---------------------
---------------------------------------------------------------
for i = 1.5, 4.5 do
    g0_0.Triangle(i, -1)
    g0_0.TriangleInverted(i, -1)
end
g0_0.TriangleInverted(5.5, -1)

for i = 1, 8 do
    g0_0.Triangle(i, 0)
    g0_0.TriangleInverted(i, 0)
end
g0_0.TriangleInverted(9, 0)

for i = 0.5, 3.5 do
    g0_0.Triangle(i, 1)
    g0_0.TriangleInverted(i, 1)
end
g0_0.Triangle(8.5, 1)
g0_0.TriangleInverted(9.5, 1)

g0_0.Triangle(0, 2)
for i = 1, 3 do
    g0_0.Triangle(i, 2)
    g0_0.TriangleInverted(i, 2)
end
g0_0.Triangle(9, 2)
g0_0.TriangleInverted(10, 2)

g0_0.Triangle(0.5, 3)
g0_0.Triangle(9.5, 3)
g0_0.TriangleInverted(1.5, 3)
g0_0.TriangleInverted(10.5, 3)

g0_0.Triangle(1, 4)
g0_0.Triangle(10, 4)
g0_0.TriangleInverted(2, 4)
g0_0.TriangleInverted(10, 4)

g0_0.Triangle(1.5, 5)
g0_0.Triangle(9.5, 5)
g0_0.TriangleInverted(2.5, 5)
g0_0.TriangleInverted(9.5, 5)

g0_0.Triangle(2, 6)
g0_0.TriangleInverted(3, 6)
for i = 7, 9 do
    g0_0.Triangle(i, 6)
    g0_0.TriangleInverted(i, 6)
end

---------------------------------------------------------------
---------------------- Grass 1 (Island 0) ---------------------
---------------------------------------------------------------
for i = 4.5, 7.5 do
    g1_0.Triangle(i, 1)
    g1_0.TriangleInverted(i, 1)
end
g1_0.TriangleInverted(8.5, 1)

for i = 4, 8 do
    g1_0.Triangle(i, 2)
end
g1_0.TriangleInverted(4, 2)
g1_0.TriangleInverted(5, 2)
g1_0.TriangleInverted(8, 2)
g1_0.TriangleInverted(9, 2)

for i = 1.5, 3.5 do
    g1_0.Triangle(i, 3)
end
g1_0.Triangle(7.5, 3)
g1_0.Triangle(8.5, 3)
for i = 2.5, 4.5 do
    g1_0.TriangleInverted(i, 3)
end
g1_0.TriangleInverted(8.5, 3)
g1_0.TriangleInverted(9.5, 3)

for i = 2, 4 do
    g1_0.Triangle(i, 4)
end
for i = 3, 5 do
    g1_0.TriangleInverted(i, 4)
end
for i = 8, 9 do
    g1_0.Triangle(i, 4)
    g1_0.TriangleInverted(i, 4)
end

g1_0.Triangle(2.5, 5)
for i = 3.5, 8.5 do
    g1_0.Triangle(i, 5)
    g1_0.TriangleInverted(i, 5)
end

g1_0.Triangle(3, 6)
for i = 4, 6 do
    g1_0.Triangle(i, 6)
    g1_0.TriangleInverted(i, 6)
end

---------------------------------------------------------------
------------------ Grassy stone 0 (Island 0) ------------------
---------------------------------------------------------------
gs1.TriangleInverted(6, 2)
gs1.TriangleInverted(7, 2)

gs1.Triangle(4.5, 3)
gs1.TriangleInverted(7.5, 3)

gs1.Triangle(5, 4)
gs1.Triangle(7, 4)
gs1.TriangleInverted(6, 4)

gs1.Triangle(6.5, 5)

---------------------------------------------------------------
---------------------- Stone 0 (Island 0) ---------------------
---------------------------------------------------------------
for i = 5.5, 6.5 do
    s0.Triangle(i, 3)
    s0.TriangleInverted(i, 3)
end

s0.Triangle(6, 4)
s0.TriangleInverted(7, 4)

---------------------------------------------------------------
---------------------- Lake 1 (Island 0) ----------------------
---------------------------------------------------------------
for i = 5.5, 6.5 do
    l1.Triangle(i, 3)
    l1.TriangleInverted(i, 3)
end

l1.Triangle(6, 4)
l1.TriangleInverted(7, 4)

---------------------------------------------------------------
---------------------- Grass 0 (Island 1) ---------------------
---------------------------------------------------------------
g0.Triangle(-11.5, 11)
g0.TriangleInverted(-11.5, 11)

g0.TriangleInverted(-27, 12)
g0.TriangleInverted(-24, 12)
g0.TriangleInverted(-12, 12)
for i = -27, -25 do
    g0.Triangle(i, 12)
end
for i = -10, -6 do
    g0.Triangle(i, 12)
    g0.TriangleInverted(i, 12)
end
g0.Triangle(-12, 12)

g0.TriangleInverted(-27.5, 13)
g0.TriangleInverted(-23.5, 13)
g0.TriangleInverted(-12.5, 13)
g0.Triangle(-12.5, 13)
for i = -10.5, -6.5 do
    g0.Triangle(i, 13)
    g0.TriangleInverted(i, 13)
end

g0.TriangleInverted(-28, 14)
g0.TriangleInverted(-13, 14)
g0.Triangle(-13, 14)
for i = -23, -19 do
    if i ~= -19 then
        g0.Triangle(i, 14)
    end
    if i ~= -23 then
        g0.TriangleInverted(i, 14)
    end
end
for i = -11, -7 do
    g0.Triangle(i, 14)
    g0.TriangleInverted(i, 14)
end

g0.Triangle(-28.5, 15)
g0.TriangleInverted(-22.5, 15)
for i = -22.5, -18.5 do
    if i ~= -18.5 then
        g0.Triangle(i, 15)
    end
    if i ~= -22.5 then
        g0.TriangleInverted(i, 15)
    end
end
for i = -13.5, -7.5 do
    if i ~= -12.5 then
        g0.Triangle(i, 15)
        g0.TriangleInverted(i, 15)
    end
end

g0.Triangle(-28, 16)
g0.Triangle(-24, 16)
g0.Triangle(-20, 16)
g0.Triangle(-19, 16)
g0.TriangleInverted(-19, 16)
g0.TriangleInverted(-18, 16)
for i = -14, -8 do
    if i ~= -13 then
        g0.Triangle(i, 16)
        g0.TriangleInverted(i, 16)
    end
end

g0.Triangle(-27.5, 17)
g0.Triangle(-24.5, 17)
g0.Triangle(-19.5, 17)
for i = -26.5, -24.5 do
    g0.TriangleInverted(i, 17)
end
for i = -18.5, -8.5 do
    if i ~= -13.5 then
        g0.Triangle(i, 17)
    end
    if i ~= -12.5 then
        g0.TriangleInverted(i, 17)
    end
end

for i = -19, -9 do
    if i ~= -13 then
        g0.Triangle(i, 18)
    end
    if i ~= -19 and i ~= -12 then
        g0.TriangleInverted(i, 18)
    end
end

for i = -18.5, -9.5 do
    if i ~= -12.5 then
        g0.Triangle(i, 19)
    end
    if i ~= -18.5 and i ~= -11.5 then
        g0.TriangleInverted(i, 19)
    end
end

for i = -18, -10 do
    if i ~= -12 then
        g0.Triangle(i, 20)
    end
    if i ~= -18 and i ~= -11 then
        g0.TriangleInverted(i, 20)
    end
end

for i = -15.5, -10.5 do
    if i ~= -11.5 then
        g0.Triangle(i, 21)
    end
    if i ~= -15.5 and i ~= -10.5 then
        g0.TriangleInverted(i, 21)
    end
end

for i = -15, -11 do
    if i ~= -11 then
        g0.Triangle(i, 22)
    end
    if i ~= -15 then
        g0.TriangleInverted(i, 22)
    end
end

---------------------------------------------------------------
---------------------- Grass 1 (Island 1) ---------------------
---------------------------------------------------------------
for i = -27, -24 do
    if i ~= -24 then
        g1.Triangle(i, 12)
    end
    g1.TriangleInverted(i, 12)
end

for i = -27.5, -23.5 do
    if i ~= -23.5 then
        g1.Triangle(i, 13)
    end
    g1.TriangleInverted(i, 13)
end

for i = -28, -23 do
    if i ~= -23 then
        g1.Triangle(i, 14)
    end
    g1.TriangleInverted(i, 14)
end

for i = -28.5, -23.5 do
    g1.Triangle(i, 15)
    if i ~= -28.5 then
        g1.TriangleInverted(i, 15)
    end
end

for i = -28, -24 do
    g1.Triangle(i, 16)
    if i ~= -28 then
        g1.TriangleInverted(i, 16)
    end
end

for i = -27.5, -24.5 do
    g1.Triangle(i, 17)
    if i ~= -27.5 then
        g1.TriangleInverted(i, 17)
    end
end

g1.TriangleInverted(-18.5, 19)

g1.Triangle(-19, 20)
g1.TriangleInverted(-19, 20)
g1.TriangleInverted(-18, 20)

for i = -19.5, -15.5 do
    if i ~= -15.5 then
        g1.Triangle(i, 21)
    end
    g1.TriangleInverted(i, 21)
end

for i = -20, -15 do
    if i ~= -15 then
        g1.Triangle(i, 22)
    end
    if i ~= -20 then
        g1.TriangleInverted(i, 22)
    end
end

for i = -19.5, -15.5 do
    g1.Triangle(i, 23)
    if i ~= -19.5 then
        g1.TriangleInverted(i, 23)
    end
end

for i = -19, -16 do
    g1.Triangle(i, 24)
    if i ~= -19 then
        g1.TriangleInverted(i, 24)
    end
end

---------------------------------------------------------------
---------------------- Grass 0 (Island 2) ---------------------
---------------------------------------------------------------
for i = 7, 12 do
    if i ~= 12 then
        g0.Triangle(i, 18)
    end
    g0.TriangleInverted(i, 18)
end

for i = 6.5, 20.5 do
    g0.Triangle(i, 19)
    g0.TriangleInverted(i, 19)
end

for i = 6, 20 do
    g0.Triangle(i, 20)
    g0.TriangleInverted(i, 20)
end

for i = 5.5, 10.5 do
    g0.Triangle(i, 21)
    g0.TriangleInverted(i, 21)
end

for i = 5, 10 do
    g0.Triangle(i, 22)
    g0.TriangleInverted(i, 22)
end

---------------------------------------------------------------
---------------------- Grass 1 (Island 2) ---------------------
---------------------------------------------------------------
for i = 21, 22 do
    g1.Triangle(i + 0.5, 19)
    g1.TriangleInverted(i + 0.5, 19)
    g1.Triangle(i, 20)
    g1.TriangleInverted(i, 20)
end

for i = 11.5, 20.5 do
    g1.Triangle(i, 21)
    g1.TriangleInverted(i, 21)
end

for i = 11, 19 do
    g1.Triangle(i, 22)
    g1.TriangleInverted(i, 22)
end

for i = 3.5, 18.5 do
    g1.Triangle(i, 23)
    if i ~= 3.5 then
        g1.TriangleInverted(i, 23)
    end
end

for i = 4, 18 do
    g1.Triangle(i, 24)
    if i ~= 4 then
        g1.TriangleInverted(i, 24)
    end
end

for i = 4.5, 17.5 do
    g1.Triangle(i, 25)
    if i ~= 4.5 then
        g1.TriangleInverted(i, 25)
    end
end

---------------------------------------------------------------
---------------------- Grass 2 (Island 2) ---------------------
---------------------------------------------------------------
for i = 22, 25 do
    for j = 31 - i / 2, 32 - i / 2 do
        g2.Triangle(j, i)
        g2.TriangleInverted(j, i)
    end
end

for i = 19, 23 do
    for j = 32 - i / 2, 42 - i / 2 do
        g2.Triangle(j, i)
        g2.TriangleInverted(j, i)
    end
end




for i = 4, 9 do
    g2.Triangle(i, 24)
    if i ~= 4 then
        g2.TriangleInverted(i, 24)
    end
end

for i = 4.5, 8.5 do
    g2.Triangle(i, 25)
    if i ~= 4.5 then
        g2.TriangleInverted(i, 25)
    end
end

for i = 5, 19 do
    g2.Triangle(i, 26)
    if i ~= 5 then
        g2.TriangleInverted(i, 26)
    end
end

---------------------------------------------------------------
---------------------- Lake 0 (Island 2) ----------------------
---------------------------------------------------------------
for i = 14.5, 16.5 do
    l0.Triangle(i, 19)
    if i ~= 14.5 then
        l0.TriangleInverted(i, 19)
    end
end

for i = 15, 16 do
    l0.Triangle(i, 20)
    if i ~= 15 then
        l0.TriangleInverted(i, 20)
    end
end

---------------------------------------------------------------
---------------------- Lake 1 (Island 2) ----------------------
---------------------------------------------------------------
l1.Triangle(15.5, 21)
l1.TriangleInverted(16.5, 21)

for i = 13, 14 do
    if i ~= 14 then
        l1.Triangle(i, 22)
    end
    l1.TriangleInverted(i, 22)
end
l1.Triangle(16, 22)
l1.TriangleInverted(17, 22)

for i = 10.5, 14.5 do
    if i ~= 14.5 then
        l1.Triangle(i, 23)
    end
    l1.TriangleInverted(i, 23)
end
l1.Triangle(16.5, 23)
l1.TriangleInverted(16.5, 23)

for i = 4, 16 do
    l1.Triangle(i, 24)
    if i ~= 4 then
        l1.TriangleInverted(i, 24)
    end
end

for i = 9.5, 14.5 do
    l1.Triangle(i, 25)
    if i ~= 4.5 then
        l1.TriangleInverted(i, 25)
    end
end


---------------------------------------------------------------
--------------------------- Bridges ---------------------------
---------------------------------------------------------------
for i = -6, -3 do
    b0.Triangle(-i / 2 + 4, i)
    b0.TriangleInverted(-i / 2 + 4, i)
end

for i = 1, 5 do
    b0.Triangle(i, -2)
    b0.TriangleInverted(i, -2)
end

for i = -1, 1 do
    b0.Triangle(i / -2, i)
    b0.TriangleInverted(i / -2, i)
end

for i = 2, 6 do
    b0.Triangle(i / 2 - 2, i)
    b0.TriangleInverted(i / 2 - 1, i)
end

for i = 7, 10 do
    b0.Triangle(-i / 2 + 5, i)
    b0.TriangleInverted(-i / 2 + 5, i)
end

for i = -10.5, -0.5 do
    b0.Triangle(i, 11)
    b0.TriangleInverted(i, 11)
end

for i = 12, 16 do
    b0.Triangle(-i / 2 - 5, i)
    b0.TriangleInverted(-i / 2 - 5, i)
end

for i = 17, 21 do
    b0.Triangle(i / 2 - 22, i)
    b0.TriangleInverted(i / 2 - 21, i)
end

for i = -11, 4 do
    b0.Triangle(i, 22)
    if i ~= -11 then
        b0.TriangleInverted(i, 22)
    end
end

for i = 17, 21 do
    b0.Triangle(-i / 2 + 15, i)
    b0.TriangleInverted(-i / 2 + 15, i)
end

for i = 7.5, 12.5 do
    if i ~= 12.5 then
        b0.Triangle(i, 17)
    end
    b0.TriangleInverted(i, 17)
end

for i = 12, 27 do
    b0.Triangle(i, 18)
    if i ~= 12 then
        b0.TriangleInverted(i, 18)
    end
end

---------------------------------------------------------------
------------------------- Waterfall 0 -------------------------
---------------------------------------------------------------
for i = 14.5, 17.5 do
    if i ~= 17.5 then
        w0.Triangle(i, 17)
    end
    w0.TriangleInverted(i, 17)
end

---------------------------------------------------------------
---------------------- Waterfall effect 0 ---------------------
---------------------------------------------------------------
for i = 13.5, 18.5 do
    if i ~= 18.5 then
        we0.Triangle(i, 15)
    end
    we0.TriangleInverted(i, 15)
end

for i = 13, 19 do
    if i ~= 19 then
        we0.Triangle(i, 16)
    end
    we0.TriangleInverted(i, 16)
end

for i = 12.5, 19.5 do
    if i ~= 19.5 then
        we0.Triangle(i, 17)
    end
    we0.TriangleInverted(i, 17)
end

for i = 12, 19 do
    we0.Triangle(i, 18)
    if i ~= 12 then
        we0.TriangleInverted(i, 18)
    end
end

for i = 12.5, 18.5 do
    we0.Triangle(i, 19)
    if i ~= 12.5 then
        we0.TriangleInverted(i, 19)
    end
end


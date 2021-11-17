function CheckGravel() 
    for i=6,1,-1
    do
        if turtle.detect() then
           turtle.dig()
        end
    end
end

function dig()
    for i=200,1,-1
    do
        turtle.digDown()
        turtle.dig()
        CheckGravel()
        turtle.digUp()
        turtle.turnRight()
        turtle.dig()
        CheckGravel()
        turtle.forward()
        turtle.digUp()
        turtle.digDown()
        turtle.turnLeft() turtle.turnLeft()
        turtle.forward()
        turtle.dig()
        CheckGravel()
        turtle.forward()
        turtle.digUp()
        turtle.digDown()
        turtle.turnRight() turtle.turnRight()
        turtle.forward()
        turtle.turnLeft()
        turtle.forward()
    end
end

function CheckFuel()
    fuel = turtle.getFuelLevel()
    print("Checking fuel...")
    if fuel < 1000 then
        print("Fuel too low...")
        print("Turtle refueling...")
        turtle.refuel()
    end
    fuel = turtle.getFuelLevel()
    if fuel < 1000 then
        print("Fuel too low...")
        print("Turtle need more fuel")
    end
    print("Fuel level at: ") 
    print(fuel)
end

CheckFuel()
dig() // 3x3

function stairsdown()
    for i=55,1,-1
    do
        turtle.digDown()
        turtle.down()
        turtle.dig()
        CheckGravel()
        turtle.forward()
        turtle.dig()
		turtle.forward()
		turtle.dig()
		turtle.backward()
    end
end

stairsdown();

function stairsup()
    for i=60,1,-1
    do
        turtle.dig()
		CheckGravel()
        turtle.forward()
        turtle.digUp()
        turtle.up()
        turtle.digUp()
        turtle.up()
        turtle.digUp()
        turtle.down()
    end
end

stairsup()


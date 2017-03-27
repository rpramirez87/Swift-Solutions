enum Direction {
    case east
    case south
    case west
    case north
}

func lineUp(commands: String) -> Int {
    var a = Direction.south, b = Direction.south, count = 0
    for char in commands.characters {
        let char = String(char)
        switch char {
        case "L":
            a = turnLeft(from: a)
            b = turnRight(from: b)
        case "R":
            a = turnRight(from: a)
            b = turnLeft(from: b)
        case "A":
            a = turnAround(from: a)
            b = turnAround(from: b)
        default:
            break
        }
        if a == b {
            count += 1
        }
    }
    return count
}

func turnRight(from direction: Direction) -> Direction {
    switch direction {
    case .east:
        return .south
    case .south:
        return .west
    case .west:
        return .north
    case .north:
        return .east
    }
}

func turnLeft(from direction: Direction) -> Direction {
    switch direction {
    case .east:
        return .north
    case .south:
        return .east
    case .west:
        return .south
    case .north:
        return .west
    }
}

func turnAround(from direction: Direction) -> Direction {
    switch direction {
    case .east:
        return .west
    case .south:
        return .north
    case .west:
        return .east
    case .north:
        return .south
    }
}

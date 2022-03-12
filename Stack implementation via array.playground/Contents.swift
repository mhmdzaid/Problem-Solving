import UIKit

class Stack {
    private var array: [Int]
    private var top = -1
    init(_ size: Int) {
        array = [Int].init(repeating: 0, count: size)
    }
    
    func push(_ value: Int) {
        top += 1
        if top == array.count {
            print("Stack is full")
            top -= 1
            return
        }
        array[top] = value
    }
    
    func pop() -> Int? {
        if top == -1 {
            print("Stack is empty")
            return nil
        }
        let value = array[top]
        top -= 1
        return value
    }
    
    func peek() {
        if top == -1 {
            print("Stack is empty")
            return
        }
        print(array[top])
    }
    
    func clearStack() {
        array = [Int].init(repeating: 0, count: array.count)
        top = -1
    }
    
    var isEmpty: Bool {
        return top == -1
    }
}

let stack = Stack(5)

stack.push(1)
stack.push(30)
stack.push(50)
stack.peek()
stack.push(40)
stack.push(90)
stack.push(70)
stack.pop()
stack.isEmpty
stack.clearStack()
stack.isEmpty
stack.peek()

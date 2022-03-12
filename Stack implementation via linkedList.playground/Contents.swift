import UIKit
class Node {
    var next: Node?
    var value: Int
    init(_ value: Int,_ next: Node? = nil) {
        self.value = value
        self.next = next
    }
}
struct List {
    var head: Node?
    var tail: Node?
   
    init(_ value: Int){
        head = Node(value)
        tail = head
    }
    
    mutating func insert(_ value: Int) {
        guard head != nil else {
            head = Node(value)
            tail = head
            return
        }
        
        var iterator = head
        while(iterator?.next != nil ) {
            iterator = iterator?.next
        }
        iterator?.next = Node(value)
        tail = iterator?.next
    }
    
    func search(_ value: Int) -> Node? {
        var iterator: Node? = head
        while(iterator != nil) {
            if iterator?.value ?? 0 == value {
                return iterator
            }
            iterator = iterator?.next
        }
        print("item not found!")
        return nil
    }
    
    mutating func delete(_ value: Int) {
        if head?.value == value {
            let temp = head?.next
            head = nil
            head = temp
            print("item deleted successfully")
            return
        }
        var iterator = head
        while(iterator != nil) {
            if iterator?.next?.value ?? 0 == value {
                let temp = iterator?.next?.next
                iterator?.next = nil
                iterator?.next = temp
                print("item deleted successfully")
                return
            }
            iterator = iterator?.next
        }
        print("item not found to delete")
    }
    
    mutating func removeLast() -> Int? {
        if tail === head {
            head = nil
            tail = nil
            return nil
        }
        
        let valueOfLastNode = tail?.value ?? 0
        var iterator = head
        while(iterator?.next?.next != nil) {
            iterator = iterator?.next
        }
        iterator?.next = nil
        tail = iterator
        return valueOfLastNode
    }
    
    func traverse() {
        if head == nil {
            print("List is Empty")
            return
        }
        var iterator = head
        print(iterator?.value ?? 0)
        while(iterator?.next != nil) {
            iterator = iterator?.next
            print(iterator?.value ?? 0)
        }
    }
}


class Stack {
    private var list: List
    
    init() {
        list = List(-1)
    }
    
    func push(_ value: Int) {
        if list.head?.value == -1 {
            list.head?.value = value
            return
        }
        list.insert(value)
    }
    
    func pop() -> Int? {
        if list.head?.value == -1 {
            return nil
        }
        return list.removeLast()
    }
}

let stack = Stack()

stack.push(5)
stack.push(10)
stack.push(20)

stack.pop()
stack.pop()
stack.pop()

var list = List.init(5)
list.insert(10)
list.insert(20)
list.insert(90)
list.insert(80)
list.insert(108)

list.traverse()


list.removeLast()
list.removeLast()
list.removeLast()
list.removeLast()
list.removeLast()
list.removeLast()
list.insert(39)
list.traverse()

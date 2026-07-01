import Foundation

// Asynchronous vs Synchronous

// exmaple of Asynchronous programming

let queue = DispatchQueue(label: "com.abc")

print("1. Apple")

queue.async{
    print("2. banana > this is handled by background thread")
}

print("3. mango")

// example of Synchronous programming

let queue = DispatchQueue(label: "com.abc")

print("1. Apple")

queue.sync{
    print("2. banana > this is handled by background thread")
}

print("3. mango")

// example of serial queue 

let serialQ = DispatchQueue(label:".com.nayan")

print("starting here")

serialQ.async {
    for i in 1...3{
        print("🔴 Task 1: Step \(i)")
    } 
}

serialQ.async {
    for i in 1...3{
        print("🔵 Task 2: Step \(i)")
    } 
}

print("end here")


// example of concurrent queue

import Foundation

let concurrentQ = DispatchQueue(
    label: "com.nayan",
    attributes: .concurrent
)

print("Start")

concurrentQ.async {
    for i in 1...5 {
        print("🔴 \(i)")
        Thread.sleep(forTimeInterval: 0.2)
    }
}

concurrentQ.async {
    for i in 1...5 {
        print("🔵 \(i)")
        Thread.sleep(forTimeInterval: 0.2)
    }
}

print("End")

sleep(2)  // added to show the output of concurrent queue before the program exits

print("end here")


// working of Main and Global queue provided by Apple System

import Foundation
import UIKit 

func loadProfileDashboard() {
    print("1. User clicked 'Refresh Profile'. Show a loading spinner.")
    
    DispatchQueue.global(qos: .userInitiated).async {
        
        print("2. Downloading user data from the internet on a background thread...")
      
        Thread.sleep(forTimeInterval: 3.0) 
        let downloadedName = "Nayan Awasthi"
        print("3. Data downloaded successfully!")
        
        
        DispatchQueue.main.async {
            print("4. Updating the UI text label on the Main Thread.")
        }
    }
    
    print("5. The main thread is free! The UI stays interactive while downloading.")
}

loadProfileDashboard()

// Disadvantages of Multithreading (Race Conditions and Deadlocks)

print("1. This is printed.")

DispatchQueue.main.sync {
    
    print("2. This will NEVER be printed.")
}

print("3. This will never be reached.")

// for Race Conditions

import Foundation

class BankAccount{
    
    var balance = 100;
    var Cqueue = DispatchQueue(
    label:".com.bank.nayan", 
    attributes: .concurrent
    )
    
    func withdraw(amount: Int){
        Cqueue.async{
            if self.balance >= amount{
            
            Thread.sleep(forTimeInterval:0.1)
            
                self.balance -= amount
                print("The remaining balance is \(self.balance) after the deduction of \(amount)")
            }
            else {
                print("Insuffecient balance")
            }
        }
    }
}

var bank = BankAccount()

bank.withdraw(amount: 80)
bank.withdraw(amount: 80)

sleep(1)


// to avoid Race Conditions

import Foundation

class BankAccount{
    
    var balance = 100;
    var Cqueue = DispatchQueue(
    label:".com.bank.nayan", 
    attributes: .concurrent
    )
    
    func withdraw(amount: Int){
        Cqueue.async{
            if self.balance >= amount{
            
            Thread.sleep(forTimeInterval:0.1)
            
                self.balance -= amount
                print("The remaining balance is \(self.balance) after the deduction of \(amount)")
            }
            else {
                print("Insuffecient balance")
            }
        }
    }
}

var bank = BankAccount()

bank.withdraw(amount: 80)

sleep(1)  // we can delay the process to avoid Race Conditions

bank.withdraw(amount: 80)




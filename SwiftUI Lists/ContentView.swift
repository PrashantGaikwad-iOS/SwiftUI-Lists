//
//  ContentView.swift
//  SwiftUI Lists
//
//  Created by Saif on 18/06/19.
//  Copyright © 2019 LeftRightMind. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var employees = [
        Employee(id: 0, name: "Prashant", designation: "iOS dev", color: .red),
        Employee(id: 1, name: "Swapnil", designation: "Android dev", color: .green),
        Employee(id: 2, name: "Aman", designation: "iOS dev", color: .red),
        Employee(id: 3, name: "Bhagyawant", designation: "iOS dev", color: .green),
        Employee(id: 4, name: "Vipin", designation: "Web dev", color: .blue),
        Employee(id: 5, name: "Apporva", designation: "Designer", color: .orange),
        Employee(id: 6, name: "Ganesh", designation: "QA", color: .purple),
        Employee(id: 7, name: "Sharad", designation: "DM", color: .red)
    ]
    
    var body: some View {
        NavigationView {
            List(employees) { emp in
                HStack {
                    Text(emp.name)
                    Text(emp.designation).foregroundColor(emp.color)
                }
            }
            .navigationBarTitle(Text("Employees"))
            .navigationBarItems(trailing:
                Button(action: addEmployee, label: {Text("Add")}))
        }
    }
    
    func addEmployee() {
        if let emp = employees.randomElement() {
            employees.append(emp)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

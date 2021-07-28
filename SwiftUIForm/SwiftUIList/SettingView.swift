//
//  SettingView.swift
//  SwiftUIList
//
//  Created by 张剑 on 2021/7/28.
//  Copyright © 2021 AppCoda. All rights reserved.
//

import SwiftUI

struct SettingView: View {
  
  private var displayOrders = ["Alphabetical", "Show Favorite First", "Show Check-in Frist"]
  
  @State private var selectedOrder = 0
  @State private var showCheckInOnly = false
  @State private var maxPriceLevel = 5 {
    didSet {
      if maxPriceLevel > 5 {
        maxPriceLevel = 5
      }
      
      if maxPriceLevel < 1 {
        maxPriceLevel = 1
      }
    }
  }
  
  @Environment(\.presentationMode) var presentationMode
  
  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("SORT PREFERENCE")) {
          Picker(selection: $selectedOrder, label: Text("Display order")) {
            ForEach(0 ..< displayOrders.count, id: \.self) {
              Text(self.displayOrders[$0])
            }
          }
        }
        
        Section(header: Text("FILTER PREFERENCE")) {
          Toggle(isOn: $showCheckInOnly) {
            Text("Show Check-in Only")
          }
          
          Stepper(
            onIncrement: {
              self.maxPriceLevel += 1
            },
            onDecrement: {
              self.maxPriceLevel -= 1
            }) {
            Text("Show \(String(repeating: "$", count: maxPriceLevel)) or below")
          }
        }
      }
      .navigationBarTitle("Settings")
      .navigationBarItems(
        leading: Button(action: {
          self.presentationMode.wrappedValue.dismiss()
        }) {
          Text("Cancel")
            .foregroundColor(.black)
        },
        trailing: Button(action: {
          self.presentationMode.wrappedValue.dismiss()
        }) {
          Text("Save")
            .foregroundColor(.black)
        }
      )
    }
  }
}

struct SettingView_Previews: PreviewProvider {
  static var previews: some View {
    SettingView()
  }
}

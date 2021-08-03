//
//  ContentView.swift
//  SwiftUIKivaLoan
//
//  Created by 张剑 on 2021/8/3.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var loanStore = LoanStore()
  
  @State private var filterEnabled = true
  @State private var maximumLoanAmount = 10000.0
  
  var body: some View {
    NavigationView {
      
      //      if self.filterEnabled {
      //        LoanFilterView(amount: self.$maximumLoanAmount)
      //          .transition(.opacity)
      //      }
      
      List(loanStore.loans) { loan in
        
        LoanCellView(loan: loan)
          .padding(.vertical, 5)
      }
      
      .navigationBarTitle("Kiva Loan")
      .navigationBarItems(trailing:
                            Button(action: {
                              withAnimation(.linear) {
                                self.filterEnabled.toggle()
                                self.loanStore.filterLoans(maxAmount: Int(self.maximumLoanAmount))
                              }
                              
                            }) {
                              Text("Filter")
                                .font(.subheadline)
                                .foregroundColor(.primary)
                            }
      )
    }
    .onAppear() {
      self.loanStore.fetchLatestLoans()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

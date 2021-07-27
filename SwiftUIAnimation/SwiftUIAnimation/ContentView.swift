//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by 张剑 on 2021/7/26.
//

import SwiftUI

struct ContentView: View {
  
  @State private var isSubmit = false
  @State private var rotationCircle = false
  @State private var isDone = false
  
  var body: some View {
    VStack {
      ZStack {
        RoundedRectangle(cornerRadius: 28)
          .foregroundColor(isDone ? .red : .green)
          .frame(width: isSubmit ? 300 : 200, height: 56)
          .animation(.easeInOut(duration: 0.1))
        
        if !isSubmit {
          Text("Submit")
            .font(.system(.title, design: .rounded))
            .bold()
            .foregroundColor(.white)
        }
        
        if isSubmit && !isDone {
          HStack {
            Circle()
              .trim(from: 0.0, to: 0.8)
              .stroke(Color.white, lineWidth: 4)
              .frame(width: 26, height: 26)
              .rotationEffect(Angle(degrees: self.rotationCircle ? 360 : 0))
              .animation(.linear.repeatForever(autoreverses: false))
            
            Text("Progressing")
              .font(.system(.title, design: .rounded))
              .bold()
              .foregroundColor(.white)
          }
          .onAppear() {
            self.rotationCircle.toggle()
            self.startProcessing()
          }
        }
        
        if isDone {
          Text("Done")
            .font(.system(.title, design: .rounded))
            .bold()
            .foregroundColor(.white)
            .onAppear() {
              self.doneProcessing()
            }
        }
        
        
      }
    }
    .onTapGesture {
      if !self.rotationCircle && !self.isDone {
        self.isSubmit.toggle()
      }
    }
  }
  
  private func startProcessing() {
    // 使用DispatchQueue.main.asyncAfter 模擬一個處理程序
    // 在實際的專案中，你需要在這邊執行一項任務
    // 任務完成之後，將完成狀態設定為 true
    DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
      self.isDone.toggle()
      self.rotationCircle.toggle()
    }
  }
  
  private func doneProcessing() {
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
      self.isSubmit = false
      self.rotationCircle = false
      self.isDone = false
    }
  }
  
}



struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

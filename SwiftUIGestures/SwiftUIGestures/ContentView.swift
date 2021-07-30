//
//  ContentView.swift
//  SwiftUIGestures
//
//  Created by 张剑 on 2021/7/30.
//

import SwiftUI

struct ContentView: View {
  
  @GestureState private var dragState = DragState.inactive
  
  @GestureState private var isPressed = false
  
  @GestureState private var dragOffset = CGSize.zero
  @State private var position = CGSize.zero
  
  var body: some View {
    Image(systemName: "star.circle.fill")
      .font(.system(size: 100))
      .opacity(dragState.isPressing ? 0.5 : 1.0)
      .offset(x: position.width + dragOffset.width, y: position.height + dragOffset.height)
      .animation(.easeInOut)
      .foregroundColor(.green)
      .gesture(
        
        LongPressGesture(minimumDuration: 1.0)
          .updating($isPressed) { (currentState, state, transaction) in
            state = currentState
          }
          .sequenced(before: DragGesture())
          .updating($dragState) { (value, state, transaction) in
            switch value {
            case .first(true):
              state = .pressing
            case .second(true, let drag):
              state = .dragging(translation: drag?.translation ?? .zero)
            default:
              break
            }
          }
          .onEnded { (value) in
            guard case .second(true, let drag?) = value else {
              return
            }
            self.position.height += drag.translation.height
            self.position.width += drag.translation.width
          }
      )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}



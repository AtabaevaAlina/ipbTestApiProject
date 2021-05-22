//
//  ContentView.swift
//  ipbTestApiProject
//
//  Created by Alina on 19/5/21.
//

import SwiftUI
import BonusBarView

struct ContentView: View {
   @StateObject var model = ViewModel()
    
    var body: some View {
        BonusBarView(info: $model.info)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

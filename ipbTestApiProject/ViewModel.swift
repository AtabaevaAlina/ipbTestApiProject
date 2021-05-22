//
//  ViewModel.swift
//  ipbTestApiProject
//
//  Created by Alina on 19/5/21.
//

import Foundation
import Combine
import APIiProBonus

final class ViewModel: ObservableObject {
    @Published var info:GeneralInfo = GeneralInfo()
    
    init() {
        APIiProBonus.getClientInfo(ClientID: ConstantData.ClientID, DeviceID: ConstantData.DeviceID, completion: { data in
            self.info = data
        })
    }
}

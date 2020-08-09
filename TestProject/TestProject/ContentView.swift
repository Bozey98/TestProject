//
//  ContentView.swift
//  KekMemTestProj
//
//  Created by Денис Мусатов on 09.08.2020.
//  Copyright © 2020 Денис Мусатов. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var users: Users
    
    var body: some View {
        NavigationView {
            List(users.users, id: \.name) { user in
                NavigationLink(destination: ChangeName(user: user)) {
                    Text(user.name)
                }
            }
            
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

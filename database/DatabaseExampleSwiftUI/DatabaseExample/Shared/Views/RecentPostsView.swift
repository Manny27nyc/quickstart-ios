//
//  Copyright (c) 2021 Google Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
import SwiftUI
import Firebase

struct RecentPostsView: View {
  var body: some View {
    NavigationView {
      VStack(spacing: 25) {
        Text("Logged in as \(Auth.auth().currentUser?.email ?? "")")
        Button(action: user.logout, label: {
          Text("Logout")
            .fontWeight(.bold)
        })
      }
      .navigationBarTitle("Recents")
    }
  }
}

struct RecentPostsView_Previews: PreviewProvider {
  static var previews: some View {
    RecentPostsView()
  }
}

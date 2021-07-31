//
//  ContentView.swift
//  swiftUIVk
//
//  Created by Евгений on 31.07.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabBarView()
    }
}

struct TabBarView: View {
    var body: some View {
        TabView {
            FeedView()
             .tabItem {
                Image(systemName: "house.fill")
                Text("Feed")
             }
            ProfileView()
             .tabItem {
                Image(systemName: "person.fill")
                Text("Profile")
             }
            PlayerView()
             .tabItem {
                Image(systemName: "music.note")
                Text("Player")
             }
            VideoView()
             .tabItem {
                Image(systemName: "play.rectangle.fill")
                Text("Video")
             }
            RecorderView()
             .tabItem {
                Image(systemName: "mic.fill")
                Text("Profile")
             }
        }
        
    }
}

struct FeedView: View {
    var body: some View {
        Color.red
    }
}

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 120) {
            ImageView()
            VStack(spacing: 20) {
                TextFieldView()
                ButtonView()
            }
        }
    }
}

struct PlayerView: View {
    var body: some View {
        Color.green
    }
}

struct VideoView: View {
    var body: some View {
        Color.orange
    }
}

struct RecorderView: View {
    var body: some View {
        Color.blue
    }
}

struct ImageView: View {
    var body: some View {
        Image("logo")
            .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100, alignment: .center)
    }
}

struct TextFieldView: View {
    
    @State var login = ""
    @State var password = ""
    
    var body: some View {
        VStack(spacing: 0) {
            TextField("Email or login", text: $login)
                .modifier(TextFieldModifier())
            TextField("Password", text: $password)
                .modifier(TextFieldModifier())
        }
        .padding(.horizontal, 16)
    }
}

struct TextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color.gray, lineWidth: 1)
                ).padding(0)
    }
}

struct ButtonView: View {
    var body: some View {
        Button(action: {
            print("button tapped")
        })
        {
            Text("Log in")
                .frame(width: 340 , height: 50, alignment: .center)
        }
        .background(Color.blue)
        .foregroundColor(Color.white)
        .cornerRadius(10)
        .buttonStyle(PlainButtonStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

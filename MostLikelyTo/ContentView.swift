//
//  ContentView.swift
//  Project: MostLikelyTo
//  Description: This app displays prompts for a "Most Likely To" game
//  Author: Tiffany Nguyen
//  Date: December 8, 2022
//

import SwiftUI

struct ContentView: View {
    static var promptList = ["Give their child an unusual name",
                      "Join a cult",
                      "Be a spy",
                      "Fall in love at first sight",
                      "Fall down the aisle while getting married",
                      "Talk their way out of a ticket",
                      "Run away and join a circus",
                      "Drunk call an ex",
                      "Cry over a movie",
                      "Become a dictator",
                      "Post a selfie during a natural disaster",
                      "Lead a historic event",
                      "Confidently sing a song with the wrong note",
                      "Fake their death",
                      "End up alone",
                      "Be late to their own party",
                      "Have no one show up to their funeral",
                      "Have the worst impact on humanity",
                      "Become a billionaire",
                      "Call in sick to travel to a concert",
                      "Win a nobel peace prize",
                      "Talk in their sleep",
                      "Hold onto a grudge from a dream",
                      "Sell their soul for the smallest amount of money",
                      "Deny climate change",
                      "Get a computer virus",
                      "Forget to turn off their camera/mic in a zoom call",
                      "Laugh during a serious moment",
                      "Get along better with their friends’ parents than their friends do",
                      "End up with their celebrity crush",
                      "Get nightmares from a horror movie",
                      "Break their New Year’s resolution first",
                      "Hold onto a grudge from a game",
                      "Memorize every song on an album",
                      "Break someone’s heart",
                      "Actually try using a pick-up line in real life and have it work",
                      "Break a useless world record",
                      "Forget the name of an ex",
                      "Get away with murder",
                      "Get 100% on an exam despite not studying",
                      "End a relationship over text",
                      "Get lost in their own home",
                      "Kiss a stranger to win a bet",
                      "Come up with a good comeback an hour after the argument",
                      "Spend an hour getting ready for an event",
                      "Accidentally commit a crime while traveling abroad",
                      "Win the lottery and then immediately lose all their money",
                      "Get famous and forget about all their friends",
                      "Use AI to complete an assignment",
                      "Become president",
                      "Survive in a zombie apocalypse",
                      "Get a movie made about their life",
                      "Be the first person who dies in a horror movie",
                      "Become a comedian",
                      "Secretly have a stash of candy",
                      "Spend hours falling down a conspiracy theory rabbit hole",
                      "Marry someone they just met",
                      "Become TikTok famous",
                      "Get wrongly accused of a crime",
                      "Be an IRL superhero",
                      "Memorize an entire movie script",
                      "Get emotionally attached to a fictional character"]
    @State var currentPrompt = "Give their child an unusual name"
    
    var colorList = [Color.darkRed, Color.darkOrange, Color.darkGold, Color.darkGreen, Color.darkTeal, Color.darkBlue, Color.darkIndigo, Color.darkPurple, Color.darkMagenta, Color.darkPink]
    @State var currentColor = Color.darkRed
    
    var body: some View {
        VStack {
            Text("Who Here is Most Likely To...")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.white)

            Button(action:{
                currentPrompt = ContentView.promptList[Int.random(in: 0...(ContentView.promptList.count-1))]
                currentColor = colorList[Int.random(in: 0...(colorList.count-1))]
            }, label: {
                Text(currentPrompt)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.all)
                    .foregroundColor(currentColor)
                    .cornerRadius(10)
                    .multilineTextAlignment(.center)
                    .frame(width: 250)
                    .frame(height: 250)
            })
                .background(Color.white)
                .cornerRadius(10)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(currentColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color{
    static let darkRed = Color("Dark Red")
    static let darkOrange = Color("Dark Orange")
    static let darkGold = Color("Dark Gold")
    static let darkGreen = Color("Dark Green")
    static let darkTeal = Color("Dark Teal")
    static let darkBlue = Color("Dark Blue")
    static let darkIndigo = Color("Dark Indigo")
    static let darkPurple = Color("Dark Purple")
    static let darkMagenta = Color("Dark Magenta")
    static let darkPink = Color("Dark Pink")
}

//
//  ContentView.swift
//  war card game
//
//  Created by Vivek Prajapati on 07/09/23.
//
 
import SwiftUI

struct ContentView: View {
    //variable for cards
    @State var playerCard = "card3"
    @State var cpuCard = "card6"
    
    //variable for scores
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    // player card
                    Spacer()
                    Image(playerCard)
                    
                    // cpu card
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                //  Deal button
                Button{
                    deal()
                } label:{
                    Image("button")
                    
                }
                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                            
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    
                    VStack{
                        Text("CPU").font(.headline).font(.headline).padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                    Spacer()
                    
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }

    func deal() {
        
        // Randomize player card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String( playerCardValue)
        
        // Randomize CPU card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the score
        if playerCardValue > cpuCardValue {
            
            // Add 1 to player score
            playerScore += 1
            
        } else if cpuCardValue > playerCardValue{
            
            // Add 1 to cpu score
            cpuScore += 1
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

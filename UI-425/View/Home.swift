//
//  Home.swift
//  UI-425
//
//  Created by nyannyan0328 on 2022/01/18.
//

import SwiftUI

struct Home: View {
    @State var show : Bool = false
    var body: some View {
        NavigationView{
            
            
          
                
                Button {
                    
                    withAnimation {
                        show.toggle()
                    }
                    
                } label: {
                    
                    Image("p1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                        .shadow(color: .red.opacity(0.3), radius: 9, x: 0, y: 0)
                        
                    
                        
                }
                .buttonStyle(ButtonModifier())
                .navigationTitle("Pop")
                .popUpExtencions(horizonPadding: 40, isShow: $show) {
                    
                    
                    List{
                        
                        
                        ForEach(tasks){task in
                            
                            
                            NavigationLink {
                                
                                Text(task.taskDescription)
                                
                            } label: {
                                
                                
                                Text(task.taskTitle)
                                    .navigationTitle("TASKTITLW")
                                
                                
                            }

                            
                            
                        }
                    }
                    .toolbar {
                        
                        
                        ToolbarItem(placement: .navigationBarTrailing) {
                            
                            
                            Button {
                                
                            } label: {
                                
                                Image(systemName: "pencil")
                            }

                        }
                        
                        ToolbarItem(placement: .navigationBarLeading) {
                            
                            
                            Button {
                                
                                withAnimation{
                                    
                                    show.toggle()
                                }
                                
                            } label: {
                                
                                Image(systemName: "minus")
                            }

                        }
                        
                        
                    }
                    
                    
                    
                }
            
          
            }

            
        }
    }


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct ButtonModifier : ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        
        return configuration.label
        
            .scaleEffect(configuration.isPressed ? 1.5 : 1)
        
      
    }
    
}

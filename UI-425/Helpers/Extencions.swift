//
//  Extencions.swift
//  UI-425
//
//  Created by nyannyan0328 on 2022/01/18.
//

import SwiftUI

extension View{
    
    func popUpExtencions<Content : View>(horizonPadding : CGFloat,isShow : Binding<Bool>,@ViewBuilder content : @escaping()->Content)->some View{
        
        return self
            .frame(maxWidth:.infinity,maxHeight: .infinity)
        
            .overlay{
                
                
                if isShow.wrappedValue{
                    
                    GeometryReader{proxy in
                        
                        
                        Color.primary.opacity(0.3)
                       
                            .ignoresSafeArea()
                         
                        let size = proxy.size
                        
                        
                        NavigationView{
                            
                            
                            content()
                            
                            
                            
                        }
                        .frame(width: size.width - horizonPadding, height: size.height / 1.5)
                        .cornerRadius(10)
                       // .padding(20)
                        .frame(maxWidth:.infinity,maxHeight: .infinity)
                        
                        
                        
                    }
                   
                    
                }
                
            }
        
    }
}

//
//  DetailView.swift
//  Pagination
//
//  Created by Abhineet Chaturvedi on 02/06/24.
//

import SwiftUI

struct DetailView: View {
    
    var detail : String?
    
    var body: some View {
        VStack {
            Text(detail!)
            
            Spacer()
        }
    }
}

#Preview {
    DetailView()
}

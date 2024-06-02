//
//  DataRowView.swift
//  Pagination
//
//  Created by Abhineet Chaturvedi on 02/06/24.
//

import SwiftUI

struct DataRowView: View {
    
    var aData: DataModel? = nil
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("ID : ")
                    .foregroundColor(.black)
                Text(String((aData?.id)!))
                    .foregroundColor(.gray)
            }
            
            HStack(alignment: .top) {
                Text("Title : ")
                    .foregroundColor(.black)
                Text(String((aData?.title)!))
                    .foregroundColor(.gray)
            }
  
        }
        
    }
}

#Preview {
    DataRowView()
}

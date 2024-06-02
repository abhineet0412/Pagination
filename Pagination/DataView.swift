//
//  DataView.swift
//  Pagination
//
//  Created by Abhineet Chaturvedi on 02/06/24.
//

import SwiftUI

struct DataView: View {
    @ObservedObject var dataViewModel : DataViewModel = DataViewModel()
    @State var moveToDetail = false
    @State var selectedString = ""
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(dataViewModel.list, id: \.self) { aData in
                        Button {
                            selectedString = aData.body!
                            moveToDetail = true
                        } label: {
                            DataRowView(aData: aData)
                        }
                    }
                    .padding()
                    .border(.gray, width: 0.5)
                    .listRowBackground(Color.clear)
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets(top: 4, leading: 0, bottom: 4, trailing: 0))
                    
                    
                    if dataViewModel.currentPage < dataViewModel.totalPage  {
                        ProgressView()
                        Text("Fetching Data.....")
                            .task {
                                dataViewModel.currentPage += 1
                                
                                do {
                                    try await dataViewModel.fetchData()
                                } catch {
                                    print(error.localizedDescription)
                                }
                            }
                    }
                }
                .listStyle(.insetGrouped)
            }
            
            .navigationDestination(isPresented: $moveToDetail) {
                DetailView(detail: selectedString)
            }
        }
    }
}

#Preview {
    DataView()
}

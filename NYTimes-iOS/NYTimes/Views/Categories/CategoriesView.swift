//
//  CategoriesView.swift
//  NYTimes
//
//  Created by Jeff Lock on 15/08/24.
//  Copyright © 2024 Jeff Lock. All rights reserved.
//

import SwiftUI

struct CategoriesView: View {

    @EnvironmentObject var viewModel: CategoriesViewModel

    var body: some View {
        List {
            Section {
                ForEach(viewModel.categories, id: \.rawValue) { category in
                    Text(category.rawValue)
                }.onMove(perform: viewModel.move)
                    .onDelete(perform: viewModel.delete)
            } header: {
                Text("My Categories")
            }
            
            Section {
                ForEach(viewModel.categoriesUnfollowed, id: \.self) { category in
                    HStack {
                        Text(category.rawValue)
                        Spacer()
                        Button {
                            viewModel.addCategory(category)
                        } label: {
                            Image(systemName: "plus.circle")
                        }

                    }
                }
            } header: {
                Text("Categories")
            }

        }
        .toolbar { EditButton() }
        .navigationBarTitle("Categories", displayMode: .automatic)
    }
}

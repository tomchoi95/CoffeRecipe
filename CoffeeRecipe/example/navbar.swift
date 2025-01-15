import SwiftUI

struct navView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Go to Detail View") {
                    DetailView()
                }
            }
            .navigationTitle("Recipes")  // 상단 네비게이션 바에 표시될 제목
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Edit button tapped")
                    }) {
                        Text("Edit")
                    }
                }
            }
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail Screen")
            .navigationTitle("Detail")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("Settings tapped")
                    }) {
                        Image(systemName: "gear")
                    }
                }
            }
    }
}

#Preview {
    navView()
}

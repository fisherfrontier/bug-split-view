import SwiftUI

struct ColorDetailView: View {
    var selection: Color?

    var body: some View {
        if selection != nil {
            List {
                NavigationLink(value: "circle.fill") {
                    Text("Circle")
                }
                NavigationLink(value: "square.fill") {
                    Text("Square")
                }
                NavigationLink(value: "triangle.fill") {
                    Text("Triangle")
                }
                NavigationLink(value: "diamond.fill") {
                    Text("Diamond")
                }
                NavigationLink(value: "hexagon.fill") {
                    Text("Hexagon")
                }
            }
            .navigationTitle("Shapes")
            
        } else {
            Text("Select a color")
        }
    }
}

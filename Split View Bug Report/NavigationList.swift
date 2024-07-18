import SwiftUI

struct NavigationList: View {
    let isCompact: Bool

    var body: some View {
        list
    }
    
    @ViewBuilder
    var list: some View {
        NavigationLink(value: Color.green) { Text("Green") }
        NavigationLink(value: Color.yellow) { Text("Yellow") }
        NavigationLink(value: Color.orange) { Text("Orange") }
        NavigationLink(value: Color.red) { Text("Red") }
        NavigationLink(value: Color.purple) { Text("Purple") }
        NavigationLink(value: Color.blue) { Text("Blue") }
    }
}

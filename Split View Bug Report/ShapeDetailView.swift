import SwiftUI

struct ShapeDetailView: View {
    let shape: String
    let color: Color?
    @State private var isAnimating = false

    var body: some View {
        Image(systemName: shape)
            .foregroundColor(color)
            .font(.largeTitle)
            .navigationTitle("Color + Shape")
    }
}

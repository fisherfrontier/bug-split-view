import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties

    @State private var regularPath = NavigationPath()
    @State private var compactPath = NavigationPath()
    @State var selection: Color?
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    private var isCompact: Bool { horizontalSizeClass == .compact }
    private let title: String = "Colors"

    // MARK: - View

    var body: some View {
        if isCompact {
            bodyCompact
        } else {
            bodyRegular
        }
    }
    
    private var bodyRegular: some View {
        NavigationSplitView {
            List(selection: $selection) {
                NavigationList(isCompact: isCompact)
            }
            .navigationTitle(title)
        } detail: {
            NavigationStack(path: $regularPath) {
                ColorDetailView(selection: selection)
                    .navigationDestination(for: String.self) { shape in
                        ShapeDetailView(shape: shape, color: selection)
                    }
            }
        }
    }

    private var bodyCompact: some View {
        NavigationStack(path: $compactPath) {
            List {
                NavigationList(isCompact: isCompact)
                    .navigationTitle(title)
                    .navigationBarTitleDisplayMode(.large)
            }
            .navigationDestination(for: Color.self) { color in
                ColorDetailView(selection: color)
            }
            .navigationDestination(for: String.self) { shape in
                ShapeDetailView(shape: shape, color: selection)
            }
        }
    }
}

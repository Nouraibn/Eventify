import SwiftUI

struct SearchableEventsView: View {
    @State var searchText: String = ""
    @State var currrentIndex = 0

    let images: [String] = ["Expo", "NewYear", "Formula"]
    let titles: [String] = ["Expo", "NewYear", "Formula"]

    var filteredEvents: [String] {
        guard !searchText.isEmpty else {
            return titles
        }
        return titles.filter { $0.localizedCaseInsensitiveContains(searchText) }
    }

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack{
                    // Search bar
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(Color.gray)

                        TextField("Search by event name", text: $searchText)
                            .foregroundColor(.black)
                            
                        Button {
                            searchText = ""
                        } label: {
                            Image(systemName: "xmark.circle.fill")
                                .padding()
                                .offset(x: 10)
                                .foregroundColor(.gray)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }.frame(width: 320, height: 20)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .shadow(color: .gray.opacity(0.15), radius: 10)
                    )
                    .padding()

                    // Display filtered events
                    ForEach(filteredEvents, id: \.self) { eventTitle in
                        ZStack(alignment: .bottom) {
                            if eventTitle == "Expo" {
                                NavigationLink(destination: EventView()) {
                                    Image(eventTitle)
                                        .resizable()
                                        .frame(width: 350, height: 180)
                                        .cornerRadius(26)
                                }
                                .padding()
                            } else {
                                Image(eventTitle)
                                    .resizable()
                                    .frame(width: 350, height: 180)
                                    .cornerRadius(26)
                            }

                            HStack {
                                Text(eventTitle)
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                Spacer()
                                Text("4 Jan")
                                    .foregroundColor(.white)
                                    .fontWeight(.light)
                            }
                            .padding()
                            .frame(width: 350)
                            .background(.ultraThinMaterial)
                            .cornerRadius(10)

                            Spacer()
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Events")
        }
    }
}

#Preview {
    SearchableEventsView()
}

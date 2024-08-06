//
//  CalendarView.swift
//  Eventify
//
//  Created by Rania on 13/06/1445 AH.
//

import SwiftUI

struct CalendarView: View {
    let days = ["Sun", "Mon","Tue","Wed","Thu","Fri","Sat"]
    @State var selectedMonth = 0
    @State var selectedDate = Date()
    
    var body: some View {
        
            VStack(alignment: .leading){
                Text("1. Select a day")
                    .font(.title2)
                    .bold()
                VStack(spacing: 20){
                    HStack{
                        Button{
                            withAnimation {
                                selectedMonth -= 1
                            }
                        } label:{
                            Image(systemName: "lessthan")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 16 ,height: 28)
                                .foregroundColor(.gray)
                        }
                        //.navigationTitle("`select a day`")
                        //.navigationBarHidden(true)
                        
                        Spacer()
                        
                        Text(selectedDate.monthAndYear())
                            .font(.title2)
                        
                        Spacer()
                        
                        Button{
                            withAnimation {
                                selectedMonth += 1
                            }
                        } label:{
                            Image(systemName: "greaterthan")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 16 ,height: 28)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    
                    HStack{
                        ForEach(days, id:\.self){ day in
                            Text(day)
                                .font(.system(size: 12, weight: .medium))
                                .foregroundStyle(.gray)
                                .frame(maxWidth : .infinity)
                        }
                    }
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 7), spacing: 20){
                                    ForEach(fetchDates()) { value in
                                        Button(action: {
                                            selectedDate = value.date
                                        }) {
                                            ZStack{
                                                if value.day != -1 {
                                                    Text("\(value.day)")
                                                        .background(
                                                            ZStack (alignment: .bottom){
                                                                Circle()
                                                                    .frame(width: 48, height: 48)
                                                                    .foregroundColor(selectedDate == value.date ? .blue : .white)
                                                                if value.date.string() == Date().string(){
                                                                    Circle()
                                                                        .frame(width: 8, height: 8)
                                                                }
                                                            }
                                                        )
                                                } else {
                                                    Text("")
                                                }
                                            }
                                            .frame(width: 32, height: 32)
                                        }
                                        .buttonStyle(PlainButtonStyle()) // Use PlainButtonStyle to remove button styling
                                        .disabled(value.date < Date()) // Disable dates before today
                                    }
                                }

                    
                    Spacer()
                    
                        Button{
                        }label: {
                            NavigationLink(destination: SelectTicketView(selectedDate: $selectedDate)) {
                                    Text(" Select Tickets ")
                                    Label(" ", systemImage: "chevron.right")
                        }
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .background(Color("Dark"))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .padding()
                    }
                }
                .onChange(of: selectedMonth){ newValue in
                    selectedDate = fetchSelectedMonth()
                }
                .padding()
            }
            .padding()
        
    }

    func fetchDates() -> [CalendarDate]{
        let calendar = Calendar.current
        let currentMonth = fetchSelectedMonth()
        
        var dates = currentMonth.dateOfMonth().map({CalendarDate(day: calendar.component(.day, from: $0), date:$0) })
        
        let firstDayOfWeek = calendar.component(.weekday, from: dates.first?.date ?? Date())
        
        for _ in 0..<firstDayOfWeek - 1 {
            dates.insert(CalendarDate(day: -1, date: Date()), at: 0)
        }
        return dates
    }
    
    func fetchSelectedMonth() -> Date{
        let calendar = Calendar.current
        
        let month = calendar.date(byAdding:.month, value: selectedMonth, to: Date())
        return month!
    }
}

struct CalendarDate: Identifiable{
    let id = UUID()
    var day: Int
    var date: Date
}

extension Date{
    
    func monthAndYear() -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM YYYY"
        
        return formatter.string(from: self)
    }
    
    func dateOfMonth() -> [Date]{
        let calendar = Calendar.current
        let currentMonth = calendar.component(.month, from: self)
        let currentYear = calendar.component(.year, from: self)
        
        var startDateComponents = DateComponents()
        startDateComponents.year = currentYear
        startDateComponents.month = currentMonth
        startDateComponents.day = 1
        let startDate = calendar.date(from: startDateComponents)!
        
        var endDateComonenets = DateComponents()
        endDateComonenets.month = 1
        endDateComonenets.day = -1
        let endDate = calendar.date(byAdding: endDateComonenets, to: startDate)!
        
        var dates: [Date] = []
        var currentDate = startDate
        
        while currentDate <= endDate {
            dates.append(currentDate)
            currentDate = calendar.date(byAdding: .day,value: 1, to: currentDate)!
        }
        return dates
    }
    func string() -> String{
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        return formatter.string(from: self)
    }
}

#Preview {
    CalendarView()
}

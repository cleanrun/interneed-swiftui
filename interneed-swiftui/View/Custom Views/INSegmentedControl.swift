//
//  INSegmentedControl.swift
//  interneed-swiftui
//
//  Created by cleanmac on 06/07/21.
//

import SwiftUI

struct SizePreferenceKey: PreferenceKey {
    typealias Value = CGSize
    static var defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        value = nextValue()
    }
}
struct BackgroundGeometryReader: View {
    var body: some View {
        GeometryReader { geometry in
            return Color
                    .clear
                    .preference(key: SizePreferenceKey.self, value: geometry.size)
        }
    }
}
struct SizeAwareViewModifier: ViewModifier {
    @Binding private var viewSize: CGSize

    init(viewSize: Binding<CGSize>) {
        self._viewSize = viewSize
    }

    func body(content: Content) -> some View {
        content
            .background(BackgroundGeometryReader())
            .onPreferenceChange(SizePreferenceKey.self, perform: { if self.viewSize != $0 { self.viewSize = $0 }})
    }
}

struct INSegmentedControl: View {
    private static let ActiveSegmentColor: Color = Color.TEXT_DARK
    private static let BackgroundColor: Color = Color.BACKGROUND_TEXT_FIELD
    private static let ShadowColor: Color = Color.black.opacity(0.2)
    private static let TextColor: Color = Color.TEXT_BLACK
    private static let SelectedTextColor: Color = Color.white

    private static let TextFont: Font = Font.bold(14)!
    
    private static let SegmentCornerRadius: CGFloat = 12
    private static let ShadowRadius: CGFloat = 4
    private static let SegmentXPadding: CGFloat = 16
    private static let SegmentYPadding: CGFloat = 8
    private static let PickerPadding: CGFloat = 4
    
    private static let AnimationDuration: Double = 0.1
    
    @State private var segmentSize: CGSize = .zero
    private var activeSegmentView: AnyView {
        let isInitialized: Bool = segmentSize != .zero
        if !isInitialized { return EmptyView().eraseToAnyView() }
        return
            RoundedRectangle(cornerRadius: INSegmentedControl.SegmentCornerRadius)
                .foregroundColor(INSegmentedControl.ActiveSegmentColor)
                .shadow(color: INSegmentedControl.ShadowColor, radius: INSegmentedControl.ShadowRadius)
                .frame(width: self.segmentSize.width, height: self.segmentSize.height)
                .offset(x: self.computeActiveSegmentHorizontalOffset(), y: 0)
                .animation(Animation.linear(duration: INSegmentedControl.AnimationDuration))
                .eraseToAnyView()
    }
    
    @Binding private var selection: Int
    private let items: [String]
    
    init(items: [String], selection: Binding<Int>) {
        self._selection = selection
        self.items = items
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            self.activeSegmentView
            HStack {
                ForEach(0..<self.items.count, id: \.self) { index in
                    self.getSegmentView(for: index)
                }
            }
        }
        .padding(INSegmentedControl.PickerPadding)
        .background(INSegmentedControl.BackgroundColor)
        .clipShape(RoundedRectangle(cornerRadius: INSegmentedControl.SegmentCornerRadius))
    }

    private func computeActiveSegmentHorizontalOffset() -> CGFloat {
        CGFloat(self.selection) * (self.segmentSize.width + INSegmentedControl.SegmentXPadding / 2)
    }

    private func getSegmentView(for index: Int) -> some View {
        guard index < self.items.count else {
            return EmptyView().eraseToAnyView()
        }
        let isSelected = self.selection == index
        return
            Text(self.items[index])
                .foregroundColor(isSelected ? INSegmentedControl.SelectedTextColor: INSegmentedControl.TextColor)
                .lineLimit(1)
                .padding(.vertical, INSegmentedControl.SegmentYPadding)
                .padding(.horizontal, INSegmentedControl.SegmentXPadding)
                .frame(minWidth: 0, maxWidth: .infinity)
                .modifier(SizeAwareViewModifier(viewSize: self.$segmentSize))
                .onTapGesture { self.onItemTap(index: index) }
                .eraseToAnyView()
    }

    private func onItemTap(index: Int) {
        guard index < self.items.count else {
            return
        }
        self.selection = index
    }
}

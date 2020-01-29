//
//  VStack.swift
//  SwiftUIKit
//
//  Created by Zach Eriksen on 10/29/19.
//

import UIKit

@available(iOS 9.0, *)
public class VStack: UIView {
    public var views: [UIView] = []
    
    public init(withSpacing spacing: Float = 0,
         padding: Float = 0,
         alignment: UIStackView.Alignment = .fill,
         distribution: UIStackView.Distribution = .fill,
         @UIViewBuilder _ closure: () -> [UIView]) {
        views = closure()
        super.init(frame: .zero)
        
        vstack(withSpacing: spacing,
               padding: padding,
               alignment: alignment,
               distribution: distribution,
               closure)
    }
    
    public init(withSpacing spacing: Float = 0,
            padding: Float = 0,
            alignment: UIStackView.Alignment = .fill,
            distribution: UIStackView.Distribution = .fill,
            @UIViewBuilder _ closure: () -> [UIView?]) {
           views = closure()
               .compactMap { $0 }
           super.init(frame: .zero)
           
        vstack(withSpacing: spacing,
                  padding: padding,
                  alignment: alignment,
                  distribution: distribution)
                  { views }
       }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

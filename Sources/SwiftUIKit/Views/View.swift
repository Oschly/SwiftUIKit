//
//  View.swift
//  SwiftUIKit-Example
//
//  Created by Zach Eriksen on 10/29/19.
//  Copyright © 2019 oneleif. All rights reserved.
//

import UIKit

@available(iOS 9.0, *)
public class View: UIView {
    public init(backgroundColor: UIColor? = .white,
                closure: (() -> UIView)? = nil) {
        super.init(frame: .zero)
        
        self.backgroundColor = backgroundColor
        
        _ = closure.map { embed(closure: $0) }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  BaseCollectionReusableView.swift
//
//
//  Created by KimJinUng on 8/29/24.
//

import UIKit

/// A base reusable view class for collection views.
/// Provides common setup methods that subclasses can override.
open class BaseCollectionReusableView: UICollectionReusableView {
    
    /// The reuse identifier for the reusable view.
    /// This identifier is used for registering and reusing the view.
    public static var identifier: String { String(describing: Self.self) }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setupAction()
        setupConstraints()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupView()
        setupAction()
        setupConstraints()
    }
    
    /// Sets up the initial view configuration.
    /// Subclasses can override this method to configure the view.
    open func setupView() {}
    
    /// Sets up actions such as button targets or gesture recognizers.
    /// Subclasses can override this method to add actions.
    open func setupAction() {}
    
    /// Sets up the layout constraints for the reusable view.
    /// Subclasses can override this method to define layout constraints.
    open func setupConstraints() {}
}

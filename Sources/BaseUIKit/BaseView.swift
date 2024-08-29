//
//  BaseView.swift
//
//
//  Created by KimJinUng on 8/29/24.
//

import UIKit

/// A base view class.
/// Provides common setup methods that subclasses can override.
open class BaseView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setupConstraints()
        setupAction()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupView()
        setupConstraints()
        setupAction()
    }
    
    /// Sets up the initial view configuration.
    /// Subclasses can override this method to configure their views.
    open func setupView() {}
    
    /// Sets up the layout constraints for the view.
    /// Subclasses can override this method to define layout constraints.
    open func setupConstraints() {}
    
    /// Sets up actions such as button targets or gesture recognizers.
    /// Subclasses can override this method to add actions.
    open func setupAction() {}
}

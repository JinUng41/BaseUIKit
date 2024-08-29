//
//  BaseViewController.swift
//
//
//  Created by KimJinUng on 8/29/24.
//

import UIKit

/// A base view controller class.
/// Provides common setup methods that subclasses can override.
open class BaseViewController: UIViewController {
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupConstraints()
        setupAction()
        setupDelegate()
        setupBinding()
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
    
    /// Sets up delegates for various components.
    /// Subclasses can override this method to assign delegates.
    open func setupDelegate() {}
    
    /// Sets up data bindings for the view.
    /// Subclasses can override this method to bind data to the view.
    open func setupBinding() {}
}

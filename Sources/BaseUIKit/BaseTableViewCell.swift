//
//  BaseTableViewCell.swift
//
//
//  Created by KimJinUng on 8/29/24.
//

import UIKit

/// A base table view cell class.
/// Provides common setup methods that subclasses can override.
open class BaseTableViewCell: UITableViewCell {
    
    /// The reuse identifier for the cell.
    /// This identifier is used for registering and reusing the cell.
    public static var identifier: String { String(describing: Self.self) }
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
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
    /// Subclasses can override this method to configure the cell's views.
    open func setupView() {}
    
    /// Sets up actions such as button targets or gesture recognizers.
    /// Subclasses can override this method to add actions.
    open func setupAction() {}
    
    /// Sets up the layout constraints for the cell.
    /// Subclasses can override this method to define layout constraints.
    open func setupConstraints() {}
}

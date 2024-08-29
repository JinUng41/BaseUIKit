# BaseUIKit

[![SwiftPM](https://img.shields.io/badge/SPM-supported-DE5C43.svg?style=flat)](https://swift.org/package-manager/)

**BaseUIKit** is a UIKit-based library that helps reduce repetitive code and maintain consistent coding styles across your project.

## How To Use
- Override the `setup~` methods provided by the Base classes to implement the necessary configurations.
- When overriding, you do not need to call the superclass method.

#### Example: Overriding Methods
```swift
import BaseUIKit

class MyViewController: BaseViewController {
    override func setupView() {
        // Configure the view
    }
    
    override func setupConstraints() {
        // Set up constraints
    }
}
```

#### Example: Registering and Using a Cell in a CollectionView
```swift
import BaseUIKit

class MyCollectionViewCell: BaseCollectionViewCell {
    override func setupView() {
        // Initial UI setup for the cell
    }

    override func setupConstraints() {
        // Set up layout constraints
    }
}

// Register the cell in the CollectionView
collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: MyCollectionViewCell.identifier)

// Dequeue and use the cell in the CollectionView
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell
    // Configure the cell
    return cell
}
```

## Available Methods by Class
#### BaseViewController
- `setupView`
- `setupConstraints`
- `setupAction`
- `setupDelegate`
- `setupBinding`

#### BaseView, BaseCollectionViewCell, BaseCollectionReusableView, BaseTableViewCell
- `setupView`
- `setupConstraints`
- `setupAction`

## Contact
- If you have any questions, please contact us at ‘devjinung41@gmail.com’.

# Rulebook

These are general convention guidelines for the library style.

Please check out the `Example` module for a better understanding.

- [ExampleView](https://github.com/onodude/OnoKit-iOS/blob/develop/OnoKit/Example/ExampleView.swift)
- [ExampleViewController](https://github.com/onodude/OnoKit-iOS/blob/develop/OnoKit/Example/ExampleViewController.swift)
- [ExampleViewModel](https://github.com/onodude/OnoKit-iOS/blob/develop/OnoKit/Example/ExampleViewModel.swift)
- [ExampleViewModelTests](https://github.com/onodude/OnoKit-iOS/blob/develop/OnoKitTests/ExampleViewModelTests.swift)


## Element Prefixes

Object | Prefix | Example
--- | --- | ---
`UIButton` | **btn** | *eq. btnStart*
`UICollectionView` | **cv** | *eq. cvPhotos*
`UIControl` | **ctrl** | *eq. ctrlRefresh*
`UIImageView` | **iv** | *eq. ivPhoto*
`UILabel` | **lbl** | *eq. lblTitle*
`UIScrollView` | **sv** | *eq. svAbout*
`UISwitch` | **sw** | *eq. swMute*
`UITableView` | **tbl** | *eq. tblNames*
`UITextField` | **txt** | *eq. txtEmail*
`UITextView` | **tv** | *eq. tvSummary*
`UIView` | **view** | *eq. viewBox*
`UIViewController` | **vc** | *eq. vcHome*


##	Type Prefixes

Object | Prefix | Example
--- | --- | ---
`Array` | **lst** | *eq. lstItems*
`Dictionary` | **dict** | *eq. dictOptions*
`String` | **str** | *eq. strName*
`UIColor` | **clr** | *eq. clrWhite*
`UIImage` | **img** | *eq. imgPhoto*

	
## Common Suffixes

Object | Example
--- | ---
`CommonCollectionViewHandler` | *eq. PhotoCollectionViewHandler*
`CommonCollectionViewListener` | *eq. PhotoCollectionViewListener*
`CommonModel` | *eq. ProfileModel*
`CommonTableViewHandler` | *eq. FriendTableViewHandler*
`CommonTableViewListener` | *eq. FriendTableViewListener*
`CommonView` | *eq. ProfileView*
`CommonViewController` | *eq. ProfileViewController*
`CommonViewModel` | *eq. ProfileViewController*


## Reactive Prefixes

Object | Prefix | Example
--- | --- | ---
`Selector` | **do** | *eq. doLoadView, doTapStart*
`PassthroughSubject` | **event** | *eq. eventLoadView, eventTapStart*
`AnyCancellable` | **handle** | *eq. handleLoadView, handleTapStart*
`XCTest` | **test** | *eq. testLoadView, testTapStart*


## View Methods

`create(_ superview: UIView)` 


## View Controller Methods

`viewDidLoad` 
`initView` 
`initViewModel` 

## View Model Methods

`doLoadSomeViewName` 
`doTapSomeButtonName` 



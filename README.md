# One CocoaPods Private Repo

This repository contains some private [CocoaPods](https://github.com/CocoaPods/CocoaPods) specifications.

## Usage
An available Podfile could be like this:

```ruby
# The front repo is prior if conflicted
# CocoaPods private repo
source 'https://github.com/jcccn/PodSpecs.git'
# CocoaPods master repo
source 'https://github.com/CocoaPods/Specs.git'

platform :ios,'7.0'

# ignore all warnings from all pods
inhibit_all_warnings!

pod 'AFNetworking'

pod 'Gingko'

```

## Links

- [Specs and the Specs Repo](http://guides.cocoapods.org/making/specs-and-specs-repo.html): Learn about creating Podspec's and the Spec repo.
- [Getting setup with Trunk](http://guides.cocoapods.org/making/getting-setup-with-trunk.html): Instructions for creating a CocoaPods user account


## License

These specifications are available under the [MIT license](http://www.opensource.org/licenses/mit-license.php).



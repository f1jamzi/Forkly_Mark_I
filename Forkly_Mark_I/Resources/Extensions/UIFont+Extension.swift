
/*
 
 import UIKit
 
extension UIFont {
    enum Roboto {
        enum black {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.black, size: size)
                ?? UIFont.systemFont(ofSize: size, weight: .medium)
                
            }
        }
        enum blackItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.blackItalic, size: size)
                ?? UIFont.systemFont(ofSize: size, weight: .medium)
            }
        }
        enum bold {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.bold, size: size)
                ?? UIFont.systemFont(ofSize: size, weight: .medium)
            }
        }
        enum boldItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.boldItalic, size: size)
                ?? UIFont.systemFont(ofSize: size, weight: .medium)
            }
        }
        enum italic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.italic, size: size)
                ?? UIFont.systemFont(ofSize: size, weight: .medium)
            }
        }
        enum light {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.light, size: size)
                ?? UIFont.systemFont(ofSize: size, weight: .medium)
            }
        }
        enum lightItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.lightItalic, size: size)
                ?? UIFont.systemFont(ofSize: size, weight: .medium)
            }
        }
        enum medium {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.medium, size: size)
                ?? UIFont.systemFont(ofSize: size, weight: .medium)
            }
        }
        enum mediumItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.mediumItalic, size: size)
                ?? UIFont.systemFont(ofSize: size, weight: .medium)
            }
        }
        enum regular {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.regular, size: size)
                ?? UIFont.systemFont(ofSize: size, weight: .medium)
            }
        }
        enum thin {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.thin, size: size)
                ?? UIFont.systemFont(ofSize: size, weight: .medium)
            }
        }
        enum thinItalic {
            static func size(of size: CGFloat) -> UIFont {
                return UIFont(name: Constants.Roboto.thinItalic, size: size)
                ?? UIFont.systemFont(ofSize: size, weight: .medium)
            }
        }
    }
}
 
 
private extension UIFont {
    enum Constants {
        enum Roboto {
            static let black = "Roboto-Black"
            static let blackItalic = "Roboto-BlackItalic"
            static let bold = "Roboto-Bold"
            static let boldItalic = "Roboto-BoldItalic"
            static let italic = "Roboto-Italic"
            static let light = "Roboto-Light"
            static let lightItalic = "Roboto-LightItalic"
            static let medium = "Roboto-Medium"
            static let mediumItalic = "Roboto-MediumItalic"
            static let regular = "Roboto-Regular"
            static let thin = "Roboto-Thin"
            static let thinItalic = "Roboto-ThinItalic"
        }
    }
}
 
 */


import UIKit

extension UIFont {
    enum Roboto: String {
        case black = "Roboto-Black"
        case blackItalic = "Roboto-BlackItalic"
        case bold = "Roboto-Bold"
        case boldItalic = "Roboto-BoldItalic"
        case italic = "Roboto-Italic"
        case light = "Roboto-Light"
        case lightItalic = "Roboto-LightItalic"
        case medium = "Roboto-Medium"
        case mediumItalic = "Roboto-MediumItalic"
        case regular = "Roboto-Regular"
        case thin = "Roboto-Thin"
        case thinItalic = "Roboto-ThinItalic"

        // Loading fonts
        func size(of size: CGFloat) -> UIFont {
            if let font = UIFont(name: rawValue, size: size) {
                return font
            }

            return isItalic
                ? Self.systemItalicFont(ofSize: size, weight: fallbackWeight)
                : .systemFont(ofSize: size, weight: fallbackWeight)
        }

        // fallbacks
        private var fallbackWeight: UIFont.Weight {
            switch self {
            case .black, .blackItalic:
                return .black
            case .bold, .boldItalic:
                return .bold
            case .medium, .mediumItalic:
                return .medium
            case .light, .lightItalic:
                return .light
            case .thin, .thinItalic:
                return .thin
            case .regular, .italic:
                return .regular
            }
        }

        private var isItalic: Bool {
            switch self {
            case .blackItalic,
                 .boldItalic,
                 .italic,
                 .lightItalic,
                 .mediumItalic,
                 .thinItalic:
                return true
            default:
                return false
            }
        }

        private static func systemItalicFont(ofSize size: CGFloat, weight: UIFont.Weight) -> UIFont {
            let systemFont = UIFont.systemFont(ofSize: size, weight: weight)
            let descriptor = systemFont.fontDescriptor.withSymbolicTraits(.traitItalic)

            guard let descriptor else {
                return systemFont
            }

            return UIFont(descriptor: descriptor, size: size)
        }
    }
}

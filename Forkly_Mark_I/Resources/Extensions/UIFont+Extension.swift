

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

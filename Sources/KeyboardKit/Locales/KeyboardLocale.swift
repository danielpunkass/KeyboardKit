//
//  KeyboardLocale.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-02-01.
//  Copyright © 2021 Daniel Saidi. All rights reserved.
//

import Foundation

/**
 This enum contains KeyboardKit-supported locales.
 
 Keyboard locales have more information than the raw locales
 and can also have a set of corresponding services attatched.
 
 For instance, when a Keyboard Kit Pro license is registered,
 the locales get services applied, e.g. for resolving locale
 specific input sets and secondary callout actions.
 */
public enum KeyboardLocale: String, CaseIterable, Codable, Identifiable {
    
    case albanian = "sq"
    case danish = "da"
    case dutch = "nl"
    case english = "en"
    case english_gb = "en-GB"
    case english_us = "en-US"
    case estonian = "et"
    case finnish = "fi"
    case french = "fr"
    case german = "de"
    case icelandic = "is"
    case italian = "it"
    case latvian = "lv"
    case lithuanian = "lt"
    case norwegian = "nb"
    case polish = "pl"
    case russian = "ru"
    case spanish = "es"
    case swedish = "sv"
    case ukrainian = "uk"
}

public extension KeyboardLocale {
    
    /**
     The locale's unique identifier.
     */
    var id: String { rawValue }
    
    /**
     The raw locale that is connected to the keyboard locale.
     */
    var locale: Locale { Locale(identifier: localeIdentifier) }
    
    /**
     The identifier that is used to identify the raw locale.
     */
    var localeIdentifier: String { id }
    
    /**
     The localized name of the locale.
     */
    var localizedName: String {
        locale.localizedString(forIdentifier: id) ?? ""
    }
    
    /**
     The corresponding flag emoji for the locale.
     */
    var flag: String {
        switch self {
        case .albanian: return "🇦🇱"
        case .danish: return "🇩🇰"
        case .dutch: return "🇳🇱"
        case .english: return "🇺🇸"
        case .english_gb: return "🇬🇧"
        case .english_us: return "🇺🇸"
        case .estonian: return "🇪🇪"
        case .finnish: return "🇫🇮"
        case .french: return "🇫🇷"
        case .german: return "🇩🇪"
        case .icelandic: return "🇮🇸"
        case .italian: return "🇮🇹"
        case .latvian: return "🇱🇻"
        case .lithuanian: return "🇱🇹"
        case .norwegian: return "🇳🇴"
        case .polish: return "🇵🇱"
        case .russian: return "🇷🇺"
        case .swedish: return "🇸🇪"
        case .spanish: return "🇪🇸"
        case .ukrainian: return "🇺🇦"
        }
    }
    
    /**
     Whether or not the locale is a left-to-right one.
     */
    var isLeftToRight: Bool { true }
    
    /**
     Whether or not the locale is a right-to-left one.
     */
    var isRightToLeft: Bool { !isLeftToRight }
}

public extension Collection where Element == KeyboardLocale {
    
    /**
     Sort the collection by the localized name of every item.
     */
    func sorted() -> [Element] {
        sorted { $0.localizedName.lowercased() < $1.localizedName.lowercased() }
    }
    
    /**
     Sort the collection by the localized name of every item,
     then insert a certain locale firstmost.
     */
    func sorted(insertFirst locale: Element) -> [Element] {
        var res = sorted().filter { $0 != locale }
        res.insert(locale, at: 0)
        return res
    }
}

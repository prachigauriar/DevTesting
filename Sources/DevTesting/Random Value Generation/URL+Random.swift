//
//  URL+Random.swift
//  DevTesting
//
//  Created by Prachi Gauriar on 3/14/25.
//

import Foundation


extension URL {
    /// Returns a random URL.
    ///
    /// The URL is generated by creating URL components with
    ///  ``Foundation/URLComponents/random(includeFragment:includeQueryItems:using:)`` and returning its URL.
    ///
    /// - Parameters:
    ///   - includeFragment: Whether the components should include a fragment. If `nil`, the function will randomly
    ///     include a fragment or not.
    ///   - includeQueryItems: Whether the components should include query items. If `nil`, the function will randomly
    ///     include query items or not.
    ///   - generator: The random number generator to use when creating the new random URL components.
    public static func random(
        includeFragment: Bool? = nil,
        includeQueryItems: Bool? = nil,
        using generator: inout some RandomNumberGenerator
    ) -> URL {
        return URLComponents.random(
            includeFragment: includeFragment,
            includeQueryItems: includeQueryItems,
            using: &generator
        ).url!
    }
}

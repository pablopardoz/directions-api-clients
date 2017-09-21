//
// MatrixRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class MatrixRequest: JSONEncodable {
    /** Specifiy multiple points for which the weight-, route-, time- or distance-matrix should be calculated. In this case the starts are identical to the destinations. If there are N points, then NxN entries will be calculated. The order of the point parameter is important. Specify at least three points. Cannot be used together with from_point or to_point. Is a string with the format longitude,latitude. */
    public var points: [[Double]]?
    /** The starting points for the routes. E.g. if you want to calculate the three routes A-&amp;gt;1, A-&amp;gt;2, A-&amp;gt;3 then you have one from_point parameter and three to_point parameters. Is a string with the format longitude,latitude. */
    public var fromPoints: String?
    /** The destination points for the routes. Is a string with the format longitude,latitude. */
    public var toPoints: String?
    /** Specifies which arrays should be included in the response. Specify one or more of the following options &#39;weights&#39;, &#39;times&#39;, &#39;distances&#39;. To specify more than one array use e.g. out_array&#x3D;times&amp;amp;out_array&#x3D;distances. The units of the entries of distances are meters, of times are seconds and of weights is arbitrary and it can differ for different vehicles or versions of this API. */
    public var outArrays: [String]?
    /** The vehicle for which the route should be calculated. Other vehicles are foot, small_truck etc, see here for the details. */
    public var vehicle: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["points"] = self.points?.encodeToJSON()
        nillableDictionary["from_points"] = self.fromPoints
        nillableDictionary["to_points"] = self.toPoints
        nillableDictionary["out_arrays"] = self.outArrays?.encodeToJSON()
        nillableDictionary["vehicle"] = self.vehicle
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

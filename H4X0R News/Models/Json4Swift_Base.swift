/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Results : Codable {
	let exhaustive : Exhaustive?
	let exhaustiveNbHits : Bool?
	let exhaustiveTypo : Bool?
	var hits : [Hits]?
	let hitsPerPage : Int?
	let nbHits : Int?
	let nbPages : Int?
	let page : Int?
	let params : String?
	let processingTimeMS : Int?
	let processingTimingsMS : ProcessingTimingsMS?
	let query : String?
	let serverTimeMS : Int?

	enum CodingKeys: String, CodingKey {

		case exhaustive = "exhaustive"
		case exhaustiveNbHits = "exhaustiveNbHits"
		case exhaustiveTypo = "exhaustiveTypo"
		case hits = "hits"
		case hitsPerPage = "hitsPerPage"
		case nbHits = "nbHits"
		case nbPages = "nbPages"
		case page = "page"
		case params = "params"
		case processingTimeMS = "processingTimeMS"
		case processingTimingsMS = "processingTimingsMS"
		case query = "query"
		case serverTimeMS = "serverTimeMS"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		exhaustive = try values.decodeIfPresent(Exhaustive.self, forKey: .exhaustive)
		exhaustiveNbHits = try values.decodeIfPresent(Bool.self, forKey: .exhaustiveNbHits)
		exhaustiveTypo = try values.decodeIfPresent(Bool.self, forKey: .exhaustiveTypo)
		hits = try values.decodeIfPresent([Hits].self, forKey: .hits)
		hitsPerPage = try values.decodeIfPresent(Int.self, forKey: .hitsPerPage)
		nbHits = try values.decodeIfPresent(Int.self, forKey: .nbHits)
		nbPages = try values.decodeIfPresent(Int.self, forKey: .nbPages)
		page = try values.decodeIfPresent(Int.self, forKey: .page)
		params = try values.decodeIfPresent(String.self, forKey: .params)
		processingTimeMS = try values.decodeIfPresent(Int.self, forKey: .processingTimeMS)
		processingTimingsMS = try values.decodeIfPresent(ProcessingTimingsMS.self, forKey: .processingTimingsMS)
		query = try values.decodeIfPresent(String.self, forKey: .query)
		serverTimeMS = try values.decodeIfPresent(Int.self, forKey: .serverTimeMS)
	}

}

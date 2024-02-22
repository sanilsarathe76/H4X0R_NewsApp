/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Hits : Codable {
	let _highlightResult : _highlightResult?
	let _tags : [String]?
	let author : String?
	let children : [Int]?
	let created_at : String?
	let created_at_i : Int?
	let num_comments : Int?
	let objectID : String?
	let points : Int?
	let story_id : Int?
	var title : String?
	let updated_at : String?
	let url : String?

//	enum CodingKeys: String, CodingKey {
//
//		case _highlightResult = "_highlightResult"
//		case _tags = "_tags"
//		case author = "author"
//		case children = "children"
//		case created_at = "created_at"
//		case created_at_i = "created_at_i"
//		case num_comments = "num_comments"
//		case objectID = "objectID"
//		case points = "points"
//		case story_id = "story_id"
//		case title = "title"
//		case updated_at = "updated_at"
//		case url = "url"
//	}
//
//	init(from decoder: Decoder) throws {
//		let values = try decoder.container(keyedBy: CodingKeys.self)
//		_highlightResult = try values.decodeIfPresent(_highlightResult.self, forKey: ._highlightResult)
//		_tags = try values.decodeIfPresent([String].self, forKey: ._tags)
//		author = try values.decodeIfPresent(String.self, forKey: .author)
//		children = try values.decodeIfPresent([Int].self, forKey: .children)
//		created_at = try values.decodeIfPresent(String.self, forKey: .created_at)
//		created_at_i = try values.decodeIfPresent(Int.self, forKey: .created_at_i)
//		num_comments = try values.decodeIfPresent(Int.self, forKey: .num_comments)
//		objectID = try values.decodeIfPresent(String.self, forKey: .objectID)
//		points = try values.decodeIfPresent(Int.self, forKey: .points)
//		story_id = try values.decodeIfPresent(Int.self, forKey: .story_id)
//		title = try values.decodeIfPresent(String.self, forKey: .title)
//		updated_at = try values.decodeIfPresent(String.self, forKey: .updated_at)
//		url = try values.decodeIfPresent(String.self, forKey: .url)
//	}

}

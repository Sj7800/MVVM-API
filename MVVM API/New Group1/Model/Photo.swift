/* 
Copyright (c) 2020 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Photo : Codable {
	let id : String?
	let owner : String?
	let secret : String?
	let server : String?
	let farm : Int?
	let title : String?
	let ispublic : Int?
	let isfriend : Int?
	let isfamily : Int?
	let url_s : String?
	let height_s : Int?
	let width_s : Int?

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case owner = "owner"
		case secret = "secret"
		case server = "server"
		case farm = "farm"
		case title = "title"
		case ispublic = "ispublic"
		case isfriend = "isfriend"
		case isfamily = "isfamily"
		case url_s = "url_s"
		case height_s = "height_s"
		case width_s = "width_s"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(String.self, forKey: .id)
		owner = try values.decodeIfPresent(String.self, forKey: .owner)
		secret = try values.decodeIfPresent(String.self, forKey: .secret)
		server = try values.decodeIfPresent(String.self, forKey: .server)
		farm = try values.decodeIfPresent(Int.self, forKey: .farm)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		ispublic = try values.decodeIfPresent(Int.self, forKey: .ispublic)
		isfriend = try values.decodeIfPresent(Int.self, forKey: .isfriend)
		isfamily = try values.decodeIfPresent(Int.self, forKey: .isfamily)
		url_s = try values.decodeIfPresent(String.self, forKey: .url_s)
		height_s = try values.decodeIfPresent(Int.self, forKey: .height_s)
		width_s = try values.decodeIfPresent(Int.self, forKey: .width_s)
	}

}
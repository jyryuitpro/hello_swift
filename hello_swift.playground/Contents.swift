import UIKit

//var greeting = "Hello, playground"

//변수와 상수
//변수(variable): 값을 수정할수 있음
//상수(constant): 값을 수정할수 없음

//var 키워드를 이용해서 변수 선언
var num = 5
num = 1 // 값 수정 가능

//let 키워드를 이용해서 상수 선언
let name = "Jason"
name = "Jay" // 값 수정 불가능

//값이 바뀔수 있는 변수보다, 상수를 이용하는 것이 더 안전해서, 상수 사용을 권장함

//String
//문자열은 “” 로 선언함
let quote = "I'm mother father genius, Man"

//Integer
//정수형을 숫자를 표현
let num = 5

let otherNum = num + 2
// 7

let halfOfNum = otherNum / 2
// 3

//내장 함수도 있음
let num = 360

// 3의 배수인지 확인하는 메소드
print(num.isMultiple(of: 3))

// 0~300 사이중 랜덤으로 수를 뽑아내는 메소드
let random = Int.random(in: 0...300)

//Double
//소수점을 포함하는 숫자를 표현
let score = 3.6

//Boolean
//참, 거짓 형을 표현
let isMan = true
let isHuman = false

var isSingle = true
isSingle.toggle()
isSingle // false

//String Interpolation
//데이터를 문자열로 표현할수 있음
let difficulty = "쉽다"
let maximumAge = 80

let message = "\(maximumAge) 할머니도 배우는 iOS 개발은 \(difficulty)"
// "80 할머니도 배우는 iOS 개발은 쉽다"

//배열과 딕셔너리
//데이터 묶음을 표현할때, 배열 및 딕셔너리를 이용해 표현
//두 타입 모두 [ ] 를 이용해서 선언함
// Array
let ages = [3, 20, 60]
let colors = ["green", "red", "yellow"]

let color = colors[0] // "green"

// Dictionary (Key: Value)
let languageCode = [
    "한국" : "ko",
    "미국" : "en",
    "일본" : "ja",
]

let code = languageCode["한국"] // "ko"

//비어 있는 배열과 딕셔너리는 이렇게 초기화합니다.
var emptyArr: [Int] = []
var emptyDic: [String: Any] = [:]

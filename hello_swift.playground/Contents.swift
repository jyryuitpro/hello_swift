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

//enum
//서로 관계있는 값들을 모아서 표현한것이 바로 enum 입니다.
//특정 타입들을 표시할때 사용하기 좋습니다.
// 요일을 한번 enum으로 만들어 보겠습니다.
enum WeekDay {
    case mon
    case tue
    case wed
    case thu
    case fri
}

var today: WeekDay = .mon


// 미디어타입을 한번 enum으로 만들어 보겠습니다.
enum MediaType {
    case audio
    case video
}

var mediaType: MediaType = .audio

//연관값(associated value)을 가지고 있는 형태로 표현도 가능합니다.
// 위에서 만들어본 미디어 타입에,
// 파일 확장자도 문자열로 받을수 있게 수정해보겠습니다.

enum MediaType {
    case audio(String)
    case video(String)
}

var mp3: MediaType = .audio("mp3")
var h264: MediaType = .video("h264")

//조건문, 반복문
//조건을 검사할 때, if, switch 를 사용

//if 을 이용한 조건 검사
let age = 10

// if 문의 조건절에는 boolean 타입을 사용합니다.
// 예) age > 20
if age > 20 {
    print("성인 입니다")
} else {
    print("미성년 입니다")
}

// else-if 조건을 이용해서, 조건을 세분화 해보겠습니다.
if age >= 10 && age < 20 {
    print("10대 입니다")
} else if age >= 20 && age < 30 {
    print("20대 입니다")
} else if age >= 30 && age < 40 {
    print("30대 입니다")
} else if age >= 40 && age < 50 {
    print("40대 입니다")
} else {
    print("......")
}

//switch 를 이용한 조건 검사
enum Weather {
    case sun
    case cloud
    case rain
}

var weather: Weather = .sun

switch weather {
case .sun:
    print("맑아요")
case .cloud:
    print("흐려요")
case .rain:
    print("비와요")
}

//반복되는 연산을 할때는 for, while 을 사용
//배열과 딕셔너리의 아이템을 순차적으로 체크할때 아래처럼 사용 가능합니다.
let ages = [3, 20, 60]
let languageCode = [
    "한국" : "ko",
    "미국" : "en",
    "일본" : "ja",
]

for age in ages {
    print("age: \(age)")
}
//    age: 3
//    age: 20
//    age: 60

for (key, value) in languageCode {
    print("\(key)의 언어코드는 \(value)")
}
//    한국의 언어코드는 ko
//    미국의 언어코드는 en
//    일본의 언어코드는 ja

//일정 횟수를 단순 반복하고 싶은 경우에는 아래와 같이 사용할수 있습니다.
print("전방에 다짐 10번 발사~~!")

for _ in 0..<10 {
    print("나는 iOS 개발자다!")
}

//특정 조건을 이용해서 반복하는 경우에는 while 반복문 이용
var count = 10

print("Ready!")

while count > 0 {
    print("\(count)...")
    count -= 1
}

print("START!")

//옵셔널
//값이 있을수도 있고, 없을수도 있음을 표현

//값이 있을수도, 있고 없을수도 있는 경우...
// Dictionary (Key: Value)
let languageCode = [
    "한국" : "ko",
    "미국" : "en",
    "일본" : "ja",
]

let krCode = languageCode["한국"] // "ko"
let jpCode = languageCode["일본"] // "ja"
let deCode = languageCode["독일"] // nil

//값이 있을수도, 없을수도 있는 경우 → Optional 로 표현
//? 을 이용해서 표현
//위에 사례에서, krCode, jpCode, deCode 모두 타입을 살펴보면 타입 + ? 으로 표현된것을 확인할수 있음

// 이름이 있을수도 있고 없을수 있는 타입 선언 => String?
var name: String? = nil

name = "Jason"
name = nil

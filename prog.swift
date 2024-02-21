//▸ Написать сортировку массива с помощью замыкания, в одну сторону, затем в обратную
let nums = [23, 43, 1, 34, 342, 3, 43]

let sorted321Nums = nums.sorted(by: { n1, n2 in return n1 > n2})

print(sorted321Nums)
print()

let sorted123Nums = nums.sorted(by: { n1, n2 in return n1 < n2})

print(sorted123Nums)
print()

//▸ Создать метод, который принимает имена друзей, после этого имена положить в массив
//▸ Массив отсортировать по количеству букв в имени

class Util{
    var namesArr: [String] = []

    func add(_ names: String...){
        for i in names{
            namesArr.append(i)
        }
        namesArr = namesArr.sorted(by: {(s1: String, s2: String) -> Bool in
            return s1.count < s2.count
        })
    }
}

let nammes = Util()

nammes.add("Andrey", "Victor", "Alex", "Stanislaw", "Xx")

print(nammes.namesArr)
print()


//▸ Создать словарь (Dictionary), где ключ - кол-во символов в имни, а в значении - имя друга

let dict: Dictionary<Int, String> = [6: "Andrey", 4: "Alex", 9: "Stanislaw", 2: "Xx"]

//▸ Написать функцию, которая будет принимать ключ, выводить полученный ключ и значение

func outP(_ key: Int){
    guard let val = dict[key] else {
        print("None")
        return 
    }
    print("\(key) - \(val)")
    
}

outP(9)
print()


//▸ Написать функцию, которая принимает 2 массива (один строковый, второй - числовой) и проверяет их на пустоту: если пустой - то добавьте любое значения и выведите массив в консоль
var a: [String] = []
var b: [Int] = []

func isEmp(_ s: inout [String], _ n: inout [Int]){
    if(s.isEmpty){
        s.append("fsdffd")
        print(s)
        print()
    }
    if(n.isEmpty){
        n.append(20)
        print(n)
        print()
    }
}

isEmp(&a, &b)



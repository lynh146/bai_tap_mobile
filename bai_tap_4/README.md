1. Thế nào là nullable?
   Nullable là biến có thể nhận giá trị null.

2. Khi nào nên/không nên dùng?
- Nên dùng: khi chúng ta không biết giá trị như nào thì dùng Nullable
vd: var phoneNumber: String? = null

- Không nên dùng: Giá trị bắt buộc phải có. Logic chương trình phụ thuộc trực tiếp
vd: var userId: Int = 0 // không nullable

3. Cách xử lý phổ biến
- "?." : Nếu có thì làm, không có thì thôi
Ý nghĩa: Nếu biến không null → thực hiện. Nếu null → bỏ qua, trả về null

- "?:" : Null thì dùng cái khác
Ý nghĩa: Nếu bên trái null → dùng giá trị mặc định. Thường đi chung với "?."
vd: 
    var name: String? = null
    val length = name?.length ?: 0
    println(length)
=> kq = 0
Khi nào dùng: Muốn luôn có giá trị . Tránh phải if/else
- let : Chỉ làm khi chắc chắn không null
vd:
   var email: String? = "abc@gmail.com"
   email?.let {
   println("Email là: $it")
   }
nếu email = null -> k in gì
- "!!" chắc chắn không null

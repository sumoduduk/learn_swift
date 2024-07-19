let welcome = """

  ======================================
  ======================================
  Welcome, please choose number below

  1. Enter your name
  2. Exit

  ======================================
  ======================================

  """

var is_break = false

func cliStart() {

  while is_break == false {

    print(welcome)
    print("Your input :")

    let prompt = readLine()

    switch prompt {
    case "1":

      print("Enter your name:")

      if let name = readLine() {
        print("Hello, \(name)!")
      }

    case "2":
      is_break = true

    default:
      print(
        """


        ===============================
        ===Please enter 1 or 2 only===
        ===============================


        """)

    }

  }
}

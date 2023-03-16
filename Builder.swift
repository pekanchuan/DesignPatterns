class Burger {
    let size: String
    let cheese: Bool
    let pickles: Bool
    let ketchup: Bool
    let lettuce: Bool
    
    init(size: String, cheese: Bool, pickles: Bool, ketchup: Bool, lettuce: Bool) {
        self.size = size
        self.cheese = cheese
        self.pickles = pickles
        self.ketchup = ketchup
        self.lettuce = lettuce
    }
    
    func description() {
        print("Burger with \(size) patty\(size == "double" ? "ies" : "")")
        
        if cheese {
            print("Cheese")
        }
        if pickles {
            print("Pickles")
        }
        if ketchup {
            print("Ketchup")
        }
        if lettuce {
            print("Lettuce")
        }
    }
}

class BurgerBuilder {
    private var size: String?
    private var cheese = false
    private var pickles = false
    private var ketchup = false
    private var lettuce = false
    
    func setSize(size: String) {
        self.size = size
    }
    
    func addCheese() {
        self.cheese = true
    }
    
    func addPickles() {
        self.pickles = true
    }
    
    func addKetchup() {
        self.ketchup = true
    }
    
    func addLettuce() {
        self.lettuce = true
    }
    
    func build() -> Burger {
        return Burger(size: size ?? "single", cheese: cheese, pickles: pickles, ketchup: ketchup, lettuce: lettuce)
    }
}

func testBuilder() {
    let builder = BurgerBuilder()
    builder.setSize(size: "double")
    builder.addCheese()
    builder.addPickles()
    builder.addKetchup()
    
    let burger = builder.build()
    burger.description()
}
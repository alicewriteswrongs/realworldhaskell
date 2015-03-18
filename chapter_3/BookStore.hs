-- this defines a new type for us
data BookInfo = Book Int String [String]
                deriving (Show)

-- So above we have the keyword data, which lets haskell know
-- that we're defining a new type. Then we have BookInfo, which is
-- the actual type that we want to define. On the other side of the
-- equal sign we have a value constructor (Book) which must begin
-- with a capital letter. This keyword we use like a function to
-- bind a variable name to an instance of our new type, like
-- myBook = Book 35 "My cool book" ["Steve Author"]
-- The stuff after Book tells haskell what components we want in the
-- type, in this case an Int, a String, and a list of Strings.

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]
testBook = Book 3 "Probability Theory" ["E.T.H. Jaynes"]

-- so we needn't have the type constructor (BookInfo) be a different
-- name than the value constructor (Book), and we can also define type 
-- synonyms to make type signatures more readable and meaningful

type CustomerID = Int -- this is a synonym
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)

-- we can use algebraic data types in our bookstore

type CardHolder = String
type CardNumber = String
type Address = [String]

-- specifically, we can specify an algebraic type having
-- more value constructors by using guards:

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

-- we just have to be sure when binding a variable that we use
-- arguments that are appropriate for the value construct we use
-- the following are also algebraic data types, i.e. they needn't
-- have more than one value constructor:

data Cetacean = Cetacean String String
data Furniture = Furniture String String

-- maybe a more subtle example?

data Cartesian2D = Cartesian2D Double Double
                   deriving (Eq, Show)

data Polar2D = Polar2D Double Double
               deriving (Eq, Show)

-- some pattern matches to get info about books

bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors

-- eliminating these sorts of annoying functions! which exist just
-- to pull values out of a particular type

data Customer = Customer {
      customerID      :: CustomerID,
      customerName    :: String,
      customerAddress :: Address
    } deriving (Show)

testCustomer = Customer 12354213 "Butts McGee" ["12 123 foop street"]

-- this is called ``record syntax'' and it automatically creates an accessor 
-- function for all of the fields!
-- this also provides an alternative way to bind a value of our Customer type!

testCustomer2 = Customer {
                  customerID = 1234123,
                  customerAddress = ["12 Smith Street"],
                  customerName = "Jonas Butts"
                }











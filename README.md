# Checkout system

In this repository is a Checkout flow implemented in OOP.

### TODOs:

- [x] Create an Item class
  - Takes in `name:string`, `price:integer` and optionally `discount:object`
  - SHould be able to read and write it's attributes
- [x] Create a Basket class
  - Takes in `items:array` (a collection of basket items instances)
  - Has a methods to add new items in the basket
  - Has a method to calculate the total
- [x] Create a BasketItem class
  - Takes in an `item` (an instance of Item)
  - Has a method to calculate discounted price
  - Has methods for each discount (tow for one, half price, buy 3 get 1 free)

### DEV instructions

1. Clone this repository

2. In the terminal, run `bundle install`

### Run tests

1. In the terminal run `bundle exec rspec`
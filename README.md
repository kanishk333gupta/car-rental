# Car Rental

user
`email : test@abc.com`
`pw : 111111`

admin
`email : admin@abc.com`
`pw : 222222`

## Site details

This app uses:

- Ruby version: `3.0.0p0`
- Rails version: `Rails 7.0.3`
- Database: `mysql`
- Rvm: `rvm 1.29.12`

### Problem Statement

Click here for [Problem Statement](https://github.com/kanishk333gupta/car-rental/blob/main/Car%20rental.txt) .

## Installation

Get the database.yml and master.key file from author

## Screenshots

![App Screenshot](https://github.com/kanishk333gupta/Car-Rental/blob/main/img/Screenshot%202022-07-04%20at%2010.17.51%20AM.png?raw=true)

![App Screenshot](https://github.com/kanishk333gupta/Car-Rental/blob/main/img/Screenshot%202022-07-04%20at%2010.26.25%20AM.png?raw=true)

img/Screenshot 2022-07-22 at 4.40.40 PM.png

## Formulas to be used

1 . For Amount

t = total time between book and return date
r = total km it's running
Booking amount = Paid at initial (Rs. 200 for all)

Amount depends on t,r
Due amount = Amount to be paid after completion
Due amount = t X Rs.1 + r X Rs.10

Maintenance charge = Depends on type of damage
Total amount to be paid at end = Maintenance charge + ( Due amount - Booking amount )
Total amount paid by customer = Total amount to be paid at end + booking amount

=====

references
`https://github.com/heartcombo/devise/issues/5439`

check out
`https://github.com/heartcombo/devise/issues/5439#issuecomment-997927041`

Things to remember

`devise_for :users`
`resources :users`

devise_for should be above users

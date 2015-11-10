# <img src='https://cloud.githubusercontent.com/assets/544541/4461515/092962a4-48bb-11e4-8e4c-88bee6e5a321.jpg' width=50> Engineering Code Challenge

To help us get a clearer picture of your skills as a developer, we kindly request you take our code challenge. We encourage you to limit yourself to **4 to 5 hours'** worth of effort.

## Requirements

* Please write a Ruby program that:

  * Assembles a collection of student records by parsing data from 3 different files
  * Displays the collection 3 times, sorted 3 different ways

* Besides a testing framework ([RSpec](https://github.com/rspec/rspec), [test-unit](https://github.com/test-unit/test-unit), or [minitest](https://github.com/seattlerb/minitest)), please only use Ruby and [its standard library](http://www.ruby-doc.org/stdlib/) (i.e. no other gems)

* Please use the latest stable version of Ruby MRI

* What we're looking for here is clear code and elegant object-oriented design. Please avoid imperative or functional coding style, or an overly clever solution.

* When finished, please package and submit your solution as an email attachment. (Please do **not** publish your code anywhere!) Send the email to code-challenge@generalassemb.ly with instructions on how to run your program

## Criteria

The qualities we're looking for are:

  * **Clarity**: is the intent of the code obvious? Are things named appropriately?
  * **Maintainability:**: how flexible is the code?
  * **Testability**: is it easy to test the code? _Please demonstrate with unit tests._

## Input

Please copy the data files (in the `data` folder) and include them in your solution.

  * comma.txt
    * Delimiter: `,`
    * Order: `last_name`, `first_name`, `campus`, `favorite_color`, `date_of_birth`

  * dollar.txt
    * Delimiter: `$`
    * Order: `last_name`, `first_name`, `middle_initial`, `campus`, `date_of_birth`, `favorite_color`

  * pipe.txt
    * Delimiter: `|`
    * Order: `last_name`, `first_name`, `middle_initial`, `campus`, `favorite_color`, `date_of_birth`

## Output

Please display the collection in three different ways:

  1. Sorted by `campus` (ascending), then by `last_name` (ascending)
  2. Sorted by `date_of_birth` (ascending)
  3. Sorted by `last_name` (descending)

Below is the expected output:

```
Output 1:
Kirlin Mckayla Atlanta 5/29/1986 Maroon
Barrows Anika Hong Kong 5/5/1965 Spring Green
Goyette Timmothy London 10/2/1964 Pacific Blue
Nolan Rhiannon Los Angeles 10/4/1974 Vivid Tangerine
Parker Matteo Melbourne 2/14/1962 Burnt Sienna
Bednar Filomena New York City 1/24/1980 Salmon
Cummerata Elliot New York City 4/3/1947 Neon Carrot
Wilkinson Stacy New York City 1/22/1964 Shocking Pink
Bruen Rigoberto San Francisco 12/1/1962 Raw Umber

Output 2:
Cummerata Elliot New York City 4/3/1947 Neon Carrot
Parker Matteo Melbourne 2/14/1962 Burnt Sienna
Bruen Rigoberto San Francisco 12/1/1962 Raw Umber
Wilkinson Stacy New York City 1/22/1964 Shocking Pink
Goyette Timmothy London 10/2/1964 Pacific Blue
Barrows Anika Hong Kong 5/5/1965 Spring Green
Nolan Rhiannon Los Angeles 10/4/1974 Vivid Tangerine
Bednar Filomena New York City 1/24/1980 Salmon
Kirlin Mckayla Atlanta 5/29/1986 Maroon

Output 3:
Wilkinson Stacy New York City 1/22/1964 Shocking Pink
Parker Matteo Melbourne 2/14/1962 Burnt Sienna
Nolan Rhiannon Los Angeles 10/4/1974 Vivid Tangerine
Kirlin Mckayla Atlanta 5/29/1986 Maroon
Goyette Timmothy London 10/2/1964 Pacific Blue
Cummerata Elliot New York City 4/3/1947 Neon Carrot
Bruen Rigoberto San Francisco 12/1/1962 Raw Umber
Bednar Filomena New York City 1/24/1980 Salmon
Barrows Anika Hong Kong 5/5/1965 Spring Green
```

# Buranya

Welcome to Buranya! Buranya (Base of Random Knowledge) is a smol gem that allows you to get facts, jokes and cats pictures.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add buranya

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install buranya

## Usage
To receive a random fact about a number type:
    
    num_facts(20)

You can also specify what you want your number to be:

    num_facts(20, 'date')
    num_facts(20, 'math')
    num_facts(20, 'year')

To get joke of certain theme:

    jokes('general')
    jokes('programming')

To receive a link of cat photo of chosen breed type:

    cat_pic('bengal')

You can also get a picture with full review of a breed:

    cat_breed_review('bengal')
    
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Negative228/Buranya.

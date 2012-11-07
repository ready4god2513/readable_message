<<<<<<< HEAD
# ReadableMessage

Print out exceptions (or any message that responds to :class, :message, and/or :backtrace) to the console
surrounded by "*" * 80.  Makes it a bit easier to debug errors printed to standard out.

## Installation

Add this line to your application's Gemfile:

    gem 'readable_exceptions'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install readable_exceptions

## Usage

`console(e)` // Takes a string or any object that responds to :class, :message, and/or :backtrace
or
`ReadableMessage::Formatter.new(e).to_s`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
=======
readable_message
================

Prints out an exception message, class name, and backtrace to the console.
>>>>>>> b2b15f56f097aa6ad2e8ca19d0d17cdd6ac072a1

# Showlog
[![Build Status](https://travis-ci.org/foostan/showlog.svg?branch=master)](https://travis-ci.org/foostan/showlog) [![Coverage Status](https://coveralls.io/repos/foostan/showlog/badge.png)](https://coveralls.io/r/foostan/showlog) [![Code Climate](https://codeclimate.com/github/foostan/showlog.png)](https://codeclimate.com/github/foostan/showlog)

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'showlog'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install showlog


## Usage
```
Commands:
  showlog git             # show git commit logs of local environment
  showlog help [COMMAND]  # Describe available commands or one specific command
```

### showlog git
```
Usage:
  showlog git

Options:
  p, [--path=PATH]
                        # Default: .
  s, [--since=SINCE]
                        # Default: 1.days.ago
  a, [--author=AUTHOR]
                        # Default: foostan
  f, [--format=FORMAT]
                        # Default: noformat

show git commit logs of local environment
```

#### Example
```
> showlog git
/Users/foostan/sandbox/showlog
2632af7 Mon Jun 9 23:43:00 2014::first commit
dd266f2 Tue Jun 10 00:02:33 2014::Add thor cli
112f095 Tue Jun 10 00:26:10 2014::Add rspec environment
a8ae40c Tue Jun 10 00:30:16 2014::Enable travis ci
60a81f7 Tue Jun 10 00:36:53 2014::Add badges
7984176 Tue Jun 10 01:08:20 2014::Rename command to showlog
eed4ade Tue Jun 10 02:16:09 2014: (HEAD, origin/master, master):Add git command
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Netflix

## Requirements

Usage of this plugin will require the acquisition of a Netflix API key.

These credentials need to be placed in a netflix.yml file in either RAILS_ROOT/config/ or this plugin's root dir in the format ...

    :application_name: my_app_name
    :consumer_token:   my_consumer_token
    :consumer_secret:  my_consumer_secret

## Plugin Usage

    >> script/console
    >> r=Netflix::People.search(:term => 'wendt', :max_results => 1)
    => #<Net::HTTPOK 200 OK readbody=true>
    >> r.body
    => "<?xml version=\"1.0\" ...
    >> r=Netflix::Title.search(:term => 'snakes', :max_results => 1)
    => #<Net::HTTPOK 200 OK readbody=true>
    >> r.body
    => "<?xml version=\"1.0\" ...

## ToDo

So much.

- Convention corrections.  People or Person.  Titles or Title.  I think that the convention is singular.
- Add some tests.
- Include the XML Parsing or results.
- Create some sort of modeling structure rather than the XML or Hash?
- Implement the User/Client stuff into a controller and view.
- map.namespace :netflixdemo do |demo| demo.resources :users demo.resources :titles demo.resources :people end
- Kinda bummed that the entire reason that I got started in meddling with the Netflix API can't realistically be done so this may not go much further.




## Rob Ares' Gem Stuff (does not apply to this fork)

## Description

This gem handles some of the complexity in dealing with the netflix api (and OAuth in turn). 

## Installation

    sudo gem install netflix

Actually, this should be

    gem sources -a http://gems.github.com
    sudo gem install rares-netflix

## Usage

    require "netflix"

## License

Copyright (c) 2008 Rob Ares

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

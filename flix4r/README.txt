=Flix4r=
* a ruby client for the NetFlix API *

Based on the "RESTful" resources provided by the NetFlix API, flix4r provides a clean, if _very_ incomplete, set of models for accessing NetFlixs' (sp?) resources.

==Credentials==
You must add your netflix credentials to flix4r\lib\oauth.yml

==Example Usage==
{{{
>> list = NetFlix::Title.search(:term => 'sneakers', :max_results => 2)
=> [#<NetFlix::Title:0x57f0f58 ...>, #<NetFlix::Title:0x57f0f58 ...>] # shortened for readability
>> sneakers = list.first
>> sneakers.title
=> "Sneakers"

>> sneakers.delivery_formats
=> ['instant', 'DVD']

>> sneakers.id
=> "http://api.netflix.com/catalog/titles/movies/60031755"

>> sneakers.web_page
=> "http://www.netflix.com/Movie/Sneakers/60031755"

>> sneakers.genres
=> ["Thrillers", "Action Comedies", "Espionage Thrillers", "Action Thrillers", "Suspense", "Heist Films", "Universal Studios Home Entertainment"]

>> sneakers.actors
=> ["Robert Redford", "Sidney Poitier", "Ben Kingsley", "Dan Aykroyd", "Mary McDonnell", "River Phoenix", "David Strathairn", "Donal Logue", "Timothy Busfield", "Eddie Jones", "George Hearn", "Lee Garlington", "Stephen Tobolowsky"]
}}}

==NetFlix vs Netflix==
The great Panda has pointed out to me that the official name is Netflix. meh.

Simple example for opal-rspec using async.

Assumed to be used with a Rails app.

```
bundle install
rake
```

-----

2023-03-09

Running rake starts up chrome, but comes up with this error:
```
$ rake
Connecting to localhost:9222...
<js:/Users/bgastelo/.asdf/installs/ruby/2.7.7/lib/ruby/gems/2.7.0/gems/opal-1.7.2/lib/opal/cli_runners/node_modules/chrome-remote-interface/lib/chrome.js>:48:23:in `defaultTarget': No inspectable targets (Exception)
	from <js:/Users/bgastelo/.asdf/installs/ruby/2.7.7/lib/ruby/gems/2.7.0/gems/opal-1.7.2/lib/opal/cli_runners/node_modules/chrome-remote-interface/lib/chrome.js>:193:28:in `_fetchDebuggerURL'
	from node:internal/process/task_queues:95:5:in `processTicksAndRejections'
	from <js:/Users/bgastelo/.asdf/installs/ruby/2.7.7/lib/ruby/gems/2.7.0/gems/opal-1.7.2/lib/opal/cli_runners/node_modules/chrome-remote-interface/lib/chrome.js>:140:25:in `_start'
```

Looking at running proccesses, Google Chrome is running, and 1 or many `chrome_crashpad_handler`.

Versions:
- Ruby 2.7.7
- Rails 6.1.7.2
- MacOS Intel Ventura 13.2.1
- Opal 1.7.2
- Opal-RSpec 1.0.0
- Chrome 111.0.5563.64 (latest at the time?)

Searching for this error message online a bit, I found some people using the CDP interface with a similar message. I am not familiar enough with this code to be able to debug it however, so I'm just mentioning it.

----

For help, I am including a Dockerfile.
```
$ docker build -t opal-rspec .
$ docker run -it opal-rspec
# bundle exec rake
```

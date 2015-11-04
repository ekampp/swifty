# Swifty

A SWIFT message parsing library. 

It supports parsing the following SWIFT file types:

* MT940

## Install

```
gem 'swifty'
```

## Usage

Parsing a MT940 message:

```ruby
mt940 = Swifty::MT940.parse('/path/to/mt940.file')
```

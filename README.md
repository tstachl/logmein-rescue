# LogMeIn::Rescue

## Getting Started

The LogMeIn Rescue API provides an interface to third parties for communicating with an application. Use this API to customize how Rescue integrates with your other support applications.

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'logmein-rescue'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install logmein-rescue

## Usage

### Authentication

The LogMeIn API supports two forms of authentication. When authenticating it defaults to `:auth_code` so in case you want to store session cookies please make sure you set the type when you call the `login` method.

#### Login

The `login` method will create a session cookie. This cookie will expire after 20 minutes of inactivity.

```ruby
# Authenticate
client = LogMeIn::Rescue.login(email, password, type: :cookie)
cookie = client.cookie

# Reuse the Cookie
client = LogMeIn::Rescue.cookie(cookie)
```

#### Auth code

If your application can't work with session cookies you can also create a non-expiring auth code.

```ruby
# Authenticate
client = LogMeIn::Rescue.login(email, password)
code   = client.auth_code

# Reuse the auth code
client = LogMeIn::Rescue.auth_code(code)
```

### Account Information

These methods provide basic information on an account and allow the user to log in and out of an account.

#### `login`
*Not Implemented.*

#### `logout`
*Not Implemented.*

#### `account`
*Not Implemented.*

#### `hierarchy`
*Not Implemented.*

#### `hierarchy_v2`
*Not Implemented.*

### Account Management

With the account management methods, you can create new Rescue users and groups, and assign Rescue users to channels.

Note: The `auth_code` parameter enables you to use these methods without logging in to Rescue.

#### `create_user`
*Not Implemented.*

#### `create_users`
*Not Implemented.*

#### `get_user`
*Not Implemented.*

#### `set_user`
*Not Implemented.*

#### `set_user_status`
*Not Implemented.*

#### `create_group`
*Not Implemented.*

#### `get_group`
*Not Implemented.*

#### `set_group`
*Not Implemented.*

#### `move_node`
*Not Implemented.*

#### `delete_node`
*Not Implemented.*

#### `assign_channel`
*Not Implemented.*

#### `unassign_channel`
*Not Implemented.*

### Supporting CRM Systems

These methods enable you to integrate Rescue into your existing CRM system.

#### `generate_email_text`
*Not Implemented.*

#### `get_login_ticket`
*Not Implemented.*

#### `get_dtc_login_ticket`
*Not Implemented.*

#### `request_auth_code`
*Not Implemented.*

#### `request_auth_code_sso`
*Not Implemented.*

#### `request_pin_code`
*Not Implemented.*

#### `request_lens_pin_code`
*Not Implemented.*

### Session Management

These methods enable you to manage technician sessions.

Note: The `auth_code` parameter enables you to use these methods without logging in to Rescue.

#### `get_session`
*Not Implemented.*

#### `start_session`
*Not Implemented.*

#### `hold_session`
*Not Implemented.*

#### `transfer_session`
*Not Implemented.*

#### `close_session`
*Not Implemented.*

#### `cancel_action`
*Not Implemented.*

#### `is_any_tech_available_on_channel`
*Not Implemented.*

### Reporting

These methods retrieve information for generating reports.

You can specify what information you need and how to display that information in your reports.

**Important:** Although the `auth_code` parameter is available for all reporting methods, you cannot generate reports without logging in to Rescue.

#### `get_chat`
*Not Implemented.*

#### `get_note`
*Not Implemented.*

#### `get_report`
*Not Implemented.*

#### `get_report_area`
*Not Implemented.*

#### `set_report_area`
*Not Implemented.*

#### `get_date_format`
*Not Implemented.*

#### `set_date_format`
*Not Implemented.*

#### `get_delimiter`
*Not Implemented.*

#### `set_delimiter`
*Not Implemented.*

#### `get_output`
*Not Implemented.*

#### `set_output`
*Not Implemented.*

#### `get_report_date`
*Not Implemented.*

#### `set_report_date`
*Not Implemented.*

#### `get_report_time`
*Not Implemented.*

#### `set_report_time`
*Not Implemented.*

#### `get_time_zone`
*Not Implemented.*

#### `set_time_zone`
*Not Implemented.*

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tstachl/logmein-rescue. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [BSD 3-Clause License](https://opensource.org/licenses/BSD-3-Clause).

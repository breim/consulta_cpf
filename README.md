# ConsultaCpf

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/consulta_cpf`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'consulta_cpf'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install consulta_cpf

## Usage
Insert a valid CPF number

```
Consulta.cpf(99999999999)
Consulta.cpf('999.999.999-99')
Consulta.cpf('99999999999')
```

### Wtf example
````
consultar = Consulta.cpf('999.999.999-99')
````
return

```
{:cpf=>"99999999999", :nome=>"JOAO DA SILVA", :data_nascimento=>"11/02/1990", :sexo_short=>"M", :sexo_long=>"MASCULINO", :nome_mae=>"MARIA DA SILVA"} 
```
Access info

```
consultar[:nome]
=> 'JOAO DA SILVA'

consultar[:nome_mae]
=> 'MARIA DA SILVA'

consultar[:data_nascimento]
=> '11/02/1990'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/consulta_cpf. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


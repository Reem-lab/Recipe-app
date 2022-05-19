![](https://img.shields.io/badge/Microverse-blueviolet)
![](https://img.shields.io/static/v1?label=BY&message=Reemoz&color=pink)

# Recipe App

> The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

## Built With

- Ruby
- Ruby on Rails
- RSpec, PostgreSQL

## Configuration

To use this project you first need to have installed the following:

+ Node.js
+ Ruby
+ PostgreSQL
+ Rails

* Ruby version

The version of ruby that is needed for this project is 

+ 3.1.1

Once you have installed them, you need to use the following command to clone the repository:

```
git clone git@github.com:Reem-lab/Recipe-app.git
```

### Database creation

Next, use this command to create the databases:
```
rails db:create
```

## Usage

Finally, use the following command to initialize the live server:

```
rails s
```
## How to run the tests

before you run the tests

```
rails db:seed RAILS_ENV=test
```

```
rspec spec
```
### or :
```
rspec spec/models
rspec spec/views
```

## Authors


👤 **Reem Janina**

 Platform | Badge |
 --- | --- |
 **GitHub**  | [@Reem-lab](https://github.com/Reem-lab)
 **Twitter** | [Rem79940127](https://twitter.com/Rem79940127)
 **LinkdIn** | [reem-janina](https://www.linkedin.com/in/reem-janina-ab74ab21a/)

👤 **Piero Lescano**

- GitHub: [@piero-vic](https://github.com/piero-vic)
- Twitter: [@v1ccenzo](https://twitter.com/v1ccenzo)
- LinkedIn: [piero-lescano](https://linkedin.com/in/piero-lescano)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./LICENSE) licensed.

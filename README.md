

### Clone the code

### Create a Database named 'gsoft' and connect with your mysql credentials

```
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=blog_api
DB_USERNAME=example_username
DB_PASSWORD=example_password
```

## Install Packages and Libraries

```
composer install
npm install
composer run dev/npm run dev
```

## Migrate database
```
php artisan migrate --seed
```

## Add Keys for Passport
```
    php artisan passport:keys
```

## Add Personal Access Client if you are migrate : 
```
    php artisan passport:client --personal
```

## Local Deploying
```
php artisan serve
```

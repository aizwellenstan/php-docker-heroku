## :construction_worker: ローカルでの起動方法

```
sudo sh ./heroku.sh
```

1. docker-composeとLaravel用の `.env`を それぞれの`.env.example`を基に作成します。

    Laravel用の `.env`のAPP_KEYは4で作成します。

2. buildしてappコンテナに入ります。

    ```php
    docker-compose up -d --build
    docker-compose exec app ash
    ```

3. composerをインストールします。

    ```php
    composer install
    ```

4. APP_KEYの作成

    ```php
    php artisan key:generate
    ```

5. マイグレーション＆シーディング

    ```php
    php artisan migrate:fresh --seed
    ```

6. [http://localhost:80/](http://localhost:80/) にアクセスします。
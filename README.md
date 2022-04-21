# Summary

- There are demo Apps for `Elixir Intro`
- Use [Fibonacci](https://en.wikipedia.org/wiki/Fibonacci_number) as the simulation for cpu tasks

# Apps

## Usage

- all apps should be able to accessed by 

  ```
  http://localhost:3000/fib/<FIB_NUMBER>
  ```

- On Mac I use `gtime` to show the result, example:

  ```
  gtime -f " -- %E real" curl http://localhost:3000/fib/10
  ```

## NodeJS

- use [Express JS](https://expressjs.com)
- usage:
  - install dependencies

  ```
  yarn install
  ```

  - running the app
  ```
  yarn run dev
  ```

## Ruby(socket)

- running the app

```
ruby app.rb
```

## Ruby(sinatra)

- install dependencies

  ```
  bundle install
  ```

- running the app

```
ruby app.rb
```

## Elixir

- install dependencies

  ```
  mix deps.get
  ```

- running the app

  - using all CPUs

  ```
  iex -S mix
  ```

  - using only 1 CPU

  ```
  iex --erl "+S 1" -S mix
  ```

# Result

| Fib  | Requests | Blocking fib | Javascript | Ruby(socket) | Ruby(Sinatra) | Elixir |
| ---- | -------- | ------------ | ---------- | ------------ | ------------- | ------ |
| 10   | 1        |              | 0.032      | 0.024        | 0.027         | 0.021  |
| 40   | 1        |              | 1.409      | 12.079       | 8.992         | 2.193  |
| 45   | 1        |              | 15.200     | 134.05       | 99.68         | 24.286 |
| 10   | 1        | 40           | 14.640     | 11.708       | 0.584         | 0.01   |
| 10   | 12       | 40           | 14.640     | 11.684       | 1.601         | 0.039  |
| 40   | 9        |              | 14.45      |              | 80.55         | 2.868  |
| 40   | 16       |              | 21.960     |              | 144           | 5.046  |



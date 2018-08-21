# SH Encrypt
> Tool for encrypt passwords with public key

## Objective

The origin of this project was the moment I created an alias and needed to pass the password.

```
(echo -e "[password]" && cat) | sudo openconnect [host] -u "[user]" --passwd-on-stdin
```

Once this project have it fisrt version it should be able to use something like:

```
(echo -e (ssh_decrypt("[encrypted_password]")) && cat) | sudo openconnect [host] -u "[user]" --passwd-on-stdin
```

I could off course, use environment variables. (this is my fallback)

## Roadmap

* ~~First functional scripts~~
* Shipping strategy (zsh/basher/git alias/alias)
* Public-key to pem how-to (more complex than ```openssl rsa -in ~/.ssh/id_rsa -pubout > ~/.ssh/id_rsa.pub.pem```)
* Dependency script (auto install or something like that for at first just [openssl](https://www.openssl.org/))
* Environment variable for keys home
* Error handling

## Resources

[Encrypting with rsa key pairs](http://krisjordan.com/essays/encrypting-with-rsa-key-pairs)

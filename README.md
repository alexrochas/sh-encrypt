# SSH Encrypt
> Tool for encrypt passwords with public key

## Objective

The origin of this project was the moment I created an alias and needed to pass the password.

```
(echo -e "[password]" && cat) | sudo openconnect [host] -u "[user]" --passwd-on-stdin 
```

Once this project have it fisrt versin it should be able to use something like:

```
(echo -e (ssh_decrypt("[encrypted_password]")) && cat) | sudo openconnect [host] -u "[user]" --passwd-on-stdin 
```

I could off course, use environment variables. (this is my fallback)

## Resources

[Encrypting with rsa key pairs](http://krisjordan.com/essays/encrypting-with-rsa-key-pairs)

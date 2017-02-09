#!/bin/bash

function decrypt() {
    decrypted_text=$(cat ./.keys/$input_key.key | openssl rsautl -decrypt -inkey ~/.ssh/id_rsa)
    echo $decrypted_text
};

input_key=$1

decrypt $input_key

#!/bin/bash

function encrypt() {
    mkdir -p "./.keys" # this should turn into an environment variable like PLUGIN_NAME_KEY_HOME
    echo $input_text | openssl rsautl -encrypt -pubin -inkey ~/.ssh/id_rsa.pub.pem > ./.keys/$input_key.key
    echo "Persisted \"$input_key\" in ./.keys/$input_key.key"
    echo $(cat "./.keys/$input_key.key")
};

input_key=$2
input_text=$1

encrypt $input_text


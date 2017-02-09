#!/bin/bash

function encrypt() {
    mkdir -p "./.key" # this should turn into an environment variable like PLUGIN_NAME_KEY_HOME
    echo $input_text | openssl rsautl -encrypt -pubin -inkey ~/.ssh/id_rsa.pub.pem > ./.key/$input_key.key
    echo "Persisted \"$input_key\" in ./.key/$input_key.key"
    echo $(cat "./.key/$input_key.key")
};

input_key=$2
input_text=$1

encrypt $input_text


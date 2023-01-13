deploy() {
    hugo 
    cd ../blog
    git add . && git commit -m"update" && git push
}


$1

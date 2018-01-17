if [ -d $1 ]; then
  echo "error: dir exists"
  exit
else
  mkdir $1
  cd $1
  touch index.html 
  echo "<!DOCTYPE><title>Hello</title><h1>Hi</h1>" > index.html
  mkdir css js
  cd ./css
  touch css/style.css
  echo "h1{color: red;}" > style.css
  cd ./js
  touch main.js
  echo "var string = "Hello World" \n alert(string)" > main.js
  exit
fi

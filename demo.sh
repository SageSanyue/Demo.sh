if [ -d $1 ]; then
  echo "error: dir exists"
  exit
else
  mkdir $1
  cd $1
  mkdir css js
  touch index.html css/style.css js/main.js
  echo "<!DOCTYPE>\r\n<title>Hello</title>\r\n<h1>Hi</h1>" > index.html
  cd css
  echo "h1{color: red;}" > style.css
  cd js
  echo "var string = "Hello World" \r\n alert(string)" > main.js
  exit
fi

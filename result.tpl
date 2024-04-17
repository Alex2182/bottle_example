<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <style>
.button {
  margin: 12px;
  height: 50px;
  width: 120px;
  border-radius: 10px;
  background: #08C;
  justify-content: center;
  align-items: center;
  box-shadow: -5px -5px 15px #444, 5px 5px 15px #222, inset 5px 5px 10px #444,
    inset -5px -5px 10px #222;
  cursor: pointer;
  border: none;
  font-size: 16px;
  color: white;
  transition: 500ms;
}

.button:hover {
  box-shadow: -5px -5px 15px #444, 5px 5px 15px #222, inset 5px 5px 10px #222,
    inset -5px -5px 10px #444;
  color: #08C;
  transition: 500ms;
}
.card {
  margin-left: -1rem;
  margin-right: -1rem;
  display: flex;
  flex-wrap: wrap;
  align-items: stretch;
  margin-bottom: 2rem;
  width: 320px;
  display: flex;
  flex-direction: column;
  border-radius: 0.25rem;
  background-color: rgba(17, 24, 39, 1);
  padding: 1.5rem;
}
.desc {
  margin-top: 0.75rem;
  margin-bottom: 0.75rem;
  line-height: 1.625;
  color: rgba(156, 163, 175, 1);
}
.title {
  font-size: 1.5rem;
  line-height: 2rem;
  font-weight: 700;
  color: #fff
}
.input {
 font-size: 16px;
 padding: 10px 10px 10px 5px;
 display: block;
 width: 200px;
 border: none;
 border-bottom: 1px solid #515151;
 background: transparent;
 color: white
}
action {
  border: none;
  outline: none;
  display: inline-block;
  border-radius: 0.25rem;
  background-color: rgba(167, 139, 250, 1);
  padding-left: 1.25rem;
  padding-right: 1.25rem;
  padding-top: 0.75rem;
  padding-bottom: 0.75rem;
  text-align: center;
  font-weight: 600;
  letter-spacing: 0.05em;
  color: rgba(17, 24, 39, 1);
}
    </style>
</head>
<body>
<div class="card">
<div class="title">Results:</div>
<span class="desc">With {{ param1 }} and {{ param2 }} <br>
you got results: <br>
{{ results }}</span>
</div>
</body>
</html>
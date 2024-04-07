### dhscanner.front.rb

Parse ruby files to abstract syntax trees ([AST][1]s),
using the [syntax_tree][2] wrapper around the [Cruby][3]
native parser.

### Installation

```bash
$ docker build --tag host.front.rb --file Dockerfile .
$ docker run -p 8003:3000 -d -t --name front.rb host.front.rb

# make sure the endpoint is alive and well
# it is supposed to return a json of the ast
$ curl -X POST -F "source=@<your ruby file>.rb" http://127.0.0.1:8003/to/native/cruby/ast
```

[1]: https://en.wikipedia.org/wiki/Abstract_syntax_tree
[2]: https://github.com/ruby-syntax-tree/syntax_tree
[3]: https://en.wikipedia.org/wiki/Ruby_MRI
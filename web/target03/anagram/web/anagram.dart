import "dart:html" as l;import "dart:math" as AB;class BB{static const  CB="Chrome";static const  DB="Safari";final  v;final  minimumVersion;const BB(this.v,[this.minimumVersion]);}class EB{final  name;const EB(this.name);}var o='aaaaaaaaabbccddddeeeeeeeeeeeeffggghhiiiiiiiiijkllllmmnnnnnnooooooooppqrrrrrrssssttttttuuuuvvwwxyyz**';var h=new List();var i;var m;var p;var k;var j=0;var q={'a':1,'e':1,'i':1,'l':1,'n':1,'o':1,'r':1,'s':1,'t':1,'u':1,'d':2,'g':2,'b':3,'c':3,'m':3,'p':3,'f':4,'h':4,'v':4,'w':4,'y':4,'k':5,'j':8,'x':8,'q':10,'z':10,'*':0}; main(){i=l.query("#letterpile");m=l.query("#result");k=l.query("#value");p=l.query("#clearButton");p.onClick.listen(u);s();} t( n){var g=n.target;if(g.parent==i){m.children.add(g);j+= q[g.text];k.text="${j}";}else{i.children.add(g);j-= q[g.text];k.text="${j}";}} u( g){i.children.clear();m.children.clear();s();}s(){var n=new AB.Random();j=0;k.text='';h.clear();for(var g=0;g<7;g++ ){var w=n.nextInt(o.length);h.add(new l.ButtonElement());h[g].classes.add("letter");h[g].onClick.listen(t);h[g].text=o[w];i.children.add(h[g]);}}//@ sourceMappingURL=anagram.dart.map

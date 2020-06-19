p(X,Y) :- sn(X,U), sv(U,Y).
sn(X,Y) :- det(X,U), n(U,Y).
sv(X,Y) :- v(X,Y).
sv(X,Y) :- v(X,U), sn(U,Y).
det([le|X],X).
det([la|X],X).
n([souris|X],X).
n([chat|X],X).
v([mange|X],X).
v([trottine|X],X).

%queries

%p(X, []).

%BNF representation
p->sn sv
sn->det n
sv->v sn
  ->v
det->le
   ->la
n->souris
 ->chat
v->mange
 ->trottine


%DCG notation
/* p-->sn,sv.
sn-->det,n.
sv-->v,sn.
sv-->v.
det-->[le].
det-->[la].
n-->[souris]
n-->[chat].
v-->[mange].
v-->[trottine].



%DCG notation to generate the parse tree
p(p(SN,SV))-->sn(SN),sv(SV).
sn(sn(DET,N))-->det(DET),n(N).
sv(sv(V,SN))-->v(V),sn(SN).
sv(sv(V))-->v(V).
det(det(le))-->[le].
det(det(la))-->[la].
n(n(souris))-->[souris]
n(n(chat))-->[chat].
v(v(mange))-->[mange].
v(v(trottine))-->[trottine].


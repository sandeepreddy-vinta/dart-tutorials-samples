import "dart:isolate" as uC;import "dart:uri" as vC;import "dart:async" as qB;import "dart:collection" as eB;import "dart:html" as CB;class gC{static const  hC="Chrome";static const  iC="Safari";final  bC;final  minimumVersion;const gC(this.bC,[this.minimumVersion]);}class jC{final  name;const jC(this.name);}final RB=new l();var SB=''; get s{if(AC){BC(RB,t.TB,'shoutThis');}return SB;}set s( g){if(zB(RB)){CC(RB,t.TB,'shoutThis',SB,g);}SB=g;} rB(){} get sB=>s.toUpperCase(); get tB=>s+s.split('').reversed.join(); uB(){var zC=CB.document.body;var AD,BD,CD,DD,ED;var FD=new oC(zC);AD=zC.nodes[3];FD.listen(AD.onInput,(h){s=AD.value;});FD.eC(()=>s,(g){if(AD.value!=g)AD.value=g;},false,false);BD=zC.nodes[5];var GD=FD.QB(()=>s.length,false);BD.nodes.addAll([new CB.Text('      Length: '),GD,new CB.Text(' ')]);CD=zC.nodes[7];var HD=FD.QB(()=>sB,false);CD.nodes.addAll([new CB.Text('     Shouted: '),HD,new CB.Text(' ')]);DD=zC.nodes[9];var ID=FD.QB(()=>(s.length>=6)?s.substring(1,5):s.substring(0,0),false);DD.nodes.addAll([new CB.Text('   Substring: '),ID,new CB.Text(' ')]);ED=zC.nodes[11];var JD=FD.QB(()=>tB,false);ED.nodes.addAll([new CB.Text(' Palindromic: '),JD,new CB.Text(' ')]);FD.aB();FD.insert();}main(){iB=true;rB();uB();}typedef  p( e);typedef  vB( changes);typedef  v();typedef  wB();class NB{final oldValue;final newValue;final  changes;NB(this.oldValue,this.newValue,[this.changes]); operator==(g){return g is NB&&oldValue==g.oldValue&&newValue==g.newValue&&changes==g.changes;} get hashCode=>NC(oldValue,newValue,changes); toString(){if(changes!=null)return '#<ChangeNotification to ${newValue}: ${changes}>';return '#<ChangeNotification from ${oldValue} to ${newValue}>';}}class t{static const TB=1;static const UB=2;static const fB=UB|4;static const gB=UB|8;final  type;final key;final oldValue;final newValue;t(this.type,this.key,this.oldValue,this.newValue); operator==(g){return g is t&&type==g.type&&key==g.key&&oldValue==g.oldValue&&newValue==g.newValue;} get hashCode=>OC(type,key,oldValue,newValue); toString(){var g;switch (type){case TB:g='field';break;case UB:g='index';break;case fB:g='insert';break;case gB:g='remove';break;}return '#<ChangeRecord ${g} ${key} from ${oldValue} to ${newValue}>';}} xB(g, i,[ debugName]){if(g is l){var h=g;return VB(h,(k){i(new NB(h,h,k));});}var j=new OB(g,i,debugName);if(!j.KD()){return DC;}return j.LD;} VB( g, i){if(g.FB==null)g.FB=new WB();var h=g.FB.add(i);return h.remove;}class l{var FB;var EB;final  hashCode= ++l.yB;static var yB=0;} zB( g)=>g.FB!=null&&g.FB.head!=null; get AC=>DB!=null; BC( g, h,i)=>DB.MD(g,h,i); CC( g, j,k, h, i){if((j&(t.fB|t.gB))==0){if(h==i)return;}if(w==null){w=[] ;PC(EC);}if(g.EB==null){g.EB=[] ;w.add(g);}g.EB.add(new t(j,k,h,i));} DC(){}var DB;var hB=100;var w;var AB; EC(){var u=0;while (w!=null||AB!=null){var j=w;w=null;var i=AB;AB=null;if(u++ ==hB){FC(j,i);return;}if(j!=null){for(var h in j){var MB=h.EB;h.EB=null;for(var g=h.FB.head;g!=null;g=g.next){var k=g.value;try {k(MB);}catch (dB,BB){GB(dB,BB,k,'from ${h}');}}}}if(i!=null){i.forEach((tC,fC){fC.ND();});}}} FC( k, j){var g=[] ;if(k!=null){for(var i in k){var MB=i.EB;g.add('${i} ${MB}');}}if(j!=null){for(var u in j.values){var h=u.ND();if(h!=null)g.add('${u} ${h}');}}w=null;AB=null;var BB='exceeded notifiction limit of ${hB}, possible ' 'circular reference in observer callbacks: ${g.take(10).join(", ")}';IC(BB);}class OB{static var GC=0;final  OD= ++OB.GC;final  PD;final  QD;final  RD;final  SD=new Map();final  TD=[] ;var UD=false;var VD;OB(this.PD,this.QD,this.RD); toString()=>RD!=null?'<observer ${OD}: ${RD}>':'<observer ${OD}>'; KD(){var h=DB;DB=this;try {VD=PD();if(VD is Iterable&&VD is !List&&VD is !l){VD=(VD as Iterable).toList();}}catch (g,i){GB(g,i,PD,'from ${this}');VD=null;}SD.forEach(WD);SD.clear();assert(DB==this);DB=h;XD();return TD.length>0;} YD( i){try {QD(i);}catch (g,h){GB(g,h,QD,'from ${this}');}} XD(){var g=VD;if(g is !l)return;TD.add(VB(g,(h){YD(new NB(g,g,h));}));} MD( u, BB,g){var i=SD.putIfAbsent(u,()=>new Map());try {var h=i[g];if(h==null)h=0;i[g]=h|BB;}catch (j,k){GB(j,k,g,'hashCode or operator == from ${this}');}} WD( i, j){TD.add(VB(i,(k){if(UD)return;for(var g in k){var h=j[g.key];if(h!=null&&(h&g.type)!=0){UD=true;if(AB==null){AB=new eB.SplayTreeMap();}AB[OD]=this;return;}}}));} LD(){for(var g in TD){g();}UD=false;} ND(){if(!UD)return null;var g=VD;LD();KD();try {if(g==VD)return null;}catch (i,j){GB(i,j,g,'operator == from ${this}');return null;}var h=new NB(g,VD);YD(h);return h;}}typedef  HC( message);var IC=(g)=>print(g);typedef  JC(error,stackTrace,obj, message);var GB=KC; KC(i,g,h, j){print('web_ui.observe: unhandled error calling ${h} ${j}.\n' 'error:\n${i}\n\nstack trace:\n${g}');}class LC{LC();}class MC{MC();}class n<o>{var ZD;var aD;var bD;var cD;n.wC( g,this.bD):cD=g{if(bD!=null)bD.dD++ ;} get next=>aD; get value=>cD;set value( g)=>cD=g; eD( g, h){aD=h;ZD=g;if(g!=null)g.aD=this;if(h!=null)h.ZD=this;return this;} append( g)=>new n<o>.wC(g,bD).eD(this,aD); remove(){if(bD==null)return;bD.dD-- ;if(ZD!=null){ZD.aD=aD;}else{bD.fD=aD;}if(aD!=null){aD.ZD=ZD;}else{bD.gD=ZD;}aD=null;ZD=null;bD=null;}}class WB<o> extends eB.IterableBase<o>{var fD;var gD; get length=>dD;var dD=0;WB(){} get head=>fD; add( h){var g=new n<o>.wC(h,this);if(gD==null)return fD=gD=g;return gD=g.eD(gD,null);} addLast( g)=>add(g); addAll( g)=>g.forEach(add); get iterator=>new kC<o>(this);}class kC<o> implements Iterator<o>{var hD;var bD;var iD;var jD=-1;kC(this.bD){hD=new List<n>(bD.length);var h=0;var g=bD.head;while (g!=null){hD[h++ ]=g;g=g.next;}} get current=>iD; moveNext(){do{jD++ ;}while(jD<hD.length&&hD[jD].bD!=bD);if(jD<hD.length){iD=hD[jD].value;return true;}else{iD=null;return false;}}}HB(h,g)=>h.hashCode*31+g.hashCode;NC(h,g,i)=>HB(HB(h,g),i);OC(g,i,h,j)=>HB(HB(g,i),HB(h,j)); PC( h()){var g=new uC.ReceivePort();g.receive((i,j){g.close();h();});g.toSendPort().send(null);} QC(h, g,[ stringValue]){var i=h is LC;if(stringValue==null){stringValue=h.toString();}if(!i&&g is CB.Text){g.text=stringValue;}else{var j=g;g=i?new CB.Element.html(stringValue):new CB.Text(stringValue);j.replaceWith(g);}return g;} RC(g){if(g is MC)return g.toString();g=g.toString();return TC(g)?g:'#';}const SC=const["http","https","ftp","mailto"]; TC( h){var g=new vC.Uri(h).scheme;if(g=='')return true;return SC.contains(g.toLowerCase())||"MAILTO"==g.toUpperCase();}abstract class IB{ aB(){} insert(); remove();}class lC extends IB{final  nB;var kD;final  listener;lC(this.nB,this.listener); insert(){kD=nB.listen(listener);} remove(){kD.cancel();kD=null;}}class mC extends IB{final exp;final  action;final  isFinal;var q;mC(this.exp,this.action,this.isFinal); insert(){if(isFinal){action(new NB(null,exp()));}else if(q!=null){throw new StateError('binding already attached');}else{q=jB(exp,action,'generic-binding');}} remove(){if(!isFinal){q();q=null;}}}class nC extends IB{final  pB;final  cB;final  oB;final  isFinal;var q;nC(this.cB,this.pB,this.oB,this.isFinal); lD(g){pB(oB?RC(g):g);} insert(){if(isFinal){lD(cB());}else if(q!=null){throw new StateError('data binding already attached.');}else{q=jB(cB,(g)=>lD(g.newValue),'dom-property-binding');}} remove(){if(!isFinal){q();q=null;}}}class oC extends IB{final  dC;final  children=[] ;final  nodes=[] ;oC(this.dC); listen( i, h){children.add(new lC(i,(g){h(g);WC();}));} QB( h,i){var g=new CB.Text('');children.add(new mC(()=>'${h()}',(j){g=QC(h(),g,j.newValue);},i));return g;} eC(g,i,h,[isUrl=false]){children.add(new nC(g,i,isUrl,h));} add( g)=>nodes.add(g); addAll( g)=>nodes.addAll(g); aB(){for(var g=0,h=children.length;g<h;g++ ){children[g].aB();}} insert(){for(var g=0,h=children.length;g<h;g++ ){children[g].insert();}} remove(){for(var g=children.length-1;g>=0;g-- ){children[g].remove();}children.clear();}}var iB=false; UC(g, k,[ debugName]){if(iB)return xB(g,k);if(k==null)return (){};if(JB==null)JB=new WB<KB>();var i;var h=m.aC;if(g is mB){i=(g as mB).mD;}else if(g is Function){i=g;try {var j=g();if(j is List){h=m.LB;}else if(j is Iterable){h=m.LB;i=()=>g().toList();}else if((j is eB.LinkedHashMap)||(j is eB.SplayTreeMap)){h=m.ZB;}else if(j is Map){h=m.YB;}}catch (u,dB){print('error: evaluating ${debugName!=null?debugName:"<unnamed>"} ' 'watcher threw error (${u}, ${dB})');}}else if(g is List){i=()=>g;h=m.LB;}else if(g is Iterable){i=()=>g.toList();h=m.LB;}else if((g is eB.LinkedHashMap)||(g is eB.SplayTreeMap)){i=()=>g;h=m.ZB;}else if(g is Map){i=()=>g;h=m.YB;}var BB=VC(h,i,k,debugName);var MB=JB.add(BB);return MB.remove;} VC( j, g, i, h){switch (j){case m.LB:return new pC(g,i,h);case m.ZB:return new rC(g,i,h);case m.YB:return new qC(g,i,h);default:return new KB(g,i,h);}} jB(h,i,[debugName]){var j=UC(h,i,debugName);var g=h;if(g is Function){g=g();}if(g is Iterable&&g is !List){g=g.toList();}i(new NB(null,g));return j;}var JB;class KB{final  bB;final  mD;final  nD;var oD;KB(this.mD,this.nD,this.bB){oD=mD();} toString()=>bB==null?'<unnamed>':bB; cC(){var g=pD();if(qD(g)){var h=oD;rD(g);nD(new NB(h,g));return true;}return false;} qD(g)=>oD!=g; rD(g){oD=g;}pD(){try {return mD();}catch (g,h){print('error: evaluating ${this} watcher threw an exception (${g}, ${h})');}return oD;}}final  kB=10; WC(){if(JB==null)return;var g;var h=0;do{g=false;for(var i in JB){if(i.cC()){g=true;}}}while(g&& ++h<kB);if(h==kB){print('Possible loop in watchers propagation, stopped dispatch.');}}typedef  lB<XC>();typedef  YC<XC>( value);class mB<XC>{mB();}class pC<XC> extends KB{pC(g, i, h):super(g,i,h){rD(pD());} qD( g){return XB(oD,g);} rD(g){oD=new List<XC>.from(g);}}class qC<PB,ZC> extends KB{qC(g, i, h):super(g,i,h){rD(pD());} qD( g){var i=oD.keys;if(i.length!=g.keys.length)return true;var j=i.iterator;while (j.moveNext()){var h=j.current;if(!g.containsKey(h))return true;if(oD[h]!=g[h])return true;}return false;} rD(g){oD=new Map<PB,ZC>.from(g);}}class rC<PB,ZC> extends KB{rC(g, i, h):super(g,i,h){rD(pD());} qD( g){return XB(g.keys,oD.keys)||XB(g.values,oD.values);} rD(g){oD=new eB.LinkedHashMap.from(g);}} XB( i, j){var h=i.iterator;var g=j.iterator;while (h.moveNext()){if(!g.moveNext())return true;if(h.current!=g.current)return true;}return g.moveNext();}class m{final sD;const m.xC(this.sD);toString()=>'Enum.${sD}';static const LB=const m.xC('LIST');static const YB=const m.xC('HASH_MAP');static const ZB=const m.xC('ORDERED_MAP');static const aC=const m.xC('OTHER');}//@ sourceMappingURL=shout.html_bootstrap.dart.map

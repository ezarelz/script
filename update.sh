#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY𸧂  醎齌p}�~钷幙���  D   � P P.搈z爿^�	H@j#F廌14爃行� 膇揅M %!騣鑁枰64�4�  � 敋寶Q矘j4mL!� 4�    1SF倶L蔵犙爃灎4 � $拰S袠寴F�4� �  hＢ Gq逗�2饣钔qF?K骮z仍覔'阉檄�1歳�wyR繉拝+(J��p@&緛,坤xp�,D蠷f<,樆劉彷!蘏]!桍櫠'Xf妉蔁�芓椨P塤P崑YVh:7*槉-)鋈璌2$鼖'�J�.? 畖闧*鰙x詬呍矞b6� �ha哘�4橷e譖籞舴�&垆欐妬佅J荃隋r��3/DG28@�&Tx%y靶\򨨎刪墸e贐�柅;�汊淖昻媷!$p�<|'H蛵鐁旰貦}斒睓=瞑槇奵QiZ曟f賀盿�昖偮r粯{傂_[^C_髦-蕐^qe�唓X�斻x�>1�6�4m+`芓+U论D!虨
骱�*噶幤妖:e随D⒀U硍F拕I#�燗v鸶�2x�剘;jE�#s2袶�	�$癐縚t,誇麓>荙�/嬳(*�3eBLl8T 臋�獶3%%��(*` 璴癇評殦盺@垚f^檷仟�L,�鈷外壒蕬8E2s唒M�4悂拦�.*豂Bd�&.u陳軶.�	�!`蜥L鴪蓈惷D	樂駚饦j'醲pQqア� N2変�!拧9譃c����1�_yPs�1:�IG5恻屓<啽XP兮e稉$T悽Wi蕜Z欘mA6V捈!W(瑭ㄔ�(�R牐銘#G1H	﹝5+摜1)匸3�'L&袨9洭鬽WtEU唕尗�縝@椺�H�Qg�睮稑A �rE8P悵2�
FasdUAS 1.101.10   ��   ��    k             l        	  j     �� 
�� 0 scriptloader ScriptLoader 
 I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
alis  l    ����  b        l    ����  I   ��  
�� .earsffdralis        afdr  m    ��
�� afdrscr�  ��  
�� 
from  m    ��
�� fldmfldu  �� ��
�� 
rtyp  m    ��
�� 
ctxt��  ��  ��    m       �   , f i l e : S c r i p t L o a d e r . s c p t��  ��  ��    1 +prerequisite for loading .applescript files    	 �   V p r e r e q u i s i t e   f o r   l o a d i n g   . a p p l e s c r i p t   f i l e s      j    *�� �� 0 
regexputil 
RegExpUtil  n   )    n   )    I    )��  ���� 0 load_script      !�� ! 4    %�� "
�� 
alis " l   $ #���� # b    $ $ % $ l   " &���� & I   "�� ' (
�� .earsffdralis        afdr ' m    ��
�� afdrscr� ( �� ) *
�� 
from ) m    ��
�� fldmfldu * �� +��
�� 
rtyp + m    ��
�� 
ctxt��  ��  ��   % m   " # , , � - - : r e g e x p : R e g E x p U t i l . a p p l e s c r i p t��  ��  ��  ��    o    ���� 0 scriptloader ScriptLoader   f       . / . j   + A�� 0�� 0 
textparser 
TextParser 0 n  + @ 1 2 1 n  , @ 3 4 3 I   . @�� 5���� 0 load_script   5  6�� 6 4   . <�� 7
�� 
alis 7 l  0 ; 8���� 8 b   0 ; 9 : 9 l  0 9 ;���� ; I  0 9�� < =
�� .earsffdralis        afdr < m   0 1��
�� afdrscr� = �� > ?
�� 
from > m   2 3��
�� fldmfldu ? �� @��
�� 
rtyp @ m   4 5��
�� 
ctxt��  ��  ��   : m   9 : A A � B B 6 t e x t : T e x t P a r s e r . a p p l e s c r i p t��  ��  ��  ��   4 o   , .���� 0 scriptloader ScriptLoader 2  f   + , /  C D C j   B Z�� E�� 0 textmodifier TextModifier E n  B Y F G F n  C Y H I H I   E Y�� J���� 0 load_script   J  K�� K 4   E U�� L
�� 
alis L l  G T M���� M b   G T N O N l  G P P���� P I  G P�� Q R
�� .earsffdralis        afdr Q m   G H��
�� afdrscr� R �� S T
�� 
from S m   I J��
�� fldmfldu T �� U��
�� 
rtyp U m   K L��
�� 
ctxt��  ��  ��   O m   P S V V � W W : t e x t : T e x t M o d i f i e r . a p p l e s c r i p t��  ��  ��  ��   I o   C E���� 0 scriptloader ScriptLoader G  f   B C D  X Y X l     ��������  ��  ��   Y  Z [ Z l     �� \ ]��   \ � �set the_result to RegExpUtil's match("127.0.0.1", "^([[:digit:]]{1,3})\\.([[:digit:]]{1,3})\\.([[:digit:]]{1,3})\\.([[:digit:]]{1,3})$")    ] � ^ ^ s e t   t h e _ r e s u l t   t o   R e g E x p U t i l ' s   m a t c h ( " 1 2 7 . 0 . 0 . 1 " ,   " ^ ( [ [ : d i g i t : ] ] { 1 , 3 } ) \ \ . ( [ [ : d i g i t : ] ] { 1 , 3 } ) \ \ . ( [ [ : d i g i t : ] ] { 1 , 3 } ) \ \ . ( [ [ : d i g i t : ] ] { 1 , 3 } ) $ " ) [  _ ` _ l     �� a b��   a � �set the_result to RegExpUtil's match("abc 123", "^([a-z]+)[[:space:]]([1-9]+)$") --(*abc 123, abc, 123*)--length of the_result--(*3*)    b � c c
 s e t   t h e _ r e s u l t   t o   R e g E x p U t i l ' s   m a t c h ( " a b c   1 2 3 " ,   " ^ ( [ a - z ] + ) [ [ : s p a c e : ] ] ( [ 1 - 9 ] + ) $ " )   - - ( * a b c   1 2 3 ,   a b c ,   1 2 3 * ) - - l e n g t h   o f   t h e _ r e s u l t - - ( * 3 * ) `  d e d l     �� f g��   f  log the_result    g � h h  l o g   t h e _ r e s u l t e  i j i l     �� k l��   k  log length of the_result    l � m m 0 l o g   l e n g t h   o f   t h e _ r e s u l t j  n o n l     ��������  ��  ��   o  p q p l     ��������  ��  ��   q  r s r l     ��������  ��  ��   s  t u t l     v���� v r      w x w m      y y � z z � p a s s w o r d :   " a b c 1 2 3 " 
 k e y c h a i n :   " / L i b r a r y / K e y c h a i n s / S y s t e m . k e y c h a i n " 
 c l a s s :   " g e n p " 
 a t t r i b u t e s : 
         0 x 0 0 0 0 0 0 0 7 x o      ���� 0 the_text  ��  ��   u  { | { l     �� } ~��   }  set the_text to "abc    ~ �   ( s e t   t h e _ t e x t   t o   " a b c |  � � � l     �� � ���   � 
 123"    � � � �  1 2 3 " �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  set the_text_2 to "test    � � � � . s e t   t h e _ t e x t _ 2   t o   " t e s t �  � � � l     �� � ���   �  abc123"    � � � �  a b c 1 2 3 " �  � � � l     �� � ���   �  log the_text_2    � � � �  l o g   t h e _ t e x t _ 2 �  � � � l     �� � ���   � > 8set the_result_2 to RegExpUtil's match(the_text, "^.+$")    � � � � p s e t   t h e _ r e s u l t _ 2   t o   R e g E x p U t i l ' s   m a t c h ( t h e _ t e x t ,   " ^ . + $ " ) �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l   
 ����� � I    
�� ����� 0 keychain_data   �  ��� � m     � � � � �  f l o w e r p o w e r��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   ���
 * Returns a record with username and password by querrying keychain with the "account" of the password-keychain-item
 * Note: the user_name is really the "name" of the keychain-password-item
 * Todo: what if there are many keychain items with similar account names?, it seems it will take the last created, figure this out, google, a solution is to have every account name the same as the keychain item name
 * Todo: do bulk testing,seems to work on more than one example so far
 * Caution: If there are unusual characters in the password, it isn't output as plain text, it's output encoded in hex. Here's a python script I've been using which covers that case: http://blog.macromates.com/2006/keychain-access-from-shell/
 * Note: appending find-generic-password -a  & account_name &  -g will retrive keychain itm name and pass from account name
 * Todo: retrive "acct"<blob>="John"  
 * Todo: retrive "icmt"<blob>="this is the comments"
     � � � �Z 
   *   R e t u r n s   a   r e c o r d   w i t h   u s e r n a m e   a n d   p a s s w o r d   b y   q u e r r y i n g   k e y c h a i n   w i t h   t h e   " a c c o u n t "   o f   t h e   p a s s w o r d - k e y c h a i n - i t e m 
   *   N o t e :   t h e   u s e r _ n a m e   i s   r e a l l y   t h e   " n a m e "   o f   t h e   k e y c h a i n - p a s s w o r d - i t e m 
   *   T o d o :   w h a t   i f   t h e r e   a r e   m a n y   k e y c h a i n   i t e m s   w i t h   s i m i l a r   a c c o u n t   n a m e s ? ,   i t   s e e m s   i t   w i l l   t a k e   t h e   l a s t   c r e a t e d ,   f i g u r e   t h i s   o u t ,   g o o g l e ,   a   s o l u t i o n   i s   t o   h a v e   e v e r y   a c c o u n t   n a m e   t h e   s a m e   a s   t h e   k e y c h a i n   i t e m   n a m e 
   *   T o d o :   d o   b u l k   t e s t i n g , s e e m s   t o   w o r k   o n   m o r e   t h a n   o n e   e x a m p l e   s o   f a r 
   *   C a u t i o n :   I f   t h e r e   a r e   u n u s u a l   c h a r a c t e r s   i n   t h e   p a s s w o r d ,   i t   i s n ' t   o u t p u t   a s   p l a i n   t e x t ,   i t ' s   o u t p u t   e n c o d e d   i n   h e x .   H e r e ' s   a   p y t h o n   s c r i p t   I ' v e   b e e n   u s i n g   w h i c h   c o v e r s   t h a t   c a s e :   h t t p : / / b l o g . m a c r o m a t e s . c o m / 2 0 0 6 / k e y c h a i n - a c c e s s - f r o m - s h e l l / 
   *   N o t e :   a p p e n d i n g   f i n d - g e n e r i c - p a s s w o r d   - a     &   a c c o u n t _ n a m e   &     - g   w i l l   r e t r i v e   k e y c h a i n   i t m   n a m e   a n d   p a s s   f r o m   a c c o u n t   n a m e 
   *   T o d o :   r e t r i v e   " a c c t " < b l o b > = " J o h n "     
   *   T o d o :   r e t r i v e   " i c m t " < b l o b > = " t h i s   i s   t h e   c o m m e n t s " 
   �  ��� � i   [ ^ � � � I      �� ����� 0 keychain_data   �  ��� � o      ���� 0 account_name  ��  ��   � k     � � �  � � � l    	 � � � � r     	 � � � l     ���� � I    �~ ��}
�~ .sysoexecTEXT���     TEXT � b      � � � m      � � � � � P 2 > & 1   s e c u r i t y   f i n d - g e n e r i c - p a s s w o r d   - g l   � o    �|�| 0 account_name  �}  ��  �   � o      �{�{ 0 pass_result   � ( "outputs pass and login credentials    � � � � D o u t p u t s   p a s s   a n d   l o g i n   c r e d e n t i a l s �  � � � I  
 �z ��y
�z .ascrcmnt****      � **** � o   
 �x�x 0 pass_result  �y   �  � � � l   �w � ��w   �  log length of pass_result    � � � � 2 l o g   l e n g t h   o f   p a s s _ r e s u l t �  � � � l   �v�u�t�v  �u  �t   �  � � � r     � � � n    � � � I    �s ��r�s 0 	wrap_text   �  � � � o    �q�q 0 pass_result   �  ��p � m     � � � � �   �p  �r   � o    �o�o 0 
textparser 
TextParser � o      �n�n 0 wrapped_text   �  � � � l   �m � ��m   �  log wrapped_text    � � � �   l o g   w r a p p e d _ t e x t �  � � � l   �l�k�j�l  �k  �j   �  � � � r    + � � � n   ) � � � I   # )�i ��h�i 	0 match   �  � � � o   # $�g�g 0 wrapped_text   �  ��f � m   $ % � � � � � � p a s s w o r d \ :   " ( [ a - z 0 - 9 ] + ) " . k e y c h a i n \ :   " ( [ a - z 0 - 9 / . ] + ) "   c l a s s \ :   " g e n p "   a t t r i b u t e s \ : ( . + )�f  �h   � o    #�e�e 0 
regexputil 
RegExpUtil � o      �d�d 0 
the_result   �  � � � l  , ,�c � ��c   �  log the_result    � � � �  l o g   t h e _ r e s u l t �  � � � l  , ,�b � ��b   �  log length of the_result    � � � � 0 l o g   l e n g t h   o f   t h e _ r e s u l t �  � � � l  , ,�a�`�_�a  �`  �_   �  � � � r   , 2   n  , 0 4  - 0�^
�^ 
cobj m   . /�]�]  o   , -�\�\ 0 
the_result   o      �[�[ 0 the_password   �  I  3 :�Z�Y
�Z .ascrcmnt****      � **** b   3 6	 m   3 4

 �  P a s s w o r d :  	 o   4 5�X�X 0 the_password  �Y    r   ; A n  ; ? 4  < ?�W
�W 
cobj m   = >�V�V  o   ; <�U�U 0 
the_result   o      �T�T 0 the_content    l  B B�S�S    log the_content    �  l o g   t h e _ c o n t e n t  r   B O n  B M I   G M�R�Q�R 	0 match     o   G H�P�P 0 the_content    !�O! m   H I"" �## 4   " a c c t " \ < b l o b \ > \ = " ( [ ^ " ] + ) "�O  �Q   o   B G�N�N 0 
regexputil 
RegExpUtil o      �M�M 0 account_name_result   $%$ l  P P�L&'�L  &  log account_name_result   ' �(( . l o g   a c c o u n t _ n a m e _ r e s u l t% )*) l  P P�K+,�K  + ' !log length of account_name_result   , �-- B l o g   l e n g t h   o f   a c c o u n t _ n a m e _ r e s u l t* ./. l  P P�J01�J  0 + %log first item in account_name_result   1 �22 J l o g   f i r s t   i t e m   i n   a c c o u n t _ n a m e _ r e s u l t/ 343 r   P V565 n  P T787 4  Q T�I9
�I 
cobj9 m   R S�H�H 8 o   P Q�G�G 0 account_name_result  6 o      �F�F 0 account_name  4 :;: I  W ^�E<�D
�E .ascrcmnt****      � ****< b   W Z=>= m   W X?? �@@  a c c o u n t _ n a m e :> o   X Y�C�C 0 account_name  �D  ; ABA l  _ _�BCD�B  C  svce"<blob>="flowerpower"   D �EE 2 s v c e " < b l o b > = " f l o w e r p o w e r "B FGF r   _ lHIH n  _ jJKJ I   d j�AL�@�A 	0 match  L MNM o   d e�?�? 0 the_content  N O�>O m   e fPP �QQ 4   " s v c e " \ < b l o b \ > \ = " ( [ ^ " ] + ) "�>  �@  K o   _ d�=�= 0 
regexputil 
RegExpUtilI o      �<�< 0 keychain_item_name_result  G RSR l  m m�;TU�;  T # log keychain_item_name_result   U �VV : l o g   k e y c h a i n _ i t e m _ n a m e _ r e s u l tS WXW l  m m�:YZ�:  Y - 'log length of keychain_item_name_result   Z �[[ N l o g   l e n g t h   o f   k e y c h a i n _ i t e m _ n a m e _ r e s u l tX \]\ l  m s^_`^ r   m saba l  m qc�9�8c n  m qded 4  n q�7f
�7 
cobjf m   o p�6�6 e o   m n�5�5 0 keychain_item_name_result  �9  �8  b o      �4�4 0 keychain_item_name  _  keychain item name   ` �gg $ k e y c h a i n   i t e m   n a m e] hih I  t {�3j�2
�3 .ascrcmnt****      � ****j b   t wklk m   t umm �nn ( k e y c h a i n _ i t e m _ n a m e :  l o   u v�1�1 0 keychain_item_name  �2  i opo l  | |�0�/�.�0  �/  �.  p q�-q L   | �rr K   | �ss �,tu�, 0 keychain_item_name  t o   } ~�+�+ 0 keychain_item_name  u �*vw�* 0 account_name  v o    ��)�) 0 account_name  w �(x�'�( 0 the_password  x o   � ��&�& 0 the_password  �'  �-  ��       �%yz{|}~�%  y �$�#�"�!� ��$ 0 scriptloader ScriptLoader�# 0 
regexputil 
RegExpUtil�" 0 
textparser 
TextParser�! 0 textmodifier TextModifier�  0 keychain_data  
� .aevtoappnull  �   � ****z �� ��  � k      �� ��� l     ����  � w qNote: we use load_script to load plain-text .applescript files, which cant be loaded directly without this method   � ��� � N o t e :   w e   u s e   l o a d _ s c r i p t   t o   l o a d   p l a i n - t e x t   . a p p l e s c r i p t   f i l e s ,   w h i c h   c a n t   b e   l o a d e d   d i r e c t l y   w i t h o u t   t h i s   m e t h o d� ��� l     ����  � � �Note: we use .applescript instead of .scpt files because its easier to put plain text script files under version control like github   � ��� N o t e :   w e   u s e   . a p p l e s c r i p t   i n s t e a d   o f   . s c p t   f i l e s   b e c a u s e   i t s   e a s i e r   t o   p u t   p l a i n   t e x t   s c r i p t   f i l e s   u n d e r   v e r s i o n   c o n t r o l   l i k e   g i t h u b� ��� l     ����  �a[Note: You can load compiled scripts (.scpt) or plain text scripts (.applescript). Make sure, though, that your .applescript files are encoded as either Mac (what AppleScript Editor uses) UTF-8 (if you use another text editor). Any scripts loaded are expected to be installed into your Scripts directory. Use the line below to reference the script:   � ���� N o t e :   Y o u   c a n   l o a d   c o m p i l e d   s c r i p t s   ( . s c p t )   o r   p l a i n   t e x t   s c r i p t s   ( . a p p l e s c r i p t ) .   M a k e   s u r e ,   t h o u g h ,   t h a t   y o u r   . a p p l e s c r i p t   f i l e s   a r e   e n c o d e d   a s   e i t h e r   M a c   ( w h a t   A p p l e S c r i p t   E d i t o r   u s e s )   U T F - 8   ( i f   y o u   u s e   a n o t h e r   t e x t   e d i t o r ) .   A n y   s c r i p t s   l o a d e d   a r e   e x p e c t e d   t o   b e   i n s t a l l e d   i n t o   y o u r   S c r i p t s   d i r e c t o r y .   U s e   t h e   l i n e   b e l o w   t o   r e f e r e n c e   t h e   s c r i p t :� ��� l     ����  � H Bremember to import this method before you use it with a property:    � ��� � r e m e m b e r   t o   i m p o r t   t h i s   m e t h o d   b e f o r e   y o u   u s e   i t   w i t h   a   p r o p e r t y :  � ��� l      ����  ���
property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt")--prerequisite for loading .applescript filesproperty ListAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListAsserter.applescript")) my ListAsserter's equals_to({1, 2, 3, 4}, {1, 2, 3, 4})
if my ListAsserter's equals_to({1, 2, 3, 4}, {1, 2, 3, 4}) then	log "yes"else	log "no"end if
   � ���� 
 p r o p e r t y   S c r i p t L o a d e r   :   l o a d   s c r i p t   a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " f i l e : S c r i p t L o a d e r . s c p t " ) - - p r e r e q u i s i t e   f o r   l o a d i n g   . a p p l e s c r i p t   f i l e s  p r o p e r t y   L i s t A s s e r t e r   :   m y   S c r i p t L o a d e r ' s   l o a d _ s c r i p t ( a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " l i s t : L i s t A s s e r t e r . a p p l e s c r i p t " ) )    m y   L i s t A s s e r t e r ' s   e q u a l s _ t o ( { 1 ,   2 ,   3 ,   4 } ,   { 1 ,   2 ,   3 ,   4 } ) 
 i f   m y   L i s t A s s e r t e r ' s   e q u a l s _ t o ( { 1 ,   2 ,   3 ,   4 } ,   { 1 ,   2 ,   3 ,   4 } )   t h e n  	 l o g   " y e s "  e l s e  	 l o g   " n o "  e n d   i f 
� ��� i     ��� I      ���� 0 load_script  � ��� o      �� 0 apple_script_path  �  �  � k     {�� ��� Q     x���� r    
��� I   ���
� .sysoloadscpt        file� o    �� 0 apple_script_path  �  � o      �� 0 script_object  � R      ���
� .ascrerr ****      � ****�  � ���
� 
errn� d      �� m      ����  � l   x���� k    x�� ��� r    ��� m    �� ���  � o      �
�
 0 script_text  � ��� Q    1���� l    ���� r     ��� I   �	��
�	 .rdwrread****        ****� o    �� 0 apple_script_path  �  � o      �� 0 script_text  � ( " Try reading as Mac encoding first   � ��� D   T r y   r e a d i n g   a s   M a c   e n c o d i n g   f i r s t� R      ���
� .ascrerr ****      � ****�  � ���
� 
errn� d      �� m      ����  � l  ( 1���� l  ( 1���� r   ( 1��� I  ( /� ��
�  .rdwrread****        ****� o   ( )���� 0 apple_script_path  � �����
�� 
as  � m   * +��
�� 
utf8��  � o      ���� 0 script_text  �   Finally try UTF-8   � ��� $   F i n a l l y   t r y   U T F - 8� &   Error reading script's encoding   � ��� @   E r r o r   r e a d i n g   s c r i p t ' s   e n c o d i n g� ���� Q   2 x���� r   5 H��� I  5 F�����
�� .sysodsct****        scpt� l  5 B������ b   5 B��� b   5 @��� b   5 >��� b   5 <��� b   5 :��� b   5 8��� m   5 6�� ���  s c r i p t   s� o   6 7��
�� 
ret � o   8 9���� 0 script_text  � o   : ;��
�� 
ret � m   < =�� ���  e n d   s c r i p t  � o   > ?��
�� 
ret � m   @ A�� ���  r e t u r n   s��  ��  ��  � o      ���� 0 script_object  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 e  � ����
�� 
errn� o      ���� 0 n  � ����
�� 
ptlr� o      ���� 0 p  � ����
�� 
erob� o      ���� 0 f  � �����
�� 
errt� o      ���� 0 t  ��  � k   P x�� ��� I  P a�����
�� .sysodlogaskr        TEXT� b   P ]��� b   P Y��� b   P W��� b   P S   m   P Q � , E r r o r   r e a d i n g   l i b r a r y   o   Q R���� 0 apple_script_path  � m   S V �   � o   W X���� 0 e  � m   Y \ � : P l e a s e   e n c o d e   a s   M a c   o r   U T F - 8��  � �� R   b x��	

�� .ascrerr ****      � ****	 o   v w���� 0 e  
 ��
�� 
errn o   f g���� 0 n   ��
�� 
ptlr o   j k���� 0 p   ��
�� 
erob o   n o���� 0 f   ����
�� 
errt o   r s���� 0 t  ��  ��  ��  �   text format script    � � (   t e x t   f o r m a t   s c r i p t  � �� l  y { L   y { o   y z���� 0 script_object   + %return the script, it is now loadable    � J r e t u r n   t h e   s c r i p t ,   i t   i s   n o w   l o a d a b l e��  �  � ����   ���� 0 load_script   ����������� 0 load_script  �� ����   ���� 0 apple_script_path  ��   ������������������ 0 apple_script_path  �� 0 script_object  �� 0 script_text  �� 0 e  �� 0 n  �� 0 p  �� 0 f  �� 0 t   �������������������� ������������
�� .sysoloadscpt        file��   ������
�� 
errn���(��  
�� .rdwrread****        **** ������
�� 
errn���\��  
�� 
as  
�� 
utf8
�� 
ret 
�� .sysodsct****        scpt�� 0 e    ����!
�� 
errn�� 0 n  ! ����"
�� 
ptlr�� 0 p  " ����#
�� 
erob�� 0 f  # ������
�� 
errt�� 0 t  ��  
�� .sysodlogaskr        TEXT
�� 
errn
�� 
ptlr
�� 
erob
�� 
errt�� �� | �j  E�W mX  �E�O �j E�W X  ���l E�O ��%�%�%�%�%�%j E�W /X  �%a %�%a %j O)a �a �a �a �a �O�{ ��$%&�� 0 s  $ k      '' ()( l     ��*+��  * � �property RegExpUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "regexp:RegExpUtil.applescript"))   + �,,  p r o p e r t y   R e g E x p U t i l   :   m y   S c r i p t L o a d e r ' s   l o a d _ s c r i p t ( a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " r e g e x p : R e g E x p U t i l . a p p l e s c r i p t " ) )) -.- l      ��/0��  /$
 * Matches string s against regular expression (string) regex using bash's extended regular expression language *including* 
 * Note: sed regexp does not support lookahead, lookbehind, lazy quantifieres, so use groups or nested regexp calls may be needed in order to get at the bits you want
 * Note: support for shortcut classes such as `\d`, and assertions such as `\b`, and *returns a Boolean* to indicate if there is a match or not.
 * Note: AppleScript's case sensitivity setting is respected; i.e., matching is case-INsensitive by default, unless inside a 'considering case' block.
 * Note: The current user's locale is respected.
 * Note: lots of sed examples: http://www.grymoire.com/Unix/Sed.html#uh-3
 * Note: There is an easier way to make use of the shell (works on bash 3.2+) for regex matching:
 * set isMatch to "0" = (do shell script "[[ " & quoted form of fileName & " =~ ^[[:digit:]]{10} ]]; printf $?")
 * Example: my doesMatch("127.0.0.1", "^(\\d{1,3}\\.){3}\\d{1,3}$") # -> true
 * Example: doesMatch(text, regexString) -> Boolean
    0 �11< 
   *   M a t c h e s   s t r i n g   s   a g a i n s t   r e g u l a r   e x p r e s s i o n   ( s t r i n g )   r e g e x   u s i n g   b a s h ' s   e x t e n d e d   r e g u l a r   e x p r e s s i o n   l a n g u a g e   * i n c l u d i n g *   
   *   N o t e :   s e d   r e g e x p   d o e s   n o t   s u p p o r t   l o o k a h e a d ,   l o o k b e h i n d ,   l a z y   q u a n t i f i e r e s ,   s o   u s e   g r o u p s   o r   n e s t e d   r e g e x p   c a l l s   m a y   b e   n e e d e d   i n   o r d e r   t o   g e t   a t   t h e   b i t s   y o u   w a n t 
   *   N o t e :   s u p p o r t   f o r   s h o r t c u t   c l a s s e s   s u c h   a s   ` \ d ` ,   a n d   a s s e r t i o n s   s u c h   a s   ` \ b ` ,   a n d   * r e t u r n s   a   B o o l e a n *   t o   i n d i c a t e   i f   t h e r e   i s   a   m a t c h   o r   n o t . 
   *   N o t e :   A p p l e S c r i p t ' s   c a s e   s e n s i t i v i t y   s e t t i n g   i s   r e s p e c t e d ;   i . e . ,   m a t c h i n g   i s   c a s e - I N s e n s i t i v e   b y   d e f a u l t ,   u n l e s s   i n s i d e   a   ' c o n s i d e r i n g   c a s e '   b l o c k . 
   *   N o t e :   T h e   c u r r e n t   u s e r ' s   l o c a l e   i s   r e s p e c t e d . 
   *   N o t e :   l o t s   o f   s e d   e x a m p l e s :   h t t p : / / w w w . g r y m o i r e . c o m / U n i x / S e d . h t m l # u h - 3 
   *   N o t e :   T h e r e   i s   a n   e a s i e r   w a y   t o   m a k e   u s e   o f   t h e   s h e l l   ( w o r k s   o n   b a s h   3 . 2 + )   f o r   r e g e x   m a t c h i n g : 
   *   s e t   i s M a t c h   t o   " 0 "   =   ( d o   s h e l l   s c r i p t   " [ [   "   &   q u o t e d   f o r m   o f   f i l e N a m e   &   "   = ~   ^ [ [ : d i g i t : ] ] { 1 0 }   ] ] ;   p r i n t f   $ ? " ) 
   *   E x a m p l e :   m y   d o e s M a t c h ( " 1 2 7 . 0 . 0 . 1 " ,   " ^ ( \ \ d { 1 , 3 } \ \ . ) { 3 } \ \ d { 1 , 3 } $ " )   #   - >   t r u e 
   *   E x a m p l e :   d o e s M a t c h ( t e x t ,   r e g e x S t r i n g )   - >   B o o l e a n 
  . 232 i     454 I      ��6���� 0 	has_match  6 787 o      ���� 0 s  8 9��9 o      ���� 	0 regex  ��  ��  5 l    ;:;<: k     ;== >?> q      @@ ��A�� 0 
ignorecase 
ignoreCaseA ������ "0 extragrepoption extraGrepOption��  ? BCB r     DED =    FGF m     HH �II  aG m    JJ �KK  AE o      ���� 0 
ignorecase 
ignoreCaseC LML Z    NO��PN o    ���� 0 
ignorecase 
ignoreCaseO r   
 QRQ m   
 SS �TT  iR o      ���� "0 extragrepoption extraGrepOption��  P r    UVU m    WW �XX  V o      ���� "0 extragrepoption extraGrepOptionM YZY l    ��[\��  [$ 
	 * Note: So that classes such as \w work with different locales, we need to set the shell's locale explicitly to the current user's.
	 * Rather than let the shell command fail we return the exit code and test for "0" to avoid having to deal with exception handling in AppleScript.
	    \ �]]<   
 	   *   N o t e :   S o   t h a t   c l a s s e s   s u c h   a s   \ w   w o r k   w i t h   d i f f e r e n t   l o c a l e s ,   w e   n e e d   t o   s e t   t h e   s h e l l ' s   l o c a l e   e x p l i c i t l y   t o   t h e   c u r r e n t   u s e r ' s . 
 	   *   R a t h e r   t h a n   l e t   t h e   s h e l l   c o m m a n d   f a i l   w e   r e t u r n   t h e   e x i t   c o d e   a n d   t e s t   f o r   " 0 "   t o   a v o i d   h a v i n g   t o   d e a l   w i t h   e x c e p t i o n   h a n d l i n g   i n   A p p l e S c r i p t . 
 	  Z ^��^ O   ;_`_ L    :aa =    9bcb m    dd �ee  0c l   8f����f I   8��g��
�� .sysoexecTEXT���     TEXTg b    4hih b    2jkj b    .lml b    ,non b    (pqp b    &rsr b    $tut b    "vwv m    xx �yy  e x p o r t   L A N G = 'w n    !z{z 1    !��
�� 
siul{ l   |����| I   ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  u m   " #}} �~~ " . U T F - 8 ' ;   e g r e p   - qs o   $ %���� "0 extragrepoption extraGrepOptionq m   & ' ���   o n   ( +��� 1   ) +��
�� 
strq� o   ( )���� 	0 regex  m m   , -�� ��� 
   < < <  k n   . 1��� 1   / 1��
�� 
strq� o   . /���� 0 s  i m   2 3�� ���  ;   p r i n t f   $ ?��  ��  ��  `  f    ��  ; " // :TODO: rename s to string   < ��� 8 / /   : T O D O :   r e n a m e   s   t o   s t r i n g3 ��� l      ������  �
c
]
 * Matches string s against regular expression (string) regex using bash's extended regular expression language and
 * returns the matching string and substrings matching capture groups, if any.*
 * Example: getMatch(text, regexString) -> { overallMatch[, captureGroup1Match ...] } or {}
 * Example: my getMatch("127.0.0.1", "^([[:digit:]]{1,3})\\.([[:digit:]]{1,3})\\.([[:digit:]]{1,3})\\.([[:digit:]]{1,3})$") # -> { "127.0.0.1", "127", "0", "0", "1" }
 * Example: set the_result to RegExpUtil's match("abc 123", "^([a-z]+)[[:space:]]([1-9]+)$")--(*abc 123, abc, 123*)--length of the_result--(*3*)
 * Note: AppleScript's case sensitivity setting is respected; i.e., matching is case-INsensitive by default, unless this subroutine is called inside a 'considering case' block.
 * Note: The current user's locale is respected.
 * Note: Also, `\b`, '\B', '\<', and '\>' are not supported; you can use `[[:<:]]` for '\<' and `[[:>:]]` for `\>`
 * Note: Always returns a *list*: an empty list, if no match is found, otherwise, the first list element contains the matching string
 * Note: if regex contains capture groups, additional elements return the strings captured by the capture groups; note that *named* capture groups are NOT supported.
 * Note: if the text contains linebreaks these must be replaced with spaces, since the return value is a list, and text with linebreaks are also considered a list. 
 * Note: if you need to preserve linebreaks in your result then you may replace linebreaks with a placeholder set of characters that you then replace qith linebreaks after the match is done
 * Important: Unlike doesMatch(), this subroutine does NOT support shortcut character classes such as \d. Instead, use one of the following POSIX classes (see `man re_format`):
 * [[:alpha:]] [[:word:]] [[:lower:]] [[:upper:]] [[:ascii:]]
 * [[:alnum:]] [[:digit:]] [[:xdigit:]]
 * [[:blank:]] [[:space:]] [[:punct:]] [[:cntrl:]] 
 * [[:graph:]]  [[:print:]] 
 * Description:
 * [:alpha:] the Roman letters
 * [:lower:] the lowercase Roman letters
 * [:upper:] the uppercase Roman letters
 * [:digit:] the digits
 * [:xdigit:] the hexadecimal digits (lowercase and uppercase)
 * [:blank:] space or tab
 * [:space:] space, tab, CR, LF or FF
 * [:cntrl:] the set of the characters with an ASCII code < 32 or = 127
 * [:punct:] neither a control character nor alphanumeric
 * Since \w \W etc doest work we must use:
 * [a-z]- any lowercase character
 * [a-z0-9] any lowercase character or numbers
 * [A-z] any character ([a-zA-Z] also works)
 * [a-zA-z0-9_] any character or number - equivalent to \w
 * [A-z0-9_] any character or number - equivalent to \w 
    � ���� 
   *   M a t c h e s   s t r i n g   s   a g a i n s t   r e g u l a r   e x p r e s s i o n   ( s t r i n g )   r e g e x   u s i n g   b a s h ' s   e x t e n d e d   r e g u l a r   e x p r e s s i o n   l a n g u a g e   a n d 
   *   r e t u r n s   t h e   m a t c h i n g   s t r i n g   a n d   s u b s t r i n g s   m a t c h i n g   c a p t u r e   g r o u p s ,   i f   a n y . * 
   *   E x a m p l e :   g e t M a t c h ( t e x t ,   r e g e x S t r i n g )   - >   {   o v e r a l l M a t c h [ ,   c a p t u r e G r o u p 1 M a t c h   . . . ]   }   o r   { } 
   *   E x a m p l e :   m y   g e t M a t c h ( " 1 2 7 . 0 . 0 . 1 " ,   " ^ ( [ [ : d i g i t : ] ] { 1 , 3 } ) \ \ . ( [ [ : d i g i t : ] ] { 1 , 3 } ) \ \ . ( [ [ : d i g i t : ] ] { 1 , 3 } ) \ \ . ( [ [ : d i g i t : ] ] { 1 , 3 } ) $ " )   #   - >   {   " 1 2 7 . 0 . 0 . 1 " ,   " 1 2 7 " ,   " 0 " ,   " 0 " ,   " 1 "   } 
   *   E x a m p l e :   s e t   t h e _ r e s u l t   t o   R e g E x p U t i l ' s   m a t c h ( " a b c   1 2 3 " ,   " ^ ( [ a - z ] + ) [ [ : s p a c e : ] ] ( [ 1 - 9 ] + ) $ " ) - - ( * a b c   1 2 3 ,   a b c ,   1 2 3 * ) - - l e n g t h   o f   t h e _ r e s u l t - - ( * 3 * ) 
   *   N o t e :   A p p l e S c r i p t ' s   c a s e   s e n s i t i v i t y   s e t t i n g   i s   r e s p e c t e d ;   i . e . ,   m a t c h i n g   i s   c a s e - I N s e n s i t i v e   b y   d e f a u l t ,   u n l e s s   t h i s   s u b r o u t i n e   i s   c a l l e d   i n s i d e   a   ' c o n s i d e r i n g   c a s e '   b l o c k . 
   *   N o t e :   T h e   c u r r e n t   u s e r ' s   l o c a l e   i s   r e s p e c t e d . 
   *   N o t e :   A l s o ,   ` \ b ` ,   ' \ B ' ,   ' \ < ' ,   a n d   ' \ > '   a r e   n o t   s u p p o r t e d ;   y o u   c a n   u s e   ` [ [ : < : ] ] `   f o r   ' \ < '   a n d   ` [ [ : > : ] ] `   f o r   ` \ > ` 
   *   N o t e :   A l w a y s   r e t u r n s   a   * l i s t * :   a n   e m p t y   l i s t ,   i f   n o   m a t c h   i s   f o u n d ,   o t h e r w i s e ,   t h e   f i r s t   l i s t   e l e m e n t   c o n t a i n s   t h e   m a t c h i n g   s t r i n g 
   *   N o t e :   i f   r e g e x   c o n t a i n s   c a p t u r e   g r o u p s ,   a d d i t i o n a l   e l e m e n t s   r e t u r n   t h e   s t r i n g s   c a p t u r e d   b y   t h e   c a p t u r e   g r o u p s ;   n o t e   t h a t   * n a m e d *   c a p t u r e   g r o u p s   a r e   N O T   s u p p o r t e d . 
   *   N o t e :   i f   t h e   t e x t   c o n t a i n s   l i n e b r e a k s   t h e s e   m u s t   b e   r e p l a c e d   w i t h   s p a c e s ,   s i n c e   t h e   r e t u r n   v a l u e   i s   a   l i s t ,   a n d   t e x t   w i t h   l i n e b r e a k s   a r e   a l s o   c o n s i d e r e d   a   l i s t .   
   *   N o t e :   i f   y o u   n e e d   t o   p r e s e r v e   l i n e b r e a k s   i n   y o u r   r e s u l t   t h e n   y o u   m a y   r e p l a c e   l i n e b r e a k s   w i t h   a   p l a c e h o l d e r   s e t   o f   c h a r a c t e r s   t h a t   y o u   t h e n   r e p l a c e   q i t h   l i n e b r e a k s   a f t e r   t h e   m a t c h   i s   d o n e 
   *   I m p o r t a n t :   U n l i k e   d o e s M a t c h ( ) ,   t h i s   s u b r o u t i n e   d o e s   N O T   s u p p o r t   s h o r t c u t   c h a r a c t e r   c l a s s e s   s u c h   a s   \ d .   I n s t e a d ,   u s e   o n e   o f   t h e   f o l l o w i n g   P O S I X   c l a s s e s   ( s e e   ` m a n   r e _ f o r m a t ` ) : 
   *   [ [ : a l p h a : ] ]   [ [ : w o r d : ] ]   [ [ : l o w e r : ] ]   [ [ : u p p e r : ] ]   [ [ : a s c i i : ] ] 
   *   [ [ : a l n u m : ] ]   [ [ : d i g i t : ] ]   [ [ : x d i g i t : ] ] 
   *   [ [ : b l a n k : ] ]   [ [ : s p a c e : ] ]   [ [ : p u n c t : ] ]   [ [ : c n t r l : ] ]   
   *   [ [ : g r a p h : ] ]     [ [ : p r i n t : ] ]   
   *   D e s c r i p t i o n : 
   *   [ : a l p h a : ]   t h e   R o m a n   l e t t e r s 
   *   [ : l o w e r : ]   t h e   l o w e r c a s e   R o m a n   l e t t e r s 
   *   [ : u p p e r : ]   t h e   u p p e r c a s e   R o m a n   l e t t e r s 
   *   [ : d i g i t : ]   t h e   d i g i t s 
   *   [ : x d i g i t : ]   t h e   h e x a d e c i m a l   d i g i t s   ( l o w e r c a s e   a n d   u p p e r c a s e ) 
   *   [ : b l a n k : ]   s p a c e   o r   t a b 
   *   [ : s p a c e : ]   s p a c e ,   t a b ,   C R ,   L F   o r   F F 
   *   [ : c n t r l : ]   t h e   s e t   o f   t h e   c h a r a c t e r s   w i t h   a n   A S C I I   c o d e   <   3 2   o r   =   1 2 7 
   *   [ : p u n c t : ]   n e i t h e r   a   c o n t r o l   c h a r a c t e r   n o r   a l p h a n u m e r i c 
   *   S i n c e   \ w   \ W   e t c   d o e s t   w o r k   w e   m u s t   u s e : 
   *   [ a - z ] -   a n y   l o w e r c a s e   c h a r a c t e r 
   *   [ a - z 0 - 9 ]   a n y   l o w e r c a s e   c h a r a c t e r   o r   n u m b e r s 
   *   [ A - z ]   a n y   c h a r a c t e r   ( [ a - z A - Z ]   a l s o   w o r k s ) 
   *   [ a - z A - z 0 - 9 _ ]   a n y   c h a r a c t e r   o r   n u m b e r   -   e q u i v a l e n t   t o   \ w 
   *   [ A - z 0 - 9 _ ]   a n y   c h a r a c t e r   o r   n u m b e r   -   e q u i v a l e n t   t o   \ w   
  � ��� i    ��� I      ������� 	0 match  � ��� o      ���� 0 s  � ���� o      ���� 	0 regex  ��  ��  � l    >���� k     >�� ��� q      �� ��� 0 
ignorecase 
ignoreCase� �~�}�~ 0 extracommand extraCommand�}  � ��� r     ��� =    ��� m     �� ���  a� m    �� ���  A� o      �|�| 0 
ignorecase 
ignoreCase� ��� Z    ���{�� o    �z�z 0 
ignorecase 
ignoreCase� r   
 ��� m   
 �� ��� , s h o p t   - s   n o c a s e m a t c h ;  � o      �y�y 0 extracommand extraCommand�{  � r    ��� m    �� ���  � o      �x�x 0 extracommand extraCommand� ��� l    �w���w  ��� Note: 
	 * So that classes such as [[:alpha:]] work with different locales, we need to set the shell's locale explicitly to the current user's.
	 * Since `quoted form of` encloses its argument in single quotes, we must set compatibility option `shopt -s compat31` for the =~ operator to work.
	 * Rather than let the shell command fail we return '' in case of non-match to avoid having to deal with exception handling in AppleScript.
       � ���n   N o t e :   
 	   *   S o   t h a t   c l a s s e s   s u c h   a s   [ [ : a l p h a : ] ]   w o r k   w i t h   d i f f e r e n t   l o c a l e s ,   w e   n e e d   t o   s e t   t h e   s h e l l ' s   l o c a l e   e x p l i c i t l y   t o   t h e   c u r r e n t   u s e r ' s . 
 	   *   S i n c e   ` q u o t e d   f o r m   o f `   e n c l o s e s   i t s   a r g u m e n t   i n   s i n g l e   q u o t e s ,   w e   m u s t   s e t   c o m p a t i b i l i t y   o p t i o n   ` s h o p t   - s   c o m p a t 3 1 `   f o r   t h e   = ~   o p e r a t o r   t o   w o r k . 
 	   *   R a t h e r   t h a n   l e t   t h e   s h e l l   c o m m a n d   f a i l   w e   r e t u r n   ' '   i n   c a s e   o f   n o n - m a t c h   t o   a v o i d   h a v i n g   t o   d e a l   w i t h   e x c e p t i o n   h a n d l i n g   i n   A p p l e S c r i p t . 
        � ��� O   8��� I   7�v��u
�v .sysoexecTEXT���     TEXT� b    3��� b    1��� b    -��� b    +��� b    '��� b    %��� b    #��� b    !��� m    �� ���  e x p o r t   L A N G = '� n     ��� 1     �t
�t 
siul� l   ��s�r� I   �q�p�o
�q .sysosigtsirr   ��� null�p  �o  �s  �r  � m   ! "�� ��� 8 . U T F - 8 ' ;   s h o p t   - s   c o m p a t 3 1 ;  � o   # $�n�n 0 extracommand extraCommand� m   % &�� ���  [ [  � n   ' *��� 1   ( *�m
�m 
strq� o   ' (�l�l 0 s  � m   + ,�� ���    = ~  � n   - 0��� 1   . 0�k
�k 
strq� o   - .�j�j 	0 regex  � m   1 2�� ��� l   ] ]   & &   p r i n t f   ' % s \ n '   " $ { B A S H _ R E M A T C H [ @ ] } "   | |   p r i n t f   ' '�u  �  f    � ��i� l  9 >���� L   9 >�� n   9 =��� 2  : <�h
�h 
cpar� 1   9 :�g
�g 
rslt� ; 5paragraphs returns a list, which can be unconvenient    � ��� j p a r a g r a p h s   r e t u r n s   a   l i s t ,   w h i c h   c a n   b e   u n c o n v e n i e n t  �i  � " // :TODO: rename s to string   � ��� 8 / /   : T O D O :   r e n a m e   s   t o   s t r i n g� ��� l     �f�e�d�f  �e  �d  � ��� l      �c���c  �  
 * Todo: untested
    � ��� ( 
   *   T o d o :   u n t e s t e d 
  � ��� i    ��� I      �b��a�b 0 match_and_replace  � ��`� o      �_�_ 0 the_text  �`  �a  � k     �� ��� r     ��� I    �^��]
�^ .sysoexecTEXT���     TEXT� b     ��� b     � � m      � 
 e c h o    n     1    �\
�\ 
strq o    �[�[ 0 the_text  � m     � $   |   s e d   ' s /   / \ \   / g '�]  � o      �Z�Z 0 
the_result  � �Y L     o    �X�X 0 
the_result  �Y  � 	
	 l      �W�W  
Note:

Makes use of a modern bash test expression [[ ... ]] with the regex-matching operator, =~; not quoting the right operand (or at least the special regex chars.) is a must on bash 3.2+, unless you prepend shopt -s compat31;
The do shell script statement executes the test and returns its exit command via an additional command (thanks, @LauriRanta); "0" indicates success.
Note that the =~ operator does not support shortcut character classes such as \d and assertions such as \b (true as of OS X 10.9.4 - this is unlikely to change anytime soon).
For case-INsensitive matching, prepend the command string with shopt -s nocasematch;
For locale-awareness, prepend the command string with export LANG='" & user locale of (system info) & ".UTF-8';.
If the regex contains capture groups, you can access the captured strings via the built-in ${BASH_REMATCH[@]} array variable.
As in the accepted answer, you'll have to \-escape double quotes and backslashes.
Here's an alternative using egrep:

set isMatch to "0" = (do shell script �
  "egrep -q '^\\d{10}' <<<" & quoted form of filename & "; printf $?")
Though this presumably performs worse, it has two advantages:

You can use shortcut character classes such as \d and assertions such as \b
You can more easily make matching case-INsensitive by calling egrep with -i:
You canNOT, however, gain access to sub-matches via capture-groups; use the [[ ... =~ ... ]] approach if that is needed.
Finally, here are utility functions that package both approaches (the syntax highlighting is off, but they do work):
    �2 
 N o t e : 
 
 M a k e s   u s e   o f   a   m o d e r n   b a s h   t e s t   e x p r e s s i o n   [ [   . . .   ] ]   w i t h   t h e   r e g e x - m a t c h i n g   o p e r a t o r ,   = ~ ;   n o t   q u o t i n g   t h e   r i g h t   o p e r a n d   ( o r   a t   l e a s t   t h e   s p e c i a l   r e g e x   c h a r s . )   i s   a   m u s t   o n   b a s h   3 . 2 + ,   u n l e s s   y o u   p r e p e n d   s h o p t   - s   c o m p a t 3 1 ; 
 T h e   d o   s h e l l   s c r i p t   s t a t e m e n t   e x e c u t e s   t h e   t e s t   a n d   r e t u r n s   i t s   e x i t   c o m m a n d   v i a   a n   a d d i t i o n a l   c o m m a n d   ( t h a n k s ,   @ L a u r i R a n t a ) ;   " 0 "   i n d i c a t e s   s u c c e s s . 
 N o t e   t h a t   t h e   = ~   o p e r a t o r   d o e s   n o t   s u p p o r t   s h o r t c u t   c h a r a c t e r   c l a s s e s   s u c h   a s   \ d   a n d   a s s e r t i o n s   s u c h   a s   \ b   ( t r u e   a s   o f   O S   X   1 0 . 9 . 4   -   t h i s   i s   u n l i k e l y   t o   c h a n g e   a n y t i m e   s o o n ) . 
 F o r   c a s e - I N s e n s i t i v e   m a t c h i n g ,   p r e p e n d   t h e   c o m m a n d   s t r i n g   w i t h   s h o p t   - s   n o c a s e m a t c h ; 
 F o r   l o c a l e - a w a r e n e s s ,   p r e p e n d   t h e   c o m m a n d   s t r i n g   w i t h   e x p o r t   L A N G = ' "   &   u s e r   l o c a l e   o f   ( s y s t e m   i n f o )   &   " . U T F - 8 ' ; . 
 I f   t h e   r e g e x   c o n t a i n s   c a p t u r e   g r o u p s ,   y o u   c a n   a c c e s s   t h e   c a p t u r e d   s t r i n g s   v i a   t h e   b u i l t - i n   $ { B A S H _ R E M A T C H [ @ ] }   a r r a y   v a r i a b l e . 
 A s   i n   t h e   a c c e p t e d   a n s w e r ,   y o u ' l l   h a v e   t o   \ - e s c a p e   d o u b l e   q u o t e s   a n d   b a c k s l a s h e s . 
 H e r e ' s   a n   a l t e r n a t i v e   u s i n g   e g r e p : 
 
 s e t   i s M a t c h   t o   " 0 "   =   ( d o   s h e l l   s c r i p t   � 
     " e g r e p   - q   ' ^ \ \ d { 1 0 } '   < < < "   &   q u o t e d   f o r m   o f   f i l e n a m e   &   " ;   p r i n t f   $ ? " ) 
 T h o u g h   t h i s   p r e s u m a b l y   p e r f o r m s   w o r s e ,   i t   h a s   t w o   a d v a n t a g e s : 
 
 Y o u   c a n   u s e   s h o r t c u t   c h a r a c t e r   c l a s s e s   s u c h   a s   \ d   a n d   a s s e r t i o n s   s u c h   a s   \ b 
 Y o u   c a n   m o r e   e a s i l y   m a k e   m a t c h i n g   c a s e - I N s e n s i t i v e   b y   c a l l i n g   e g r e p   w i t h   - i : 
 Y o u   c a n N O T ,   h o w e v e r ,   g a i n   a c c e s s   t o   s u b - m a t c h e s   v i a   c a p t u r e - g r o u p s ;   u s e   t h e   [ [   . . .   = ~   . . .   ] ]   a p p r o a c h   i f   t h a t   i s   n e e d e d . 
 F i n a l l y ,   h e r e   a r e   u t i l i t y   f u n c t i o n s   t h a t   p a c k a g e   b o t h   a p p r o a c h e s   ( t h e   s y n t a x   h i g h l i g h t i n g   i s   o f f ,   b u t   t h e y   d o   w o r k ) : 

 �V l     �U�T�S�U  �T  �S  �V  % �R �R   k        h     �Q$�Q 0 s   �P l    �O�N L      o     �M�M 0 s  �O  �N  �P   �L{�L   �K�J�K 0 s  
�J .aevtoappnull  �   � **** �I�H�G�F
�I .aevtoappnull  �   � **** k      �E�E  �H  �G      �F b   &   �D�C�B�D 0 	has_match  �C 	0 match  �B 0 match_and_replace   �A5�@�?!"�>�A 0 	has_match  �@ �=#�= #  �<�;�< 0 s  �; 	0 regex  �?  ! �:�9�8�7�: 0 s  �9 	0 regex  �8 0 
ignorecase 
ignoreCase�7 "0 extragrepoption extraGrepOption" HJSWdx�6�5}�4���3
�6 .sysosigtsirr   ��� null
�5 
siul
�4 
strq
�3 .sysoexecTEXT���     TEXT�> <�� E�O� �E�Y �E�O) $��*j �,%�%�%�%��,%�%��,%�%j  U �2��1�0$%�/�2 	0 match  �1 �.&�. &  �-�,�- 0 s  �, 	0 regex  �0  $ �+�*�)�(�+ 0 s  �* 	0 regex  �) 0 
ignorecase 
ignoreCase�( 0 extracommand extraCommand% ������'�&���%���$�#�"
�' .sysosigtsirr   ��� null
�& 
siul
�% 
strq
�$ .sysoexecTEXT���     TEXT
�# 
rslt
�" 
cpar�/ ?�� E�O� �E�Y �E�O) !�*j �,%�%�%�%��,%�%��,%�%j UO��-E  �!�� �'(��! 0 match_and_replace  �  �)� )  �� 0 the_text  �  ' ��� 0 the_text  � 0 
the_result  ( ��
� 
strq
� .sysoexecTEXT���     TEXT� ��,%�%j E�O�| �*+,� 0 s  * k      -- ./. l     �01�  0 � �property TextParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "text:TextParser.applescript"))   1 �22 p r o p e r t y   T e x t P a r s e r   :   m y   S c r i p t L o a d e r ' s   l o a d _ s c r i p t ( a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " t e x t : T e x t P a r s e r . a p p l e s c r i p t " ) )/ 343 l      �56�  5 6 0
 * Returns an array of every word in the_text
    6 �77 ` 
   *   R e t u r n s   a n   a r r a y   o f   e v e r y   w o r d   i n   t h e _ t e x t 
  4 898 i     :;: I      �<�� 0 
every_word  < =�= o      �� 0 the_text  �  �  ; L     >> n     ?@? 2    �
� 
cwor@ o     �� 0 the_text  9 ABA l      �CD�  C r l
 * Returns all paragraps in a text as a list
 * TODO: write an example
 * // :TODO: rename to every_line?
    D �EE � 
   *   R e t u r n s   a l l   p a r a g r a p s   i n   a   t e x t   a s   a   l i s t 
   *   T O D O :   w r i t e   a n   e x a m p l e 
   *   / /   : T O D O :   r e n a m e   t o   e v e r y _ l i n e ? 
  B FGF i    HIH I      �J�� 0 every_paragraph  J K�K o      �
�
 0 the_text  �  �  I k     3LL MNM r     OPO J     �	�	  P o      �� 0 paragraph_list  N QRQ r    
STS n    UVU 2   �
� 
cparV o    �� 0 the_text  T o      �� 0 	para_list  R WXW X    0Y�ZY Z    +[\��[ ?    ]^] n    _`_ 1    �
� 
leng` o    � �  0 	next_line  ^ m    ����  \ l  # 'abca s   # 'ded o   # $���� 0 	next_line  e l     f����f n      ghg  ;   % &h o   $ %���� 0 paragraph_list  ��  ��  b < 6 this takes care of not adding an emty item at the end   c �ii l   t h i s   t a k e s   c a r e   o f   n o t   a d d i n g   a n   e m t y   i t e m   a t   t h e   e n d�  �  � 0 	next_line  Z o    ���� 0 	para_list  X j��j L   1 3kk o   1 2���� 0 paragraph_list  ��  G lml l      ��no��  n O I
 * Returns a list of text items by splitting a text at every delimiter
    o �pp � 
   *   R e t u r n s   a   l i s t   o f   t e x t   i t e m s   b y   s p l i t t i n g   a   t e x t   a t   e v e r y   d e l i m i t e r 
  m qrq i    sts I      ��u���� 	0 split  u vwv o      ���� 0 the_text  w x��x o      ���� 0 	delimiter  ��  ��  t k     yy z{z r     |}| o     ���� 0 	delimiter  } 1    ��
�� 
txdl{ ~~ r    ��� n    	��� 2    	��
�� 
citm� o    ���� 0 the_text  � o      ���� 0 ret_val   ��� l   ���� r    ��� m    �� ���  ,� 1    ��
�� 
txdl� , &reset applescript delimiter to default   � ��� L r e s e t   a p p l e s c r i p t   d e l i m i t e r   t o   d e f a u l t� ���� L    �� o    ���� 0 ret_val  ��  r ��� l      ������  � ) #
 * Returns the length of theText
    � ��� F 
   *   R e t u r n s   t h e   l e n g t h   o f   t h e T e x t 
  � ��� i    ��� I      ������� 0 text_length  � ���� o      ���� 0 the_text  ��  ��  � L     �� n     ��� 1    ��
�� 
leng� o     ���� 0 the_text  � ��� l      ������  �mg
 * Returns a comma delimited list like "blue, red, orange" from an array like {"blue","red","orange"}
 * Example: log TextParser's comma_delimited_text({"blue", "red", "orange"}) yields "blue, red, orange"
 * TODO USE THIS INSTEAD: set AppleScript's text item delimiters to {" "} -- A single space
 * TODO move to ArrayParser
 * AND THEN : the_list as text
    � ���� 
   *   R e t u r n s   a   c o m m a   d e l i m i t e d   l i s t   l i k e   " b l u e ,   r e d ,   o r a n g e "   f r o m   a n   a r r a y   l i k e   { " b l u e " , " r e d " , " o r a n g e " } 
   *   E x a m p l e :   l o g   T e x t P a r s e r ' s   c o m m a _ d e l i m i t e d _ t e x t ( { " b l u e " ,   " r e d " ,   " o r a n g e " } )   y i e l d s   " b l u e ,   r e d ,   o r a n g e " 
   *   T O D O   U S E   T H I S   I N S T E A D :   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   { "   " }   - -   A   s i n g l e   s p a c e 
   *   T O D O   m o v e   t o   A r r a y P a r s e r 
   *   A N D   T H E N   :   t h e _ l i s t   a s   t e x t 
  � ��� i    ��� I      ������� 0 comma_delimited_text  � ���� o      ���� 0 
text_items  ��  ��  � I     	������� 0 delimited_text  � ��� o    ���� 0 
text_items  � ���� b    ��� m    �� ���  ,� 1    ��
�� 
spac��  ��  � ��� l     ������  � f `Returns a text item by stitching many text items together with the delimiter inbetween each word   � ��� � R e t u r n s   a   t e x t   i t e m   b y   s t i t c h i n g   m a n y   t e x t   i t e m s   t o g e t h e r   w i t h   t h e   d e l i m i t e r   i n b e t w e e n   e a c h   w o r d� ��� i    ��� I      ������� 0 delimited_text  � ��� o      ���� 0 
text_items  � ���� o      ���� 0 	delimiter  ��  ��  � k     O�� ��� r     ��� m     �� ���  � o      ���� 0 ret_val  � ��� Y    L�������� l   G���� k    G�� ��� r    ��� n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 
text_items  � o      ���� 0 the_word  � ��� r    ��� m    �� ���  � o      ���� 0 head  � ��� r    ��� o    ���� 0 	delimiter  � o      ���� 0 tail  � ��� Z     -������� =     #��� o     !���� 0 i  � m   ! "���� � r   & )��� m   & '�� ���  � o      ���� 0 head  ��  ��  � ��� Z   . =������� =   . 3��� o   . /���� 0 i  � l  / 2������ n   / 2��� 1   0 2��
�� 
leng� o   / 0���� 0 
text_items  ��  ��  � r   6 9��� m   6 7�� ���  � o      ���� 0 tail  ��  ��  � ���� r   > G��� b   > E��� b   > C��� b   > A��� o   > ?���� 0 ret_val  � o   ? @���� 0 head  � o   A B���� 0 the_word  � o   C D���� 0 tail  � o      ���� 0 ret_val  ��  � # Todo: store len in a variable   � ��� : T o d o :   s t o r e   l e n   i n   a   v a r i a b l e�� 0 i  � m    ���� � l    ����  n     1   	 ��
�� 
leng o    	���� 0 
text_items  ��  ��  ��  � �� L   M O o   M N���� 0 ret_val  ��  �  l      ����   � �
 * TODO: doesnt this add a return at the last line? maybe use delimited_text() intead? 
 * // :TODO: try to find a better name
     �		 
   *   T O D O :   d o e s n t   t h i s   a d d   a   r e t u r n   a t   t h e   l a s t   l i n e ?   m a y b e   u s e   d e l i m i t e d _ t e x t ( )   i n t e a d ?   
   *   / /   : T O D O :   t r y   t o   f i n d   a   b e t t e r   n a m e 
   

 i     I      ������ 0 to_paragraphs   �� o      ���� 0 the_list  ��  ��   k       r      J      �� o     ��
�� 
ret ��   n      1    ��
�� 
txdl 1    ��
�� 
ascr �� L     c     o    	���� 0 the_list   m   	 
��
�� 
ctxt��    l      �� ��   � �
 * cardinal is one two three etc
 * TODO: one could create a dynamic ordinal generator in the future, that would combine two words to generate twenthy+eigth etc
      �!!F 
   *   c a r d i n a l   i s   o n e   t w o   t h r e e   e t c 
   *   T O D O :   o n e   c o u l d   c r e a t e   a   d y n a m i c   o r d i n a l   g e n e r a t o r   i n   t h e   f u t u r e ,   t h a t   w o u l d   c o m b i n e   t w o   w o r d s   t o   g e n e r a t e   t w e n t h y + e i g t h   e t c 
   "#" i    $%$ I      ��&���� 0 ordinal  & '��' o      ���� 0 
the_number  ��  ��  % k     %(( )*) r     +,+ J     -- ./. m     00 �11 
 f i r s t/ 232 m    44 �55  s e c o n d3 676 m    88 �99 
 t h i r d7 :;: m    << �==  f o u r t h; >?> m    @@ �AA 
 f i f t h? BCB m    DD �EE 
 s i x t hC FGF m    HH �II  s e v e n t hG JKJ m    LL �MM  e i g h t hK NON m    	PP �QQ 
 n i n t hO RSR m   	 
TT �UU 
 t e n t hS VWV m   
 XX �YY  e l e v e n t hW Z[Z m    \\ �]]  t w e l f t h[ ^_^ m    `` �aa  t h i r t e e n t h_ bcb m    dd �ee  f o u r t e e n t hc fgf m    hh �ii  s e v e n t e e n t hg jkj m    ll �mm  e i g t h t e e n t hk non m    pp �qq  n i n e t e e n t ho r��r m    ss �tt  t w e n t e e n t h��  , o      ���� 0 ordinals  * u��u L    %vv n    $wxw 4    #��y
�� 
cobjy o   ! "���� 0 
the_number  x o    ���� 0 ordinals  ��  # z{z l      ��|}��  |��
 * Returns encode text (escaped)
 * Caution: encode does not handle the double quote char very well
 * Note: this could also be done by creating a a method that does all the character trickery involved in unescaping/escaping text, but this method leverages the php language to do all this for us
 * Example: encode("<image location:files/img/image.jpg")--%3Cimage+location%3Afiles%2Fimg%2Fimage.jpg
    } �~~" 
   *   R e t u r n s   e n c o d e   t e x t   ( e s c a p e d ) 
   *   C a u t i o n :   e n c o d e   d o e s   n o t   h a n d l e   t h e   d o u b l e   q u o t e   c h a r   v e r y   w e l l 
   *   N o t e :   t h i s   c o u l d   a l s o   b e   d o n e   b y   c r e a t i n g   a   a   m e t h o d   t h a t   d o e s   a l l   t h e   c h a r a c t e r   t r i c k e r y   i n v o l v e d   i n   u n e s c a p i n g / e s c a p i n g   t e x t ,   b u t   t h i s   m e t h o d   l e v e r a g e s   t h e   p h p   l a n g u a g e   t o   d o   a l l   t h i s   f o r   u s 
   *   E x a m p l e :   e n c o d e ( " < i m a g e   l o c a t i o n : f i l e s / i m g / i m a g e . j p g " ) - - % 3 C i m a g e + l o c a t i o n % 3 A f i l e s % 2 F i m g % 2 F i m a g e . j p g 
  { � i     #��� I      ������� 
0 encode  � ���� o      ���� 0 the_text  ��  ��  � L     
�� I    	�����
�� .sysoexecTEXT���     TEXT� b     ��� b     ��� m     �� ��� 0 p h p   - r   ' e c h o   u r l e n c o d e ( "� o    ���� 0 the_text  � m    �� ���  " ) ; '��  � ��� l      ������  �TN
 * Returns dencode text (unescaped)
 * Note this could also be done by creating a a method that does all the character trickery involved in unescaping/escaping text, but this method leverages the php language to do all this for us
 * Example: decode(%3Cimage+location%3Afiles%2Fimg%2Fimage.jpg)--<image location:files/img/image.jpg
    � ���� 
   *   R e t u r n s   d e n c o d e   t e x t   ( u n e s c a p e d ) 
   *   N o t e   t h i s   c o u l d   a l s o   b e   d o n e   b y   c r e a t i n g   a   a   m e t h o d   t h a t   d o e s   a l l   t h e   c h a r a c t e r   t r i c k e r y   i n v o l v e d   i n   u n e s c a p i n g / e s c a p i n g   t e x t ,   b u t   t h i s   m e t h o d   l e v e r a g e s   t h e   p h p   l a n g u a g e   t o   d o   a l l   t h i s   f o r   u s 
   *   E x a m p l e :   d e c o d e ( % 3 C i m a g e + l o c a t i o n % 3 A f i l e s % 2 F i m g % 2 F i m a g e . j p g ) - - < i m a g e   l o c a t i o n : f i l e s / i m g / i m a g e . j p g 
  � ��� i   $ '��� I      ������� 
0 decode  � ���� o      ���� 0 the_text  ��  ��  � L     
�� I    	�����
�� .sysoexecTEXT���     TEXT� b     ��� b     ��� m     �� ��� 0 p h p   - r   ' e c h o   u r l d e c o d e ( "� o    ���� 0 the_text  � m    �� ���  " ) ; '��  � ��� l      ������  � C =
 * Returns a text in quoted form
 * Todo: write an example
    � ��� z 
   *   R e t u r n s   a   t e x t   i n   q u o t e d   f o r m 
   *   T o d o :   w r i t e   a n   e x a m p l e 
  � ��� i   ( +��� I      ������� 0 quoted_form  � ���� o      ���� 0 the_text  ��  ��  � L     �� n     ��� 1    ��
�� 
strq� o     ���� 0 the_text  � ��� l      ������  � i c
 * substring
 * the start: 1
 * the end: ((length of second_part) - 2)
 * Todo: write an example
    � ��� � 
   *   s u b s t r i n g 
   *   t h e   s t a r t :   1 
   *   t h e   e n d :   ( ( l e n g t h   o f   s e c o n d _ p a r t )   -   2 ) 
   *   T o d o :   w r i t e   a n   e x a m p l e 
  � ��� i   , /��� I      ���~� 0 
sub_string  � ��� o      �}�} 0 	the_start  � ��� o      �|�| 0 the_end  � ��{� o      �z�z 0 the_text  �{  �~  � L     �� n     ��� 7   �y��
�y 
ctxt� o    �x�x 0 	the_start  � o    
�w�w 0 the_end  � o     �v�v 0 the_text  � ��� l      �u���u  �  y
 * Counts how many times a string appears in a text
 * Note: Its splits the text by the substring and counts the items
    � ��� � 
   *   C o u n t s   h o w   m a n y   t i m e s   a   s t r i n g   a p p e a r s   i n   a   t e x t 
   *   N o t e :   I t s   s p l i t s   t h e   t e x t   b y   t h e   s u b s t r i n g   a n d   c o u n t s   t h e   i t e m s 
  � ��� i   0 3��� I      �t��s�t 0 occurrences  � ��� o      �r�r 0 the_text  � ��q� o      �p�p 	0 match  �q  �s  � k     �� ��� r     ��� o     �o�o 	0 match  � n     ��� 1    �n
�n 
txdl� 1    �m
�m 
ascr� ��� r    ��� \    ��� l   ��l�k� I   �j��i
�j .corecnte****       ****� n    	��� 2    	�h
�h 
citm� o    �g�g 0 the_text  �i  �l  �k  � m    �f�f � o      �e�e 0 counter  � ��� r    ��� m    �� ���  � n     ��� 1    �d
�d 
txdl� 1    �c
�c 
ascr� ��b� L    �� o    �a�a 0 counter  �b  � ��� l      �`���`  �
 * Returns a text without linebreaks, a substitue replaces the linebreak char
 * Note: linebreaks often come in the form of \\n or \\r 
 * Caution: if a line is empty it is still replaced with the_substitute 
 * Param: the_substitue is the replacement for the linebreak
    � ���  
   *   R e t u r n s   a   t e x t   w i t h o u t   l i n e b r e a k s ,   a   s u b s t i t u e   r e p l a c e s   t h e   l i n e b r e a k   c h a r 
   *   N o t e :   l i n e b r e a k s   o f t e n   c o m e   i n   t h e   f o r m   o f   \ \ n   o r   \ \ r   
   *   C a u t i o n :   i f   a   l i n e   i s   e m p t y   i t   i s   s t i l l   r e p l a c e d   w i t h   t h e _ s u b s t i t u t e   
   *   P a r a m :   t h e _ s u b s t i t u e   i s   t h e   r e p l a c e m e n t   f o r   t h e   l i n e b r e a k 
  � ��_� i   4 7��� I      �^��]�^ 0 	wrap_text  � ��� o      �\�\ 0 the_text  � ��[� o      �Z�Z 0 the_substitue  �[  �]  � k     >�� ��� r     ��� m     �� �    � o      �Y�Y 0 the_wrapped_text  �  r    	 n     2   �X
�X 
cpar o    �W�W 0 the_text   o      �V�V 0 the_paragraphs    r   
 	
	 n   
  1    �U
�U 
leng o   
 �T�T 0 the_paragraphs  
 o      �S�S 0 the_len    Y    ;�R�Q k    6  r      n     4    �P
�P 
cobj o    �O�O 0 i   o    �N�N 0 the_paragraphs   o      �M�M 0 the_paragraph   �L Z   ! 6�K l  ! $�J�I =   ! $  o   ! "�H�H 0 i    o   " #�G�G 0 the_len  �J  �I   l  ' ,!"#! r   ' ,$%$ b   ' *&'& o   ' (�F�F 0 the_wrapped_text  ' o   ( )�E�E 0 the_paragraph  % o      �D�D 0 the_wrapped_text  " &  append the paragraph to the text   # �(( @ a p p e n d   t h e   p a r a g r a p h   t o   t h e   t e x t�K   l  / 6)*+) r   / 6,-, b   / 4./. b   / 2010 o   / 0�C�C 0 the_wrapped_text  1 o   0 1�B�B 0 the_paragraph  / o   2 3�A�A 0 the_substitue  - o      �@�@ 0 the_wrapped_text  * E ?append the paragraph to the text and the line break replacement   + �22 ~ a p p e n d   t h e   p a r a g r a p h   t o   t h e   t e x t   a n d   t h e   l i n e   b r e a k   r e p l a c e m e n t�L  �R 0 i   m    �?�?  o    �>�> 0 the_len  �Q   3�=3 L   < >44 o   < =�<�< 0 the_wrapped_text  �=  �_  + �;5 6�;  5 k      77 898 h     �:*�: 0 s  9 :�9: l    ;�8�7; L     << o     �6�6 0 s  �8  �7  �9  6 �5=|>�5  = �4�3�4 0 s  
�3 .aevtoappnull  �   � ****> �2?�1�0@A�/
�2 .aevtoappnull  �   � ****? k     BB :�.�.  �1  �0  @  A  �/ b   , 6CDEFGHIJKLMNOPQC �-�,�+�*�)�(�'�&�%�$�#�"�!� �- 0 
every_word  �, 0 every_paragraph  �+ 	0 split  �* 0 text_length  �) 0 comma_delimited_text  �( 0 delimited_text  �' 0 to_paragraphs  �& 0 ordinal  �% 
0 encode  �$ 
0 decode  �# 0 quoted_form  �" 0 
sub_string  �! 0 occurrences  �  0 	wrap_text  D �;��RS�� 0 
every_word  � �T� T  �� 0 the_text  �  R �� 0 the_text  S �
� 
cwor� ��-EE �I��UV�� 0 every_paragraph  � �W� W  �� 0 the_text  �  U ����� 0 the_text  � 0 paragraph_list  � 0 	para_list  � 0 	next_line  V ����
�	
� 
cpar
� 
kocl
� 
cobj
�
 .corecnte****       ****
�	 
leng� 4jvE�O��-E�O $�[��l kh ��,j 	��6GY h[OY��O�F �t��XY�� 	0 split  � �Z� Z  ��� 0 the_text  � 0 	delimiter  �  X �� ��� 0 the_text  �  0 	delimiter  �� 0 ret_val  Y �����
�� 
txdl
�� 
citm� �*�,FO��-E�O�*�,FO�G �������[\���� 0 text_length  �� ��]�� ]  ���� 0 the_text  ��  [ ���� 0 the_text  \ ��
�� 
leng�� ��,EH �������^_���� 0 comma_delimited_text  �� ��`�� `  ���� 0 
text_items  ��  ^ ���� 0 
text_items  _ �����
�� 
spac�� 0 delimited_text  �� 
*���%l+ I �������ab���� 0 delimited_text  �� ��c�� c  ������ 0 
text_items  �� 0 	delimiter  ��  a ���������������� 0 
text_items  �� 0 	delimiter  �� 0 ret_val  �� 0 i  �� 0 the_word  �� 0 head  �� 0 tail  b ��������
�� 
leng
�� 
cobj�� P�E�O Gk��,Ekh ��/E�O�E�O�E�O�k  �E�Y hO���,  �E�Y hO��%�%�%E�[OY��O�J ������de���� 0 to_paragraphs  �� ��f�� f  ���� 0 the_list  ��  d ���� 0 the_list  e ��������
�� 
ret 
�� 
ascr
�� 
txdl
�� 
ctxt�� �kv��,FO��&K ��%����gh���� 0 ordinal  �� ��i�� i  ���� 0 
the_number  ��  g ������ 0 
the_number  �� 0 ordinals  h 048<@DHLPTX\`dhlps������ 
�� 
cobj�� &����������������a a a vE�O�a �/EL �������jk���� 
0 encode  �� ��l�� l  ���� 0 the_text  ��  j ���� 0 the_text  k ����
�� .sysoexecTEXT���     TEXT�� �%�%j M �������mn���� 
0 decode  �� ��o�� o  ���� 0 the_text  ��  m ���� 0 the_text  n ����
�� .sysoexecTEXT���     TEXT�� �%�%j N �������pq���� 0 quoted_form  �� ��r�� r  ���� 0 the_text  ��  p ���� 0 the_text  q ��
�� 
strq�� ��,EO �������st���� 0 
sub_string  �� ��u�� u  �������� 0 	the_start  �� 0 the_end  �� 0 the_text  ��  s �������� 0 	the_start  �� 0 the_end  �� 0 the_text  t ��
�� 
ctxt�� �[�\[Z�\Z�2EP �������vw���� 0 occurrences  �� ��x�� x  ������ 0 the_text  �� 	0 match  ��  v �������� 0 the_text  �� 	0 match  �� 0 counter  w ���������
�� 
ascr
�� 
txdl
�� 
citm
�� .corecnte****       ****�� ���,FO��-j kE�O���,FO�Q �������yz���� 0 	wrap_text  �� ��{�� {  ������ 0 the_text  �� 0 the_substitue  ��  y ���������������� 0 the_text  �� 0 the_substitue  �� 0 the_wrapped_text  �� 0 the_paragraphs  �� 0 the_len  �� 0 i  �� 0 the_paragraph  z �������
�� 
cpar
�� 
leng
�� 
cobj�� ?�E�O��-E�O��,E�O *k�kh ��/E�O��  
��%E�Y 	��%�%E�[OY��O�} ��|}~�� 0 s  | k       ��� l      ������  �IC
 * Example : StringModifier's replaceText("Let it be known that [company] is responsible for any damage" & " any employee causes during [company]'s activity while in the conference.", "[company]", "Disny inc") -- this will then replace all instances of [company] with Disny inc
 * Todo: is the original text also edited?
    � ���� 
   *   E x a m p l e   :   S t r i n g M o d i f i e r ' s   r e p l a c e T e x t ( " L e t   i t   b e   k n o w n   t h a t   [ c o m p a n y ]   i s   r e s p o n s i b l e   f o r   a n y   d a m a g e "   &   "   a n y   e m p l o y e e   c a u s e s   d u r i n g   [ c o m p a n y ] ' s   a c t i v i t y   w h i l e   i n   t h e   c o n f e r e n c e . " ,   " [ c o m p a n y ] " ,   " D i s n y   i n c " )   - -   t h i s   w i l l   t h e n   r e p l a c e   a l l   i n s t a n c e s   o f   [ c o m p a n y ]   w i t h   D i s n y   i n c 
   *   T o d o :   i s   t h e   o r i g i n a l   t e x t   a l s o   e d i t e d ? 
  � ��� i     ��� I      ������� 0 replace_text  � ��� o      �� 0 the_text  � ��� o      �~�~ 	0 match  � ��}� o      �|�| 0 replacement  �}  ��  � k      �� ��� r     ��� o     �{�{ 	0 match  � 1    �z
�z 
txdl� ��� r    ��� n    	��� 2   	�y
�y 
citm� o    �x�x 0 the_text  � o      �w�w 0 temporary_list  � ��� r    ��� o    �v�v 0 replacement  � 1    �u
�u 
txdl� ��� r    ��� c    ��� o    �t�t 0 temporary_list  � m    �s
�s 
ctxt� o      �r�r 0 finished_form  � ��� r    ��� m    �� ���  � 1    �q
�q 
txdl� ��p� L     �� o    �o�o 0 finished_form  �p  � ��� l      �n���n  � l f
 * Modifies the original array
 * TD you may aswell return the original array for chaining purposes
    � ��� � 
   *   M o d i f i e s   t h e   o r i g i n a l   a r r a y 
   *   T D   y o u   m a y   a s w e l l   r e t u r n   t h e   o r i g i n a l   a r r a y   f o r   c h a i n i n g   p u r p o s e s 
  � ��� i    ��� I      �m��l�m 0 wrap_every_text_item  � ��� o      �k�k 0 
text_items  � ��j� o      �i�i 0 wrap  �j  �l  � Y     !��h���g� r    ��� I    �f��e�f 0 	wrap_text  � ��� n    ��� 4    �d�
�d 
cobj� o    �c�c 0 i  � o    �b�b 0 
text_items  � ��a� o    �`�` 0 wrap  �a  �e  � n      ��� 4    �_�
�_ 
cobj� o    �^�^ 0 i  � o    �]�] 0 
text_items  �h 0 i  � m    �\�\ � l   ��[�Z� n    ��� 1    �Y
�Y 
leng� o    �X�X 0 
text_items  �[  �Z  �g  � ��� l      �W���W  � / )
 * Does not modify the original string
    � ��� R 
   *   D o e s   n o t   m o d i f y   t h e   o r i g i n a l   s t r i n g 
  � ��� i    ��� I      �V��U�V 0 	wrap_text  � ��� o      �T�T 0 the_text  � ��S� o      �R�R 0 wrap  �S  �U  � L     �� b     ��� b     ��� o     �Q�Q 0 wrap  � o    �P�P 0 the_text  � o    �O�O 0 wrap  � ��� l      �N���N  � . (
 * returns the text in all lower case
    � ��� P 
   *   r e t u r n s   t h e   t e x t   i n   a l l   l o w e r   c a s e 
  � ��� i    ��� I      �M��L�M 0 
lower_case  � ��K� o      �J�J 0 the_text  �K  �L  � k     �� ��� r     ��� m     �� ��� 4 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z� o      �I�I 	0 upper  � ��� r    ��� m    �� ��� 4 a b c d e f g h i j k l m n o p q r s t u v w x y z� o      �H�H 	0 lower  � ��G� L    �� n   ��� I   	 �F��E�F 0 translate_chars  � ��� o   	 
�D�D 0 the_text  � ��� o   
 �C�C 	0 upper  � ��B� o    �A�A 	0 lower  �B  �E  � o    	�@�@ 0 util Util�G  � � � l      �?�?   . (
 * returns the text in all upper case
     � P 
   *   r e t u r n s   t h e   t e x t   i n   a l l   u p p e r   c a s e 
     i     I      �>�=�> 0 
upper_case   	�<	 o      �;�; 0 the_text  �<  �=   k     

  r      m      � 4 a b c d e f g h i j k l m n o p q r s t u v w x y z o      �:�: 	0 lower    r     m     � 4 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z o      �9�9 	0 upper   �8 L     n    I   	 �7�6�7 0 translate_chars    o   	 
�5�5 0 the_text    o   
 �4�4 	0 lower    �3  o    �2�2 	0 upper  �3  �6   o    	�1�1 0 util Util�8   !"! l      �0#$�0  # I C
 * Capitalize a text, returning only the first letter uppercased
    $ �%% � 
   *   C a p i t a l i z e   a   t e x t ,   r e t u r n i n g   o n l y   t h e   f i r s t   l e t t e r   u p p e r c a s e d 
  " &'& i    ()( I      �/*�.�/ 0 capitalize_text  * +�-+ o      �,�, 0 the_text  �-  �.  ) k     #,, -.- r     /0/ I     	�+1�*�+ 0 
upper_case  1 2�)2 n    343 4   �(5
�( 
cha 5 m    �'�' 4 o    �&�& 0 the_text  �)  �*  0 o      �%�% 0 	firstchar 	firstChar. 676 r    898 I    �$:�#�$ 0 
lower_case  : ;�"; n    <=< 7   �!>?
�! 
cha > m    � �  ? m    ����= o    �� 0 the_text  �"  �#  9 o      �� 0 
otherchars 
otherChars7 @�@ L    #AA b    "BCB o     �� 0 	firstchar 	firstCharC o     !�� 0 
otherchars 
otherChars�  ' DED l      �FG�  F ? 9
 * removes trim string from the right side of the text
    G �HH r 
   *   r e m o v e s   t r i m   s t r i n g   f r o m   t h e   r i g h t   s i d e   o f   t h e   t e x t 
  E IJI i    KLK I      �M�� 0 left_side_strip  M NON o      �� 0 the_text  O P�P o      �� 0 trim_string  �  �  L k     6QQ RSR r     TUT I    �V�
� .corecnte****       ****V o     �� 0 trim_string  �  U o      �� 0 x  S WXW Q    3YZ[Y V    )\]\ r    $^_^ c    "`a` n     bcb 7    �de
� 
cha d l   f��f [    ghg o    �� 0 x  h m    �� �  �  e m    �
�
��c o    �	�	 0 the_text  a m     !�
� 
ctxt_ o      �� 0 the_text  ] C   iji o    �� 0 the_text  j l   k��k o    �� 0 trim_string  �  �  Z R      ��� 
� .ascrerr ****      � ****�  �   [ L   1 3ll m   1 2mm �nn  X o��o L   4 6pp o   4 5���� 0 the_text  ��  J qrq l      ��st��  s ? 9
 * removes trim string from the right side of the text
    t �uu r 
   *   r e m o v e s   t r i m   s t r i n g   f r o m   t h e   r i g h t   s i d e   o f   t h e   t e x t 
  r vwv i    xyx I      ��z���� 0 right_side_strip  z {|{ o      ���� 0 the_text  | }��} o      ���� 0 trim_string  ��  ��  y k     7~~ � r     ��� I    �����
�� .corecnte****       ****� o     ���� 0 trim_string  ��  � o      ���� 0 x  � ��� Q    4���� V    *��� r    %��� c    #��� n    !��� 7   !����
�� 
cha � m    ���� � d     �� l   ������ [    ��� o    ���� 0 x  � m    ���� ��  ��  � o    ���� 0 the_text  � m   ! "��
�� 
ctxt� o      ���� 0 the_text  � D    ��� o    ���� 0 the_text  � l   ������ o    ���� 0 trim_string  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   2 4�� m   2 3�� ���  � ���� L   5 7�� o   5 6���� 0 the_text  ��  w ��� l      ������  � H B
 * removes trim string from the left and right side of the text
    � ��� � 
   *   r e m o v e s   t r i m   s t r i n g   f r o m   t h e   l e f t   a n d   r i g h t   s i d e   o f   t h e   t e x t 
  � ��� i     #��� I      ������� 0 left_and_right_side_strip  � ��� o      ���� 0 the_text  � ���� o      ���� 0 trim_string  ��  ��  � k     �� ��� r     	��� I     ������� 0 left_side_strip  � ��� o    ���� 0 the_text  � ���� o    ���� 0 trim_string  ��  ��  � o      ���� 0 the_text  � ��� r   
 ��� I   
 ������� 0 right_side_strip  � ��� o    ���� 0 the_text  � ���� o    ���� 0 trim_string  ��  ��  � o      ���� 0 the_text  � ���� L    �� o    ���� 0 the_text  ��  � ��� l     ��������  ��  ��  � ���� h   $ +����� 0 util Util� k      �� ��� l      ������  � l f
	 * Translate characters of a text
	 * Note: Pass the From and To tables as strings (same lenght!)
	    � ��� � 
 	   *   T r a n s l a t e   c h a r a c t e r s   o f   a   t e x t 
 	   *   N o t e :   P a s s   t h e   F r o m   a n d   T o   t a b l e s   a s   s t r i n g s   ( s a m e   l e n g h t ! ) 
 	  � ���� i     ��� I      ������� 0 translate_chars  � ��� o      ���� 0 the_text  � ��� o      ���� 0 
from_chars  � ���� o      ���� 0 to_chars  ��  ��  � k     Y�� ��� r     ��� m     �� ���  � l     ������ o      ���� 0 newtext newText��  ��  � ��� Z    ������� >   ��� l   	������ I   	�����
�� .corecnte****       ****� o    ���� 0 
from_chars  ��  ��  ��  � l  	 ������ I  	 �����
�� .corecnte****       ****� o   	 
���� 0 to_chars  ��  ��  ��  � R    �����
�� .ascrerr ****      � ****� m    �� ��� l t r a n s l a t e _ c h a r s :   F r o m / T o   s t r i n g s   h a v e   d i f f e r e n t   l e n g h t��  ��  ��  � ��� X    V����� k   + Q�� ��� r   + .��� o   + ,���� 0 char  � o      ���� 0 newchar newChar� ��� r   / :��� I  / 8�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� o   1 2���� 0 char  � �����
�� 
psin� l  3 4������ o   3 4���� 0 
from_chars  ��  ��  ��  � o      ���� 0 x  � ��� Z  ; K������� >  ; >��� o   ; <���� 0 x  � m   < =����  � r   A G� � n   A E 4   B E��
�� 
cha  o   C D���� 0 x   l  A B���� o   A B���� 0 to_chars  ��  ��    o      ���� 0 newchar newChar��  ��  � �� r   L Q b   L O	 o   L M���� 0 newtext newText	 o   M N���� 0 newchar newChar o      ���� 0 newtext newText��  �� 0 char  � o    ���� 0 the_text  � 
��
 L   W Y l  W X���� o   W X���� 0 newtext newText��  ��  ��  ��  ��  } �� ��   k        h     ��|�� 0 s   �� l    ���� L      o     ���� 0 s  ��  ��  ��   ��}��   ������ 0 s  
�� .aevtoappnull  �   � **** ��������
�� .aevtoappnull  �   � **** k      ����  ��  ��      �� b   ~  !"#$% 
������~�}�|�{�z�y�x�� 0 replace_text  �� 0 wrap_every_text_item  � 0 	wrap_text  �~ 0 
lower_case  �} 0 
upper_case  �| 0 capitalize_text  �{ 0 left_side_strip  �z 0 right_side_strip  �y 0 left_and_right_side_strip  �x 0 util Util �w��v�u&'�t�w 0 replace_text  �v �s(�s (  �r�q�p�r 0 the_text  �q 	0 match  �p 0 replacement  �u  & �o�n�m�l�k�o 0 the_text  �n 	0 match  �m 0 replacement  �l 0 temporary_list  �k 0 finished_form  ' �j�i�h�
�j 
txdl
�i 
citm
�h 
ctxt�t !�*�,FO��-E�O�*�,FO��&E�O�*�,FO� �g��f�e)*�d�g 0 wrap_every_text_item  �f �c+�c +  �b�a�b 0 
text_items  �a 0 wrap  �e  ) �`�_�^�` 0 
text_items  �_ 0 wrap  �^ 0 i  * �]�\�[
�] 
leng
�\ 
cobj�[ 0 	wrap_text  �d "  k��,Ekh *��/�l+ ��/F[OY�� �Z��Y�X,-�W�Z 0 	wrap_text  �Y �V.�V .  �U�T�U 0 the_text  �T 0 wrap  �X  , �S�R�S 0 the_text  �R 0 wrap  -  �W ��%�% �Q��P�O/0�N�Q 0 
lower_case  �P �M1�M 1  �L�L 0 the_text  �O  / �K�J�I�H�K 0 the_text  �J 	0 upper  �I 	0 lower  �H 0 util Util0 ���G�G 0 translate_chars  �N �E�O�E�O����m+   �F�E�D23�C�F 0 
upper_case  �E �B4�B 4  �A�A 0 the_text  �D  2 �@�?�>�=�@ 0 the_text  �? 	0 lower  �> 	0 upper  �= 0 util Util3 �<�< 0 translate_chars  �C �E�O�E�O����m+ ! �;)�:�956�8�; 0 capitalize_text  �: �77�7 7  �6�6 0 the_text  �9  5 �5�4�3�5 0 the_text  �4 0 	firstchar 	firstChar�3 0 
otherchars 
otherChars6 �2�1�0
�2 
cha �1 0 
upper_case  �0 0 
lower_case  �8 $*��k/k+ E�O*�[�\[Zl\Zi2k+ E�O��%" �/L�.�-89�,�/ 0 left_side_strip  �. �+:�+ :  �*�)�* 0 the_text  �) 0 trim_string  �-  8 �(�'�&�( 0 the_text  �' 0 trim_string  �& 0 x  9 �%�$�#�"�!m
�% .corecnte****       ****
�$ 
cha 
�# 
ctxt�"  �!  �, 7�j  E�O # h���[�\[Z�k\Zi2�&E�[OY��W 	X  �O�# � y��;<��  0 right_side_strip  � �=� =  ��� 0 the_text  � 0 trim_string  �  ; ���� 0 the_text  � 0 trim_string  � 0 x  < ������
� .corecnte****       ****
� 
cha 
� 
ctxt�  �  � 8�j  E�O $ h���[�\[Zk\Z�k'2�&E�[OY��W 	X  �O�$ ����>?�� 0 left_and_right_side_strip  � �@� @  ��� 0 the_text  � 0 trim_string  �  > �
�	�
 0 the_text  �	 0 trim_string  ? ��� 0 left_side_strip  � 0 right_side_strip  � *��l+  E�O*��l+ E�O�% ��}A� 0 util UtilA �BC�  B �� 0 translate_chars  C ����DE� � 0 translate_chars  � ��F�� F  �������� 0 the_text  �� 0 
from_chars  �� 0 to_chars  �  D ���������������� 0 the_text  �� 0 
from_chars  �� 0 to_chars  �� 0 newtext newText�� 0 char  �� 0 newchar newChar�� 0 x  E 
������������������
�� .corecnte****       ****
�� 
kocl
�� 
cobj
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
cha �  Z�E�O�j �j  	)j�Y hO :�[��l kh �E�O*��� E�O�j ��/E�Y hO��%E�[OY��O�~ �� �����GH���� 0 keychain_data  �� ��I�� I  ���� 0 account_name  ��  G 	�������������������� 0 account_name  �� 0 pass_result  �� 0 wrapped_text  �� 0 
the_result  �� 0 the_password  �� 0 the_content  �� 0 account_name_result  �� 0 keychain_item_name_result  �� 0 keychain_item_name  H  ����� ��� �����
��"?Pm��������
�� .sysoexecTEXT���     TEXT
�� .ascrcmnt****      � ****�� 0 	wrap_text  �� 	0 match  
�� 
cobj�� �� 0 keychain_item_name  �� 0 account_name  �� 0 the_password  �� �� ��%j E�O�j Ob  ��l+ E�Ob  ��l+ E�O��l/E�O�%j O���/E�Ob  ��l+ E�O��l/E�O�%j Ob  ��l+ E�O��l/E�O��%j O��a �a  ��J����KL��
�� .aevtoappnull  �   � ****J k     
MM  tNN  �����  ��  ��  K  L  y�� ����� 0 the_text  �� 0 keychain_data  �� �E�O*�k+  ascr  ��ޭ
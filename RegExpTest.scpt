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
ctxt��  ��  ��   : m   9 : A A � B B 6 t e x t : T e x t P a r s e r . a p p l e s c r i p t��  ��  ��  ��   4 o   , .���� 0 scriptloader ScriptLoader 2  f   + , /  C D C l     ��������  ��  ��   D  E F E l     ��������  ��  ��   F  G H G l     �� I J��   I � �set the_result to RegExpUtil's match("127.0.0.1", "^([[:digit:]]{1,3})\\.([[:digit:]]{1,3})\\.([[:digit:]]{1,3})\\.([[:digit:]]{1,3})$")    J � K K s e t   t h e _ r e s u l t   t o   R e g E x p U t i l ' s   m a t c h ( " 1 2 7 . 0 . 0 . 1 " ,   " ^ ( [ [ : d i g i t : ] ] { 1 , 3 } ) \ \ . ( [ [ : d i g i t : ] ] { 1 , 3 } ) \ \ . ( [ [ : d i g i t : ] ] { 1 , 3 } ) \ \ . ( [ [ : d i g i t : ] ] { 1 , 3 } ) $ " ) H  L M L l     �� N O��   N � �set the_result to RegExpUtil's match("abc 123", "^([a-z]+)[[:space:]]([1-9]+)$") --(*abc 123, abc, 123*)--length of the_result--(*3*)    O � P P
 s e t   t h e _ r e s u l t   t o   R e g E x p U t i l ' s   m a t c h ( " a b c   1 2 3 " ,   " ^ ( [ a - z ] + ) [ [ : s p a c e : ] ] ( [ 1 - 9 ] + ) $ " )   - - ( * a b c   1 2 3 ,   a b c ,   1 2 3 * ) - - l e n g t h   o f   t h e _ r e s u l t - - ( * 3 * ) M  Q R Q l     �� S T��   S  log the_result    T � U U  l o g   t h e _ r e s u l t R  V W V l     �� X Y��   X  log length of the_result    Y � Z Z 0 l o g   l e n g t h   o f   t h e _ r e s u l t W  [ \ [ l     ��������  ��  ��   \  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     ��������  ��  ��   `  a b a l     c���� c r      d e d m      f f � g g � p a s s w o r d :   " a b c 1 2 3 " 
 k e y c h a i n :   " / L i b r a r y / K e y c h a i n s / S y s t e m . k e y c h a i n " 
 c l a s s :   " g e n p " 
 a t t r i b u t e s : 
         0 x 0 0 0 0 0 0 0 7 e o      ���� 0 the_text  ��  ��   b  h i h l     �� j k��   j  set the_text to "abc    k � l l ( s e t   t h e _ t e x t   t o   " a b c i  m n m l     �� o p��   o 
 123"    p � q q  1 2 3 " n  r s r l     ��������  ��  ��   s  t u t l     ��������  ��  ��   u  v w v l     ��������  ��  ��   w  x y x l     ��������  ��  ��   y  z { z l     ��������  ��  ��   {  | } | l     �� ~ ��   ~  set the_text_2 to "test     � � � . s e t   t h e _ t e x t _ 2   t o   " t e s t }  � � � l     �� � ���   �  abc123"    � � � �  a b c 1 2 3 " �  � � � l     �� � ���   �  log the_text_2    � � � �  l o g   t h e _ t e x t _ 2 �  � � � l     �� � ���   � > 8set the_result_2 to RegExpUtil's match(the_text, "^.+$")    � � � � p s e t   t h e _ r e s u l t _ 2   t o   R e g E x p U t i l ' s   m a t c h ( t h e _ t e x t ,   " ^ . + $ " ) �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l   
 ����� � I    
�� ����� 0 keychain_data   �  ��� � m     � � � � �  f l o w e r p o w e r 2��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   �WQ
 * Returns a record with keychain name, account name and password by querrying keychain with the "keychain item name" of the password-keychain-item
 * Note: the_keychain_item_name is the "name" of the keychain-password-item
 * Caution: If there are unusual characters in the password, it isn't output as plain text, it's output encoded in hex. Here's a python script I've been using which covers that case: http://blog.macromates.com/2006/keychain-access-from-shell/
 * Note: appending find-generic-password -a  & account_name &  -g will retrive keychain itm name and pass from account name
     � � � �� 
   *   R e t u r n s   a   r e c o r d   w i t h   k e y c h a i n   n a m e ,   a c c o u n t   n a m e   a n d   p a s s w o r d   b y   q u e r r y i n g   k e y c h a i n   w i t h   t h e   " k e y c h a i n   i t e m   n a m e "   o f   t h e   p a s s w o r d - k e y c h a i n - i t e m 
   *   N o t e :   t h e _ k e y c h a i n _ i t e m _ n a m e   i s   t h e   " n a m e "   o f   t h e   k e y c h a i n - p a s s w o r d - i t e m 
   *   C a u t i o n :   I f   t h e r e   a r e   u n u s u a l   c h a r a c t e r s   i n   t h e   p a s s w o r d ,   i t   i s n ' t   o u t p u t   a s   p l a i n   t e x t ,   i t ' s   o u t p u t   e n c o d e d   i n   h e x .   H e r e ' s   a   p y t h o n   s c r i p t   I ' v e   b e e n   u s i n g   w h i c h   c o v e r s   t h a t   c a s e :   h t t p : / / b l o g . m a c r o m a t e s . c o m / 2 0 0 6 / k e y c h a i n - a c c e s s - f r o m - s h e l l / 
   *   N o t e :   a p p e n d i n g   f i n d - g e n e r i c - p a s s w o r d   - a     &   a c c o u n t _ n a m e   &     - g   w i l l   r e t r i v e   k e y c h a i n   i t m   n a m e   a n d   p a s s   f r o m   a c c o u n t   n a m e 
   �  ��� � i   B E � � � I      �� ����� 0 keychain_data   �  ��� � o      ���� 0 the_keychain_item_name  ��  ��   � k     g � �  � � � l    	 � � � � r     	 � � � l     ����� � I    �� ���
�� .sysoexecTEXT���     TEXT � b      � � � m      � � � � � P 2 > & 1   s e c u r i t y   f i n d - g e n e r i c - p a s s w o r d   - g l   � o    ���� 0 the_keychain_item_name  ��  ��  ��   � o      ���� 0 pass_result   � ( "outputs pass and login credentials    � � � � D o u t p u t s   p a s s   a n d   l o g i n   c r e d e n t i a l s �  � � � l  
 
�� � ���   �  log pass_result    � � � �  l o g   p a s s _ r e s u l t �  � � � l  
 
�� � ���   �  log length of pass_result    � � � � 2 l o g   l e n g t h   o f   p a s s _ r e s u l t �  � � � l  
 
��������  ��  ��   �  � � � l  
  � � � � r   
  � � � n  
  � � � I    �� ����� 0 	wrap_text   �  � � � o    ���� 0 pass_result   �  ��� � m     � � � � �   ��  ��   � o   
 �� 0 
textparser 
TextParser � o      �~�~ 0 wrapped_text   � P Jwraps the text into one line, replaces linebreaks with a single space char    � � � � � w r a p s   t h e   t e x t   i n t o   o n e   l i n e ,   r e p l a c e s   l i n e b r e a k s   w i t h   a   s i n g l e   s p a c e   c h a r �  � � � l   �} � ��}   �  log wrapped_text    � � � �   l o g   w r a p p e d _ t e x t �  � � � l   �|�{�z�|  �{  �z   �  � � � r    % � � � n   # � � � I    #�y ��x�y 	0 match   �  � � � o    �w�w 0 wrapped_text   �  ��v � m     � � � � � � p a s s w o r d \ :   " ( [ a - z 0 - 9 ] + ) " . k e y c h a i n \ :   " ( [ a - z 0 - 9 / . ] + ) "   c l a s s \ :   " g e n p "   a t t r i b u t e s \ : ( . + )�v  �x   � o    �u�u 0 
regexputil 
RegExpUtil � o      �t�t 0 
the_result   �  � � � l  & &�s � ��s   �  log the_result    � � � �  l o g   t h e _ r e s u l t �  � � � l  & &�r � ��r   �  log length of the_result    � � � � 0 l o g   l e n g t h   o f   t h e _ r e s u l t �  � � � l  & &�q�p�o�q  �p  �o   �  � � � r   & , � � � n  & * � � � 4  ' *�n �
�n 
cobj � m   ( )�m�m  � o   & '�l�l 0 
the_result   � o      �k�k 0 the_password   �  � � � l  - -�j � ��j   � % log "Password: " & the_password    � � � � > l o g   " P a s s w o r d :   "   &   t h e _ p a s s w o r d �  � � � r   - 3 �  � n  - 1 4  . 1�i
�i 
cobj m   / 0�h�h  o   - .�g�g 0 
the_result    o      �f�f 0 the_content   �  l  4 4�e�e    log the_content    �  l o g   t h e _ c o n t e n t 	
	 r   4 A n  4 ? I   9 ?�d�c�d 	0 match    o   9 :�b�b 0 the_content   �a m   : ; � 4   " a c c t " \ < b l o b \ > \ = " ( [ ^ " ] + ) "�a  �c   o   4 9�`�` 0 
regexputil 
RegExpUtil o      �_�_ 0 account_name_result  
  l  B B�^�^    log account_name_result    � . l o g   a c c o u n t _ n a m e _ r e s u l t  l  B B�]�]   ' !log length of account_name_result    � B l o g   l e n g t h   o f   a c c o u n t _ n a m e _ r e s u l t   l  B B�\!"�\  ! + %log first item in account_name_result   " �## J l o g   f i r s t   i t e m   i n   a c c o u n t _ n a m e _ r e s u l t  $%$ r   B H&'& n  B F()( 4  C F�[*
�[ 
cobj* m   D E�Z�Z ) o   B C�Y�Y 0 account_name_result  ' o      �X�X 0 account_name  % +,+ l  I I�W-.�W  - ( "log "account_name:" & account_name   . �// D l o g   " a c c o u n t _ n a m e : "   &   a c c o u n t _ n a m e, 010 l  I I�V23�V  2  svce"<blob>="flowerpower"   3 �44 2 s v c e " < b l o b > = " f l o w e r p o w e r "1 565 r   I V787 n  I T9:9 I   N T�U;�T�U 	0 match  ; <=< o   N O�S�S 0 the_content  = >�R> m   O P?? �@@ 4   " s v c e " \ < b l o b \ > \ = " ( [ ^ " ] + ) "�R  �T  : o   I N�Q�Q 0 
regexputil 
RegExpUtil8 o      �P�P 0 keychain_item_name_result  6 ABA l  W W�OCD�O  C # log keychain_item_name_result   D �EE : l o g   k e y c h a i n _ i t e m _ n a m e _ r e s u l tB FGF l  W W�NHI�N  H - 'log length of keychain_item_name_result   I �JJ N l o g   l e n g t h   o f   k e y c h a i n _ i t e m _ n a m e _ r e s u l tG KLK l  W ]MNOM r   W ]PQP l  W [R�M�LR n  W [STS 4  X [�KU
�K 
cobjU m   Y Z�J�J T o   W X�I�I 0 keychain_item_name_result  �M  �L  Q o      �H�H 0 keychain_item_name  N  keychain item name   O �VV $ k e y c h a i n   i t e m   n a m eL WXW l  ^ ^�GYZ�G  Y 5 /log "keychain_item_name: " & keychain_item_name   Z �[[ ^ l o g   " k e y c h a i n _ i t e m _ n a m e :   "   &   k e y c h a i n _ i t e m _ n a m eX \]\ l  ^ ^�F�E�D�F  �E  �D  ] ^�C^ L   ^ g__ K   ^ f`` �Bab�B 0 keychain_item_name  a o   _ `�A�A 0 keychain_item_name  b �@cd�@ 0 account_name  c o   a b�?�? 0 account_name  d �>e�=�> 0 the_password  e o   c d�<�< 0 the_password  �=  �C  ��       �;fghijk�;  f �:�9�8�7�6�: 0 scriptloader ScriptLoader�9 0 
regexputil 
RegExpUtil�8 0 
textparser 
TextParser�7 0 keychain_data  
�6 .aevtoappnull  �   � ****g �5l m�5  l k      nn opo l     �4qr�4  q w qNote: we use load_script to load plain-text .applescript files, which cant be loaded directly without this method   r �ss � N o t e :   w e   u s e   l o a d _ s c r i p t   t o   l o a d   p l a i n - t e x t   . a p p l e s c r i p t   f i l e s ,   w h i c h   c a n t   b e   l o a d e d   d i r e c t l y   w i t h o u t   t h i s   m e t h o dp tut l     �3vw�3  v � �Note: we use .applescript instead of .scpt files because its easier to put plain text script files under version control like github   w �xx N o t e :   w e   u s e   . a p p l e s c r i p t   i n s t e a d   o f   . s c p t   f i l e s   b e c a u s e   i t s   e a s i e r   t o   p u t   p l a i n   t e x t   s c r i p t   f i l e s   u n d e r   v e r s i o n   c o n t r o l   l i k e   g i t h u bu yzy l     �2{|�2  {a[Note: You can load compiled scripts (.scpt) or plain text scripts (.applescript). Make sure, though, that your .applescript files are encoded as either Mac (what AppleScript Editor uses) UTF-8 (if you use another text editor). Any scripts loaded are expected to be installed into your Scripts directory. Use the line below to reference the script:   | �}}� N o t e :   Y o u   c a n   l o a d   c o m p i l e d   s c r i p t s   ( . s c p t )   o r   p l a i n   t e x t   s c r i p t s   ( . a p p l e s c r i p t ) .   M a k e   s u r e ,   t h o u g h ,   t h a t   y o u r   . a p p l e s c r i p t   f i l e s   a r e   e n c o d e d   a s   e i t h e r   M a c   ( w h a t   A p p l e S c r i p t   E d i t o r   u s e s )   U T F - 8   ( i f   y o u   u s e   a n o t h e r   t e x t   e d i t o r ) .   A n y   s c r i p t s   l o a d e d   a r e   e x p e c t e d   t o   b e   i n s t a l l e d   i n t o   y o u r   S c r i p t s   d i r e c t o r y .   U s e   t h e   l i n e   b e l o w   t o   r e f e r e n c e   t h e   s c r i p t :z ~~ l     �1���1  � H Bremember to import this method before you use it with a property:    � ��� � r e m e m b e r   t o   i m p o r t   t h i s   m e t h o d   b e f o r e   y o u   u s e   i t   w i t h   a   p r o p e r t y :   ��� l      �0���0  ���
property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt")--prerequisite for loading .applescript filesproperty ListAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListAsserter.applescript")) my ListAsserter's equals_to({1, 2, 3, 4}, {1, 2, 3, 4})
if my ListAsserter's equals_to({1, 2, 3, 4}, {1, 2, 3, 4}) then	log "yes"else	log "no"end if
   � ���� 
 p r o p e r t y   S c r i p t L o a d e r   :   l o a d   s c r i p t   a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " f i l e : S c r i p t L o a d e r . s c p t " ) - - p r e r e q u i s i t e   f o r   l o a d i n g   . a p p l e s c r i p t   f i l e s  p r o p e r t y   L i s t A s s e r t e r   :   m y   S c r i p t L o a d e r ' s   l o a d _ s c r i p t ( a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " l i s t : L i s t A s s e r t e r . a p p l e s c r i p t " ) )    m y   L i s t A s s e r t e r ' s   e q u a l s _ t o ( { 1 ,   2 ,   3 ,   4 } ,   { 1 ,   2 ,   3 ,   4 } ) 
 i f   m y   L i s t A s s e r t e r ' s   e q u a l s _ t o ( { 1 ,   2 ,   3 ,   4 } ,   { 1 ,   2 ,   3 ,   4 } )   t h e n  	 l o g   " y e s "  e l s e  	 l o g   " n o "  e n d   i f 
� ��/� i     ��� I      �.��-�. 0 load_script  � ��,� o      �+�+ 0 apple_script_path  �,  �-  � k     {�� ��� Q     x���� r    
��� I   �*��)
�* .sysoloadscpt        file� o    �(�( 0 apple_script_path  �)  � o      �'�' 0 script_object  � R      �&�%�
�& .ascrerr ****      � ****�%  � �$��#
�$ 
errn� d      �� m      �"�"��#  � l   x���� k    x�� ��� r    ��� m    �� ���  � o      �!�! 0 script_text  � ��� Q    1���� l    ���� r     ��� I   � ��
�  .rdwrread****        ****� o    �� 0 apple_script_path  �  � o      �� 0 script_text  � ( " Try reading as Mac encoding first   � ��� D   T r y   r e a d i n g   a s   M a c   e n c o d i n g   f i r s t� R      ���
� .ascrerr ****      � ****�  � ���
� 
errn� d      �� m      ����  � l  ( 1���� l  ( 1���� r   ( 1��� I  ( /���
� .rdwrread****        ****� o   ( )�� 0 apple_script_path  � ���
� 
as  � m   * +�
� 
utf8�  � o      �� 0 script_text  �   Finally try UTF-8   � ��� $   F i n a l l y   t r y   U T F - 8� &   Error reading script's encoding   � ��� @   E r r o r   r e a d i n g   s c r i p t ' s   e n c o d i n g� ��� Q   2 x���� r   5 H��� I  5 F���
� .sysodsct****        scpt� l  5 B���� b   5 B��� b   5 @��� b   5 >��� b   5 <��� b   5 :��� b   5 8��� m   5 6�� ���  s c r i p t   s� o   6 7�
� 
ret � o   8 9�� 0 script_text  � o   : ;�

�
 
ret � m   < =�� ���  e n d   s c r i p t  � o   > ?�	
�	 
ret � m   @ A�� ���  r e t u r n   s�  �  �  � o      �� 0 script_object  � R      ���
� .ascrerr ****      � ****� o      �� 0 e  � ���
� 
errn� o      �� 0 n  � ���
� 
ptlr� o      �� 0 p  � ���
� 
erob� o      � �  0 f  � �����
�� 
errt� o      ���� 0 t  ��  � k   P x�� ��� I  P a�����
�� .sysodlogaskr        TEXT� b   P ]��� b   P Y��� b   P W��� b   P S��� m   P Q�� ��� , E r r o r   r e a d i n g   l i b r a r y  � o   Q R���� 0 apple_script_path  � m   S V�� ���   � o   W X���� 0 e  � m   Y \�� ��� : P l e a s e   e n c o d e   a s   M a c   o r   U T F - 8��  � ���� R   b x����
�� .ascrerr ****      � ****� o   v w���� 0 e  � ����
�� 
errn� o   f g���� 0 n  � ����
�� 
ptlr� o   j k���� 0 p  � ����
�� 
erob� o   n o���� 0 f  � �����
�� 
errt� o   r s���� 0 t  ��  ��  �  �   text format script    � ��� (   t e x t   f o r m a t   s c r i p t  � ���� l  y {   L   y { o   y z���� 0 script_object   + %return the script, it is now loadable    � J r e t u r n   t h e   s c r i p t ,   i t   i s   n o w   l o a d a b l e��  �/  m ����   ���� 0 load_script   ����������� 0 load_script  �� ��	�� 	  ���� 0 apple_script_path  ��   ������������������ 0 apple_script_path  �� 0 script_object  �� 0 script_text  �� 0 e  �� 0 n  �� 0 p  �� 0 f  �� 0 t   ����
�������������������������������
�� .sysoloadscpt        file��  
 ������
�� 
errn���(��  
�� .rdwrread****        **** ������
�� 
errn���\��  
�� 
as  
�� 
utf8
�� 
ret 
�� .sysodsct****        scpt�� 0 e   ����
�� 
errn�� 0 n   ����
�� 
ptlr�� 0 p   ����
�� 
erob�� 0 f   ������
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
errt�� �� | �j  E�W mX  �E�O �j E�W X  ���l E�O ��%�%�%�%�%�%j E�W /X  �%a %�%a %j O)a �a �a �a �a �O�h ���� 0 s   k        l     ����   � �property RegExpUtil : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "regexp:RegExpUtil.applescript"))    �  p r o p e r t y   R e g E x p U t i l   :   m y   S c r i p t L o a d e r ' s   l o a d _ s c r i p t ( a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " r e g e x p : R e g E x p U t i l . a p p l e s c r i p t " ) )  l      ����  $
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
     �< 
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
    i      !  I      ��"���� 0 	has_match  " #$# o      ���� 0 s  $ %��% o      ���� 	0 regex  ��  ��  ! l    ;&'(& k     ;)) *+* q      ,, ��-�� 0 
ignorecase 
ignoreCase- ������ "0 extragrepoption extraGrepOption��  + ./. r     010 =    232 m     44 �55  a3 m    66 �77  A1 o      ���� 0 
ignorecase 
ignoreCase/ 898 Z    :;��<: o    ���� 0 
ignorecase 
ignoreCase; r   
 =>= m   
 ?? �@@  i> o      ���� "0 extragrepoption extraGrepOption��  < r    ABA m    CC �DD  B o      ���� "0 extragrepoption extraGrepOption9 EFE l    ��GH��  G$ 
	 * Note: So that classes such as \w work with different locales, we need to set the shell's locale explicitly to the current user's.
	 * Rather than let the shell command fail we return the exit code and test for "0" to avoid having to deal with exception handling in AppleScript.
	    H �II<   
 	   *   N o t e :   S o   t h a t   c l a s s e s   s u c h   a s   \ w   w o r k   w i t h   d i f f e r e n t   l o c a l e s ,   w e   n e e d   t o   s e t   t h e   s h e l l ' s   l o c a l e   e x p l i c i t l y   t o   t h e   c u r r e n t   u s e r ' s . 
 	   *   R a t h e r   t h a n   l e t   t h e   s h e l l   c o m m a n d   f a i l   w e   r e t u r n   t h e   e x i t   c o d e   a n d   t e s t   f o r   " 0 "   t o   a v o i d   h a v i n g   t o   d e a l   w i t h   e x c e p t i o n   h a n d l i n g   i n   A p p l e S c r i p t . 
 	  F J��J O   ;KLK L    :MM =    9NON m    PP �QQ  0O l   8R����R I   8��S��
�� .sysoexecTEXT���     TEXTS b    4TUT b    2VWV b    .XYX b    ,Z[Z b    (\]\ b    &^_^ b    $`a` b    "bcb m    dd �ee  e x p o r t   L A N G = 'c n    !fgf 1    !��
�� 
siulg l   h����h I   ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  a m   " #ii �jj " . U T F - 8 ' ;   e g r e p   - q_ o   $ %���� "0 extragrepoption extraGrepOption] m   & 'kk �ll   [ n   ( +mnm 1   ) +��
�� 
strqn o   ( )���� 	0 regex  Y m   , -oo �pp 
   < < <  W n   . 1qrq 1   / 1��
�� 
strqr o   . /���� 0 s  U m   2 3ss �tt  ;   p r i n t f   $ ?��  ��  ��  L  f    ��  ' " // :TODO: rename s to string   ( �uu 8 / /   : T O D O :   r e n a m e   s   t o   s t r i n g vwv l      ��xy��  x
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
    y �zz� 
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
  w {|{ i    }~} I      ������ 	0 match   ��� o      ���� 0 s  � ���� o      ���� 	0 regex  ��  ��  ~ l    >���� k     >�� ��� q      �� ����� 0 
ignorecase 
ignoreCase� ������ 0 extracommand extraCommand��  � ��� r     ��� =    ��� m     �� ���  a� m    �� ���  A� o      ���� 0 
ignorecase 
ignoreCase� ��� Z    ������ o    ���� 0 
ignorecase 
ignoreCase� r   
 ��� m   
 �� ��� , s h o p t   - s   n o c a s e m a t c h ;  � o      ���� 0 extracommand extraCommand��  � r    ��� m    �� ���  � o      ���� 0 extracommand extraCommand� ��� l    ������  ��� Note: 
	 * So that classes such as [[:alpha:]] work with different locales, we need to set the shell's locale explicitly to the current user's.
	 * Since `quoted form of` encloses its argument in single quotes, we must set compatibility option `shopt -s compat31` for the =~ operator to work.
	 * Rather than let the shell command fail we return '' in case of non-match to avoid having to deal with exception handling in AppleScript.
       � ���n   N o t e :   
 	   *   S o   t h a t   c l a s s e s   s u c h   a s   [ [ : a l p h a : ] ]   w o r k   w i t h   d i f f e r e n t   l o c a l e s ,   w e   n e e d   t o   s e t   t h e   s h e l l ' s   l o c a l e   e x p l i c i t l y   t o   t h e   c u r r e n t   u s e r ' s . 
 	   *   S i n c e   ` q u o t e d   f o r m   o f `   e n c l o s e s   i t s   a r g u m e n t   i n   s i n g l e   q u o t e s ,   w e   m u s t   s e t   c o m p a t i b i l i t y   o p t i o n   ` s h o p t   - s   c o m p a t 3 1 `   f o r   t h e   = ~   o p e r a t o r   t o   w o r k . 
 	   *   R a t h e r   t h a n   l e t   t h e   s h e l l   c o m m a n d   f a i l   w e   r e t u r n   ' '   i n   c a s e   o f   n o n - m a t c h   t o   a v o i d   h a v i n g   t o   d e a l   w i t h   e x c e p t i o n   h a n d l i n g   i n   A p p l e S c r i p t . 
        � ��� O   8��� I   7�����
�� .sysoexecTEXT���     TEXT� b    3��� b    1��� b    -��� b    +��� b    '��� b    %��� b    #��� b    !��� m    �� ���  e x p o r t   L A N G = '� n     ��� 1     ��
�� 
siul� l   ������ I   ������
�� .sysosigtsirr   ��� null��  ��  ��  ��  � m   ! "�� ��� 8 . U T F - 8 ' ;   s h o p t   - s   c o m p a t 3 1 ;  � o   # $���� 0 extracommand extraCommand� m   % &�� ���  [ [  � n   ' *��� 1   ( *��
�� 
strq� o   ' (���� 0 s  � m   + ,�� ���    = ~  � n   - 0��� 1   . 0��
�� 
strq� o   - .���� 	0 regex  � m   1 2�� ��� l   ] ]   & &   p r i n t f   ' % s \ n '   " $ { B A S H _ R E M A T C H [ @ ] } "   | |   p r i n t f   ' '��  �  f    � ���� l  9 >���� L   9 >�� n   9 =��� 2  : <�
� 
cpar� 1   9 :�~
�~ 
rslt� ; 5paragraphs returns a list, which can be unconvenient    � ��� j p a r a g r a p h s   r e t u r n s   a   l i s t ,   w h i c h   c a n   b e   u n c o n v e n i e n t  ��  � " // :TODO: rename s to string   � ��� 8 / /   : T O D O :   r e n a m e   s   t o   s t r i n g| ��� l     �}�|�{�}  �|  �{  � ��� l      �z���z  �  
 * Todo: untested
    � ��� ( 
   *   T o d o :   u n t e s t e d 
  � ��� i    ��� I      �y��x�y 0 match_and_replace  � ��w� o      �v�v 0 the_text  �w  �x  � k     �� ��� r     ��� I    �u��t
�u .sysoexecTEXT���     TEXT� b     ��� b     ��� m     �� ��� 
 e c h o  � n    ��� 1    �s
�s 
strq� o    �r�r 0 the_text  � m    �� ��� $   |   s e d   ' s /   / \ \   / g '�t  � o      �q�q 0 
the_result  � ��p� L    �� o    �o�o 0 
the_result  �p  � ��� l      �n���n  �
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
   � ���2 
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
� ��m� l     �l�k�j�l  �k  �j  �m   �i� ��i  � k      �� ��� h     �h�h 0 s  �  �g  l    �f�e L      o     �d�d 0 s  �f  �e  �g  � �ch�c   �b�a�b 0 s  
�a .aevtoappnull  �   � **** �`�_�^�]
�` .aevtoappnull  �   � **** k       �\�\  �_  �^      �] b    �	
	 �[�Z�Y�[ 0 	has_match  �Z 	0 match  �Y 0 match_and_replace  
 �X!�W�V�U�X 0 	has_match  �W �T�T   �S�R�S 0 s  �R 	0 regex  �V   �Q�P�O�N�Q 0 s  �P 	0 regex  �O 0 
ignorecase 
ignoreCase�N "0 extragrepoption extraGrepOption 46?CPd�M�Lik�Kos�J
�M .sysosigtsirr   ��� null
�L 
siul
�K 
strq
�J .sysoexecTEXT���     TEXT�U <�� E�O� �E�Y �E�O) $��*j �,%�%�%�%��,%�%��,%�%j  U �I~�H�G�F�I 	0 match  �H �E�E   �D�C�D 0 s  �C 	0 regex  �G   �B�A�@�?�B 0 s  �A 	0 regex  �@ 0 
ignorecase 
ignoreCase�? 0 extracommand extraCommand ������>�=���<���;�:�9
�> .sysosigtsirr   ��� null
�= 
siul
�< 
strq
�; .sysoexecTEXT���     TEXT
�: 
rslt
�9 
cpar�F ?�� E�O� �E�Y �E�O) !�*j �,%�%�%�%��,%�%��,%�%j UO��-E �8��7�6�5�8 0 match_and_replace  �7 �4�4   �3�3 0 the_text  �6   �2�1�2 0 the_text  �1 0 
the_result   ��0��/
�0 
strq
�/ .sysoexecTEXT���     TEXT�5 ��,%�%j E�O�i �.�. 0 s   k        l     �-�-   � �property TextParser : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "text:TextParser.applescript"))    � p r o p e r t y   T e x t P a r s e r   :   m y   S c r i p t L o a d e r ' s   l o a d _ s c r i p t ( a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " t e x t : T e x t P a r s e r . a p p l e s c r i p t " ) )   l      �,!"�,  ! 6 0
 * Returns an array of every word in the_text
    " �## ` 
   *   R e t u r n s   a n   a r r a y   o f   e v e r y   w o r d   i n   t h e _ t e x t 
    $%$ i     &'& I      �+(�*�+ 0 
every_word  ( )�)) o      �(�( 0 the_text  �)  �*  ' L     ** n     +,+ 2    �'
�' 
cwor, o     �&�& 0 the_text  % -.- l      �%/0�%  / r l
 * Returns all paragraps in a text as a list
 * TODO: write an example
 * // :TODO: rename to every_line?
    0 �11 � 
   *   R e t u r n s   a l l   p a r a g r a p s   i n   a   t e x t   a s   a   l i s t 
   *   T O D O :   w r i t e   a n   e x a m p l e 
   *   / /   : T O D O :   r e n a m e   t o   e v e r y _ l i n e ? 
  . 232 i    454 I      �$6�#�$ 0 every_paragraph  6 7�"7 o      �!�! 0 the_text  �"  �#  5 k     388 9:9 r     ;<; J     � �   < o      �� 0 paragraph_list  : =>= r    
?@? n    ABA 2   �
� 
cparB o    �� 0 the_text  @ o      �� 0 	para_list  > CDC X    0E�FE Z    +GH��G ?    IJI n    KLK 1    �
� 
lengL o    �� 0 	next_line  J m    ��  H l  # 'MNOM s   # 'PQP o   # $�� 0 	next_line  Q l     R��R n      STS  ;   % &T o   $ %�� 0 paragraph_list  �  �  N < 6 this takes care of not adding an emty item at the end   O �UU l   t h i s   t a k e s   c a r e   o f   n o t   a d d i n g   a n   e m t y   i t e m   a t   t h e   e n d�  �  � 0 	next_line  F o    �� 0 	para_list  D V�V L   1 3WW o   1 2�� 0 paragraph_list  �  3 XYX l      �Z[�  Z O I
 * Returns a list of text items by splitting a text at every delimiter
    [ �\\ � 
   *   R e t u r n s   a   l i s t   o f   t e x t   i t e m s   b y   s p l i t t i n g   a   t e x t   a t   e v e r y   d e l i m i t e r 
  Y ]^] i    _`_ I      �a�� 	0 split  a bcb o      �� 0 the_text  c d�
d o      �	�	 0 	delimiter  �
  �  ` k     ee fgf r     hih o     �� 0 	delimiter  i 1    �
� 
txdlg jkj r    lml n    	non 2    	�
� 
citmo o    �� 0 the_text  m o      �� 0 ret_val  k pqp l   rstr r    uvu m    ww �xx  ,v 1    �
� 
txdls , &reset applescript delimiter to default   t �yy L r e s e t   a p p l e s c r i p t   d e l i m i t e r   t o   d e f a u l tq z�z L    {{ o    �� 0 ret_val  �  ^ |}| l      � ~�   ~ ) #
 * Returns the length of theText
     ��� F 
   *   R e t u r n s   t h e   l e n g t h   o f   t h e T e x t 
  } ��� i    ��� I      ������� 0 text_length  � ���� o      ���� 0 the_text  ��  ��  � L     �� n     ��� 1    ��
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
text_items  ��  ��  � r   6 9��� m   6 7�� ���  � o      ���� 0 tail  ��  ��  � ���� r   > G��� b   > E��� b   > C��� b   > A��� o   > ?���� 0 ret_val  � o   ? @���� 0 head  � o   A B���� 0 the_word  � o   C D���� 0 tail  � o      ���� 0 ret_val  ��  � # Todo: store len in a variable   � ��� : T o d o :   s t o r e   l e n   i n   a   v a r i a b l e�� 0 i  � m    ���� � l   ������ n    ��� 1   	 ��
�� 
leng� o    	���� 0 
text_items  ��  ��  ��  � ���� L   M O�� o   M N���� 0 ret_val  ��  � ��� l      ������  � � �
 * TODO: doesnt this add a return at the last line? maybe use delimited_text() intead? 
 * // :TODO: try to find a better name
    � ��� 
   *   T O D O :   d o e s n t   t h i s   a d d   a   r e t u r n   a t   t h e   l a s t   l i n e ?   m a y b e   u s e   d e l i m i t e d _ t e x t ( )   i n t e a d ?   
   *   / /   : T O D O :   t r y   t o   f i n d   a   b e t t e r   n a m e 
  � ��� i    ��� I      ������� 0 to_paragraphs  � ���� o      ���� 0 the_list  ��  ��  � k     �� ��� r     � � J      �� o     ��
�� 
ret ��    n      1    ��
�� 
txdl 1    ��
�� 
ascr� �� L     c     o    	���� 0 the_list   m   	 
��
�� 
ctxt��  � 	
	 l      ����   � �
 * cardinal is one two three etc
 * TODO: one could create a dynamic ordinal generator in the future, that would combine two words to generate twenthy+eigth etc
     �F 
   *   c a r d i n a l   i s   o n e   t w o   t h r e e   e t c 
   *   T O D O :   o n e   c o u l d   c r e a t e   a   d y n a m i c   o r d i n a l   g e n e r a t o r   i n   t h e   f u t u r e ,   t h a t   w o u l d   c o m b i n e   t w o   w o r d s   t o   g e n e r a t e   t w e n t h y + e i g t h   e t c 
  
  i     I      ������ 0 ordinal   �� o      ���� 0 
the_number  ��  ��   k     %  r      J       m      � 
 f i r s t  m       �!!  s e c o n d "#" m    $$ �%% 
 t h i r d# &'& m    (( �))  f o u r t h' *+* m    ,, �-- 
 f i f t h+ ./. m    00 �11 
 s i x t h/ 232 m    44 �55  s e v e n t h3 676 m    88 �99  e i g h t h7 :;: m    	<< �== 
 n i n t h; >?> m   	 
@@ �AA 
 t e n t h? BCB m   
 DD �EE  e l e v e n t hC FGF m    HH �II  t w e l f t hG JKJ m    LL �MM  t h i r t e e n t hK NON m    PP �QQ  f o u r t e e n t hO RSR m    TT �UU  s e v e n t e e n t hS VWV m    XX �YY  e i g t h t e e n t hW Z[Z m    \\ �]]  n i n e t e e n t h[ ^��^ m    __ �``  t w e n t e e n t h��   o      ���� 0 ordinals   a��a L    %bb n    $cdc 4    #��e
�� 
cobje o   ! "���� 0 
the_number  d o    ���� 0 ordinals  ��   fgf l      ��hi��  h��
 * Returns encode text (escaped)
 * Caution: encode does not handle the double quote char very well
 * Note: this could also be done by creating a a method that does all the character trickery involved in unescaping/escaping text, but this method leverages the php language to do all this for us
 * Example: encode("<image location:files/img/image.jpg")--%3Cimage+location%3Afiles%2Fimg%2Fimage.jpg
    i �jj" 
   *   R e t u r n s   e n c o d e   t e x t   ( e s c a p e d ) 
   *   C a u t i o n :   e n c o d e   d o e s   n o t   h a n d l e   t h e   d o u b l e   q u o t e   c h a r   v e r y   w e l l 
   *   N o t e :   t h i s   c o u l d   a l s o   b e   d o n e   b y   c r e a t i n g   a   a   m e t h o d   t h a t   d o e s   a l l   t h e   c h a r a c t e r   t r i c k e r y   i n v o l v e d   i n   u n e s c a p i n g / e s c a p i n g   t e x t ,   b u t   t h i s   m e t h o d   l e v e r a g e s   t h e   p h p   l a n g u a g e   t o   d o   a l l   t h i s   f o r   u s 
   *   E x a m p l e :   e n c o d e ( " < i m a g e   l o c a t i o n : f i l e s / i m g / i m a g e . j p g " ) - - % 3 C i m a g e + l o c a t i o n % 3 A f i l e s % 2 F i m g % 2 F i m a g e . j p g 
  g klk i     #mnm I      ��o���� 
0 encode  o p��p o      ���� 0 the_text  ��  ��  n L     
qq I    	��r��
�� .sysoexecTEXT���     TEXTr b     sts b     uvu m     ww �xx 0 p h p   - r   ' e c h o   u r l e n c o d e ( "v o    ���� 0 the_text  t m    yy �zz  " ) ; '��  l {|{ l      ��}~��  }TN
 * Returns dencode text (unescaped)
 * Note this could also be done by creating a a method that does all the character trickery involved in unescaping/escaping text, but this method leverages the php language to do all this for us
 * Example: decode(%3Cimage+location%3Afiles%2Fimg%2Fimage.jpg)--<image location:files/img/image.jpg
    ~ �� 
   *   R e t u r n s   d e n c o d e   t e x t   ( u n e s c a p e d ) 
   *   N o t e   t h i s   c o u l d   a l s o   b e   d o n e   b y   c r e a t i n g   a   a   m e t h o d   t h a t   d o e s   a l l   t h e   c h a r a c t e r   t r i c k e r y   i n v o l v e d   i n   u n e s c a p i n g / e s c a p i n g   t e x t ,   b u t   t h i s   m e t h o d   l e v e r a g e s   t h e   p h p   l a n g u a g e   t o   d o   a l l   t h i s   f o r   u s 
   *   E x a m p l e :   d e c o d e ( % 3 C i m a g e + l o c a t i o n % 3 A f i l e s % 2 F i m g % 2 F i m a g e . j p g ) - - < i m a g e   l o c a t i o n : f i l e s / i m g / i m a g e . j p g 
  | ��� i   $ '��� I      ������� 
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
  � ��� i   , /��� I      ������� 0 
sub_string  � ��� o      ���� 0 	the_start  � ��� o      ���� 0 the_end  � ���� o      ���� 0 the_text  ��  ��  � L     �� n     ��� 7   ����
�� 
ctxt� o    ���� 0 	the_start  � o    
���� 0 the_end  � o     ���� 0 the_text  � ��� l      ������  �  y
 * Counts how many times a string appears in a text
 * Note: Its splits the text by the substring and counts the items
    � ��� � 
   *   C o u n t s   h o w   m a n y   t i m e s   a   s t r i n g   a p p e a r s   i n   a   t e x t 
   *   N o t e :   I t s   s p l i t s   t h e   t e x t   b y   t h e   s u b s t r i n g   a n d   c o u n t s   t h e   i t e m s 
  � ��� i   0 3��� I      ������� 0 occurrences  � ��� o      ���� 0 the_text  � ���� o      ���� 	0 match  ��  ��  � k     �� ��� r     ��� o     ���� 	0 match  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� \    ��� l   ������ I   �����
�� .corecnte****       ****� n    	��� 2    	�
� 
citm� o    �~�~ 0 the_text  ��  ��  ��  � m    �}�} � o      �|�| 0 counter  � ��� r    ��� m    �� ���  � n     ��� 1    �{
�{ 
txdl� 1    �z
�z 
ascr� ��y� L    �� o    �x�x 0 counter  �y  � ��� l      �w���w  �
 * Returns a text without linebreaks, a substitue replaces the linebreak char
 * Note: linebreaks often come in the form of \\n or \\r 
 * Caution: if a line is empty it is still replaced with the_substitute 
 * Param: the_substitue is the replacement for the linebreak
    � ���  
   *   R e t u r n s   a   t e x t   w i t h o u t   l i n e b r e a k s ,   a   s u b s t i t u e   r e p l a c e s   t h e   l i n e b r e a k   c h a r 
   *   N o t e :   l i n e b r e a k s   o f t e n   c o m e   i n   t h e   f o r m   o f   \ \ n   o r   \ \ r   
   *   C a u t i o n :   i f   a   l i n e   i s   e m p t y   i t   i s   s t i l l   r e p l a c e d   w i t h   t h e _ s u b s t i t u t e   
   *   P a r a m :   t h e _ s u b s t i t u e   i s   t h e   r e p l a c e m e n t   f o r   t h e   l i n e b r e a k 
  � ��v� i   4 7��� I      �u��t�u 0 	wrap_text  � ��� o      �s�s 0 the_text  � ��r� o      �q�q 0 the_substitue  �r  �t  � k     >�� ��� r     ��� m     �� ���  � o      �p�p 0 the_wrapped_text  � ��� r    	��� n    ��� 2   �o
�o 
cpar� o    �n�n 0 the_text  � o      �m�m 0 the_paragraphs  � ��� r   
 ��� n   
 ��� 1    �l
�l 
leng� o   
 �k�k 0 the_paragraphs  � o      �j�j 0 the_len  � ��� Y    ;��i���h� k    6�� � � r      n     4    �g
�g 
cobj o    �f�f 0 i   o    �e�e 0 the_paragraphs   o      �d�d 0 the_paragraph    �c Z   ! 6�b	 l  ! $
�a�`
 =   ! $ o   ! "�_�_ 0 i   o   " #�^�^ 0 the_len  �a  �`   l  ' , r   ' , b   ' * o   ' (�]�] 0 the_wrapped_text   o   ( )�\�\ 0 the_paragraph   o      �[�[ 0 the_wrapped_text   &  append the paragraph to the text    � @ a p p e n d   t h e   p a r a g r a p h   t o   t h e   t e x t�b  	 l  / 6 r   / 6 b   / 4 b   / 2 o   / 0�Z�Z 0 the_wrapped_text   o   0 1�Y�Y 0 the_paragraph   o   2 3�X�X 0 the_substitue   o      �W�W 0 the_wrapped_text   E ?append the paragraph to the text and the line break replacement    � ~ a p p e n d   t h e   p a r a g r a p h   t o   t h e   t e x t   a n d   t h e   l i n e   b r e a k   r e p l a c e m e n t�c  �i 0 i  � m    �V�V � o    �U�U 0 the_len  �h  � �T L   < >   o   < =�S�S 0 the_wrapped_text  �T  �v   �R! "�R  ! k      ## $%$ h     �Q�Q 0 s  % &�P& l    '�O�N' L     (( o     �M�M 0 s  �O  �N  �P  " �L)i*�L  ) �K�J�K 0 s  
�J .aevtoappnull  �   � ***** �I+�H�G,-�F
�I .aevtoappnull  �   � ****+ k     .. &�E�E  �H  �G  ,  -  �F b    "/0123456789:;<=/ �D�C�B�A�@�?�>�=�<�;�:�9�8�7�D 0 
every_word  �C 0 every_paragraph  �B 	0 split  �A 0 text_length  �@ 0 comma_delimited_text  �? 0 delimited_text  �> 0 to_paragraphs  �= 0 ordinal  �< 
0 encode  �; 
0 decode  �: 0 quoted_form  �9 0 
sub_string  �8 0 occurrences  �7 0 	wrap_text  0 �6'�5�4>?�3�6 0 
every_word  �5 �2@�2 @  �1�1 0 the_text  �4  > �0�0 0 the_text  ? �/
�/ 
cwor�3 ��-E1 �.5�-�,AB�+�. 0 every_paragraph  �- �*C�* C  �)�) 0 the_text  �,  A �(�'�&�%�( 0 the_text  �' 0 paragraph_list  �& 0 	para_list  �% 0 	next_line  B �$�#�"�!� 
�$ 
cpar
�# 
kocl
�" 
cobj
�! .corecnte****       ****
�  
leng�+ 4jvE�O��-E�O $�[��l kh ��,j 	��6GY h[OY��O�2 �`��DE�� 	0 split  � �F� F  ��� 0 the_text  � 0 	delimiter  �  D ���� 0 the_text  � 0 	delimiter  � 0 ret_val  E ��w
� 
txdl
� 
citm� �*�,FO��-E�O�*�,FO�3 ����GH�� 0 text_length  � �I� I  �� 0 the_text  �  G �� 0 the_text  H �
� 
leng� ��,E4 ���
�	JK�� 0 comma_delimited_text  �
 �L� L  �� 0 
text_items  �	  J �� 0 
text_items  K ���
� 
spac� 0 delimited_text  � 
*���%l+ 5 ���� MN��� 0 delimited_text  � ��O�� O  ������ 0 
text_items  �� 0 	delimiter  �   M ���������������� 0 
text_items  �� 0 	delimiter  �� 0 ret_val  �� 0 i  �� 0 the_word  �� 0 head  �� 0 tail  N ��������
�� 
leng
�� 
cobj�� P�E�O Gk��,Ekh ��/E�O�E�O�E�O�k  �E�Y hO���,  �E�Y hO��%�%�%E�[OY��O�6 �������PQ���� 0 to_paragraphs  �� ��R�� R  ���� 0 the_list  ��  P ���� 0 the_list  Q ��������
�� 
ret 
�� 
ascr
�� 
txdl
�� 
ctxt�� �kv��,FO��&7 ������ST���� 0 ordinal  �� ��U�� U  ���� 0 
the_number  ��  S ������ 0 
the_number  �� 0 ordinals  T  $(,048<@DHLPTX\_������ 
�� 
cobj�� &����������������a a a vE�O�a �/E8 ��n����VW���� 
0 encode  �� ��X�� X  ���� 0 the_text  ��  V ���� 0 the_text  W wy��
�� .sysoexecTEXT���     TEXT�� �%�%j 9 �������YZ���� 
0 decode  �� ��[�� [  ���� 0 the_text  ��  Y ���� 0 the_text  Z ����
�� .sysoexecTEXT���     TEXT�� �%�%j : �������\]���� 0 quoted_form  �� ��^�� ^  ���� 0 the_text  ��  \ ���� 0 the_text  ] ��
�� 
strq�� ��,E; �������_`���� 0 
sub_string  �� ��a�� a  �������� 0 	the_start  �� 0 the_end  �� 0 the_text  ��  _ �������� 0 	the_start  �� 0 the_end  �� 0 the_text  ` ��
�� 
ctxt�� �[�\[Z�\Z�2E< �������bc���� 0 occurrences  �� ��d�� d  ������ 0 the_text  �� 	0 match  ��  b �������� 0 the_text  �� 	0 match  �� 0 counter  c ���������
�� 
ascr
�� 
txdl
�� 
citm
�� .corecnte****       ****�� ���,FO��-j kE�O���,FO�= �������ef���� 0 	wrap_text  �� ��g�� g  ������ 0 the_text  �� 0 the_substitue  ��  e ���������������� 0 the_text  �� 0 the_substitue  �� 0 the_wrapped_text  �� 0 the_paragraphs  �� 0 the_len  �� 0 i  �� 0 the_paragraph  f �������
�� 
cpar
�� 
leng
�� 
cobj�� ?�E�O��-E�O��,E�O *k�kh ��/E�O��  
��%E�Y 	��%�%E�[OY��O�j �� �����hi���� 0 keychain_data  �� ��j�� j  ���� 0 the_keychain_item_name  ��  h 
���������������������� 0 the_keychain_item_name  �� 0 pass_result  �� 0 wrapped_text  �� 0 
the_result  �� 0 the_password  �� 0 the_content  �� 0 account_name_result  �� 0 account_name  �� 0 keychain_item_name_result  �� 0 keychain_item_name  i  ��� ��� �������?��������
�� .sysoexecTEXT���     TEXT�� 0 	wrap_text  �� 	0 match  
�� 
cobj�� �� 0 keychain_item_name  �� 0 account_name  �� 0 the_password  �� �� h�%j E�Ob  ��l+ E�Ob  ��l+ E�O��l/E�O���/E�Ob  ��l+ E�O��l/E�Ob  ��l+ E�O��l/E�O����k ��k���lm�~
�� .aevtoappnull  �   � ****k k     
nn  aoo  ��}�}  ��  �  l  m  f�| ��{�| 0 the_text  �{ 0 keychain_data  �~ �E�O*�k+  ascr  ��ޭ
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
ctxt��  ��  ��    m       �   , f i l e : S c r i p t L o a d e r . s c p t��  ��  ��    1 +prerequisite for loading .applescript files    	 �   V p r e r e q u i s i t e   f o r   l o a d i n g   . a p p l e s c r i p t   f i l e s      j    *�� �� 0 	xmlparser 	XMLParser  n   )    n   )    I    )��  ���� 0 load_script      !�� ! 4    %�� "
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
ctxt��  ��  ��   % m   " # , , � - - 2 x m l : X M L P a r s e r . a p p l e s c r i p t��  ��  ��  ��    o    ���� 0 scriptloader ScriptLoader   f       . / . j   + A�� 0�� 0 xmlmodifier XMLModifier 0 n  + @ 1 2 1 n  , @ 3 4 3 I   . @�� 5���� 0 load_script   5  6�� 6 4   . <�� 7
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
ctxt��  ��  ��   : m   9 : A A � B B 6 x m l : X M L M o d i f i e r . a p p l e s c r i p t��  ��  ��  ��   4 o   , .���� 0 scriptloader ScriptLoader 2  f   + , /  C D C j   B Z�� E�� 0 
fileparser 
FileParser E n  B Y F G F n  C Y H I H I   E Y�� J���� 0 load_script   J  K�� K 4   E U�� L
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
ctxt��  ��  ��   O m   P S V V � W W 6 f i l e : F i l e P a r s e r . a p p l e s c r i p t��  ��  ��  ��   I o   C E���� 0 scriptloader ScriptLoader G  f   B C D  X Y X j   [ s�� Z�� 0 filemodifier FileModifier Z n  [ r [ \ [ n  \ r ] ^ ] I   ^ r�� _���� 0 load_script   _  `�� ` 4   ^ n�� a
�� 
alis a l  ` m b���� b b   ` m c d c l  ` i e���� e I  ` i�� f g
�� .earsffdralis        afdr f m   ` a��
�� afdrscr� g �� h i
�� 
from h m   b c��
�� fldmfldu i �� j��
�� 
rtyp j m   d e��
�� 
ctxt��  ��  ��   d m   i l k k � l l : f i l e : F i l e M o d i f i e r . a p p l e s c r i p t��  ��  ��  ��   ^ o   \ ^���� 0 scriptloader ScriptLoader \  f   [ \ Y  m n m j   t ��� o�� 0 listmodifier ListModifier o n  t � p q p n  u � r s r I   w ��� t���� 0 load_script   t  u�� u 4   w ��� v
�� 
alis v l  y � w���� w b   y � x y x l  y � z���� z I  y ��� { |
�� .earsffdralis        afdr { m   y z��
�� afdrscr� | �� } ~
�� 
from } m   { |��
�� fldmfldu ~ �� ��
�� 
rtyp  m   } ~��
�� 
ctxt��  ��  ��   y m   � � � � � � � : l i s t : L i s t M o d i f i e r . a p p l e s c r i p t��  ��  ��  ��   s o   u w���� 0 scriptloader ScriptLoader q  f   t u n  � � � l     �� � ���   �  read from internal file    � � � � . r e a d   f r o m   i n t e r n a l   f i l e �  � � � l     � � � � r      � � � c      � � � l     ����� � I    �� � �
�� .sysorpthalis        TEXT � m      � � � � �   r e p o s i t o r i e s . x m l � �� � �
�� 
in B � l    ����� � I   �� ���
�� .earsffdralis        afdr �  f    ��  ��  ��   � �� ���
�� 
in D � m    	 � � � � �  x m l��  ��  ��   � m    ��
�� 
TEXT � o      ���� 0 	file_path   � + %as string makes it HFS from HFS Alias    � � � � J a s   s t r i n g   m a k e s   i t   H F S   f r o m   H F S   A l i a s �  � � � l     �� � ���   � 3 -set theXMLRoot to XMLParser's root(file_path)    � � � � Z s e t   t h e X M L R o o t   t o   X M L P a r s e r ' s   r o o t ( f i l e _ p a t h ) �  � � � l     �� � ���   � v pset num_children to length of XMLParser's every_element(theXMLRoot) --number of xml children in xml root element    � � � � � s e t   n u m _ c h i l d r e n   t o   l e n g t h   o f   X M L P a r s e r ' s   e v e r y _ e l e m e n t ( t h e X M L R o o t )   - - n u m b e r   o f   x m l   c h i l d r e n   i n   x m l   r o o t   e l e m e n t �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  log num_children    � � � �   l o g   n u m _ c h i l d r e n �  � � � l     �� � ���   �  write to internal file    � � � � , w r i t e   t o   i n t e r n a l   f i l e �  � � � l     �� � ���   � 8 2FileModifier's write_data("test", file_path, true)    � � � � d F i l e M o d i f i e r ' s   w r i t e _ d a t a ( " t e s t " ,   f i l e _ p a t h ,   t r u e ) �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  write xml to interal file    � � � � 2 w r i t e   x m l   t o   i n t e r a l   f i l e �  � � � l     �� � ���   � G Aset some_element to XMLModifier's element("repositories", "text")    � � � � � s e t   s o m e _ e l e m e n t   t o   X M L M o d i f i e r ' s   e l e m e n t ( " r e p o s i t o r i e s " ,   " t e x t " ) �  � � � l     �� � ���   � ) #log "some_element: " & some_element    � � � � F l o g   " s o m e _ e l e m e n t :   "   &   s o m e _ e l e m e n t �  � � � l     ��~�}�  �~  �}   �  � � � l     �| � ��|   � 4 .make some xml methods in the xmlmodifier class    � � � � \ m a k e   s o m e   x m l   m e t h o d s   i n   t h e   x m l m o d i f i e r   c l a s s �  � � � l     �{ � ��{   � � �set repositories to XMLModifier's element_with_attribute("repositories", "", {{key:"color", value:"FF0000"}, {key:"color", value:"FF4400"}})    � � � � s e t   r e p o s i t o r i e s   t o   X M L M o d i f i e r ' s   e l e m e n t _ w i t h _ a t t r i b u t e ( " r e p o s i t o r i e s " ,   " " ,   { { k e y : " c o l o r " ,   v a l u e : " F F 0 0 0 0 " } ,   { k e y : " c o l o r " ,   v a l u e : " F F 4 4 0 0 " } } ) �  � � � l     �z � ��z   � ) #log "some_element: " & some_element    � � � � F l o g   " s o m e _ e l e m e n t :   "   &   s o m e _ e l e m e n t �  � � � l     �y � ��y   � # read xml attributes and items    � � � � : r e a d   x m l   a t t r i b u t e s   a n d   i t e m s �  � � � l     �x�w�v�x  �w  �v   �  � � � l     �u � ��u   � . (& tab & tab & caseElementString & return    � � � � P &   t a b   &   t a b   &   c a s e E l e m e n t S t r i n g   &   r e t u r n �  � � � l     �t�s�r�t  �s  �r   �  � � � l     �q � ��q   � ^ Xset the_xml_text to XMLModifier's element_beginning("repositories") & return --beginning    � � � � � s e t   t h e _ x m l _ t e x t   t o   X M L M o d i f i e r ' s   e l e m e n t _ b e g i n n i n g ( " r e p o s i t o r i e s " )   &   r e t u r n   - - b e g i n n i n g �  � � � l     �p � ��p   � � �set the_xml_text to the_xml_text & tab & XMLModifier's element_with_attribute("repository", "", {{key:"color", value:"FF0000"}, {key:"color", value:"FF4400"}}) & return    � � � �P s e t   t h e _ x m l _ t e x t   t o   t h e _ x m l _ t e x t   &   t a b   &   X M L M o d i f i e r ' s   e l e m e n t _ w i t h _ a t t r i b u t e ( " r e p o s i t o r y " ,   " " ,   { { k e y : " c o l o r " ,   v a l u e : " F F 0 0 0 0 " } ,   { k e y : " c o l o r " ,   v a l u e : " F F 4 4 0 0 " } } )   &   r e t u r n �  � � � l     �o � ��o   � � �set the_xml_text to the_xml_text & tab & XMLModifier's element_with_attribute("repository", "", {{key:"color", value:"blue"}, {key:"color", value:"orange"}}) & return    � � � �L s e t   t h e _ x m l _ t e x t   t o   t h e _ x m l _ t e x t   &   t a b   &   X M L M o d i f i e r ' s   e l e m e n t _ w i t h _ a t t r i b u t e ( " r e p o s i t o r y " ,   " " ,   { { k e y : " c o l o r " ,   v a l u e : " b l u e " } ,   { k e y : " c o l o r " ,   v a l u e : " o r a n g e " } } )   &   r e t u r n �  � � � l     �n � ��n   � X Rset the_xml_text to the_xml_text & XMLModifier's element_end("repositories") --end    � � � � � s e t   t h e _ x m l _ t e x t   t o   t h e _ x m l _ t e x t   &   X M L M o d i f i e r ' s   e l e m e n t _ e n d ( " r e p o s i t o r i e s " )   - - e n d �  � � � l     �m�l�k�m  �l  �k   �  � � � l     �j �j     log the_xml_text    �   l o g   t h e _ x m l _ t e x t �  l     �i�h�g�i  �h  �g    l     �f�f    create repo_setup_list    �		 , c r e a t e   r e p o _ s e t u p _ l i s t 

 l   �e�d r     J    �c�c   o      �b�b 0 repo_setup_list  �e  �d    l   C�a�` r    C J    ?  J      m     �  l o c a l - p a t h �_ m     �  ~ / t e s t /�_     J    !! "#" m    $$ �%%  r e m o t e - p a t h# &�^& m    '' �(( 4 g i t h u b . c o m / e o n i s t / t e s t . g i t�^    )*) J    #++ ,-, m     .. �//  c o m m i t - i n t e r v a l- 0�]0 m     !11 �22  3�]  * 343 J   # +55 676 m   # &88 �99  p u s h - i n t e r v a l7 :�\: m   & );; �<<  5�\  4 =>= J   + 3?? @A@ m   + .BB �CC  p u l l - i n t e r v a lA D�[D m   . 1EE �FF  1 2�[  > G�ZG J   3 ;HH IJI m   3 6KK �LL & k e y - c h a i n - i t e m - n a m eJ M�YM m   6 9NN �OO  g i t h u b   e o n i s t�Y  �Z   o      �X�X 0 repo_setup_1  �a  �`   PQP l  D SR�W�VR r   D SSTS n  D QUVU I   I Q�UW�T�U 0 add_list  W XYX o   I J�S�S 0 repo_setup_list  Y Z�RZ o   J M�Q�Q 0 repo_setup_1  �R  �T  V o   D I�P�P 0 listmodifier ListModifierT o      �O�O 0 repo_setup_list  �W  �V  Q [\[ l  T �]�N�M] r   T �^_^ J   T �`` aba J   T \cc ded m   T Wff �gg  l o c a l - p a t he h�Lh m   W Zii �jj  ~ / t e s t /�L  b klk J   \ dmm non m   \ _pp �qq  r e m o t e - p a t ho r�Kr m   _ bss �tt 4 g i t h u b . c o m / e o n i s t / t e s t . g i t�K  l uvu J   d lww xyx m   d gzz �{{  c o m m i t - i n t e r v a ly |�J| m   g j}} �~~  3�J  v � J   l t�� ��� m   l o�� ���  p u s h - i n t e r v a l� ��I� m   o r�� ���  5�I  � ��� J   t |�� ��� m   t w�� ���  p u l l - i n t e r v a l� ��H� m   w z�� ���  1 2�H  � ��G� J   | ��� ��� m   | �� ��� & k e y - c h a i n - i t e m - n a m e� ��F� m    ��� ���  g i t h u b   e o n i s t�F  �G  _ o      �E�E 0 repo_setup_2  �N  �M  \ ��� l  � ���D�C� r   � ���� n  � ���� I   � ��B��A�B 0 add_list  � ��� o   � ��@�@ 0 repo_setup_list  � ��?� o   � ��>�> 0 repo_setup_2  �?  �A  � o   � ��=�= 0 listmodifier ListModifier� o      �<�< 0 repo_setup_list  �D  �C  � ��� l     �;�:�9�;  �:  �9  � ��� l  � ���8�7� I  � ��6��5
�6 .ascrcmnt****      � ****� l  � ���4�3� n   � ���� 1   � ��2
�2 
leng� o   � ��1�1 0 repo_setup_list  �4  �3  �5  �8  �7  � ��� l     �0�/�.�0  �/  �.  � ��� l     �-���-  � / )traverse repo_setup_list and store as xml   � ��� R t r a v e r s e   r e p o _ s e t u p _ l i s t   a n d   s t o r e   a s   x m l� ��� l  � ����� r   � ���� b   � ���� n  � ���� I   � ��,��+�, 0 element_beginning  � ��*� m   � ��� ���  r e p o s i t o r i e s�*  �+  � o   � ��)�) 0 xmlmodifier XMLModifier� o   � ��(
�( 
ret � o      �'�' 0 repo_xml_text  �  	beginning   � ���  b e g i n n i n g� ��� l     �&�%�$�&  �%  �$  � ��� l     �#�"�!�#  �"  �!  � ��� l  � ��� �� X   � ����� k   � ��� ��� I  � ����
� .ascrcmnt****      � ****� l  � ����� n   � ���� 1   � ��
� 
leng� o   � ��� 0 	repo_item  �  �  �  � ��� r   � ���� b   � ���� b   � ���� b   � ���� o   � ��� 0 repo_xml_text  � 1   � ��
� 
tab � n  � ���� I   � ����� 0 element_with_attribute  � ��� m   � ��� ���  r e p o s i t o r y� ��� m   � ��� ���  � ��� o   � ��� 0 	repo_item  �  �  � o   � ��� 0 xmlmodifier XMLModifier� o   � ��
� 
ret � o      �� 0 repo_xml_text  �  � 0 	repo_item  � o   � ��� 0 repo_setup_list  �   �  � ��� l     ���
�  �  �
  � ��� l  ���� r   ��� b   ��� o   �	�	 0 repo_xml_text  � n ��� I  ���� 0 element_end  � ��� m  �� ���  r e p o s i t o r i e s�  �  � o  �� 0 xmlmodifier XMLModifier� o      �� 0 repo_xml_text  � 	 end   � ���  e n d� ��� l     ����  �  �  �    l     � �����   ��  ��    l     ����    log repo_xml_text    � " l o g   r e p o _ x m l _ t e x t  l     ��������  ��  ��   	
	 l     ��������  ��  ��  
  l     ����   6 0write this xml data to the repositories.xml file    � ` w r i t e   t h i s   x m l   d a t a   t o   t h e   r e p o s i t o r i e s . x m l   f i l e  l     ��������  ��  ��    l # n # I  #������ 0 
write_data    o  ���� 0 repo_xml_text    o  ���� 0 	file_path   �� m  ��
�� boovfals��  ��   o  ���� 0 filemodifier FileModifier  false equals don't append    � 2 f a l s e   e q u a l s   d o n ' t   a p p e n d  !  l     ��������  ��  ��  ! "#" l     ��$%��  $  then read this data:   % �&& ( t h e n   r e a d   t h i s   d a t a :# '(' l     ��������  ��  ��  ( )*) l $2+����+ r  $2,-, n $../. I  ).��0���� 0 root  0 1��1 o  )*���� 0 	file_path  ��  ��  / o  $)���� 0 	xmlparser 	XMLParser- o      ���� 0 
thexmlroot 
theXMLRoot��  ��  * 232 l 3G4564 r  3G787 n  3C9:9 1  ?C��
�� 
leng: n 3?;<; I  8?��=���� 0 every_element  = >��> o  8;���� 0 
thexmlroot 
theXMLRoot��  ��  < o  38���� 0 	xmlparser 	XMLParser8 o      ���� 0 num_children  5 0 *number of xml children in xml root element   6 �?? T n u m b e r   o f   x m l   c h i l d r e n   i n   x m l   r o o t   e l e m e n t3 @A@ l     ��������  ��  ��  A BCB l     ��DE��  D  log theXMLRoot as text   E �FF , l o g   t h e X M L R o o t   a s   t e x tC GHG l     ��������  ��  ��  H IJI l     ��KL��  K  It now works   L �MM  I t   n o w   w o r k sJ N��N l     ��������  ��  ��  ��       	��OPQRSTUV��  O ���������������� 0 scriptloader ScriptLoader�� 0 	xmlparser 	XMLParser�� 0 xmlmodifier XMLModifier�� 0 
fileparser 
FileParser�� 0 filemodifier FileModifier�� 0 listmodifier ListModifier
�� .aevtoappnull  �   � ****P ��W X��  W k      YY Z[Z l     ��\]��  \ w qNote: we use load_script to load plain-text .applescript files, which cant be loaded directly without this method   ] �^^ � N o t e :   w e   u s e   l o a d _ s c r i p t   t o   l o a d   p l a i n - t e x t   . a p p l e s c r i p t   f i l e s ,   w h i c h   c a n t   b e   l o a d e d   d i r e c t l y   w i t h o u t   t h i s   m e t h o d[ _`_ l     ��ab��  a � �Note: we use .applescript instead of .scpt files because its easier to put plain text script files under version control like github   b �cc N o t e :   w e   u s e   . a p p l e s c r i p t   i n s t e a d   o f   . s c p t   f i l e s   b e c a u s e   i t s   e a s i e r   t o   p u t   p l a i n   t e x t   s c r i p t   f i l e s   u n d e r   v e r s i o n   c o n t r o l   l i k e   g i t h u b` ded l     ��fg��  fa[Note: You can load compiled scripts (.scpt) or plain text scripts (.applescript). Make sure, though, that your .applescript files are encoded as either Mac (what AppleScript Editor uses) UTF-8 (if you use another text editor). Any scripts loaded are expected to be installed into your Scripts directory. Use the line below to reference the script:   g �hh� N o t e :   Y o u   c a n   l o a d   c o m p i l e d   s c r i p t s   ( . s c p t )   o r   p l a i n   t e x t   s c r i p t s   ( . a p p l e s c r i p t ) .   M a k e   s u r e ,   t h o u g h ,   t h a t   y o u r   . a p p l e s c r i p t   f i l e s   a r e   e n c o d e d   a s   e i t h e r   M a c   ( w h a t   A p p l e S c r i p t   E d i t o r   u s e s )   U T F - 8   ( i f   y o u   u s e   a n o t h e r   t e x t   e d i t o r ) .   A n y   s c r i p t s   l o a d e d   a r e   e x p e c t e d   t o   b e   i n s t a l l e d   i n t o   y o u r   S c r i p t s   d i r e c t o r y .   U s e   t h e   l i n e   b e l o w   t o   r e f e r e n c e   t h e   s c r i p t :e iji l     ��kl��  k H Bremember to import this method before you use it with a property:    l �mm � r e m e m b e r   t o   i m p o r t   t h i s   m e t h o d   b e f o r e   y o u   u s e   i t   w i t h   a   p r o p e r t y :  j non l      ��pq��  p��
property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt")--prerequisite for loading .applescript filesproperty ListAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListAsserter.applescript")) my ListAsserter's equals_to({1, 2, 3, 4}, {1, 2, 3, 4})
if my ListAsserter's equals_to({1, 2, 3, 4}, {1, 2, 3, 4}) then	log "yes"else	log "no"end if
   q �rr� 
 p r o p e r t y   S c r i p t L o a d e r   :   l o a d   s c r i p t   a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " f i l e : S c r i p t L o a d e r . s c p t " ) - - p r e r e q u i s i t e   f o r   l o a d i n g   . a p p l e s c r i p t   f i l e s  p r o p e r t y   L i s t A s s e r t e r   :   m y   S c r i p t L o a d e r ' s   l o a d _ s c r i p t ( a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " l i s t : L i s t A s s e r t e r . a p p l e s c r i p t " ) )    m y   L i s t A s s e r t e r ' s   e q u a l s _ t o ( { 1 ,   2 ,   3 ,   4 } ,   { 1 ,   2 ,   3 ,   4 } ) 
 i f   m y   L i s t A s s e r t e r ' s   e q u a l s _ t o ( { 1 ,   2 ,   3 ,   4 } ,   { 1 ,   2 ,   3 ,   4 } )   t h e n  	 l o g   " y e s "  e l s e  	 l o g   " n o "  e n d   i f 
o s��s i     tut I      ��v���� 0 load_script  v w��w o      ���� 0 apple_script_path  ��  ��  u k     {xx yzy Q     x{|}{ r    
~~ I   �����
�� .sysoloadscpt        file� o    ���� 0 apple_script_path  ��   o      ���� 0 script_object  | R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      �������  } l   x���� k    x�� ��� r    ��� m    �� ���  � o      ���� 0 script_text  � ��� Q    1���� l    ���� r     ��� I   �����
�� .rdwrread****        ****� o    ���� 0 apple_script_path  ��  � o      ���� 0 script_text  � ( " Try reading as Mac encoding first   � ��� D   T r y   r e a d i n g   a s   M a c   e n c o d i n g   f i r s t� R      �����
�� .ascrerr ****      � ****��  � �����
�� 
errn� d      �� m      �������  � l  ( 1���� l  ( 1���� r   ( 1��� I  ( /����
�� .rdwrread****        ****� o   ( )���� 0 apple_script_path  � �����
�� 
as  � m   * +��
�� 
utf8��  � o      ���� 0 script_text  �   Finally try UTF-8   � ��� $   F i n a l l y   t r y   U T F - 8� &   Error reading script's encoding   � ��� @   E r r o r   r e a d i n g   s c r i p t ' s   e n c o d i n g� ���� Q   2 x���� r   5 H��� I  5 F�����
�� .sysodsct****        scpt� l  5 B������ b   5 B��� b   5 @��� b   5 >��� b   5 <��� b   5 :��� b   5 8��� m   5 6�� ���  s c r i p t   s� o   6 7��
�� 
ret � o   8 9���� 0 script_text  � o   : ;��
�� 
ret � m   < =�� ���  e n d   s c r i p t  � o   > ?��
�� 
ret � m   @ A�� ���  r e t u r n   s��  ��  ��  � o      ���� 0 script_object  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 e  � ����
�� 
errn� o      ���� 0 n  � ����
�� 
ptlr� o      ���� 0 p  � ����
�� 
erob� o      ���� 0 f  � �����
�� 
errt� o      ���� 0 t  ��  � k   P x�� ��� I  P a�����
�� .sysodlogaskr        TEXT� b   P ]��� b   P Y��� b   P W��� b   P S��� m   P Q�� ��� , E r r o r   r e a d i n g   l i b r a r y  � o   Q R���� 0 apple_script_path  � m   S V�� ���   � o   W X���� 0 e  � m   Y \�� ��� : P l e a s e   e n c o d e   a s   M a c   o r   U T F - 8��  � ���� R   b x����
�� .ascrerr ****      � ****� o   v w���� 0 e  � ����
�� 
errn� o   f g���� 0 n  � ���
� 
ptlr� o   j k�~�~ 0 p  � �}��
�} 
erob� o   n o�|�| 0 f  � �{��z
�{ 
errt� o   r s�y�y 0 t  �z  ��  ��  �   text format script    � ��� (   t e x t   f o r m a t   s c r i p t  z ��x� l  y {���� L   y {�� o   y z�w�w 0 script_object  � + %return the script, it is now loadable   � ��� J r e t u r n   t h e   s c r i p t ,   i t   i s   n o w   l o a d a b l e�x  ��  X �v���v  � �u�u 0 load_script  � �tu�s�r���q�t 0 load_script  �s �p��p �  �o�o 0 apple_script_path  �r  � �n�m�l�k�j�i�h�g�n 0 apple_script_path  �m 0 script_object  �l 0 script_text  �k 0 e  �j 0 n  �i 0 p  �h 0 f  �g 0 t  � �f�e���d��c�b��a���`�_�����^�]�\�[�Z�Y
�f .sysoloadscpt        file�e  � �X�W�V
�X 
errn�W�(�V  
�d .rdwrread****        ****� �U�T�S
�U 
errn�T�\�S  
�c 
as  
�b 
utf8
�a 
ret 
�` .sysodsct****        scpt�_ 0 e  � �R�Q�
�R 
errn�Q 0 n  � �P�O�
�P 
ptlr�O 0 p  � �N�M�
�N 
erob�M 0 f  � �L�K�J
�L 
errt�K 0 t  �J  
�^ .sysodlogaskr        TEXT
�] 
errn
�\ 
ptlr
�[ 
erob
�Z 
errt�Y �q | �j  E�W mX  �E�O �j E�W X  ���l E�O ��%�%�%�%�%�%j E�W /X  �%a %�%a %j O)a �a �a �a �a �O�Q �I����I 0 s  � k      �� � � l      �H�H   � z
 * Returns the value of xmlItem (XML item)
 * remeber to cast the returned value to the excpected type (i.e: as string)
     � � 
   *   R e t u r n s   t h e   v a l u e   o f   x m l I t e m   ( X M L   i t e m ) 
   *   r e m e b e r   t o   c a s t   t h e   r e t u r n e d   v a l u e   t o   t h e   e x c p e c t e d   t y p e   ( i . e :   a s   s t r i n g ) 
     i      I      �G�F�G 0 	xml_value   	�E	 o      �D�D 0 xml_item  �E  �F   O     


 L    	 n     1    �C
�C 
valL o    �B�B 0 xml_item   m     �                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��    l      �A�A   2 ,
 * Returns the name of xmlItem (XML item)
     � X 
   *   R e t u r n s   t h e   n a m e   o f   x m l I t e m   ( X M L   i t e m ) 
    i     I      �@�?�@ 0 xml_name   �> o      �=�= 0 xml_item  �>  �?   L      n      1    �<
�< 
pnam o     �;�; 0 xml_item    l      �: !�:     
 * Returns an XML item
    ! �"" 2 
   *   R e t u r n s   a n   X M L   i t e m 
   #$# i    %&% I      �9'�8�9 0 
element_at  ' ()( o      �7�7 0 xml_item  ) *�6* o      �5�5 0 	the_index  �6  �8  & O     +,+ L    
-- n    	./. 4    �40
�4 
xmle0 o    �3�3 0 	the_index  / o    �2�2 0 xml_item  , m     11�                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  $ 232 l      �145�1  4 � |
 * Returns an XML item attribute at index (use name of, value of)
 * Remember to use attributeValue() to obrain the value
    5 �66 � 
   *   R e t u r n s   a n   X M L   i t e m   a t t r i b u t e   a t   i n d e x   ( u s e   n a m e   o f ,   v a l u e   o f ) 
   *   R e m e m b e r   t o   u s e   a t t r i b u t e V a l u e ( )   t o   o b r a i n   t h e   v a l u e 
  3 787 i    9:9 I      �0;�/�0 0 attribute_at  ; <=< o      �.�. 0 xml_item  = >�-> o      �,�, 0 	the_index  �-  �/  : O     ?@? L    
AA n    	BCB 4    �+D
�+ 
xmlaD o    �*�* 0 	the_index  C o    �)�) 0 xml_item  @ m     EE�                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  8 FGF l      �(HI�(  H 7 1
 * Returns the value of the attribute at index
    I �JJ b 
   *   R e t u r n s   t h e   v a l u e   o f   t h e   a t t r i b u t e   a t   i n d e x 
  G KLK i    MNM I      �'O�&�' 0 attribute_value_at  O PQP o      �%�% 0 xml_item  Q R�$R o      �#�# 0 	the_index  �$  �&  N k     SS TUT l    	VWXV r     	YZY I     �"[�!�" 0 attribute_at  [ \]\ o    � �  0 xml_item  ] ^�^ o    �� 0 	the_index  �  �!  Z o      �� 0 attr  W  the_index was 1   X �__  t h e _ i n d e x   w a s   1U `�` L   
 aa I   
 �b��  0 attributevalue attributeValueb c�c o    �� 0 attr  �  �  �  L ded l      �fg�  f z t
 * Returns the value of the first element that has the name of theName
 * TODO: possibly move to AdvanceXMLParser
    g �hh � 
   *   R e t u r n s   t h e   v a l u e   o f   t h e   f i r s t   e l e m e n t   t h a t   h a s   t h e   n a m e   o f   t h e N a m e 
   *   T O D O :   p o s s i b l y   m o v e   t o   A d v a n c e X M L P a r s e r 
  e iji i    klk I      �m�� 0 element  m non o      �� 0 xml_data  o p�p o      �� 0 the_name  �  �  l O     Aqrq Y    @s�tu�s k    ;vv wxw r    yzy c    {|{ l   }��} e    ~~ n    � 1    �
� 
pnam� n    ��� 4    ��
� 
xmle� o    �� 0 i  � o    �
�
 0 xml_data  �  �  | m    �	
�	 
utxtz o      �� 
0 e_name  x ��� l    ;���� Z     ;����� =    #��� o     !�� 
0 e_name  � o   ! "�� 0 the_name  � k   & .�� ��� l  & &����  � $ display dialog "found a match"   � ��� < d i s p l a y   d i a l o g   " f o u n d   a   m a t c h "� ��� L   & .�� n   & -��� 1   * ,�
� 
valL� n   & *��� 4   ' *� �
�  
xmle� o   ( )���� 0 i  � o   & '���� 0 xml_data  �  �  � n  1 ;��� I   2 ;������� 0 element  � ��� n   2 6��� 4   3 6���
�� 
xmle� o   4 5���� 0 i  � o   2 3���� 0 xml_data  � ���� o   6 7���� 0 the_name  ��  ��  �  f   1 2�  bug fix   � ���  b u g   f i x�  � 0 i  t m    ���� u I   �����
�� .corecnte****       ****� n    ��� 2  	 ��
�� 
xmle� o    	���� 0 xml_data  ��  �  r m     ���                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  j ��� l      ������  � @ :
 * Returns an element by attribute (key and value pair)
    � ��� t 
   *   R e t u r n s   a n   e l e m e n t   b y   a t t r i b u t e   ( k e y   a n d   v a l u e   p a i r ) 
  � ��� i    ��� I      ������� 0 element_by_attribute  � ��� o      ���� 0 xml_data  � ��� o      ���� 0 attr_key  � ���� o      ���� 0 attr_val  ��  ��  � O     <��� k    ;�� ��� Y    8�������� k    3�� ��� r    ��� n   ��� 4    ���
�� 
xmle� o    ���� 0 i  � o    ���� 0 xml_data  � o      ���� 0 elm  � ��� r    $��� n   "��� I    "������� 0 attribute_value_by_name  � ��� o    ���� 0 elm  � ���� o    ���� 0 attr_key  ��  ��  �  f    � o      ���� 0 val  � ���� Z   % 3������� =   % *��� o   % &���� 0 val  � l  & )������ c   & )��� o   & '���� 0 attr_val  � m   ' (��
�� 
TEXT��  ��  � L   - /�� o   - .���� 0 elm  ��  ��  ��  �� 0 i  � m    ���� � I   �����
�� .corecnte****       ****� n    ��� 2  	 ��
�� 
xmle� o    	���� 0 xml_data  ��  ��  � ���� L   9 ;�� m   9 :��
�� 
msng��  � m     ���                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l      ������  � � �
 * Returns the first attribute with theName
 * retrive name and value from the attribute, remember to cast as string
 * TODO rename to attributeByKey?!?
    � ���6 
   *   R e t u r n s   t h e   f i r s t   a t t r i b u t e   w i t h   t h e N a m e 
   *   r e t r i v e   n a m e   a n d   v a l u e   f r o m   t h e   a t t r i b u t e ,   r e m e m b e r   t o   c a s t   a s   s t r i n g 
   *   T O D O   r e n a m e   t o   a t t r i b u t e B y K e y ? ! ? 
  � ��� i    ��� I      ������� 0 attribute_by_name  � ��� o      ���� 0 xml_data  � ���� o      ���� 0 the_name  ��  ��  � O     ��� L    �� 6   ��� n    ��� 4   ���
�� 
xmla� m    ���� � o    ���� 0 xml_data  � =  	 ��� 1   
 ��
�� 
pnam� o    ���� 0 the_name  � m     ���                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l      ������  �XR
 * Returns the root of the xml
 * @param xml_file the path to the xml file like: "Macintosh HD:Users:Admin:Desktop:colors.xml"  in HSF not POSIX
 * @Example: XMLParser.root(((path to desktop) as string) & "colors.xml")
 * @Note: You must keep using XMLParser to gain further access to xml elements, since it relies on the System events
    � ���� 
   *   R e t u r n s   t h e   r o o t   o f   t h e   x m l 
   *   @ p a r a m   x m l _ f i l e   t h e   p a t h   t o   t h e   x m l   f i l e   l i k e :   " M a c i n t o s h   H D : U s e r s : A d m i n : D e s k t o p : c o l o r s . x m l "     i n   H S F   n o t   P O S I X 
   *   @ E x a m p l e :   X M L P a r s e r . r o o t ( ( ( p a t h   t o   d e s k t o p )   a s   s t r i n g )   &   " c o l o r s . x m l " ) 
   *   @ N o t e :   Y o u   m u s t   k e e p   u s i n g   X M L P a r s e r   t o   g a i n   f u r t h e r   a c c e s s   t o   x m l   e l e m e n t s ,   s i n c e   i t   r e l i e s   o n   t h e   S y s t e m   e v e n t s 
  � ��� i     #� � I      ������ 0 root   �� o      ���� 0 xml_file  ��  ��    O      k      r    	 n    


 1    
��
�� 
pcnt 4    ��
�� 
xmlf o    ���� 0 xml_file  	 o      ���� 0 xml_data   �� L     n     4    ��
�� 
xmle m    ����  o    ���� 0 xml_data  ��   m     �                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  l      ����   � �
 * Returns every XML element in xmlElement
 * @Note: log length of XMLParser's every_element(theXMLRoot)--returns number of children in the xml root
     �. 
   *   R e t u r n s   e v e r y   X M L   e l e m e n t   i n   x m l E l e m e n t 
   *   @ N o t e :   l o g   l e n g t h   o f   X M L P a r s e r ' s   e v e r y _ e l e m e n t ( t h e X M L R o o t ) - - r e t u r n s   n u m b e r   o f   c h i l d r e n   i n   t h e   x m l   r o o t 
    i   $ ' I      ������ 0 every_element   �� o      ���� 0 xml_element  ��  ��   O     
 L    	   n    !"! 2    ��
�� 
xmle" o    ���� 0 xml_element   m     ##�                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   $%$ l      ��&'��  & s m
 * Returns the value of the first attribute with attributeName
 * Consider renaming to attributeValueByKey
    ' �(( � 
   *   R e t u r n s   t h e   v a l u e   o f   t h e   f i r s t   a t t r i b u t e   w i t h   a t t r i b u t e N a m e 
   *   C o n s i d e r   r e n a m i n g   t o   a t t r i b u t e V a l u e B y K e y 
  % )*) i   ( ++,+ I      ��-���� 0 attribute_value_by_name  - ./. o      ���� 0 xml_element  / 0��0 o      ���� 0 attribute_name  ��  ��  , k     11 232 l     ��45��  4 + %log ("attributeName" & attributeName)   5 �66 J l o g   ( " a t t r i b u t e N a m e "   &   a t t r i b u t e N a m e )3 787 r     	9:9 I     ��;���� 0 attribute_by_name  ; <=< o    ���� 0 xml_element  = >��> o    ���� 0 attribute_name  ��  ��  : o      ���� 0 attr  8 ?@? l  
 
��AB��  A  log (theAttribute)   B �CC $ l o g   ( t h e A t t r i b u t e )@ D��D L   
 EE I   
 ��F���� 0 attribute_value  F G��G o    ���� 0 attr  ��  ��  ��  * HIH l      ��JK��  J + %
 * Returns a value of an attribute
    K �LL J 
   *   R e t u r n s   a   v a l u e   o f   a n   a t t r i b u t e 
  I M��M i   , /NON I      ��P���� 0 attribute_value  P Q��Q o      ���� 0 the_attribute  ��  ��  O O     
RSR L    	TT n    UVU 1    ��
�� 
valLV o    ���� 0 the_attribute  S m     WW�                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  � ��X Y��  X k      ZZ [\[ h     ����� 0 s  \ ]��] l    ^����^ L     __ o     ���� 0 s  ��  ��  ��  Y ��`Qa��  ` ������ 0 s  
�� .aevtoappnull  �   � ****a ��b����cd��
�� .aevtoappnull  �   � ****b k     ee ]����  ��  ��  c  d  �� b   � Yfghijklmnopqrf ����������������~�}�|�{�� 0 	xml_value  �� 0 xml_name  �� 0 
element_at  �� 0 attribute_at  �� 0 attribute_value_at  �� 0 element  �� 0 element_by_attribute  � 0 attribute_by_name  �~ 0 root  �} 0 every_element  �| 0 attribute_value_by_name  �{ 0 attribute_value  g �z�y�xst�w�z 0 	xml_value  �y �vu�v u  �u�u 0 xml_item  �x  s �t�t 0 xml_item  t �s
�s 
valL�w � ��,EUh �r�q�pvw�o�r 0 xml_name  �q �nx�n x  �m�m 0 xml_item  �p  v �l�l 0 xml_item  w �k
�k 
pnam�o ��,Ei �j&�i�hyz�g�j 0 
element_at  �i �f{�f {  �e�d�e 0 xml_item  �d 0 	the_index  �h  y �c�b�c 0 xml_item  �b 0 	the_index  z 1�a
�a 
xmle�g � ��/EUj �`:�_�^|}�]�` 0 attribute_at  �_ �\~�\ ~  �[�Z�[ 0 xml_item  �Z 0 	the_index  �^  | �Y�X�Y 0 xml_item  �X 0 	the_index  } E�W
�W 
xmla�] � ��/EUk �VN�U�T��S�V 0 attribute_value_at  �U �R��R �  �Q�P�Q 0 xml_item  �P 0 	the_index  �T   �O�N�M�O 0 xml_item  �N 0 	the_index  �M 0 attr  � �L�K�L 0 attribute_at  �K  0 attributevalue attributeValue�S *��l+  E�O*�k+ l �Jl�I�H���G�J 0 element  �I �F��F �  �E�D�E 0 xml_data  �D 0 the_name  �H  � �C�B�A�@�C 0 xml_data  �B 0 the_name  �A 0 i  �@ 
0 e_name  � ��?�>�=�<�;�:
�? 
xmle
�> .corecnte****       ****
�= 
pnam
�< 
utxt
�; 
valL�: 0 element  �G B� > ;k��-j kh ��/�,E�&E�O��  ��/�,EY )��/�l+ [OY��Um �9��8�7���6�9 0 element_by_attribute  �8 �5��5 �  �4�3�2�4 0 xml_data  �3 0 attr_key  �2 0 attr_val  �7  � �1�0�/�.�-�,�1 0 xml_data  �0 0 attr_key  �/ 0 attr_val  �. 0 i  �- 0 elm  �, 0 val  � ��+�*�)�(�'
�+ 
xmle
�* .corecnte****       ****�) 0 attribute_value_by_name  
�( 
TEXT
�' 
msng�6 =� 9 3k��-j kh ��/E�O)��l+ E�O���&  �Y h[OY��O�Un �&��%�$���#�& 0 attribute_by_name  �% �"��" �  �!� �! 0 xml_data  �  0 the_name  �$  � ��� 0 xml_data  � 0 the_name  � ����
� 
xmla�  
� 
pnam�# � ��k/�[�,\Z�81EUo � ������ 0 root  � ��� �  �� 0 xml_file  �  � ��� 0 xml_file  � 0 xml_data  � ���
� 
xmlf
� 
pcnt
� 
xmle� � *�/�,E�O��k/EUp ������� 0 every_element  � ��� �  �� 0 xml_element  �  � �
�
 0 xml_element  � #�	
�	 
xmle� � ��-EUq �,������ 0 attribute_value_by_name  � ��� �  ��� 0 xml_element  � 0 attribute_name  �  � �� ��� 0 xml_element  �  0 attribute_name  �� 0 attr  � ������ 0 attribute_by_name  �� 0 attribute_value  � *��l+  E�O*�k+ r ��O���������� 0 attribute_value  �� ����� �  ���� 0 the_attribute  ��  � ���� 0 the_attribute  � W��
�� 
valL�� � ��,EUR ������� 0 s  � k      �� ��� l      ������  �  
 * Returns xml header
    � ��� 0 
   *   R e t u r n s   x m l   h e a d e r 
  � ��� i     ��� I      �������� 
0 header  ��  ��  � L     �� m     �� ��� L < ? x m l   v e r s i o n = " 1 . 0 "   e n c o d i n g = " u t f - 8 " ? >� ��� l      ������  � d ^
 * Returns an XML item with name and content
 * Todo: impliment no content = single element
    � ��� � 
   *   R e t u r n s   a n   X M L   i t e m   w i t h   n a m e   a n d   c o n t e n t 
   *   T o d o :   i m p l i m e n t   n o   c o n t e n t   =   s i n g l e   e l e m e n t 
  � ��� i    ��� I      ������� 0 element  � ��� o      ���� 0 the_name  � ���� o      ���� 0 content  ��  ��  � k     2�� ��� r     ��� b     ��� m     �� ���  <� o    ���� 0 the_name  � o      ���� 0 xml_text  � ��� Z    #������ l   ������ ?    ��� n    	��� 1    	��
�� 
leng� o    ���� 0 the_content  � m   	 
����  ��  ��  � l   ���� l   ���� r    ��� b    ��� b    ��� b    ��� b    ��� b    ��� o    ���� 0 xml_text  � m    �� ���  >� o    ���� 0 content  � m    �� ���  < /� o    ���� 0 the_name  � m    �� ���  >� o      ���� 0 xml_text  �  end of xml text   � ���  e n d   o f   x m l   t e x t�  has content   � ���  h a s   c o n t e n t��  � l   #���� l   #���� r    #��� b    !��� o    ���� 0 xml_text  � m     �� ���  / >� o      ���� 0 xml_text  �  end of xml text   � ���  e n d   o f   x m l   t e x t�  
no content   � ���  n o   c o n t e n t� ���� L   $ 2�� b   $ 1��� b   $ /��� b   $ -��� b   $ +��� b   $ )��� b   $ '��� m   $ %�� ���  <� o   % &���� 0 the_name  � m   ' (   �  >� o   ) *���� 0 content  � m   + , �  < /� o   - .���� 0 the_name  � m   / 0 �  >��  �  l     ��	��   ! no content = single element   	 �

 6 n o   c o n t e n t   =   s i n g l e   e l e m e n t  l     ����   f `attributes contain a list with "sudo accociative lists" like {{"key","color"},{"code","FF0503"}}    � � a t t r i b u t e s   c o n t a i n   a   l i s t   w i t h   " s u d o   a c c o c i a t i v e   l i s t s "   l i k e   { { " k e y " , " c o l o r " } , { " c o d e " , " F F 0 5 0 3 " } }  i     I      ������ 0 element_with_attribute    o      ���� 0 the_name    o      ���� 0 the_content   �� o      ���� 0 the_attributes  ��  ��   k     x  r      m      �     o      ���� 0 attribute_text   !"! Y    M#��$%��# k    H&& '(' r    )*) n    +,+ 4    ��-
�� 
cobj- o    ���� 0 i  , o    ���� 0 the_attributes  * o      ���� 0 	attribute  ( ./. r    010 n   232 4   ��4
�� 
cobj4 m    ���� 3 o    ���� 0 	attribute  1 o      ���� 0 the_key  / 565 r    %787 l   #9����9 n   #:;: 4    #��<
�� 
cobj< m   ! "���� ; o     ���� 0 	attribute  ��  ��  8 o      ���� 0 	the_value  6 =>= r   & 3?@? b   & 1ABA o   & '���� 0 attribute_text  B l  ' 0C����C b   ' 0DED b   ' .FGF b   ' ,HIH b   ' *JKJ o   ' (���� 0 the_key  K m   ( )LL �MM  =I m   * +NN �OO  "G o   , -���� 0 	the_value  E m   . /PP �QQ  "��  ��  @ o      ���� 0 attribute_text  > RSR l  4 FTUVT Z  4 FWX����W >  4 :YZY o   4 5���� 0 	attribute  Z l  5 9[����[ n  5 9\]\ 4  6 9��^
�� 
cobj^ m   7 8������] o   5 6���� 0 the_attributes  ��  ��  X r   = B_`_ b   = @aba o   = >���� 0 attribute_text  b m   > ?cc �dd   ` o      ���� 0 attribute_text  ��  ��  U E ?append a space after each key value pair, unless its at the end   V �ee ~ a p p e n d   a   s p a c e   a f t e r   e a c h   k e y   v a l u e   p a i r ,   u n l e s s   i t s   a t   t h e   e n dS f��f l  G G��������  ��  ��  ��  �� 0 i  $ m    ���� % l   g����g n    hih 1   	 ��
�� 
lengi o    	���� 0 the_attributes  ��  ��  ��  " jkj l  N Wlmnl r   N Wopo b   N Uqrq b   N Ssts b   N Quvu m   N Oww �xx  <v o   O P���� 0 the_name  t m   Q Ryy �zz   r o   S T���� 0 attribute_text  p o      ���� 0 xml_text  m  beginning of xml text   n �{{ * b e g i n n i n g   o f   x m l   t e x tk |}| Z   X u~���~ l  X ]������ ?   X ]��� n   X [��� 1   Y [��
�� 
leng� o   X Y���� 0 the_content  � m   [ \����  ��  ��   l  ` m���� l  ` m���� r   ` m��� b   ` k��� b   ` i��� b   ` g��� b   ` e��� b   ` c��� o   ` a���� 0 xml_text  � m   a b�� ���  >� o   c d���� 0 the_content  � m   e f�� ���  < /� o   g h���� 0 the_name  � m   i j�� ���  >� o      ���� 0 xml_text  �  end of xml text   � ���  e n d   o f   x m l   t e x t�  has content   � ���  h a s   c o n t e n t��  � l  p u���� l  p u���� r   p u��� b   p s��� o   p q���� 0 xml_text  � m   q r�� ���  / >� o      ���� 0 xml_text  �  end of xml text   � ���  e n d   o f   x m l   t e x t�  
no content   � ���  n o   c o n t e n t} ���� L   v x�� o   v w���� 0 xml_text  ��   ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 element_beginning  � ���� o      ���� 0 the_name  ��  ��  � L     �� b     ��� b     ��� m     �� ���  <� o    ���� 0 the_name  � m    �� ���  >� ��� l     ��������  ��  ��  � ���� i    ��� I      ������� 0 element_end  � ���� o      ���� 0 the_name  ��  ��  � L     �� b     ��� b     ��� m     �� ���  < /� o    ���� 0 the_name  � m    �� ���  >��  � ��� ���  � k      �� ��� h     ����� 0 s  � ���� l    ����� L     �� o     �~�~ 0 s  ��  �  ��  � �}�R��}  � �|�{�| 0 s  
�{ .aevtoappnull  �   � ****� �z��y�x���w
�z .aevtoappnull  �   � ****� k     �� ��v�v  �y  �x  �  �  �w b   � �������� �u�t�s�r�q�u 
0 header  �t 0 element  �s 0 element_with_attribute  �r 0 element_beginning  �q 0 element_end  � �p��o�n���m�p 
0 header  �o  �n  �  � ��m �� �l��k�j���i�l 0 element  �k �h��h �  �g�f�g 0 the_name  �f 0 content  �j  � �e�d�c�b�e 0 the_name  �d 0 content  �c 0 xml_text  �b 0 the_content  � 
��a����� 
�a 
leng�i 3�%E�O��,j ��%�%�%�%�%E�Y ��%E�O�%�%�%�%�%�%� �`�_�^���]�` 0 element_with_attribute  �_ �\��\ �  �[�Z�Y�[ 0 the_name  �Z 0 the_content  �Y 0 the_attributes  �^  � 	�X�W�V�U�T�S�R�Q�P�X 0 the_name  �W 0 the_content  �V 0 the_attributes  �U 0 attribute_text  �T 0 i  �S 0 	attribute  �R 0 the_key  �Q 0 	the_value  �P 0 xml_text  � �O�NLNPcwy����
�O 
leng
�N 
cobj�] y�E�O Hk��,Ekh ��/E�O��k/E�O��l/E�O���%�%�%�%%E�O���i/ 
��%E�Y hOP[OY��O�%�%�%E�O��,j ��%�%�%�%�%E�Y ��%E�O�� �M��L�K���J�M 0 element_beginning  �L �I��I �  �H�H 0 the_name  �K  � �G�G 0 the_name  � ���J �%�%� �F��E�D���C�F 0 element_end  �E �B��B �  �A�A 0 the_name  �D  � �@�@ 0 the_name  � ���C �%�%S �?����? 0 s  � k      �� ��� l      �>���>  � � ~
 * Returns "desktop/image.jpg" from desktop:image.jpg
 * HFS path is folder:folder and POSIX (unix) paths are folder/folder
    � ��� � 
   *   R e t u r n s   " d e s k t o p / i m a g e . j p g "   f r o m   d e s k t o p : i m a g e . j p g 
   *   H F S   p a t h   i s   f o l d e r : f o l d e r   a n d   P O S I X   ( u n i x )   p a t h s   a r e   f o l d e r / f o l d e r 
  � ��� l     �� � j     �=�= 0 scriptloader ScriptLoader I    �<�;
�< .sysoloadscpt        file 4     �:
�: 
alis l   �9�8 b     l   �7�6 I   �5	
�5 .earsffdralis        afdr m    �4
�4 afdrscr�	 �3

�3 
from
 m    �2
�2 fldmfldu �1�0
�1 
rtyp m    �/
�/ 
ctxt�0  �7  �6   m     � , f i l e : S c r i p t L o a d e r . s c p t�9  �8  �;  � 1 +prerequisite for loading .applescript files     � V p r e r e q u i s i t e   f o r   l o a d i n g   . a p p l e s c r i p t   f i l e s�  j    *�.�. 0 
textparser 
TextParser n   ) n   ) I    )�-�,�- 0 load_script   �+ 4    %�*
�* 
alis l   $�)�( b    $ l   "�'�& I   "�%
�% .earsffdralis        afdr m    �$
�$ afdrscr� �# !
�# 
from  m    �"
�" fldmfldu! �!"� 
�! 
rtyp" m    �
� 
ctxt�   �'  �&   m   " ### �$$ 6 t e x t : T e x t P a r s e r . a p p l e s c r i p t�)  �(  �+  �,   o    �� 0 scriptloader ScriptLoader  f     %&% l      �'(�  ' � � 
 * Only works if the file actually exists akak an alias
 * Reads the actual file
 * Example: FileParser's read_URL(POSIX path of (((path to desktop) as string) & "colors.xml"))--returns the content of xml on the desktop
    ( �))�   
   *   O n l y   w o r k s   i f   t h e   f i l e   a c t u a l l y   e x i s t s   a k a k   a n   a l i a s 
   *   R e a d s   t h e   a c t u a l   f i l e 
   *   E x a m p l e :   F i l e P a r s e r ' s   r e a d _ U R L ( P O S I X   p a t h   o f   ( ( ( p a t h   t o   d e s k t o p )   a s   s t r i n g )   &   " c o l o r s . x m l " ) ) - - r e t u r n s   t h e   c o n t e n t   o f   x m l   o n   t h e   d e s k t o p 
  & *+* i   + .,-, I      �.�� 0 read_url read_URL. /�/ o      �� 0 file_url file_URL�  �  - L     	00 l    1��1 I    �2�
� .rdwrread****        ****2 4     �3
� 
psxf3 o    �� 0 file_url file_URL�  �  �  + 454 l     �67�  6 - 'Returns the POSIX path from a file path   7 �88 N R e t u r n s   t h e   P O S I X   p a t h   f r o m   a   f i l e   p a t h5 9:9 l     �;<�  ;  Todo write an example   < �== * T o d o   w r i t e   a n   e x a m p l e: >?> i   / 2@A@ I      �B�� 0 
posix_path  B C�C o      �� 0 the_path  �  �  A L     DD n     EFE 1    �
� 
psxpF o     �� 0 the_path  ? GHG l      �
IJ�
  I K E
 * Returns the file url from a file path
 * Todo: write an example
    J �KK � 
   *   R e t u r n s   t h e   f i l e   u r l   f r o m   a   f i l e   p a t h 
   *   T o d o :   w r i t e   a n   e x a m p l e 
  H LML i   3 6NON I      �	P��	 0 file_url file_URLP Q�Q o      �� 0 	file_path  �  �  O k     RR STS l     �UV�  U + %log "fileURL() filePath: " & filePath   V �WW J l o g   " f i l e U R L ( )   f i l e P a t h :   "   &   f i l e P a t hT X�X O     YZY k    [[ \]\ r    	^_^ n    `a` 1    �
� 
url a o    �� 0 	file_path  _ o      �� 0 the_url the_URL] bcb I  
 � d��
�  .ascrcmnt****      � ****d l  
 e����e b   
 fgf m   
 hh �ii  t h e _ U R L :  g o    ���� 0 the_url the_URL��  ��  ��  c j��j L    kk o    ���� 0 the_url the_URL��  Z m     ll�                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  M mnm l      ��op��  o � �
 * Returns a "hfs alias path" from a "POSIX path"
 * Example file_path(POSIX path of (path to desktop)): --"alias Macintosh HD:Users:John:Desktop:"
    p �qq, 
   *   R e t u r n s   a   " h f s   a l i a s   p a t h "   f r o m   a   " P O S I X   p a t h " 
   *   E x a m p l e   f i l e _ p a t h ( P O S I X   p a t h   o f   ( p a t h   t o   d e s k t o p ) ) :   - - " a l i a s   M a c i n t o s h   H D : U s e r s : J o h n : D e s k t o p : " 
  n rsr i   7 :tut I      ��v���� 0 	file_path  v w��w o      ���� 0 fileurl fileURL��  ��  u k     xx yzy r     {|{ 4     ��}
�� 
psxf} o    ���� 0 fileurl fileURL| o      ���� 0 
posix_file  z ~��~ L     c    
��� o    ���� 0 
posix_file  � m    	��
�� 
alis��  s ��� l      ������  � � }
 * Returns a "hsf path" from an "alias hsf path"
 * Example: hfs_path(path to desktop)--"Macintosh HD:Users:John:Desktop:"
    � ��� � 
   *   R e t u r n s   a   " h s f   p a t h "   f r o m   a n   " a l i a s   h s f   p a t h " 
   *   E x a m p l e :   h f s _ p a t h ( p a t h   t o   d e s k t o p ) - - " M a c i n t o s h   H D : U s e r s : J o h n : D e s k t o p : " 
  � ��� i   ; >��� I      ������� 0 hfs_path  � ���� o      ���� 0 	file_path  ��  ��  � L     �� c     ��� o     ���� 0 	file_path  � m    ��
�� 
TEXT� ��� l      ������  �  
 * TODO:  Explain
    � ��� ( 
   *   T O D O :     E x p l a i n 
  � ��� i   ? B��� I      ������� 0 file_name_by_url  � ���� o      ���� 0 file_url file_URL��  ��  � L     �� I     ������� 0 	file_name  � ���� I    ������� 0 	file_path  � ���� o    ���� 0 file_url file_URL��  ��  ��  ��  � ��� l      ������  � : 4
 * Returns the implicit path from a HSF file path
    � ��� h 
   *   R e t u r n s   t h e   i m p l i c i t   p a t h   f r o m   a   H S F   f i l e   p a t h 
  � ��� i   C F��� I      ������� &0 implicit_file_url implicit_file_URL� ���� o      ���� 0 hfs_path  ��  ��  � k     �� ��� r     	��� n     ��� 1    ��
�� 
psxp� o     ���� 0 hfs_path  � o      ���� 0 
posix_path  � ��� r   
 ��� b   
 ��� m   
 �� ���  f i l e : / /� o    ���� 0 
posix_path  � o      ���� &0 implicit_file_url implicit_file_URL� ���� L    �� o    ���� &0 implicit_file_url implicit_file_URL��  � ��� l      ������  � 1 +
 * Note can be used on files and folders
    � ��� V 
   *   N o t e   c a n   b e   u s e d   o n   f i l e s   a n d   f o l d e r s 
  � ��� i   G J��� I      ������� 0 parent_folder  � ���� o      ���� 0 	file_path  ��  ��  � O     
��� l   	���� L    	�� n    ��� 1    ��
�� 
ctnr� o    ���� 0 	file_path  � 6 0 sets the parent folder of the folder you select   � ��� `   s e t s   t h e   p a r e n t   f o l d e r   o f   t h e   f o l d e r   y o u   s e l e c t� m     ���                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l      ������  � 1 +
 * Note can be used on files and folders
    � ��� V 
   *   N o t e   c a n   b e   u s e d   o n   f i l e s   a n d   f o l d e r s 
  � ��� i   K N��� I      ������� 0 	file_kind  � ���� o      ���� 0 	file_path  ��  ��  � O     
��� L    	�� n    ��� 1    ��
�� 
kind� o    ���� 0 	file_path  � m     ���                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l      ������  � 1 +
 * Returns the file kind from a file_URL
    � ��� V 
   *   R e t u r n s   t h e   f i l e   k i n d   f r o m   a   f i l e _ U R L 
  � ��� i   O R��� I      ������� $0 file_kind_by_url file_kind_by_URL� ���� o      ���� 0 file_url file_URL��  ��  � L     �� I     ������� 0 	file_kind  � ���� I    ������� 0 	file_path  � ���� o    ���� 0 file_url file_URL��  ��  ��  ��  � ��� l      ������  � � }
 * Note can be used on files and folders
 * name of FileParser's fileProperties(the_file)
 * TODO get a list of properties
    � ��� � 
   *   N o t e   c a n   b e   u s e d   o n   f i l e s   a n d   f o l d e r s 
   *   n a m e   o f   F i l e P a r s e r ' s   f i l e P r o p e r t i e s ( t h e _ f i l e ) 
   *   T O D O   g e t   a   l i s t   o f   p r o p e r t i e s 
  � ��� i   S V��� I      ������� 0 file_properties  � ���� o      ���� 0 	file_path  ��  ��  � O     
��� L    	�� n       1    ��
�� 
pALL o    ���� 0 	file_path  � m     �                                                                                  sevs  alis    �  Macintosh HD               Ё��H+    System Events.app                                               �5>�        ����  	                CoreServices    Ё{�      �5"�         �   �  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  l      ����  :4
 * Example: name:test.db, creation date:date Thursday 29 August 2013 18:43:31, modification date:date Thursday 21 November 2013 20:07:41, size:28672, folder:false, alias:false, package folder:false, visible:true, extension hidden:false, name extension:db, displayed name:test.db, kind:Document, file type:
     �h 
   *   E x a m p l e :   n a m e : t e s t . d b ,   c r e a t i o n   d a t e : d a t e   T h u r s d a y   2 9   A u g u s t   2 0 1 3   1 8 : 4 3 : 3 1 ,   m o d i f i c a t i o n   d a t e : d a t e   T h u r s d a y   2 1   N o v e m b e r   2 0 1 3   2 0 : 0 7 : 4 1 ,   s i z e : 2 8 6 7 2 ,   f o l d e r : f a l s e ,   a l i a s : f a l s e ,   p a c k a g e   f o l d e r : f a l s e ,   v i s i b l e : t r u e ,   e x t e n s i o n   h i d d e n : f a l s e ,   n a m e   e x t e n s i o n : d b ,   d i s p l a y e d   n a m e : t e s t . d b ,   k i n d : D o c u m e n t ,   f i l e   t y p e : 
   	 i   W Z

 I      ������ 0 	file_info   �� o      ���� 0 the_file  ��  ��   I    ����
�� .sysonfo4asfe        file o     ���� 0 the_file  ��  	  l      ����   = 7
 * Returns the file extension of the file, i.e: .zip
     � n 
   *   R e t u r n s   t h e   f i l e   e x t e n s i o n   o f   t h e   f i l e ,   i . e :   . z i p 
    i   [ ^ I      ������ 0 file_extension   �� o      ���� 0 the_file  ��  ��   L     	 n      1    ��
�� 
nmxt l    ���� I    ����
�� .sysonfo4asfe        file o     ���� 0 the_file  ��  ��  ��     l      ��!"��  ! = 7
 * Folder names
 * Note can take POSIX file or Alias
    " �## n 
   *   F o l d e r   n a m e s 
   *   N o t e   c a n   t a k e   P O S I X   f i l e   o r   A l i a s 
    $%$ i   _ b&'& I      ��(���� 0 folder_names  ( )��) o      ���� 0 
the_folder  ��  ��  ' O     *+* L    ,, n    -.- 1   
 ��
�� 
pnam. n    
/0/ 2   
��
�� 
cfol0 4    ��1
�� 
cfol1 l   2����2 o    ���� 0 
the_folder  ��  ��  + m     33�                                                                                  MACS  alis    t  Macintosh HD               Ё��H+    
Finder.app                                                      X��B��        ����  	                CoreServices    Ё{�      �B�         �   �  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  % 454 l      ��67��  6 E ?
 * Todo: does this method return file names and folder names
    7 �88 ~ 
   *   T o d o :   d o e s   t h i s   m e t h o d   r e t u r n   f i l e   n a m e s   a n d   f o l d e r   n a m e s 
  5 9:9 i   c f;<; I      ��=���� 0 
file_names  = >��> o      ���� 0 
the_folder  ��  ��  < O     ?@? L    AA n    BCB 1   
 ��
�� 
pnamC n    
DED 2   
��
�� 
fileE 4    ��F
�� 
cfolF l   G����G o    ���� 0 
the_folder  ��  ��  @ m     HH�                                                                                  MACS  alis    t  Macintosh HD               Ё��H+    
Finder.app                                                      X��B��        ����  	                CoreServices    Ё{�      �B�         �   �  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  : IJI l      ��KL��  K a [
 * Returns the file name from the file path
 * Todo: does it include the file extension?
    L �MM � 
   *   R e t u r n s   t h e   f i l e   n a m e   f r o m   t h e   f i l e   p a t h 
   *   T o d o :   d o e s   i t   i n c l u d e   t h e   f i l e   e x t e n s i o n ? 
  J NON i   g jPQP I      ��R���� 0 	file_name  R S��S o      ���� 0 the_file_path  ��  ��  Q O     
TUT L    	VV n    WXW 1    ��
�� 
pnamX o    �� 0 the_file_path  U m     YY�                                                                                  MACS  alis    t  Macintosh HD               Ё��H+    
Finder.app                                                      X��B��        ����  	                CoreServices    Ё{�      �B�         �   �  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  O Z[Z l      �~\]�~  \ � �
 * Returns all file names of all files in a folder
 * Todo: does this return folder names aswell?
 * Todo: create a method for single files that trims away the extension and loop this method instead
    ] �^^� 
   *   R e t u r n s   a l l   f i l e   n a m e s   o f   a l l   f i l e s   i n   a   f o l d e r 
   *   T o d o :   d o e s   t h i s   r e t u r n   f o l d e r   n a m e s   a s w e l l ? 
   *   T o d o :   c r e a t e   a   m e t h o d   f o r   s i n g l e   f i l e s   t h a t   t r i m s   a w a y   t h e   e x t e n s i o n   a n d   l o o p   t h i s   m e t h o d   i n s t e a d 
  [ _`_ i   k naba I      �}c�|�} 0 file_names_sans_ext  c d�{d o      �z�z 0 
the_folder  �{  �|  b k     7ee fgf r     hih I     �yj�x�y 0 
file_names  j k�wk o    �v�v 0 
the_folder  �w  �x  i o      �u�u 0 
temp_names  g lml r   	 non J   	 �t�t  o o      �s�s 	0 names  m pqp X    4r�rsr r    /tut n   ,vwv 4   ) ,�qx
�q 
cobjx m   * +�p�p w n   )yzy I   # )�o{�n�o 	0 split  { |}| o   # $�m�m 0 	temp_name  } ~�l~ m   $ % ���  .�l  �n  z o    #�k�k 0 
textparser 
TextParseru n      ���  ;   - .� o   , -�j�j 	0 names  �r 0 	temp_name  s o    �i�i 0 
temp_names  q ��h� L   5 7�� o   5 6�g�g 	0 names  �h  ` ��f� l     �e�d�c�e  �d  �c  �f  � �b� ��b  � k      �� ��� h     �a��a 0 s  � ��`� l    ��_�^� L     �� o     �]�] 0 s  �_  �^  �`  � �\�S��\  � �[�Z�[ 0 s  
�Z .aevtoappnull  �   � ****� �Y��X�W���V
�Y .aevtoappnull  �   � ****� k     �� ��U�U  �X  �W  �  �  �V b   � ���������������������� �T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�T 0 scriptloader ScriptLoader�S 0 
textparser 
TextParser�R 0 read_url read_URL�Q 0 
posix_path  �P 0 file_url file_URL�O 0 	file_path  �N 0 hfs_path  �M 0 file_name_by_url  �L &0 implicit_file_url implicit_file_URL�K 0 parent_folder  �J 0 	file_kind  �I $0 file_kind_by_url file_kind_by_URL�H 0 file_properties  �G 0 	file_info  �F 0 file_extension  �E 0 folder_names  �D 0 
file_names  �C 0 	file_name  �B 0 file_names_sans_ext  � �A� ��A  � k      �� ��� l     �@���@  � w qNote: we use load_script to load plain-text .applescript files, which cant be loaded directly without this method   � ��� � N o t e :   w e   u s e   l o a d _ s c r i p t   t o   l o a d   p l a i n - t e x t   . a p p l e s c r i p t   f i l e s ,   w h i c h   c a n t   b e   l o a d e d   d i r e c t l y   w i t h o u t   t h i s   m e t h o d� ��� l     �?���?  � � �Note: we use .applescript instead of .scpt files because its easier to put plain text script files under version control like github   � ��� N o t e :   w e   u s e   . a p p l e s c r i p t   i n s t e a d   o f   . s c p t   f i l e s   b e c a u s e   i t s   e a s i e r   t o   p u t   p l a i n   t e x t   s c r i p t   f i l e s   u n d e r   v e r s i o n   c o n t r o l   l i k e   g i t h u b� ��� l     �>���>  �a[Note: You can load compiled scripts (.scpt) or plain text scripts (.applescript). Make sure, though, that your .applescript files are encoded as either Mac (what AppleScript Editor uses) UTF-8 (if you use another text editor). Any scripts loaded are expected to be installed into your Scripts directory. Use the line below to reference the script:   � ���� N o t e :   Y o u   c a n   l o a d   c o m p i l e d   s c r i p t s   ( . s c p t )   o r   p l a i n   t e x t   s c r i p t s   ( . a p p l e s c r i p t ) .   M a k e   s u r e ,   t h o u g h ,   t h a t   y o u r   . a p p l e s c r i p t   f i l e s   a r e   e n c o d e d   a s   e i t h e r   M a c   ( w h a t   A p p l e S c r i p t   E d i t o r   u s e s )   U T F - 8   ( i f   y o u   u s e   a n o t h e r   t e x t   e d i t o r ) .   A n y   s c r i p t s   l o a d e d   a r e   e x p e c t e d   t o   b e   i n s t a l l e d   i n t o   y o u r   S c r i p t s   d i r e c t o r y .   U s e   t h e   l i n e   b e l o w   t o   r e f e r e n c e   t h e   s c r i p t :� ��� l     �=���=  � H Bremember to import this method before you use it with a property:    � ��� � r e m e m b e r   t o   i m p o r t   t h i s   m e t h o d   b e f o r e   y o u   u s e   i t   w i t h   a   p r o p e r t y :  � ��� l      �<���<  ���
property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt")--prerequisite for loading .applescript filesproperty ListAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListAsserter.applescript")) my ListAsserter's equals_to({1, 2, 3, 4}, {1, 2, 3, 4})
if my ListAsserter's equals_to({1, 2, 3, 4}, {1, 2, 3, 4}) then	log "yes"else	log "no"end if
   � ���� 
 p r o p e r t y   S c r i p t L o a d e r   :   l o a d   s c r i p t   a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " f i l e : S c r i p t L o a d e r . s c p t " ) - - p r e r e q u i s i t e   f o r   l o a d i n g   . a p p l e s c r i p t   f i l e s  p r o p e r t y   L i s t A s s e r t e r   :   m y   S c r i p t L o a d e r ' s   l o a d _ s c r i p t ( a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " l i s t : L i s t A s s e r t e r . a p p l e s c r i p t " ) )    m y   L i s t A s s e r t e r ' s   e q u a l s _ t o ( { 1 ,   2 ,   3 ,   4 } ,   { 1 ,   2 ,   3 ,   4 } ) 
 i f   m y   L i s t A s s e r t e r ' s   e q u a l s _ t o ( { 1 ,   2 ,   3 ,   4 } ,   { 1 ,   2 ,   3 ,   4 } )   t h e n  	 l o g   " y e s "  e l s e  	 l o g   " n o "  e n d   i f 
� ��;� i     ��� I      �:��9�: 0 load_script  � ��8� o      �7�7 0 apple_script_path  �8  �9  � k     {�� ��� Q     x���� r    
��� I   �6��5
�6 .sysoloadscpt        file� o    �4�4 0 apple_script_path  �5  � o      �3�3 0 script_object  � R      �2�1�
�2 .ascrerr ****      � ****�1  � �0��/
�0 
errn� d      �� m      �.�.��/  � l   x���� k    x�� ��� r    ��� m    �� ���  � o      �-�- 0 script_text  � ��� Q    1���� l    ���� r     ��� I   �,��+
�, .rdwrread****        ****� o    �*�* 0 apple_script_path  �+  � o      �)�) 0 script_text  � ( " Try reading as Mac encoding first   � ��� D   T r y   r e a d i n g   a s   M a c   e n c o d i n g   f i r s t� R      �(�'�
�( .ascrerr ****      � ****�'  � �&��%
�& 
errn� d      �� m      �$�$��%  � l  ( 1���� l  ( 1���� r   ( 1��� I  ( /�#��
�# .rdwrread****        ****� o   ( )�"�" 0 apple_script_path  � �!�� 
�! 
as  � m   * +�
� 
utf8�   � o      �� 0 script_text  �   Finally try UTF-8   � ��� $   F i n a l l y   t r y   U T F - 8� &   Error reading script's encoding   � ��� @   E r r o r   r e a d i n g   s c r i p t ' s   e n c o d i n g� ��� Q   2 x���� r   5 H� � I  5 F��
� .sysodsct****        scpt l  5 B�� b   5 B b   5 @ b   5 > b   5 <	
	 b   5 : b   5 8 m   5 6 �  s c r i p t   s o   6 7�
� 
ret  o   8 9�� 0 script_text  
 o   : ;�
� 
ret  m   < = �  e n d   s c r i p t   o   > ?�
� 
ret  m   @ A �  r e t u r n   s�  �  �    o      �� 0 script_object  � R      �
� .ascrerr ****      � **** o      �� 0 e   �
� 
errn o      �� 0 n   �
� 
ptlr o      �� 0 p   �
� 
erob o      �� 0 f   ��

� 
errt o      �	�	 0 t  �
  � k   P x   I  P a�!�
� .sysodlogaskr        TEXT! b   P ]"#" b   P Y$%$ b   P W&'& b   P S()( m   P Q** �++ , E r r o r   r e a d i n g   l i b r a r y  ) o   Q R�� 0 apple_script_path  ' m   S V,, �--   % o   W X�� 0 e  # m   Y \.. �// : P l e a s e   e n c o d e   a s   M a c   o r   U T F - 8�    0�0 R   b x�12
� .ascrerr ****      � ****1 o   v w�� 0 e  2 �34
� 
errn3 o   f g� �  0 n  4 ��56
�� 
ptlr5 o   j k���� 0 p  6 ��78
�� 
erob7 o   n o���� 0 f  8 ��9��
�� 
errt9 o   r s���� 0 t  ��  �  �  �   text format script    � �:: (   t e x t   f o r m a t   s c r i p t  � ;��; l  y {<=>< L   y {?? o   y z���� 0 script_object  = + %return the script, it is now loadable   > �@@ J r e t u r n   t h e   s c r i p t ,   i t   i s   n o w   l o a d a b l e��  �;  � ��AB��  A ���� 0 load_script  B �������CD���� 0 load_script  �� ��E�� E  ���� 0 apple_script_path  ��  C ������������������ 0 apple_script_path  �� 0 script_object  �� 0 script_text  �� 0 e  �� 0 n  �� 0 p  �� 0 f  �� 0 t  D ����F���G����������H*,.������������
�� .sysoloadscpt        file��  F ������
�� 
errn���(��  
�� .rdwrread****        ****G ������
�� 
errn���\��  
�� 
as  
�� 
utf8
�� 
ret 
�� .sysodsct****        scpt�� 0 e  H ����I
�� 
errn�� 0 n  I ����J
�� 
ptlr�� 0 p  J ����K
�� 
erob�� 0 f  K ������
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
errt�� �� | �j  E�W mX  �E�O �j E�W X  ���l E�O ��%�%�%�%�%�%j E�W /X  �%a %�%a %j O)a �a �a �a �a �O�� ��LMN�� 0 s  L k      OO PQP l      ��RS��  R 6 0
 * Returns an array of every word in the_text
    S �TT ` 
   *   R e t u r n s   a n   a r r a y   o f   e v e r y   w o r d   i n   t h e _ t e x t 
  Q UVU i     WXW I      ��Y���� 0 
every_word  Y Z��Z o      ���� 0 the_text  ��  ��  X L     [[ n     \]\ 2    ��
�� 
cwor] o     ���� 0 the_text  V ^_^ l      ��`a��  ` r l
 * Returns all paragraps in a text as a list
 * TODO: write an example
 * // :TODO: rename to every_line?
    a �bb � 
   *   R e t u r n s   a l l   p a r a g r a p s   i n   a   t e x t   a s   a   l i s t 
   *   T O D O :   w r i t e   a n   e x a m p l e 
   *   / /   : T O D O :   r e n a m e   t o   e v e r y _ l i n e ? 
  _ cdc i    efe I      ��g���� 0 every_paragraph  g h��h o      ���� 0 the_text  ��  ��  f k     3ii jkj r     lml J     ����  m o      ���� 0 paragraph_list  k non r    
pqp n    rsr 2   ��
�� 
cpars o    ���� 0 the_text  q o      ���� 0 	para_list  o tut X    0v��wv Z    +xy����x ?    z{z n    |}| 1    ��
�� 
leng} o    ���� 0 	next_line  { m    ����  y l  # '~�~ s   # '��� o   # $���� 0 	next_line  � l     ������ n      ���  ;   % &� o   $ %���� 0 paragraph_list  ��  ��   < 6 this takes care of not adding an emty item at the end   � ��� l   t h i s   t a k e s   c a r e   o f   n o t   a d d i n g   a n   e m t y   i t e m   a t   t h e   e n d��  ��  �� 0 	next_line  w o    ���� 0 	para_list  u ���� L   1 3�� o   1 2���� 0 paragraph_list  ��  d ��� l      ������  � O I
 * Returns a list of text items by splitting a text at every delimiter
    � ��� � 
   *   R e t u r n s   a   l i s t   o f   t e x t   i t e m s   b y   s p l i t t i n g   a   t e x t   a t   e v e r y   d e l i m i t e r 
  � ��� i    ��� I      ������� 	0 split  � ��� o      ���� 0 the_text  � ���� o      ���� 0 	delimiter  ��  ��  � k     �� ��� r     ��� o     ���� 0 	delimiter  � 1    ��
�� 
txdl� ��� r    ��� n    	��� 2    	��
�� 
citm� o    ���� 0 the_text  � o      ���� 0 ret_val  � ��� l   ���� r    ��� m    �� ���  ,� 1    ��
�� 
txdl� , &reset applescript delimiter to default   � ��� L r e s e t   a p p l e s c r i p t   d e l i m i t e r   t o   d e f a u l t� ���� L    �� o    ���� 0 ret_val  ��  � ��� l      ������  � ) #
 * Returns the length of theText
    � ��� F 
   *   R e t u r n s   t h e   l e n g t h   o f   t h e T e x t 
  � ��� i    ��� I      ������� 0 text_length  � ���� o      ���� 0 the_text  ��  ��  � L     �� n     ��� 1    ��
�� 
leng� o     ���� 0 the_text  � ��� l      ������  �mg
 * Returns a comma delimited list like "blue, red, orange" from an array like {"blue","red","orange"}
 * Example: log TextParser's comma_delimited_text({"blue", "red", "orange"}) yields "blue, red, orange"
 * TODO USE THIS INSTEAD: set AppleScript's text item delimiters to {" "} -- A single space
 * TODO move to ArrayParser
 * AND THEN : the_list as text
    � ���� 
   *   R e t u r n s   a   c o m m a   d e l i m i t e d   l i s t   l i k e   " b l u e ,   r e d ,   o r a n g e "   f r o m   a n   a r r a y   l i k e   { " b l u e " , " r e d " , " o r a n g e " } 
   *   E x a m p l e :   l o g   T e x t P a r s e r ' s   c o m m a _ d e l i m i t e d _ t e x t ( { " b l u e " ,   " r e d " ,   " o r a n g e " } )   y i e l d s   " b l u e ,   r e d ,   o r a n g e " 
   *   T O D O   U S E   T H I S   I N S T E A D :   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   { "   " }   - -   A   s i n g l e   s p a c e 
   *   T O D O   m o v e   t o   A r r a y P a r s e r 
   *   A N D   T H E N   :   t h e _ l i s t   a s   t e x t 
  � ��� i    ��� I      ������� 0 comma_delimited_text  � ���� o      ���� 0 
text_items  ��  ��  � I     	������� 0 delimited_text  � ��� o    ���� 0 
text_items  � ���� b    ��� m    �� ���  ,� 1    ��
�� 
spac��  ��  � ��� l     ������  � f `Returns a text item by stitching many text items together with the delimiter inbetween each word   � ��� � R e t u r n s   a   t e x t   i t e m   b y   s t i t c h i n g   m a n y   t e x t   i t e m s   t o g e t h e r   w i t h   t h e   d e l i m i t e r   i n b e t w e e n   e a c h   w o r d� ��� i    ��� I      ������� 0 delimited_text  � ��� o      ���� 0 
text_items  � ���� o      ���� 0 	delimiter  ��  ��  � k     O�� ��� r     ��� m     �� ���  � o      ���� 0 ret_val  � ��� Y    L�������� k    G�� ��� r    ��� n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 
text_items  � o      �� 0 the_word  � ��� r    ��� m    �� ���  � o      �~�~ 0 head  � ��� r    ��� o    �}�} 0 	delimiter  � o      �|�| 0 tail  � ��� Z     -���{�z� =     #��� o     !�y�y 0 i  � m   ! "�x�x � r   & )�	 � m   & '		 �		  	  o      �w�w 0 head  �{  �z  � 			 Z   . =		�v�u	 =   . 3			 o   . /�t�t 0 i  	 l  / 2		�s�r		 n   / 2	
		
 1   0 2�q
�q 
leng	 o   / 0�p�p 0 
text_items  �s  �r  	 r   6 9			 m   6 7		 �		  	 o      �o�o 0 tail  �v  �u  	 	�n	 r   > G			 b   > E			 b   > C			 b   > A			 o   > ?�m�m 0 ret_val  	 o   ? @�l�l 0 head  	 o   A B�k�k 0 the_word  	 o   C D�j�j 0 tail  	 o      �i�i 0 ret_val  �n  �� 0 i  � m    �h�h � l   	�g�f	 n    			 1   	 �e
�e 
leng	 o    	�d�d 0 
text_items  �g  �f  ��  � 	�c	 L   M O		 o   M N�b�b 0 ret_val  �c  � 			 l      �a	 	!�a  	  � �
 * TODO: doesnt this add a return at the last line? maybe use delimited_text() intead? 
 * // :TODO: try to find a better name
    	! �	"	" 
   *   T O D O :   d o e s n t   t h i s   a d d   a   r e t u r n   a t   t h e   l a s t   l i n e ?   m a y b e   u s e   d e l i m i t e d _ t e x t ( )   i n t e a d ?   
   *   / /   : T O D O :   t r y   t o   f i n d   a   b e t t e r   n a m e 
  	 	#	$	# i    	%	&	% I      �`	'�_�` 0 to_paragraphs  	' 	(�^	( o      �]�] 0 the_list  �^  �_  	& k     	)	) 	*	+	* r     	,	-	, J     	.	. 	/�\	/ o     �[
�[ 
ret �\  	- n     	0	1	0 1    �Z
�Z 
txdl	1 1    �Y
�Y 
ascr	+ 	2�X	2 L    	3	3 c    	4	5	4 o    	�W�W 0 the_list  	5 m   	 
�V
�V 
ctxt�X  	$ 	6	7	6 l      �U	8	9�U  	8 � �
 * cardinal is one two three etc
 * TODO: one could create a dynamic ordinal generator in the future, that would combine two words to generate twenthy+eigth etc
    	9 �	:	:F 
   *   c a r d i n a l   i s   o n e   t w o   t h r e e   e t c 
   *   T O D O :   o n e   c o u l d   c r e a t e   a   d y n a m i c   o r d i n a l   g e n e r a t o r   i n   t h e   f u t u r e ,   t h a t   w o u l d   c o m b i n e   t w o   w o r d s   t o   g e n e r a t e   t w e n t h y + e i g t h   e t c 
  	7 	;	<	; i    	=	>	= I      �T	?�S�T 0 ordinal  	? 	@�R	@ o      �Q�Q 0 
the_number  �R  �S  	> k     %	A	A 	B	C	B r     	D	E	D J     	F	F 	G	H	G m     	I	I �	J	J 
 f i r s t	H 	K	L	K m    	M	M �	N	N  s e c o n d	L 	O	P	O m    	Q	Q �	R	R 
 t h i r d	P 	S	T	S m    	U	U �	V	V  f o u r t h	T 	W	X	W m    	Y	Y �	Z	Z 
 f i f t h	X 	[	\	[ m    	]	] �	^	^ 
 s i x t h	\ 	_	`	_ m    	a	a �	b	b  s e v e n t h	` 	c	d	c m    	e	e �	f	f  e i g h t h	d 	g	h	g m    		i	i �	j	j 
 n i n t h	h 	k	l	k m   	 
	m	m �	n	n 
 t e n t h	l 	o	p	o m   
 	q	q �	r	r  e l e v e n t h	p 	s	t	s m    	u	u �	v	v  t w e l f t h	t 	w	x	w m    	y	y �	z	z  t h i r t e e n t h	x 	{	|	{ m    	}	} �	~	~  f o u r t e e n t h	| 		�	 m    	�	� �	�	�  s e v e n t e e n t h	� 	�	�	� m    	�	� �	�	�  e i g t h t e e n t h	� 	�	�	� m    	�	� �	�	�  n i n e t e e n t h	� 	��P	� m    	�	� �	�	�  t w e n t e e n t h�P  	E o      �O�O 0 ordinals  	C 	��N	� L    %	�	� n    $	�	�	� 4    #�M	�
�M 
cobj	� o   ! "�L�L 0 
the_number  	� o    �K�K 0 ordinals  �N  	< 	�	�	� l      �J	�	��J  	�TN
 * Returns encode text (escaped)
 * Note: this could also be done by creating a a method that does all the character trickery involved in unescaping/escaping text, but this method leverages the php language to do all this for us
 * Example: encode("<image location:files/img/image.jpg")--%3Cimage+location%3Afiles%2Fimg%2Fimage.jpg
    	� �	�	�� 
   *   R e t u r n s   e n c o d e   t e x t   ( e s c a p e d ) 
   *   N o t e :   t h i s   c o u l d   a l s o   b e   d o n e   b y   c r e a t i n g   a   a   m e t h o d   t h a t   d o e s   a l l   t h e   c h a r a c t e r   t r i c k e r y   i n v o l v e d   i n   u n e s c a p i n g / e s c a p i n g   t e x t ,   b u t   t h i s   m e t h o d   l e v e r a g e s   t h e   p h p   l a n g u a g e   t o   d o   a l l   t h i s   f o r   u s 
   *   E x a m p l e :   e n c o d e ( " < i m a g e   l o c a t i o n : f i l e s / i m g / i m a g e . j p g " ) - - % 3 C i m a g e + l o c a t i o n % 3 A f i l e s % 2 F i m g % 2 F i m a g e . j p g 
  	� 	�	�	� i     #	�	�	� I      �I	��H�I 
0 encode  	� 	��G	� o      �F�F 0 the_text  �G  �H  	� L     
	�	� I    	�E	��D
�E .sysoexecTEXT���     TEXT	� b     	�	�	� b     	�	�	� m     	�	� �	�	� 0 p h p   - r   ' e c h o   u r l e n c o d e ( "	� o    �C�C 0 the_text  	� m    	�	� �	�	�  " ) ; '�D  	� 	�	�	� l      �B	�	��B  	�TN
 * Returns dencode text (unescaped)
 * Note this could also be done by creating a a method that does all the character trickery involved in unescaping/escaping text, but this method leverages the php language to do all this for us
 * Example: decode(%3Cimage+location%3Afiles%2Fimg%2Fimage.jpg)--<image location:files/img/image.jpg
    	� �	�	�� 
   *   R e t u r n s   d e n c o d e   t e x t   ( u n e s c a p e d ) 
   *   N o t e   t h i s   c o u l d   a l s o   b e   d o n e   b y   c r e a t i n g   a   a   m e t h o d   t h a t   d o e s   a l l   t h e   c h a r a c t e r   t r i c k e r y   i n v o l v e d   i n   u n e s c a p i n g / e s c a p i n g   t e x t ,   b u t   t h i s   m e t h o d   l e v e r a g e s   t h e   p h p   l a n g u a g e   t o   d o   a l l   t h i s   f o r   u s 
   *   E x a m p l e :   d e c o d e ( % 3 C i m a g e + l o c a t i o n % 3 A f i l e s % 2 F i m g % 2 F i m a g e . j p g ) - - < i m a g e   l o c a t i o n : f i l e s / i m g / i m a g e . j p g 
  	� 	�	�	� i   $ '	�	�	� I      �A	��@�A 
0 decode  	� 	��?	� o      �>�> 0 the_text  �?  �@  	� L     
	�	� I    	�=	��<
�= .sysoexecTEXT���     TEXT	� b     	�	�	� b     	�	�	� m     	�	� �	�	� 0 p h p   - r   ' e c h o   u r l d e c o d e ( "	� o    �;�; 0 the_text  	� m    	�	� �	�	�  " ) ; '�<  	� 	�	�	� l      �:	�	��:  	� C =
 * Returns a text in quoted form
 * Todo: write an example
    	� �	�	� z 
   *   R e t u r n s   a   t e x t   i n   q u o t e d   f o r m 
   *   T o d o :   w r i t e   a n   e x a m p l e 
  	� 	�	�	� i   ( +	�	�	� I      �9	��8�9 0 quoted_form  	� 	��7	� o      �6�6 0 the_text  �7  �8  	� L     	�	� n     	�	�	� 1    �5
�5 
strq	� o     �4�4 0 the_text  	� 	�	�	� l      �3	�	��3  	� i c
 * substring
 * the start: 1
 * the end: ((length of second_part) - 2)
 * Todo: write an example
    	� �	�	� � 
   *   s u b s t r i n g 
   *   t h e   s t a r t :   1 
   *   t h e   e n d :   ( ( l e n g t h   o f   s e c o n d _ p a r t )   -   2 ) 
   *   T o d o :   w r i t e   a n   e x a m p l e 
  	� 	�	�	� i   , /	�	�	� I      �2	��1�2 0 
sub_string  	� 	�	�	� o      �0�0 0 	the_start  	� 	�	�	� o      �/�/ 0 the_end  	� 	��.	� o      �-�- 0 the_text  �.  �1  	� L     	�	� n     	�	�	� 7   �,	�	�
�, 
ctxt	� o    �+�+ 0 	the_start  	� o    
�*�* 0 the_end  	� o     �)�) 0 the_text  	� 	�	�	� l     �(�'�&�(  �'  �&  	� 	�	�	� l     �%	�	��%  	� 7 1 Counts how many times a string appears in a text   	� �	�	� b   C o u n t s   h o w   m a n y   t i m e s   a   s t r i n g   a p p e a r s   i n   a   t e x t	� 	�	�	� l     �$	�	��$  	� F @ Note: Its splits the text by the substring and counts the items   	� �	�	� �   N o t e :   I t s   s p l i t s   t h e   t e x t   b y   t h e   s u b s t r i n g   a n d   c o u n t s   t h e   i t e m s	� 	�	�	� l     �#�"�!�#  �"  �!  	� 	�	�	� i   0 3	�	�	� I      � 	���  0 occurrences  	� 	�	�	� o      �� 0 the_text  	� 	��	� o      �� 	0 match  �  �  	� k     	�	� 	�	�	� r     	�	�	� o     �� 	0 match  	� n     	�	�	� 1    �
� 
txdl	� 1    �
� 
ascr	� 	�	�	� r    	�	�	� \    
 

  l   
��
 I   �
�
� .corecnte****       ****
 n    	


 2    	�
� 
citm
 o    �� 0 the_text  �  �  �  
 m    �� 	� o      �� 0 counter  	� 


 r    

	
 m    



 �

  
	 n     


 1    �
� 
txdl
 1    �
� 
ascr
 
�
 L    

 o    �� 0 counter  �  	� 
�
 l     ��
�	�  �
  �	  �  M �
 
�  
 k      

 


 h     �L� 0 s  
 
�
 l    
��
 L     

 o     �� 0 s  �  �  �  
 �
�
�  
 �� � 0 s  
�  .aevtoappnull  �   � ****
 ��
����

��
�� .aevtoappnull  �   � ****
 k     

 
����  ��  ��  
  
  �� b   N 


 
!
"
#
$
%
&
'
(
)
*
+
,
 ���������������������������� 0 
every_word  �� 0 every_paragraph  �� 	0 split  �� 0 text_length  �� 0 comma_delimited_text  �� 0 delimited_text  �� 0 to_paragraphs  �� 0 ordinal  �� 
0 encode  �� 
0 decode  �� 0 quoted_form  �� 0 
sub_string  �� 0 occurrences  
  ��X����
-
.���� 0 
every_word  �� ��
/�� 
/  ���� 0 the_text  ��  
- ���� 0 the_text  
. ��
�� 
cwor�� ��-E
! ��f����
0
1���� 0 every_paragraph  �� ��
2�� 
2  ���� 0 the_text  ��  
0 ���������� 0 the_text  �� 0 paragraph_list  �� 0 	para_list  �� 0 	next_line  
1 ����������
�� 
cpar
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
leng�� 4jvE�O��-E�O $�[��l kh ��,j 	��6GY h[OY��O�
" �������
3
4���� 	0 split  �� ��
5�� 
5  ������ 0 the_text  �� 0 	delimiter  ��  
3 �������� 0 the_text  �� 0 	delimiter  �� 0 ret_val  
4 �����
�� 
txdl
�� 
citm�� �*�,FO��-E�O�*�,FO�
# �������
6
7���� 0 text_length  �� ��
8�� 
8  ���� 0 the_text  ��  
6 ���� 0 the_text  
7 ��
�� 
leng�� ��,E
$ �������
9
:���� 0 comma_delimited_text  �� ��
;�� 
;  ���� 0 
text_items  ��  
9 ���� 0 
text_items  
: �����
�� 
spac�� 0 delimited_text  �� 
*���%l+ 
% �������
<
=���� 0 delimited_text  �� ��
>�� 
>  ������ 0 
text_items  �� 0 	delimiter  ��  
< ���������������� 0 
text_items  �� 0 	delimiter  �� 0 ret_val  �� 0 i  �� 0 the_word  �� 0 head  �� 0 tail  
= ������		
�� 
leng
�� 
cobj�� P�E�O Gk��,Ekh ��/E�O�E�O�E�O�k  �E�Y hO���,  �E�Y hO��%�%�%E�[OY��O�
& ��	&����
?
@���� 0 to_paragraphs  �� ��
A�� 
A  ���� 0 the_list  ��  
? ���� 0 the_list  
@ ��������
�� 
ret 
�� 
ascr
�� 
txdl
�� 
ctxt�� �kv��,FO��&
' ��	>����
B
C���� 0 ordinal  �� ��
D�� 
D  ���� 0 
the_number  ��  
B ������ 0 
the_number  �� 0 ordinals  
C 	I	M	Q	U	Y	]	a	e	i	m	q	u	y	}	�	�	�	������� 
�� 
cobj�� &����������������a a a vE�O�a �/E
( ��	�����
E
F���� 
0 encode  �� ��
G�� 
G  ���� 0 the_text  ��  
E ���� 0 the_text  
F 	�	���
�� .sysoexecTEXT���     TEXT�� �%�%j 
) ��	�����
H
I���� 
0 decode  �� ��
J�� 
J  ���� 0 the_text  ��  
H ���� 0 the_text  
I 	�	���
�� .sysoexecTEXT���     TEXT�� �%�%j 
* ��	�����
K
L���� 0 quoted_form  �� ��
M�� 
M  �� 0 the_text  ��  
K �~�~ 0 the_text  
L �}
�} 
strq�� ��,E
+ �|	��{�z
N
O�y�| 0 
sub_string  �{ �x
P�x 
P  �w�v�u�w 0 	the_start  �v 0 the_end  �u 0 the_text  �z  
N �t�s�r�t 0 	the_start  �s 0 the_end  �r 0 the_text  
O �q
�q 
ctxt�y �[�\[Z�\Z�2E
, �p	��o�n
Q
R�m�p 0 occurrences  �o �l
S�l 
S  �k�j�k 0 the_text  �j 	0 match  �n  
Q �i�h�g�i 0 the_text  �h 	0 match  �g 0 counter  
R �f�e�d�c


�f 
ascr
�e 
txdl
�d 
citm
�c .corecnte****       ****�m ���,FO��-j kE�O���,FO�� �b-�a�`
T
U�_�b 0 read_url read_URL�a �^
V�^ 
V  �]�] 0 file_url file_URL�`  
T �\�\ 0 file_url file_URL
U �[�Z
�[ 
psxf
�Z .rdwrread****        ****�_ 
*�/j � �YA�X�W
W
X�V�Y 0 
posix_path  �X �U
Y�U 
Y  �T�T 0 the_path  �W  
W �S�S 0 the_path  
X �R
�R 
psxp�V ��,E� �QO�P�O
Z
[�N�Q 0 file_url file_URL�P �M
\�M 
\  �L�L 0 	file_path  �O  
Z �K�J�K 0 	file_path  �J 0 the_url the_URL
[ l�Ih�H
�I 
url 
�H .ascrcmnt****      � ****�N � ��,E�O�%j O�U� �Gu�F�E
]
^�D�G 0 	file_path  �F �C
_�C 
_  �B�B 0 fileurl fileURL�E  
] �A�@�A 0 fileurl fileURL�@ 0 
posix_file  
^ �?�>
�? 
psxf
�> 
alis�D *�/E�O��&� �=��<�;
`
a�:�= 0 hfs_path  �< �9
b�9 
b  �8�8 0 	file_path  �;  
` �7�7 0 	file_path  
a �6
�6 
TEXT�: ��&� �5��4�3
c
d�2�5 0 file_name_by_url  �4 �1
e�1 
e  �0�0 0 file_url file_URL�3  
c �/�/ 0 file_url file_URL
d �.�-�. 0 	file_path  �- 0 	file_name  �2 **�k+  k+ � �,��+�*
f
g�)�, &0 implicit_file_url implicit_file_URL�+ �(
h�( 
h  �'�' 0 hfs_path  �*  
f �&�& 0 hfs_path  
g �%�
�% 
psxp�) ��,Ec  O�b  %Ec  Ob  � �$��#�"
i
j�!�$ 0 parent_folder  �# � 
k�  
k  �� 0 	file_path  �"  
i �� 0 	file_path  
j ��
� 
ctnr�! � ��,EU� ����
l
m�� 0 	file_kind  � �
n� 
n  �� 0 	file_path  �  
l �� 0 	file_path  
m ��
� 
kind� � ��,EU� ����
o
p�� $0 file_kind_by_url file_kind_by_URL� �
q� 
q  �� 0 file_url file_URL�  
o �� 0 file_url file_URL
p ��� 0 	file_path  � 0 	file_kind  � **�k+  k+ � ���
�	
r
s�� 0 file_properties  �
 �
t� 
t  �� 0 	file_path  �	  
r �� 0 	file_path  
s �
� 
pALL� � ��,EU� ���
u
v� � 0 	file_info  � ��
w�� 
w  ���� 0 the_file  �  
u ���� 0 the_file  
v ��
�� .sysonfo4asfe        file�  �j  � ������
x
y���� 0 file_extension  �� ��
z�� 
z  ���� 0 the_file  ��  
x ���� 0 the_file  
y ����
�� .sysonfo4asfe        file
�� 
nmxt�� 
�j  �,E� ��'����
{
|���� 0 folder_names  �� ��
}�� 
}  ���� 0 
the_folder  ��  
{ ���� 0 
the_folder  
| 3����
�� 
cfol
�� 
pnam�� � *�/�-�,EU� ��<����
~
���� 0 
file_names  �� ��
��� 
�  ���� 0 
the_folder  ��  
~ ���� 0 
the_folder  
 H������
�� 
cfol
�� 
file
�� 
pnam�� � *�/�-�,EU� ��Q����
�
����� 0 	file_name  �� ��
��� 
�  ���� 0 the_file_path  ��  
� ���� 0 the_file_path  
� Y��
�� 
pnam�� � ��,EU� ��b����
�
����� 0 file_names_sans_ext  �� ��
��� 
�  ���� 0 
the_folder  ��  
� ���������� 0 
the_folder  �� 0 
temp_names  �� 	0 names  �� 0 	temp_name  
� ������������ 0 
file_names  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 	0 split  �� 8*�k+  E�OjvE�O %�[��l kh b  ��l+ �k/�6F[OY��O�T ��
�
�
��� 0 s  
� k      
�
� 
�
�
� l      ��
�
���  
��� 
 * Writes data to target_file (appends if append_data is true)
 * Note: if the target_file doesnt exisist it is created
 * @param target_file: needs to be in this url format: "Macintosh HD:Users:John:Desktop:del.txt" (aka the HFS format)
 * Todo: create a method for creating files, google it, you may also us she'll and touch and terminal and mkdir
 * Note: the eof value seems to be a special kind of value, it some how gets the length of the file without being set
    
� �
�
��   
   *   W r i t e s   d a t a   t o   t a r g e t _ f i l e   ( a p p e n d s   i f   a p p e n d _ d a t a   i s   t r u e ) 
   *   N o t e :   i f   t h e   t a r g e t _ f i l e   d o e s n t   e x i s i s t   i t   i s   c r e a t e d 
   *   @ p a r a m   t a r g e t _ f i l e :   n e e d s   t o   b e   i n   t h i s   u r l   f o r m a t :   " M a c i n t o s h   H D : U s e r s : J o h n : D e s k t o p : d e l . t x t "   ( a k a   t h e   H F S   f o r m a t ) 
   *   T o d o :   c r e a t e   a   m e t h o d   f o r   c r e a t i n g   f i l e s ,   g o o g l e   i t ,   y o u   m a y   a l s o   u s   s h e ' l l   a n d   t o u c h   a n d   t e r m i n a l   a n d   m k d i r 
   *   N o t e :   t h e   e o f   v a l u e   s e e m s   t o   b e   a   s p e c i a l   k i n d   o f   v a l u e ,   i t   s o m e   h o w   g e t s   t h e   l e n g t h   o f   t h e   f i l e   w i t h o u t   b e i n g   s e t 
  
� 
�
�
� i     
�
�
� I      ��
����� 0 
write_data  
� 
�
�
� o      ���� 0 the_data  
� 
�
�
� o      ���� 0 target_file  
� 
���
� o      ���� 0 append_data  ��  ��  
� l    Y
�
�
�
� k     Y
�
� 
�
�
� l     ��
�
���  
�  log "writeData"   
� �
�
�  l o g   " w r i t e D a t a "
� 
���
� Q     Y
�
�
�
� k    :
�
� 
�
�
� r    
�
�
� c    
�
�
� l   
�����
� o    ���� 0 target_file  ��  ��  
� m    ��
�� 
ctxt
� l     
�����
� o      ���� 0 target_file  ��  ��  
� 
�
�
� l  	 	��
�
���  
� ' !log "target_file: " & target_file   
� �
�
� B l o g   " t a r g e t _ f i l e :   "   &   t a r g e t _ f i l e
� 
�
�
� r   	 
�
�
� I  	 ��
�
�
�� .rdwropenshor       file
� 4   	 ��
�
�� 
file
� o    ���� 0 target_file  
� ��
���
�� 
perm
� m    ��
�� boovtrue��  
� l     
�����
� o      ���� 0 open_target_file  ��  ��  
� 
�
�
� l   ��
�
���  
� 1 +log "open_target_file: " & open_target_file   
� �
�
� V l o g   " o p e n _ t a r g e t _ f i l e :   "   &   o p e n _ t a r g e t _ f i l e
� 
�
�
� Z    '
�
�����
� l   
�����
� =   
�
�
� o    ���� 0 append_data  
� m    ��
�� boovfals��  ��  
� l   #
�
�
�
� I   #��
�
�
�� .rdwrseofnull���     ****
� l   
�����
� o    ���� 0 open_target_file  ��  ��  
� ��
���
�� 
set2
� m    ����  ��  
� * $write from the beginning of the file   
� �
�
� H w r i t e   f r o m   t h e   b e g i n n i n g   o f   t h e   f i l e��  ��  
� 
�
�
� I  ( 1��
�
�
�� .rdwrwritnull���     ****
� o   ( )���� 0 the_data  
� ��
�
�
�� 
refn
� l  * +
�����
� o   * +���� 0 open_target_file  ��  ��  
� ��
���
�� 
wrat
� m   , -��
�� rdwreof ��  
� 
�
�
� I  2 7��
���
�� .rdwrclosnull���     ****
� l  2 3
�����
� o   2 3���� 0 open_target_file  ��  ��  ��  
� 
���
� L   8 :
�
� m   8 9��
�� boovtrue��  
� R      ������
�� .ascrerr ****      � ****��  ��  
� k   B Y
�
� 
�
�
� Q   B V
�
���
� I  E M��
���
�� .rdwrclosnull���     ****
� 4   E I��
�
�� 
file
� o   G H���� 0 target_file  ��  
� R      ������
�� .ascrerr ****      � ****��  ��  ��  
� 
���
� L   W Y
�
� m   W X��
�� boovfals��  ��  
� - ' (string, file path as string, boolean)   
� �
�
� N   ( s t r i n g ,   f i l e   p a t h   a s   s t r i n g ,   b o o l e a n )
� 
�
�
� l      ��
�
���  
� - '
 * Deletes the file at the file_path
    
� �
�
� N 
   *   D e l e t e s   t h e   f i l e   a t   t h e   f i l e _ p a t h 
  
� 
�
�
� i    
�
�
� I      ��
����� 0 delete_file  
� 
��
� o      �~�~ 0 	file_path  �  ��  
� O     
�
�
� I   �}
��|
�} .coredeloobj        obj 
� 4    �{
�
�{ 
file
� o    �z�z 0 	file_path  �|  
� m     
�
��                                                                                  MACS  alis    t  Macintosh HD               Ё��H+    
Finder.app                                                      X��B��        ����  	                CoreServices    Ё{�      �B�         �   �  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  
� 
�
�
� l     �y�x�w�y  �x  �w  
� 
��v
� l     �u�t�s�u  �t  �s  �v  
� �r
� 
��r  
� k      
�
�    h     �q
��q 0 s   �p l    �o�n L      o     �m�m 0 s  �o  �n  �p  
� �lT�l   �k�j�k 0 s  
�j .aevtoappnull  �   � **** �i�h�g	�f
�i .aevtoappnull  �   � **** k     

 �e�e  �h  �g    	  �f b   
� 
� �d�c�d 0 
write_data  �c 0 delete_file   �b
��a�`�_�b 0 
write_data  �a �^�^   �]�\�[�] 0 the_data  �\ 0 target_file  �[ 0 append_data  �`   �Z�Y�X�W�Z 0 the_data  �Y 0 target_file  �X 0 append_data  �W 0 open_target_file   �V�U�T�S�R�Q�P�O�N�M�L�K�J�I
�V 
ctxt
�U 
file
�T 
perm
�S .rdwropenshor       file
�R 
set2
�Q .rdwrseofnull���     ****
�P 
refn
�O 
wrat
�N rdwreof �M 
�L .rdwrwritnull���     ****
�K .rdwrclosnull���     ****�J  �I  �_ Z <��&E�O*�/�el E�O�f  ��jl Y hO����� 
O�j OeW X   *�/j W X  hOf �H
��G�F�E�H 0 delete_file  �G �D�D   �C�C 0 	file_path  �F   �B�B 0 	file_path   
��A�@
�A 
file
�@ .coredeloobj        obj �E � 
*�/j UU �?�? 0 s   k        l      j     �>�> 0 scriptloader ScriptLoader I    �=�<
�= .sysoloadscpt        file 4     �;
�; 
alis l    �:�9  b    !"! l   #�8�7# I   �6$%
�6 .earsffdralis        afdr$ m    �5
�5 afdrscr�% �4&'
�4 
from& m    �3
�3 fldmfldu' �2(�1
�2 
rtyp( m    �0
�0 
ctxt�1  �8  �7  " m    )) �** , f i l e : S c r i p t L o a d e r . s c p t�:  �9  �<   1 +prerequisite for loading .applescript files    �++ V p r e r e q u i s i t e   f o r   l o a d i n g   . a p p l e s c r i p t   f i l e s ,-, j    *�/.�/ 0 
listparser 
ListParser. n   )/0/ n   )121 I    )�.3�-�. 0 load_script  3 4�,4 4    %�+5
�+ 
alis5 l   $6�*�)6 b    $787 l   "9�(�'9 I   "�&:;
�& .earsffdralis        afdr: m    �%
�% afdrscr�; �$<=
�$ 
from< m    �#
�# fldmfldu= �">�!
�" 
rtyp> m    � 
�  
ctxt�!  �(  �'  8 m   " #?? �@@ 6 l i s t : L i s t P a r s e r . a p p l e s c r i p t�*  �)  �,  �-  2 o    �� 0 scriptloader ScriptLoader0  f    - ABA l      �CD�  C B <
 * Removes a range of items fromIndex toIndex in theArray
    D �EE x 
   *   R e m o v e s   a   r a n g e   o f   i t e m s   f r o m I n d e x   t o I n d e x   i n   t h e A r r a y 
  B FGF i   + .HIH I      �J�� 0 remove_range  J KLK o      �� 0 the_list  L MNM o      �� 0 
from_index  N O�O o      �� 0 to_index  �  �  I k     "PP QRQ r     STS l    U��U n     VWV 7   �XY
� 
cobjX m    �� Y l   
Z��Z o    
�� 0 
from_index  �  �  W o     �� 0 the_list  �  �  T o      �� 0 
first_part  R [\[ r    ]^] l   _��_ n    `a` 7   �bc
� 
cobjb o    �� 0 to_index  c l   d�
�	d n    efe 1    �
� 
lengf o    �� 0 the_list  �
  �	  a o    �� 0 the_list  �  �  ^ o      �� 0 second_part  \ g�g L    "hh b    !iji o    �� 0 
first_part  j o     �� 0 second_part  �  G klk l      �mn�  m 
 * Removes an item from the Array at the_index
 * Note: does not modifies the original array
 * TODO: could we redesign this method to actually remove the item on the array, or maybe applescript cant do this? you can replace directly, but maybe not delete directly?
    n �oo   
   *   R e m o v e s   a n   i t e m   f r o m   t h e   A r r a y   a t   t h e _ i n d e x 
   *   N o t e :   d o e s   n o t   m o d i f i e s   t h e   o r i g i n a l   a r r a y 
   *   T O D O :   c o u l d   w e   r e d e s i g n   t h i s   m e t h o d   t o   a c t u a l l y   r e m o v e   t h e   i t e m   o n   t h e   a r r a y ,   o r   m a y b e   a p p l e s c r i p t   c a n t   d o   t h i s ?   y o u   c a n   r e p l a c e   d i r e c t l y ,   b u t   m a y b e   n o t   d e l e t e   d i r e c t l y ? 
  l pqp i   / 2rsr I      � t���  0 	remove_at  t uvu o      ���� 0 the_list  v w��w o      ���� 0 	the_index  ��  ��  s k     Fxx yzy Z     C{|}~{ =     � o     ���� 0 	the_index  � m    ���� | r    ��� n    	��� 1    	��
�� 
rest� o    ���� 0 the_list  � o      ���� 0 new_list  } ��� =    ��� o    ���� 0 	the_index  � n    ��� 1    ��
�� 
leng� o    ���� 0 the_list  � ���� r    #��� l   !������ n    !��� 7   !����
�� 
cobj� m    ���� � m     ������� o    ���� 0 the_list  ��  ��  � o      ���� 0 new_list  ��  ~ r   & C��� b   & A��� l  & 3������ n   & 3��� 7  ' 3����
�� 
cobj� m   + -���� � l  . 2������ \   . 2��� o   / 0���� 0 	the_index  � m   0 1���� ��  ��  � o   & '���� 0 the_list  ��  ��  � l  3 @������ n   3 @��� 7  4 @����
�� 
cobj� l  8 <������ [   8 <��� o   9 :���� 0 	the_index  � m   : ;���� ��  ��  � m   = ?������� o   3 4���� 0 the_list  ��  ��  � o      ���� 0 new_list  z ���� L   D F�� o   D E���� 0 new_list  ��  q ��� l      ������  � E ?
 * Note: this the equvilent of pushing an item into an array
    � ��� ~ 
   *   N o t e :   t h i s   t h e   e q u v i l e n t   o f   p u s h i n g   a n   i t e m   i n t o   a n   a r r a y 
  � ��� i   3 6��� I      ������� 0 add_item  � ��� o      ���� 0 the_list  � ���� o      ���� 0 the_item  ��  ��  � k     �� ��� r     ��� b     ��� o     ���� 0 the_list  � o    ���� 0 the_item  � o      ���� 0 the_list  � ���� L    �� o    ���� 0 the_list  ��  � ��� l      ������  ���
 * Adds a list inside another list, the list is now two dimensional
 * Note: You can also use this to add record's to a list like: {{name:John, title:"Manager", color:"Blue"},{1,2,3}}
 * Example: add_list({1,2,3},{"a","b","c"})--{1,2,3,{"a","b","c"}}
 * Note: if you log the list it will show up as: {1,2,3,"a","b","c"}
 * Note: the length of the returned list in the example above is now 4
 * Note: if you amned the second list directly the length will be 6
    � ���� 
   *   A d d s   a   l i s t   i n s i d e   a n o t h e r   l i s t ,   t h e   l i s t   i s   n o w   t w o   d i m e n s i o n a l 
   *   N o t e :   Y o u   c a n   a l s o   u s e   t h i s   t o   a d d   r e c o r d ' s   t o   a   l i s t   l i k e :   { { n a m e : J o h n ,   t i t l e : " M a n a g e r " ,   c o l o r : " B l u e " } , { 1 , 2 , 3 } } 
   *   E x a m p l e :   a d d _ l i s t ( { 1 , 2 , 3 } , { " a " , " b " , " c " } ) - - { 1 , 2 , 3 , { " a " , " b " , " c " } } 
   *   N o t e :   i f   y o u   l o g   t h e   l i s t   i t   w i l l   s h o w   u p   a s :   { 1 , 2 , 3 , " a " , " b " , " c " } 
   *   N o t e :   t h e   l e n g t h   o f   t h e   r e t u r n e d   l i s t   i n   t h e   e x a m p l e   a b o v e   i s   n o w   4 
   *   N o t e :   i f   y o u   a m n e d   t h e   s e c o n d   l i s t   d i r e c t l y   t h e   l e n g t h   w i l l   b e   6 
  � ��� i   7 :��� I      ������� 0 add_list  � ��� o      ���� 0 a  � ���� o      ���� 0 b  ��  ��  � k     �� ��� l    ���� r     ��� b     ��� o     ���� 0 a  � m    ��
�� 
null� o      ���� 0 a  � _ Yappend null to the end of the list so that there is something to replace in the next step   � ��� � a p p e n d   n u l l   t o   t h e   e n d   o f   t h e   l i s t   s o   t h a t   t h e r e   i s   s o m e t h i n g   t o   r e p l a c e   i n   t h e   n e x t   s t e p� ��� r    ��� o    ���� 0 b  � n     ��� 4   ���
�� 
cobj� m   	 
������� o    ���� 0 a  � ���� L    �� o    ���� 0 a  ��  � ��� l      ������  � T N
 * Note: if the index is 2 it adds the item just infront of the second item
    � ��� � 
   *   N o t e :   i f   t h e   i n d e x   i s   2   i t   a d d s   t h e   i t e m   j u s t   i n f r o n t   o f   t h e   s e c o n d   i t e m 
  � ��� i   ; >��� I      ������� 
0 add_at  � ��� o      ���� 0 the_list  � ��� o      ���� 0 the_item  � ���� o      ���� 0 	the_index  ��  ��  � k     >�� ��� Z     ;����� =     ��� o     ���� 0 	the_index  � m    ���� � r    
��� o    ���� 0 the_item  � n      ���  :    	� o    ���� 0 the_list  � ��� =    ��� o    ���� 0 v  � [       l   ���� n     1    ��
�� 
leng o    ���� 0 the_list  ��  ��   m    ���� � �� r     o    ���� 0 the_item   n      	  ;    	 o    ���� 0 the_list  ��  � r    ;

 b    9 b    - l   +���� n    + 7   +��
�� 
cobj m   # %����  l  & *���� \   & * o   ' (���� 0 	the_index   m   ( )���� ��  ��   o    ���� 0 the_list  ��  ��   o   + ,���� 0 the_item   l  - 8���� n   - 8 7  . 8��
�� 
cobj l  2 4���� o   2 4���� 0 	the_index  ��  ��   m   5 7������ o   - .���� 0 the_list  ��  ��   o      ���� 0 the_list  � �� L   < > o   < =���� 0 the_list  ��  �  !  l      ��"#��  " � �
 * Example: log ArrayModifier's replace({"A", "B", "C", "D", "E"}, "C", "X") --(*A, B, X, D, E*)
 * Note: modifies the original array
 * TODO: add support for not setting the item if there is no match
    # �$$� 
   *   E x a m p l e :   l o g   A r r a y M o d i f i e r ' s   r e p l a c e ( { " A " ,   " B " ,   " C " ,   " D " ,   " E " } ,   " C " ,   " X " )   - - ( * A ,   B ,   X ,   D ,   E * ) 
   *   N o t e :   m o d i f i e s   t h e   o r i g i n a l   a r r a y 
   *   T O D O :   a d d   s u p p o r t   f o r   n o t   s e t t i n g   t h e   i t e m   i f   t h e r e   i s   n o   m a t c h 
  ! %&% i   ? B'(' I      ��)���� 0 replace  ) *+* o      ���� 0 the_list  + ,-, o      ���� 0 to_match  - .��. o      ���� 0 
replacment  ��  ��  ( k     // 010 r     232 n    454 I    ��6���� 0 index_of  6 787 o    ���� 0 the_list  8 9��9 o    ���� 0 to_match  ��  ��  5 o     ���� 0 
listparser 
ListParser3 o      ���� 0 match_index  1 :;: r    <=< o    ���� 0 
replacment  = n      >?> 4    ��@
�� 
cobj@ o    ���� 0 match_index  ? o    ���� 0 the_list  ; A��A L    BB o    ���� 0 the_list  ��  & CDC l      �EF�  E l f
 * TODO: make it work even if the length of the array the_replacements is longer than thhe_matches 
    F �GG � 
   *   T O D O :   m a k e   i t   w o r k   e v e n   i f   t h e   l e n g t h   o f   t h e   a r r a y   t h e _ r e p l a c e m e n t s   i s   l o n g e r   t h a n   t h h e _ m a t c h e s   
  D HIH i   C FJKJ I      �~L�}�~ 0 replace_many  L MNM o      �|�| 0 the_list  N OPO o      �{�{ 0 the_matches  P Q�zQ o      �y�y 0 the_replacments  �z  �}  K k     %RR STS Y     "U�xVW�wU r    XYX I    �vZ�u�v 0 replace  Z [\[ o    �t�t 0 the_list  \ ]^] l   _�s�r_ n    `a` 4    �qb
�q 
cobjb o    �p�p 0 i  a o    �o�o 0 the_matches  �s  �r  ^ c�nc l   d�m�ld n    efe 4    �kg
�k 
cobjg o    �j�j 0 i  f o    �i�i 0 the_replacments  �m  �l  �n  �u  Y o      �h�h 0 the_list  �x 0 i  V m    �g�g W l   h�f�eh n    iji 1    �d
�d 
lengj o    �c�c 0 the_matches  �f  �e  �w  T k�bk L   # %ll o   # $�a�a 0 the_list  �b  I mnm l      �`op�`  o 3 -
 * swaps an item a in the list with item b
    p �qq Z 
   *   s w a p s   a n   i t e m   a   i n   t h e   l i s t   w i t h   i t e m   b 
  n rsr i   G Jtut I      �_v�^�_ 0 swap  v wxw o      �]�] 0 the_list  x yzy o      �\�\ 0 a  z {�[{ o      �Z�Z 0 b  �[  �^  u k     ;|| }~} r     � n    ��� I    �Y��X�Y 0 index_of  � ��� o    �W�W 0 the_list  � ��V� o    �U�U 0 a  �V  �X  � o     �T�T 0 
listparser 
ListParser� o      �S�S 0 a_index  ~ ��� r    ��� n   ��� I    �R��Q�R 0 index_of  � ��� o    �P�P 0 the_list  � ��O� o    �N�N 0 b  �O  �Q  � o    �M�M 0 
listparser 
ListParser� o      �L�L 0 b_index  � ��K� Z    ;���J�I� F    '��� >   ��� o    �H�H 0 a_index  � m    �G
�G 
null� >  " %��� o   " #�F�F 0 b_index  � m   # $�E
�E 
null� k   * 7�� ��� r   * 0��� o   * +�D�D 0 a  � n      ��� 4   , /�C�
�C 
cobj� o   - .�B�B 0 b_index  � o   + ,�A�A 0 the_list  � ��@� r   1 7��� o   1 2�?�? 0 b  � n      ��� 4   3 6�>�
�> 
cobj� o   4 5�=�= 0 a_index  � o   2 3�<�< 0 the_list  �@  �J  �I  �K  s ��� l      �;���;  � V P
 * Removes an item from an array
 * Note does not modifies the original array
    � ��� � 
   *   R e m o v e s   a n   i t e m   f r o m   a n   a r r a y 
   *   N o t e   d o e s   n o t   m o d i f i e s   t h e   o r i g i n a l   a r r a y 
  � ��� i   K N��� I      �:��9�: 
0 remove  � ��� o      �8�8 0 the_list  � ��7� o      �6�6 0 the_item  �7  �9  � k     �� ��� r     ��� n    ��� I    �5��4�5 0 index_of  � ��� o    �3�3 0 the_list  � ��2� o    �1�1 0 the_item  �2  �4  � o     �0�0 0 
listparser 
ListParser� o      �/�/ 0 match_index  � ��.� L    �� I    �-��,�- 0 	remove_at  � ��� o    �+�+ 0 the_list  � ��*� o    �)�) 0 match_index  �*  �,  �.  � ��� l      �(���(  � � �
 * Removes the_items from the_array
 * Example: log ArrayModifier's removeMany({"a", "b", "c", "d", "e"}, {"b", "d"})--(*a, c, e*)
    � ���
 
   *   R e m o v e s   t h e _ i t e m s   f r o m   t h e _ a r r a y 
   *   E x a m p l e :   l o g   A r r a y M o d i f i e r ' s   r e m o v e M a n y ( { " a " ,   " b " ,   " c " ,   " d " ,   " e " } ,   { " b " ,   " d " } ) - - ( * a ,   c ,   e * ) 
  � ��� i   O R��� I      �'��&�' 0 remove_many  � ��� o      �%�% 0 	the_array 	the_Array� ��$� o      �#�# 0 	the_items  �$  �&  � k     !�� ��� Y     ��"���!� r    ��� I    � ���  
0 remove  � ��� o    �� 0 	the_array 	the_Array� ��� l   ���� n    ��� 4    ��
� 
cobj� o    �� 0 i  � o    �� 0 	the_items  �  �  �  �  � o      �� 0 	the_array 	the_Array�" 0 i  � m    �� � l   ���� n    ��� 1    �
� 
leng� o    �� 0 	the_items  �  �  �!  � ��� L    !�� o     �� 0 	the_array 	the_Array�  � ��� l      ����  �f`
 * Returns a list that consits of list a and list b
 * Todo: what happens to the two list after the combination has talen place?
 * Todo: is there an extra seperator at the end? Or is this taken care of?
 * Note: the seperator can be a comma or any other sign
 * Note: i think you can just do: set list_c to list_a & list_b to achive the same result
    � ���� 
   *   R e t u r n s   a   l i s t   t h a t   c o n s i t s   o f   l i s t   a   a n d   l i s t   b 
   *   T o d o :   w h a t   h a p p e n s   t o   t h e   t w o   l i s t   a f t e r   t h e   c o m b i n a t i o n   h a s   t a l e n   p l a c e ? 
   *   T o d o :   i s   t h e r e   a n   e x t r a   s e p e r a t o r   a t   t h e   e n d ?   O r   i s   t h i s   t a k e n   c a r e   o f ? 
   *   N o t e :   t h e   s e p e r a t o r   c a n   b e   a   c o m m a   o r   a n y   o t h e r   s i g n 
   *   N o t e :   i   t h i n k   y o u   c a n   j u s t   d o :   s e t   l i s t _ c   t o   l i s t _ a   &   l i s t _ b   t o   a c h i v e   t h e   s a m e   r e s u l t 
  � ��� i   S V��� I      ���� 0 combine  � ��� o      �� 
0 list_a  � ��� o      �� 
0 list_b  � ��
� o      �	�	 0 	seperator  �
  �  � k     -�� ��� l    ���� r     ��� J     ��  � o      �� 0 ret_val  �   establish the return value   � ��� 4 e s t a b l i s h   t h e   r e t u r n   v a l u e�    Y    *�� k    %  l   	
 r     b     b     l   �� n     4    �
� 
cobj o    �� 0 i   o    � �  
0 list_a  �  �   o    ���� 0 	seperator   l   ���� n     4    ��
�� 
cobj o    ���� 0 i   o    ���� 
0 list_b  ��  ��   o      ���� 0 the_item  	  create the text item   
 � ( c r e a t e   t h e   t e x t   i t e m �� l    % r     % b     # !  o     !���� 0 ret_val  ! o   ! "���� 0 the_item   o      ���� 0 ret_val   &  concat the text item to the list    �"" @ c o n c a t   t h e   t e x t   i t e m   t o   t h e   l i s t��  � 0 i   m    	����  l  	 #����# n   	 $%$ 1   
 ��
�� 
leng% o   	 
���� 
0 list_a  ��  ��  �   &��& L   + -'' o   + ,���� 0 ret_val  ��  � ()( l      ��*+��  *��
 * Bubble search (alphabetically sorts a list of strings)
 * Note: Alters the original list (make a copy of the original list to preserve the riginal list)
 * Note: Because of the amount of repetition involved, bubble sort is only suitable for sorting small lists. 
 * Note: As lists get larger, bubble sorting becomes too slow to be practical. 
 * Note: You can improve performance by using a more efficient sorting algorithm.
    + �,,\ 
   *   B u b b l e   s e a r c h   ( a l p h a b e t i c a l l y   s o r t s   a   l i s t   o f   s t r i n g s ) 
   *   N o t e :   A l t e r s   t h e   o r i g i n a l   l i s t   ( m a k e   a   c o p y   o f   t h e   o r i g i n a l   l i s t   t o   p r e s e r v e   t h e   r i g i n a l   l i s t ) 
   *   N o t e :   B e c a u s e   o f   t h e   a m o u n t   o f   r e p e t i t i o n   i n v o l v e d ,   b u b b l e   s o r t   i s   o n l y   s u i t a b l e   f o r   s o r t i n g   s m a l l   l i s t s .   
   *   N o t e :   A s   l i s t s   g e t   l a r g e r ,   b u b b l e   s o r t i n g   b e c o m e s   t o o   s l o w   t o   b e   p r a c t i c a l .   
   *   N o t e :   Y o u   c a n   i m p r o v e   p e r f o r m a n c e   b y   u s i n g   a   m o r e   e f f i c i e n t   s o r t i n g   a l g o r i t h m . 
  ) -.- i   W Z/0/ I      ��1���� 0 bubble_sort  1 2��2 o      ���� 0 the_list  ��  ��  0 k     _33 454 r     676 m     ��
�� boovfals7 o      ���� 0 	is_sorted  5 8��8 W    _9:9 k   
 Z;; <=< r   
 >?> m   
 ��
�� boovtrue? o      ���� 0 	is_sorted  = @��@ Y    ZA��BC��A Z    UDE����D ?    'FGF n     HIH 4     ��J
�� 
cobjJ o    ���� 0 i  I o    ���� 0 the_list  G n     &KLK 4   ! &��M
�� 
cobjM l  " %N����N [   " %OPO o   " #���� 0 i  P m   # $���� ��  ��  L o     !���� 0 the_list  E k   * QQQ RSR r   * MTUT J   * 6VV WXW n   * 0YZY 4   + 0��[
�� 
cobj[ l  , /\����\ [   , /]^] o   , -���� 0 i  ^ m   - .���� ��  ��  Z o   * +���� 0 the_list  X _��_ n   0 4`a` 4   1 4��b
�� 
cobjb o   2 3���� 0 i  a o   0 1���� 0 the_list  ��  U J      cc ded n      fgf 4   < ?��h
�� 
cobjh o   = >���� 0 i  g o   ; <���� 0 the_list  e i��i n      jkj 4   F K��l
�� 
cobjl l  G Jm����m [   G Jnon o   G H���� 0 i  o m   H I���� ��  ��  k o   E F���� 0 the_list  ��  S p��p r   N Qqrq m   N O��
�� boovfalsr o      ���� 0 	is_sorted  ��  ��  ��  �� 0 i  B m    ���� C \    sts l   u����u n    vwv 1    ��
�� 
lengw o    ���� 0 the_list  ��  ��  t m    ���� ��  ��  : o    	���� 0 	is_sorted  ��  . xyx l     ��������  ��  ��  y z{z l     ��|}��  | B <AppleScript supports two assignment operators, set and copy    } �~~ x A p p l e S c r i p t   s u p p o r t s   t w o   a s s i g n m e n t   o p e r a t o r s ,   s e t   a n d   c o p y  { � l     ������  � z tNote:  When applied to complex types (such as list) copy really clones the data, while set only stores a reference.    � ��� � N o t e :     W h e n   a p p l i e d   t o   c o m p l e x   t y p e s   ( s u c h   a s   l i s t )   c o p y   r e a l l y   c l o n e s   t h e   d a t a ,   w h i l e   s e t   o n l y   s t o r e s   a   r e f e r e n c e .  � ���� i   [ ^��� I      ������� 	0 clone  � ���� o      ���� 0 the_list  ��  ��  � k     �� ��� l    ���� s     ��� o     ���� 0 the_list  � o      ���� 0 the_copy_list  �   copy data    � ���    c o p y   d a t a  � ���� L    �� o    ���� 0 the_copy_list  ��  ��   ��� ���  � k      �� ��� h     ���� 0 s  � ���� l    ������ L     �� o     ���� 0 s  ��  ��  ��  � ���U���  � ������ 0 s  
�� .aevtoappnull  �   � ****� �����������
�� .aevtoappnull  �   � ****� k     �� �����  ��  ��  �  �  �� b    ������������������ �������������������������������� 0 scriptloader ScriptLoader�� 0 
listparser 
ListParser�� 0 remove_range  �� 0 	remove_at  �� 0 add_item  �� 0 add_list  �� 
0 add_at  �� 0 replace  �� 0 replace_many  �� 0 swap  �� 
0 remove  �� 0 remove_many  �� 0 combine  �� 0 bubble_sort  �� 	0 clone  � ��� ���  � k      �� ��� l     ������  � w qNote: we use load_script to load plain-text .applescript files, which cant be loaded directly without this method   � ��� � N o t e :   w e   u s e   l o a d _ s c r i p t   t o   l o a d   p l a i n - t e x t   . a p p l e s c r i p t   f i l e s ,   w h i c h   c a n t   b e   l o a d e d   d i r e c t l y   w i t h o u t   t h i s   m e t h o d� ��� l     ������  � � �Note: we use .applescript instead of .scpt files because its easier to put plain text script files under version control like github   � ��� N o t e :   w e   u s e   . a p p l e s c r i p t   i n s t e a d   o f   . s c p t   f i l e s   b e c a u s e   i t s   e a s i e r   t o   p u t   p l a i n   t e x t   s c r i p t   f i l e s   u n d e r   v e r s i o n   c o n t r o l   l i k e   g i t h u b� ��� l     ������  �a[Note: You can load compiled scripts (.scpt) or plain text scripts (.applescript). Make sure, though, that your .applescript files are encoded as either Mac (what AppleScript Editor uses) UTF-8 (if you use another text editor). Any scripts loaded are expected to be installed into your Scripts directory. Use the line below to reference the script:   � ���� N o t e :   Y o u   c a n   l o a d   c o m p i l e d   s c r i p t s   ( . s c p t )   o r   p l a i n   t e x t   s c r i p t s   ( . a p p l e s c r i p t ) .   M a k e   s u r e ,   t h o u g h ,   t h a t   y o u r   . a p p l e s c r i p t   f i l e s   a r e   e n c o d e d   a s   e i t h e r   M a c   ( w h a t   A p p l e S c r i p t   E d i t o r   u s e s )   U T F - 8   ( i f   y o u   u s e   a n o t h e r   t e x t   e d i t o r ) .   A n y   s c r i p t s   l o a d e d   a r e   e x p e c t e d   t o   b e   i n s t a l l e d   i n t o   y o u r   S c r i p t s   d i r e c t o r y .   U s e   t h e   l i n e   b e l o w   t o   r e f e r e n c e   t h e   s c r i p t :� ��� l     ������  � H Bremember to import this method before you use it with a property:    � ��� � r e m e m b e r   t o   i m p o r t   t h i s   m e t h o d   b e f o r e   y o u   u s e   i t   w i t h   a   p r o p e r t y :  � ��� l      ������  ���
property ScriptLoader : load script alias ((path to scripts folder from user domain as text) & "file:ScriptLoader.scpt")--prerequisite for loading .applescript filesproperty ListAsserter : my ScriptLoader's load_script(alias ((path to scripts folder from user domain as text) & "list:ListAsserter.applescript")) my ListAsserter's equals_to({1, 2, 3, 4}, {1, 2, 3, 4})
if my ListAsserter's equals_to({1, 2, 3, 4}, {1, 2, 3, 4}) then	log "yes"else	log "no"end if
   � ���� 
 p r o p e r t y   S c r i p t L o a d e r   :   l o a d   s c r i p t   a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " f i l e : S c r i p t L o a d e r . s c p t " ) - - p r e r e q u i s i t e   f o r   l o a d i n g   . a p p l e s c r i p t   f i l e s  p r o p e r t y   L i s t A s s e r t e r   :   m y   S c r i p t L o a d e r ' s   l o a d _ s c r i p t ( a l i a s   ( ( p a t h   t o   s c r i p t s   f o l d e r   f r o m   u s e r   d o m a i n   a s   t e x t )   &   " l i s t : L i s t A s s e r t e r . a p p l e s c r i p t " ) )    m y   L i s t A s s e r t e r ' s   e q u a l s _ t o ( { 1 ,   2 ,   3 ,   4 } ,   { 1 ,   2 ,   3 ,   4 } ) 
 i f   m y   L i s t A s s e r t e r ' s   e q u a l s _ t o ( { 1 ,   2 ,   3 ,   4 } ,   { 1 ,   2 ,   3 ,   4 } )   t h e n  	 l o g   " y e s "  e l s e  	 l o g   " n o "  e n d   i f 
� ���� i     ��� I      ������� 0 load_script  � ���� o      ���� 0 apple_script_path  ��  ��  � k     {�� ��� Q     x���� r    
��� I   �����
�� .sysoloadscpt        file� o    �� 0 apple_script_path  ��  � o      �~�~ 0 script_object  � R      �}�|�
�} .ascrerr ****      � ****�|  � �{��z
�{ 
errn� d      �� m      �y�y��z  � l   x���� k    x�� ��� r    ��� m    �� ���  � o      �x�x 0 script_text  � ��� Q    1���� l    ���� r     ��� I   �w��v
�w .rdwrread****        ****� o    �u�u 0 apple_script_path  �v  � o      �t�t 0 script_text  � ( " Try reading as Mac encoding first   � ��� D   T r y   r e a d i n g   a s   M a c   e n c o d i n g   f i r s t� R      �s�r�
�s .ascrerr ****      � ****�r  � �q��p
�q 
errn� d      �� m      �o�o��p  � l  ( 1���� l  ( 1���� r   ( 1��� I  ( /�n 
�n .rdwrread****        ****  o   ( )�m�m 0 apple_script_path   �l�k
�l 
as   m   * +�j
�j 
utf8�k  � o      �i�i 0 script_text  �   Finally try UTF-8   � � $   F i n a l l y   t r y   U T F - 8� &   Error reading script's encoding   � � @   E r r o r   r e a d i n g   s c r i p t ' s   e n c o d i n g� �h Q   2 x r   5 H	
	 I  5 F�g�f
�g .sysodsct****        scpt l  5 B�e�d b   5 B b   5 @ b   5 > b   5 < b   5 : b   5 8 m   5 6 �  s c r i p t   s o   6 7�c
�c 
ret  o   8 9�b�b 0 script_text   o   : ;�a
�a 
ret  m   < = �  e n d   s c r i p t   o   > ?�`
�` 
ret  m   @ A �  r e t u r n   s�e  �d  �f  
 o      �_�_ 0 script_object   R      �^ 
�^ .ascrerr ****      � **** o      �]�] 0 e    �\!"
�\ 
errn! o      �[�[ 0 n  " �Z#$
�Z 
ptlr# o      �Y�Y 0 p  $ �X%&
�X 
erob% o      �W�W 0 f  & �V'�U
�V 
errt' o      �T�T 0 t  �U   k   P x(( )*) I  P a�S+�R
�S .sysodlogaskr        TEXT+ b   P ],-, b   P Y./. b   P W010 b   P S232 m   P Q44 �55 , E r r o r   r e a d i n g   l i b r a r y  3 o   Q R�Q�Q 0 apple_script_path  1 m   S V66 �77   / o   W X�P�P 0 e  - m   Y \88 �99 : P l e a s e   e n c o d e   a s   M a c   o r   U T F - 8�R  * :�O: R   b x�N;<
�N .ascrerr ****      � ****; o   v w�M�M 0 e  < �L=>
�L 
errn= o   f g�K�K 0 n  > �J?@
�J 
ptlr? o   j k�I�I 0 p  @ �HAB
�H 
erobA o   n o�G�G 0 f  B �FC�E
�F 
errtC o   r s�D�D 0 t  �E  �O  �h  �   text format script    � �DD (   t e x t   f o r m a t   s c r i p t  � E�CE l  y {FGHF L   y {II o   y z�B�B 0 script_object  G + %return the script, it is now loadable   H �JJ J r e t u r n   t h e   s c r i p t ,   i t   i s   n o w   l o a d a b l e�C  ��  � �AKL�A  K �@�@ 0 load_script  L �?��>�=MN�<�? 0 load_script  �> �;O�; O  �:�: 0 apple_script_path  �=  M �9�8�7�6�5�4�3�2�9 0 apple_script_path  �8 0 script_object  �7 0 script_text  �6 0 e  �5 0 n  �4 0 p  �3 0 f  �2 0 t  N �1�0P��/Q�.�-�,�+�*R468�)�(�'�&�%�$
�1 .sysoloadscpt        file�0  P �#�"�!
�# 
errn�"�(�!  
�/ .rdwrread****        ****Q � ��
�  
errn��\�  
�. 
as  
�- 
utf8
�, 
ret 
�+ .sysodsct****        scpt�* 0 e  R ��S
� 
errn� 0 n  S ��T
� 
ptlr� 0 p  T ��U
� 
erob� 0 f  U ���
� 
errt� 0 t  �  
�) .sysodlogaskr        TEXT
�( 
errn
�' 
ptlr
�& 
erob
�% 
errt�$ �< | �j  E�W mX  �E�O �j E�W X  ���l E�O ��%�%�%�%�%�%j E�W /X  �%a %�%a %j O)a �a �a �a �a �O�� �VWX� 0 s  V k      YY Z[Z l      �\]�  \ $ 
 * Logs all items in a list
    ] �^^ < 
   *   L o g s   a l l   i t e m s   i n   a   l i s t 
  [ _`_ i     aba I      �c�� 0 	log_items  c d�d o      �� 0 the_list  �  �  b Y     e�fg�e k    hh iji r    klk n    mnm 4    �o
� 
cobjo o    �� 0 i  n o    �
�
 0 the_list  l o      �	�	 0 theitem theItemj p�p I   �q�
� .ascrcmnt****      � ****q o    �� 0 theitem theItem�  �  � 0 i  f m    �� g l   r��r n    sts 1    �
� 
lengt o    � �  0 the_list  �  �  �  ` uvu l      ��wx��  w � �
 * TODO add support for returning a value when there is no index, maybe 0 maybe -1 maybe even null
 * Returns the index of an item in a list
    x �yy 
   *   T O D O   a d d   s u p p o r t   f o r   r e t u r n i n g   a   v a l u e   w h e n   t h e r e   i s   n o   i n d e x ,   m a y b e   0   m a y b e   - 1   m a y b e   e v e n   n u l l 
   *   R e t u r n s   t h e   i n d e x   o f   a n   i t e m   i n   a   l i s t 
  v z{z i    |}| I      ��~���� 0 index_of  ~ � o      ���� 	0 array  � ���� o      ���� 0 theitem theItem��  ��  } k     $�� ��� Y     !�������� Z    ������� =    ��� o    ���� 0 theitem theItem� l   ������ n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 	0 array  ��  ��  � L    �� o    ���� 0 i  ��  ��  �� 0 i  � m    ���� � l   ������ n    ��� 1    ��
�� 
leng� o    ���� 	0 array  ��  ��  ��  � ���� L   " $�� m   " #��
�� 
null��  { ��� l      ������  � ; 5
 * Returns the indices of multiple items in a list
    � ��� j 
   *   R e t u r n s   t h e   i n d i c e s   o f   m u l t i p l e   i t e m s   i n   a   l i s t 
  � ��� i    ��� I      ������� 0 indices  � ��� o      ���� 0 the_list  � ���� o      ���� 0 	the_items  ��  ��  � k     ,�� ��� r     ��� J     ����  � o      ���� 0 the_indices  � ��� Y    )�������� k    $�� ��� r    ��� n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 	the_items  � o      ���� 0 the_item  � ��� l   ������  �  log the_item   � ���  l o g   t h e _ i t e m� ���� r    $��� b    "��� o    ���� 0 the_indices  � I    !������� 0 index_of  � ��� o    ���� 0 the_list  � ���� o    ���� 0 the_item  ��  ��  � o      ���� 0 the_indices  ��  �� 0 i  � m    	���� � l  	 ������ n   	 ��� 1   
 ��
�� 
leng� o   	 
���� 0 	the_items  ��  ��  ��  � ���� L   * ,�� o   * +���� 0 the_indices  ��  � ��� l      ������  �  
 * Clones a list
    � ��� & 
   *   C l o n e s   a   l i s t 
  � ��� i    ��� I      ������� 	0 clone  � ���� o      ���� 0 the_list  ��  ��  � L     �� n     ��� 2    ��
�� 
cobj� o     ���� 0 the_list  � ��� l      ������  � � �
 * TODO possibly rename to "all()"
 * Retuns an array of items at specific indices {blue,red,pink},{1,2} returns red and pink etc
 * @indices: a list comprised of integeres
 * @the_list: an array of items
    � ���� 
   *   T O D O   p o s s i b l y   r e n a m e   t o   " a l l ( ) " 
   *   R e t u n s   a n   a r r a y   o f   i t e m s   a t   s p e c i f i c   i n d i c e s   { b l u e , r e d , p i n k } , { 1 , 2 }   r e t u r n s   r e d   a n d   p i n k   e t c 
   *   @ i n d i c e s :   a   l i s t   c o m p r i s e d   o f   i n t e g e r e s 
   *   @ t h e _ l i s t :   a n   a r r a y   o f   i t e m s 
  � ��� i    ��� I      ������� 0 items_at  � ��� o      ���� 0 the_list  � ���� o      ���� 0 indices  ��  ��  � k     )�� ��� r     ��� J     ����  � o      ���� 0 	the_items  � ��� Y    &�������� k    !�� ��� r    ��� n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 indices  � o      ���� 0 	the_index  � ���� r    !��� b    ��� o    ���� 0 	the_items  � l   ������ n    ��� 4    ���
�� 
cobj� o    ���� 0 	the_index  � o    ���� 0 the_list  ��  ��  � o      ���� 0 	the_items  ��  �� 0 i  � m    	���� � l  	 ������ n   	 � � 1   
 ��
�� 
leng  o   	 
���� 0 indices  ��  ��  ��  � �� L   ' ) o   ' (���� 0 	the_items  ��  �  l     ����   ; 5 Returns the total count of a specific item in a list    � j   R e t u r n s   t h e   t o t a l   c o u n t   o f   a   s p e c i f i c   i t e m   i n   a   l i s t 	 l     ��������  ��  ��  	 
��
 i     I      ������ 0 
occurences    o      ���� 0 thelist theList �� o      ���� 0 theitem theItem��  ��   k     ,  r      m     ����   o      ���� 0 counter    Y    )���� Z    $���� =    n      4    ��!
�� 
cobj! o    ���� 0 i    o    ���� 0 thelist theList o    ���� 0 theitem theItem r     "#" [    $%$ o    ���� 0 counter  % m    ���� # o      ���� 0 counter  ��  ��  �� 0 i   m    ����  I   ��&��
�� .corecnte****       ****& o    	���� 0 thelist theList��  ��   '��' L   * ,(( o   * +���� 0 counter  ��  ��  W ��) *��  ) k      ++ ,-, h     ��V�� 0 s  - .��. l    /����/ L     00 o     ���� 0 s  ��  ��  ��  * ��1�2��  1 ������ 0 s  
�� .aevtoappnull  �   � ****2 �3�~�}45�|
� .aevtoappnull  �   � ****3 k     66 .�{�{  �~  �}  4  5  �| b   X *789:;<=7 �z�y�x�w�v�u�z 0 	log_items  �y 0 index_of  �x 0 indices  �w 	0 clone  �v 0 items_at  �u 0 
occurences  8 �tb�s�r>?�q�t 0 	log_items  �s �p@�p @  �o�o 0 the_list  �r  > �n�m�l�n 0 the_list  �m 0 i  �l 0 theitem theItem? �k�j�i
�k 
leng
�j 
cobj
�i .ascrcmnt****      � ****�q  k��,Ekh ��/E�O�j [OY��9 �h}�g�fAB�e�h 0 index_of  �g �dC�d C  �c�b�c 	0 array  �b 0 theitem theItem�f  A �a�`�_�a 	0 array  �` 0 theitem theItem�_ 0 i  B �^�]�\
�^ 
leng
�] 
cobj
�\ 
null�e %  k��,Ekh ���/  �Y h[OY��O�: �[��Z�YDE�X�[ 0 indices  �Z �WF�W F  �V�U�V 0 the_list  �U 0 	the_items  �Y  D �T�S�R�Q�P�T 0 the_list  �S 0 	the_items  �R 0 the_indices  �Q 0 i  �P 0 the_item  E �O�N�M
�O 
leng
�N 
cobj�M 0 index_of  �X -jvE�O #k��,Ekh ��/E�O�*��l+ %E�[OY��O�; �L��K�JGH�I�L 	0 clone  �K �HI�H I  �G�G 0 the_list  �J  G �F�F 0 the_list  H �E
�E 
cobj�I ��-E< �D��C�BJK�A�D 0 items_at  �C �@L�@ L  �?�>�? 0 the_list  �> 0 indices  �B  J �=�<�;�:�9�= 0 the_list  �< 0 indices  �; 0 	the_items  �: 0 i  �9 0 	the_index  K �8�7
�8 
leng
�7 
cobj�A *jvE�O  k��,Ekh ��/E�O���/%E�[OY��O�= �6�5�4MN�3�6 0 
occurences  �5 �2O�2 O  �1�0�1 0 thelist theList�0 0 theitem theItem�4  M �/�.�-�,�/ 0 thelist theList�. 0 theitem theItem�- 0 counter  �, 0 i  N �+�*
�+ .corecnte****       ****
�* 
cobj�3 -jE�O $k�j  kh ��/�  
�kE�Y h[OY��O�� �)I�(�'PQ�&�) 0 remove_range  �( �%R�% R  �$�#�"�$ 0 the_list  �# 0 
from_index  �" 0 to_index  �'  P �!� ����! 0 the_list  �  0 
from_index  � 0 to_index  � 0 
first_part  � 0 second_part  Q ��
� 
cobj
� 
leng�& #�[�\[Zk\Z�2E�O�[�\[Z�\Z��,2E�O��%� �s��ST�� 0 	remove_at  � �U� U  ��� 0 the_list  � 0 	the_index  �  S ���� 0 the_list  � 0 	the_index  � 0 new_list  T ����
� 
rest
� 
leng
� 
cobj���� G�k  
��,E�Y 7���,  �[�\[Zk\Z�2E�Y �[�\[Zk\Z�k2�[�\[Z�k\Zi2%E�O�� ����
VW�	� 0 add_item  � �X� X  ��� 0 the_list  � 0 the_item  �
  V ��� 0 the_list  � 0 the_item  W  �	 	��%E�O�� ����YZ� � 0 add_list  � ��[�� [  ������ 0 a  �� 0 b  �  Y ������ 0 a  �� 0 b  Z ����
�� 
null
�� 
cobj�  ��%E�O���i/FO�� �������\]���� 
0 add_at  �� ��^�� ^  �������� 0 the_list  �� 0 the_item  �� 0 	the_index  ��  \ ���������� 0 the_list  �� 0 the_item  �� 0 	the_index  �� 0 v  ] ����
�� 
leng
�� 
cobj�� ?�k  	��5FY 0���,k  	��6FY �[�\[Zk\Z�k2�%�[�\[Z�\Zi2%E�O�� ��(����_`���� 0 replace  �� ��a�� a  �������� 0 the_list  �� 0 to_match  �� 0 
replacment  ��  _ ���������� 0 the_list  �� 0 to_match  �� 0 
replacment  �� 0 match_index  ` ������ 0 index_of  
�� 
cobj�� b  ��l+  E�O���/FO�� ��K����bc���� 0 replace_many  �� ��d�� d  �������� 0 the_list  �� 0 the_matches  �� 0 the_replacments  ��  b ���������� 0 the_list  �� 0 the_matches  �� 0 the_replacments  �� 0 i  c ������
�� 
leng
�� 
cobj�� 0 replace  �� & !k��,Ekh *���/��/m+ E�[OY��O�� ��u����ef���� 0 swap  �� ��g�� g  �������� 0 the_list  �� 0 a  �� 0 b  ��  e ������������ 0 the_list  �� 0 a  �� 0 b  �� 0 a_index  �� 0 b_index  f ���������� 0 index_of  
�� 
null
�� 
bool
�� 
cobj�� <b  ��l+  E�Ob  ��l+  E�O��	 ���& ���/FO���/FY h� �������hi���� 
0 remove  �� ��j�� j  ������ 0 the_list  �� 0 the_item  ��  h �������� 0 the_list  �� 0 the_item  �� 0 match_index  i ������ 0 index_of  �� 0 	remove_at  �� b  ��l+  E�O*��l+ � �������kl���� 0 remove_many  �� ��m�� m  ������ 0 	the_array 	the_Array�� 0 	the_items  ��  k �������� 0 	the_array 	the_Array�� 0 	the_items  �� 0 i  l ������
�� 
leng
�� 
cobj�� 
0 remove  �� " k��,Ekh *���/l+ E�[OY��O�� �������no���� 0 combine  �� ��p�� p  �������� 
0 list_a  �� 
0 list_b  �� 0 	seperator  ��  n �������������� 
0 list_a  �� 
0 list_b  �� 0 	seperator  �� 0 ret_val  �� 0 i  �� 0 the_item  o ����
�� 
leng
�� 
cobj�� .jvE�O $k��,Ekh ��/�%��/%E�O��%E�[OY��O�� ��0����qr���� 0 bubble_sort  �� �s� s  �� 0 the_list  ��  q ���� 0 the_list  � 0 	is_sorted  � 0 i  r ��
� 
leng
� 
cobj�� `fE�O Zh�eE�O Kk��,kkh ��/��k/ ,��k/��/lvE[�k/��/FZ[�l/��k/FZOfE�Y h[OY��[OY��� ����tu�� 	0 clone  � �v� v  �� 0 the_list  �  t ��� 0 the_list  � 0 the_copy_list  u  � �EQ�O�V �w��~xy�}
� .aevtoappnull  �   � ****w k    Gzz  �{{ 
|| }} P~~ [ ��� ��� ��� ��� ��� �� )�� 2�|�|  �  �~  x �{�{ 0 	repo_item  y : ��z�y�x ��w�v�u�t�s$'.18;BEKN�r�q�pfipsz}�������o�n�m��l�k�j�i�h�g�f���e��d�c�b�a�`�_
�z 
in B
�y .earsffdralis        afdr
�x 
in D�w 
�v .sysorpthalis        TEXT
�u 
TEXT�t 0 	file_path  �s 0 repo_setup_list  �r �q 0 repo_setup_1  �p 0 add_list  �o 0 repo_setup_2  
�n 
leng
�m .ascrcmnt****      � ****�l 0 element_beginning  
�k 
ret �j 0 repo_xml_text  
�i 
kocl
�h 
cobj
�g .corecnte****       ****
�f 
tab �e 0 element_with_attribute  �d 0 element_end  �c 0 
write_data  �b 0 root  �a 0 
thexmlroot 
theXMLRoot�` 0 every_element  �_ 0 num_children  �}H��)j ��� �&E�OjvE�O��lv��lv��lva a lva a lva a lva vE` Ob  �_ l+ E�Oa a lva a lva a lva a  lva !a "lva #a $lva vE` %Ob  �_ %l+ E�O�a &,j 'Ob  a (k+ )_ *%E` +O B�[a ,a -l .kh  �a &,j 'O_ +_ /%b  a 0a 1�m+ 2%_ *%E` +[OY��O_ +b  a 3k+ 4%E` +Ob  _ +�fm+ 5Ob  �k+ 6E` 7Ob  _ 7k+ 8a &,E` 9ascr  ��ޭ
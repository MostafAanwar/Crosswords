%this is just the words stated in facts
word(zombifies, z,o,m,b,i,f,i,e,s).
word(akecabele, a,k,e,c,a,b,e,l,e).
word(brickwork, b,r,i,c,k,w,o,r,k).
word(backcheck, b,a,c,k,c,h,e,c,k).
word(acmrremad, a,c,m,r,r,e,m,a,d).
word(nhgwpfzbz, n,h,g,w,p,f,a,b,z).
word(jellybean, j,e,l,l,y,b,e,a,n).
word(earreoded, e,a,r,r,e,o,d,e,d).
% the function that takes the lines to insert the words in them and check where the vertical and horizontal lines intersect.
agpuzzle(H1, H2, H3, H4, V1, V2, V3, V4) :-
   word(V1, _, V1bH1b, _, V1dH2b, _, V1fH3b, _, V1hH4b, _),
   word(V2, _, V2bH1d, _, V2dH2d, _, V2fH3d, _, V2hH4d, _),
   word(V3, _, V3bH1f, _, V3dH2f, _, V3fH3f, _, V3hH4f, _),
   word(V4, _, V4bH1h, _, V4dH2h, _, V4bH3h, _, V4hH4h, _),
   word(H1, _, V1bH1b, _, V2bH1d, _, V3bH1f, _, V4bH1h, _),
   word(H2, _, V1dH2b, _, V2dH2d, _, V3dH2f, _, V4dH2h, _),
   word(H3, _, V1fH3b, _, V2fH3d, _, V3fH3f, _, V4bH3h, _),
   word(H4, _, V1hH4b, _, V2hH4d, _, V3hH4f, _, V4hH4h, _).

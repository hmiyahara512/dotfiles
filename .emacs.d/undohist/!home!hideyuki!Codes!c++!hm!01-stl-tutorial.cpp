
((digest . "cc79b8023f14c6b1d46e24f476e5e0f5") (undo-list nil ("{ \"Cursor\": 842 }
" . 1) (1 . 861) ("/*
 * 01-stl-tutorial.cpp -
 *
 *   Copyright (c) 2014  hmiyahara512(Hideyuki Miyahara)  <hmiyahara512@gmail.com>
 *
 */

#include <iostream>
#include <vector>
using namespace std;

int main()
{
  // create a vector to store int
  vector<int> vec; 
  int i;

  // display the original size of vec
  cout << \"vector size = \" << vec.size() << endl;

  // push 5 values into the vector
  for(i = 0; i < 5; i++){
    vec.push_back(i);
  }

  // display extended size of vec
  cout << \"extended vector size = \" << vec.size() << endl;

  // access 5 values from the vector
  for(i = 0; i < 5; i++){
    cout << \"value of vec [\" << i << \"] = \" << vec[i] << endl;
  }

  // use iterator to access the values
  vector<int>::iterator v = vec.begin();
  while( v != vec.end()) {
    cout << \"value of v = \" << *v << endl;
    v++;
  }

  return 0;
}
" . -1) ((marker . 1) . -121) ((marker . 1) . -839) ((marker) . -3) ((marker) . -3) ((marker . 841) . -28) ((marker . 841) . -28) ((marker . 829) . -31) ((marker . 829) . -31) ((marker . 828) . -114) ((marker . 828) . -114) ((marker . 824) . -117) ((marker . 824) . -117) ((marker . 815) . -121) ((marker . 815) . -121) ((marker . 772) . -122) ((marker . 772) . -122) ((marker . 1) . -142) ((marker . 1) . -159) ((marker . 745) . -142) ((marker . 745) . -142) ((marker . 704) . -160) ((marker . 704) . -160) ((marker . 665) . -181) ((marker . 665) . -181) ((marker . 664) . -182) ((marker . 664) . -182) ((marker . 660) . -193) ((marker . 660) . -193) ((marker . 597) . -195) ((marker . 597) . -195) ((marker . 569) . -229) ((marker . 569) . -229) ((marker . 532) . -249) ((marker . 532) . -249) ((marker . 531) . -258) ((marker . 531) . -258) ((marker . 472) . -259) ((marker . 472) . -259) ((marker . 438) . -297) ((marker . 438) . -297) ((marker . 437) . -347) ((marker . 437) . -347) ((marker . 433) . -348) ((marker . 433) . -348) ((marker . 411) . -383) ((marker . 411) . -383) ((marker . 383) . -409) ((marker . 383) . -409) ((marker . 348) . -431) ((marker . 348) . -431) ((marker . 347) . -435) ((marker . 347) . -435) ((marker . 297) . -436) ((marker . 297) . -436) ((marker . 259) . -470) ((marker . 259) . -470) ((marker . 258) . -529) ((marker . 258) . -529) ((marker . 249) . -530) ((marker . 249) . -530) ((marker . 230) . -567) ((marker . 230) . -567) ((marker . 196) . -593) ((marker . 196) . -593) ((marker . 183) . -656) ((marker . 183) . -656) ((marker . 182) . -660) ((marker . 182) . -660) ((marker . 161) . -661) ((marker . 161) . -661) ((marker . 143) . -700) ((marker . 143) . -700) ((marker . 123) . -741) ((marker . 123) . -741) ((marker . 122) . -768) ((marker . 122) . -768) ((marker . 118) . -811) ((marker . 118) . -811) ((marker . 115) . -820) ((marker . 115) . -820) ((marker . 32) . -824) ((marker . 32) . -824) ((marker . 29) . -825) ((marker . 29) . -825) ((marker . 4) . -837) ((marker . 4) . -837) ((marker . 1) . -839) ((marker . 1) . -121) ((marker . 1) . -839) nil (" " . -182) nil (839 . 840) nil (838 . 839) nil (827 . 829) ("   " . 827) (838 . 839) nil (827 . 838) nil (825 . 827) nil (822 . 824) ("   " . 822) (825 . 826) nil (822 . 825) nil (821 . 822) nil (813 . 817) ("      " . 813) (822 . 823) nil (813 . 822) nil (812 . 813) nil (811 . 812) nil (806 . 811) nil (804 . 806) nil (802 . 804) nil (801 . 802) nil (800 . 801) nil (798 . 800) nil (781 . 798) nil (770 . 774) ("      " . 770) (781 . 783) nil (770 . 781) nil (769 . 770) nil (768 . 769) nil (767 . 768) nil (764 . 767) nil (751 . 764) nil (750 . 751) (" x" . -750) (743 . 745) ("   " . 743) (751 . 753) ("while" . 751) (746 . 751) 751 nil (743 . 751) nil (742 . 743) nil (741 . 742) nil (739 . 741) nil (737 . 739) nil (717 . 737) nil (715 . 717) (nil category c-<-as-paren-syntax 710 . 711) (nil category c->-as-paren-syntax 714 . 715) nil (702 . 704) ("   " . 702) (715 . 716) nil (712 . 715) nil (711 . 712) nil (702 . 711) nil (701 . 702) nil (687 . 701) nil (667 . 687) nil (663 . 665) ("   " . 663) (666 . 668) nil (663 . 666) nil (661 . 663) nil (658 . 660) ("   " . 658) (661 . 662) nil (658 . 661) nil (657 . 658) nil (656 . 657) nil (651 . 656) nil (649 . 651) nil (641 . 649) nil (639 . 641) nil (631 . 639) nil (629 . 631) nil (626 . 629) nil (624 . 626) nil (606 . 624) nil (595 . 599) ("      " . 595) (606 . 608) nil (595 . 606) nil (594 . 595) nil (593 . 594) nil (592 . 593) nil (588 . 592) nil (587 . 588) nil (585 . 587) nil (584 . 585) nil (581 . 584) nil (580 . 581) nil (575 . 580) nil (569 . 571) ("   " . 569) (575 . 576) nil (569 . 575) nil (568 . 569) nil (556 . 568) nil (536 . 556) nil (532 . 534) ("   " . 532) (535 . 537) nil (532 . 535) nil (530 . 532) nil (529 . 530) nil (524 . 529) nil (522 . 524) nil (521 . 522) nil (519 . 521) nil (510 . 519) nil (508 . 510) nil (501 . 508) nil (481 . 501) nil (472 . 474) ("   " . 472) (480 . 482) nil (472 . 480) nil (471 . 472) nil (462 . 471) nil (442 . 462) nil (438 . 440) ("   " . 438) (441 . 443) nil (438 . 441) nil (436 . 438) nil (433 . 435) ("   " . 433) (436 . 437) nil (433 . 436) nil (432 . 433) nil (431 . 432) nil (430 . 431) nil (429 . 430) nil (411 . 415) ("      " . 411) (430 . 431) nil (411 . 430) nil (410 . 411) nil (409 . 410) nil (408 . 409) nil (404 . 408) nil (403 . 404) nil (401 . 403) nil (400 . 401) nil (397 . 400) nil (396 . 397) nil (391 . 396) nil (385 . 387) ("   " . 385) (391 . 392) nil (385 . 391) nil (384 . 385) nil (374 . 384) nil (354 . 374) nil (350 . 352) ("   " . 350) (353 . 355) nil (350 . 353) nil (348 . 350) nil (347 . 348) nil (342 . 347) nil (340 . 342) nil (339 . 340) nil (337 . 339) nil (328 . 337) nil (326 . 328) nil (308 . 326) nil (299 . 301) ("   " . 299) (307 . 309) nil (299 . 307) nil (298 . 299) nil (285 . 298) nil (265 . 285) nil (261 . 263) ("   " . 261) (264 . 266) nil (261 . 264) nil (259 . 261) nil (251 . 253) ("   " . 251) (259 . 260) nil (251 . 259) nil (250 . 251) nil (249 . 250) nil (248 . 249) nil (244 . 248) (nil category c-<-as-paren-syntax 239 . 240) (nil category c->-as-paren-syntax 243 . 244) nil (231 . 233) ("   " . 231) (244 . 245) nil (241 . 244) nil (240 . 241) nil (231 . 240) nil (230 . 231) nil (221 . 230) nil (201 . 221) nil (197 . 199) ("   " . 197) (200 . 202) nil (197 . 200) nil (196 . 197) nil (195 . 196) nil (194 . 195) nil (192 . 194) nil (184 . 192) nil (183 . 184) nil (182 . 183) nil (181 . 182) nil (180 . 181) nil (161 . 180) nil (160 . 161) nil (159 . 160) nil (153 . 159) nil (152 . 153) nil (144 . 152) nil (143 . 144) nil (142 . 143) nil (141 . 142) nil (133 . 141) nil (132 . 133) nil (124 . 132) nil (123 . 124) nil ("}
" . 123) nil ("  return 0;
" . 123) nil ("
" . 123) nil ("
" . 123) nil ("int main () {
" . 123) nil ("
" . 123) ((marker . 1) . -1) nil ("#include <iostream>
" . 123) (t 0 0 0 -1000) nil ("%file%" . -7) (13 . 32) 1 nil (1 . 162) (t 0 0 0 -1000)))

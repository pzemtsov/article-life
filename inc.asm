[Entry Point]
[Constants]
  # {method} {0x00007f9d81256c50} 'inc' '(J)V' in 'Hash_LongPoint'
  # this:     rsi:rsi   = 'Hash_LongPoint'
  # parm0:    rdx:rdx   = long
  #           [sp+0x70]  (sp of caller)
  0x00007f9d85333f80: mov    r10d,DWORD PTR [rsi+0x8]
  0x00007f9d85333f84: shl    r10,0x3
  0x00007f9d85333f88: cmp    rax,r10
  0x00007f9d85333f8b: jne    0x00007f9d85045e20  ;   {runtime_call}
  0x00007f9d85333f91: xchg   ax,ax
  0x00007f9d85333f94: nop    DWORD PTR [rax+rax*1+0x0]
  0x00007f9d85333f9c: xchg   ax,ax
[Verified Entry Point]
  0x00007f9d85333fa0: mov    DWORD PTR [rsp-0x14000],eax
  0x00007f9d85333fa7: push   rbp
  0x00007f9d85333fa8: sub    rsp,0x60           ;*synchronization entry
                                                ; - Hash_LongPoint::inc@-1 (line 47)

  0x00007f9d85333fac: mov    rbp,rdx
  0x00007f9d85333faf: mov    QWORD PTR [rsp],rsi
  0x00007f9d85333fb3: cmp    r12d,DWORD PTR [rsi+0xc]
  0x00007f9d85333fb7: je     0x00007f9d85334750  ;*invokevirtual create
                                                ; - Hash_LongPoint::inc@5 (line 47)

  0x00007f9d85333fbd: mov    rax,QWORD PTR [r15+0x60]
  0x00007f9d85333fc1: mov    r10,rax
  0x00007f9d85333fc4: add    r10,0x18
  0x00007f9d85333fc8: cmp    r10,QWORD PTR [r15+0x70]
  0x00007f9d85333fcc: jae    0x00007f9d85334695
  0x00007f9d85333fd2: mov    QWORD PTR [r15+0x60],r10
  0x00007f9d85333fd6: prefetchnta BYTE PTR [r10+0xc0]
  0x00007f9d85333fde: mov    r10d,0xf800c188    ;   {metadata('LongPoint6')}
  0x00007f9d85333fe4: shl    r10,0x3
  0x00007f9d85333fe8: mov    r10,QWORD PTR [r10+0xa8]
  0x00007f9d85333fef: mov    QWORD PTR [rax],r10
  0x00007f9d85333ff2: mov    DWORD PTR [rax+0x8],0xf800c188
                                                ;   {metadata('LongPoint6')}
  0x00007f9d85333ff9: mov    DWORD PTR [rax+0xc],r12d
  0x00007f9d85333ffd: mov    r9,rbp
  0x00007f9d85334000: mov    QWORD PTR [rax+0x10],r9  ;*new
                                                ; - LongPoint6$1::create@0 (line 9)
                                                ; - LongPoint6$1::create@2 (line 5)
                                                ; - Hash_LongPoint::inc@5 (line 47)

  0x00007f9d85334004: mov    QWORD PTR [rsp+0x28],rax  ;*synchronization entry
                                                ; - LongPoint6::<init>@-1 (line 15)
                                                ; - LongPoint6::<init>@2 (line 2)
                                                ; - LongPoint6$1::create@6 (line 9)
                                                ; - LongPoint6$1::create@2 (line 5)
                                                ; - Hash_LongPoint::inc@5 (line 47)

  0x00007f9d85334009: mov    r10,QWORD PTR [rsp]
  0x00007f9d8533400d: mov    r10d,DWORD PTR [r10+0x14]
                                                ;*getfield counts
                                                ; - Hash_LongPoint::inc@10 (line 48)

  0x00007f9d85334011: mov    DWORD PTR [rsp+0x24],r10d
  0x00007f9d85334016: mov    r10d,DWORD PTR [r12+r10*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f9d85334b79
  0x00007f9d8533401b: cmp    r10d,0xf8003bd1    ;   {metadata('java/util/HashMap')}
  0x00007f9d85334022: jne    0x00007f9d853347d9
  0x00007f9d85334028: mov    r11d,DWORD PTR [rsp+0x24]
  0x00007f9d8533402d: lea    r10,[r12+r11*8]    ;*invokevirtual get
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334031: mov    r10d,DWORD PTR [r10+0x24]
                                                ;*getfield table
                                                ; - java.util.HashMap::getNode@1 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334035: mov    r11,r9
  0x00007f9d85334038: sar    r11,0x3f
  0x00007f9d8533403c: mov    rax,0x2449f0232c624b0b
  0x00007f9d85334046: imul   r9
  0x00007f9d85334049: sar    rdx,0x1b
  0x00007f9d8533404d: sub    rdx,r11
  0x00007f9d85334050: imul   r11,rdx,0x386fa527
  0x00007f9d85334057: mov    r8,r9
  0x00007f9d8533405a: sub    r8,r11
  0x00007f9d8533405d: mov    r8d,r8d            ;*l2i  ; - LongPoint6::hashCode@8 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::get@2 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334060: mov    edx,r8d
  0x00007f9d85334063: shr    edx,0x10
  0x00007f9d85334066: xor    edx,r8d            ;*ixor
                                                ; - java.util.HashMap::hash@18 (line 338)
                                                ; - java.util.HashMap::get@2 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334069: mov    r8d,DWORD PTR [r12+r10*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap::getNode@10 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ; implicit exception: dispatches to 0x00007f9d85334bd9
  0x00007f9d8533406e: test   r8d,r8d
  0x00007f9d85334071: jle    0x00007f9d853347f1  ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334077: mov    r11d,r8d
  0x00007f9d8533407a: dec    r11d
  0x00007f9d8533407d: and    r11d,edx           ;*iand
                                                ; - java.util.HashMap::getNode@23 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334080: cmp    r11d,r8d
  0x00007f9d85334083: jae    0x00007f9d85334761
  0x00007f9d85334089: shl    r10,0x3
  0x00007f9d8533408d: mov    r10d,DWORD PTR [r10+r11*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334092: test   r10d,r10d
  0x00007f9d85334095: je     0x00007f9d85334459  ;*ifnull
                                                ; - java.util.HashMap::getNode@28 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d8533409b: mov    r11d,DWORD PTR [r12+r10*8+0xc]
  0x00007f9d853340a0: lea    rsi,[r12+r10*8]    ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853340a4: cmp    r11d,edx
  0x00007f9d853340a7: jne    0x00007f9d8533429c  ;*if_icmpne
                                                ; - java.util.HashMap::getNode@37 (line 570)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853340ad: mov    r11d,DWORD PTR [r12+r10*8+0x10]
                                                ;*getfield key
                                                ; - java.util.HashMap::getNode@42 (line 570)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853340b2: mov    r8,r11
  0x00007f9d853340b5: shl    r8,0x3
  0x00007f9d853340b9: cmp    r8,QWORD PTR [rsp+0x28]
  0x00007f9d853340be: je     0x00007f9d853340e2  ;*if_acmpeq
                                                ; - java.util.HashMap::getNode@49 (line 570)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853340c0: mov    ecx,DWORD PTR [r12+r11*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f9d85334c01
  0x00007f9d853340c5: cmp    ecx,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f9d853340cb: jne    0x00007f9d85334ad5
  0x00007f9d853340d1: shl    r11,0x3            ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853340d5: mov    r8,QWORD PTR [r11+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853340d9: cmp    r8,r9
  0x00007f9d853340dc: jne    0x00007f9d8533488d  ;*invokevirtual getNode
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853340e2: mov    r10d,DWORD PTR [rsi+0x14]
                                                ;*getfield value
                                                ; - java.util.HashMap::get@19 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853340e6: test   r10d,r10d
  0x00007f9d853340e9: je     0x00007f9d85334459
  0x00007f9d853340ef: mov    r11d,DWORD PTR [r12+r10*8+0x8]
  0x00007f9d853340f4: cmp    r11d,0xf8002260    ;   {metadata('java/lang/Integer')}
  0x00007f9d853340fb: jne    0x00007f9d85334b61
  0x00007f9d85334101: shl    r10,0x3            ;*checkcast
                                                ; - Hash_LongPoint::inc@17 (line 48)

  0x00007f9d85334105: mov    r10d,DWORD PTR [r10+0xc]
  0x00007f9d85334109: inc    r10d               ;*invokestatic valueOf
                                                ; - Hash_LongPoint::inc@43 (line 49)

  0x00007f9d8533410c: cmp    r10d,0xffffffffffffff80
  0x00007f9d85334110: jl     0x00007f9d8533481d  ;*if_icmplt
                                                ; - java.lang.Integer::valueOf@3 (line 830)
                                                ; - Hash_LongPoint::inc@43 (line 49)

  0x00007f9d85334116: cmp    r10d,0x7f
  0x00007f9d8533411a: jg     0x00007f9d853346a9  ;*if_icmpgt
                                                ; - java.lang.Integer::valueOf@10 (line 830)
                                                ; - Hash_LongPoint::inc@43 (line 49)

  0x00007f9d85334120: mov    r8d,r10d
  0x00007f9d85334123: add    r8d,0x80           ;*iadd
                                                ; - java.lang.Integer::valueOf@20 (line 831)
                                                ; - Hash_LongPoint::inc@43 (line 49)

  0x00007f9d8533412a: cmp    r8d,0x100
  0x00007f9d85334131: jae    0x00007f9d853347c5
  0x00007f9d85334137: movsxd r10,r10d
  0x00007f9d8533413a: mov    r11,0x67092cd58    ;   {oop(a 'java/lang/Integer'[256] )}
  0x00007f9d85334144: mov    r10d,DWORD PTR [r11+r10*4+0x210]
  0x00007f9d8533414c: shl    r10,0x3            ;*aaload
                                                ; - java.lang.Integer::valueOf@21 (line 831)
                                                ; - Hash_LongPoint::inc@43 (line 49)

  0x00007f9d85334150: mov    QWORD PTR [rsp+0x10],r10  ;*invokestatic valueOf
                                                ; - Hash_LongPoint::inc@43 (line 49)

  0x00007f9d85334155: mov    r11d,DWORD PTR [rsp+0x24]
  0x00007f9d8533415a: mov    r11d,DWORD PTR [r12+r11*8+0x24]
                                                ;*getfield table
                                                ; - java.util.HashMap::putVal@1 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ; implicit exception: dispatches to 0x00007f9d85334b8d
  0x00007f9d8533415f: mov    r10,QWORD PTR [rsp+0x28]
  0x00007f9d85334164: mov    r13,QWORD PTR [r10+0x10]  ;*getfield v
                                                ; - LongPoint6::hashCode@1 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::put@2 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334168: mov    rax,0x2449f0232c624b0b
  0x00007f9d85334172: imul   r13
  0x00007f9d85334175: mov    r10d,DWORD PTR [rsp+0x24]
  0x00007f9d8533417a: lea    rbp,[r12+r10*8]    ;*getfield counts
                                                ; - Hash_LongPoint::inc@23 (line 49)

  0x00007f9d8533417e: sar    rdx,0x1b
  0x00007f9d85334182: mov    r10,r13
  0x00007f9d85334185: sar    r10,0x3f
  0x00007f9d85334189: sub    rdx,r10
  0x00007f9d8533418c: imul   r10,rdx,0x386fa527
  0x00007f9d85334193: mov    r8,r13
  0x00007f9d85334196: sub    r8,r10
  0x00007f9d85334199: mov    r8d,r8d            ;*l2i  ; - LongPoint6::hashCode@8 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::put@2 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533419c: mov    r9d,r8d
  0x00007f9d8533419f: shr    r9d,0x10
  0x00007f9d853341a3: xor    r9d,r8d            ;*ixor
                                                ; - java.util.HashMap::hash@18 (line 338)
                                                ; - java.util.HashMap::put@2 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853341a6: mov    DWORD PTR [rsp+0x20],r9d
  0x00007f9d853341ab: test   r11d,r11d
  0x00007f9d853341ae: je     0x00007f9d85334675  ;*ifnull
                                                ; - java.util.HashMap::putVal@7 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853341b4: mov    r10d,DWORD PTR [r12+r11*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap::putVal@12 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853341b9: test   r10d,r10d
  0x00007f9d853341bc: je     0x00007f9d85334831  ;*ifne
                                                ; - java.util.HashMap::putVal@16 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853341c2: shl    r11,0x3            ;*getfield v
                                                ; - LongPoint::equals@8 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853341c6: mov    r9d,r10d
  0x00007f9d853341c9: dec    r9d
  0x00007f9d853341cc: and    r9d,DWORD PTR [rsp+0x20]  ;*iand
                                                ; - java.util.HashMap::putVal@36 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853341d1: cmp    r9d,r10d
  0x00007f9d853341d4: jae    0x00007f9d8533478d
  0x00007f9d853341da: lea    r14,[r11+r9*4+0x10]  ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853341df: mov    r10d,DWORD PTR [rsp+0x24]
  0x00007f9d853341e4: mov    ebx,DWORD PTR [r12+r10*8+0x8]
                                                ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853341e9: mov    r8d,DWORD PTR [r14]  ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853341ec: mov    r10,QWORD PTR [rsp+0x10]
  0x00007f9d853341f1: mov    rcx,r10
  0x00007f9d853341f4: shr    rcx,0x3            ;*putfield value
                                                ; - java.util.HashMap$Node::<init>@16 (line 287)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853341f8: mov    rdi,QWORD PTR [rsp+0x28]
  0x00007f9d853341fd: shr    rdi,0x3            ;*putfield key
                                                ; - java.util.HashMap$Node::<init>@11 (line 286)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334201: mov    esi,0xf8003c4e     ;   {metadata('java/util/HashMap$Node')}
  0x00007f9d85334206: mov    rdx,0x0
  0x00007f9d85334210: lea    rdx,[rdx+rsi*8]
  0x00007f9d85334214: test   r8d,r8d
  0x00007f9d85334217: je     0x00007f9d8533437d  ;*ifnonnull
                                                ; - java.util.HashMap::putVal@44 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533421d: mov    esi,DWORD PTR [r12+r8*8+0xc]
  0x00007f9d85334222: lea    r9,[r12+r8*8]      ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334226: cmp    esi,DWORD PTR [rsp+0x20]
  0x00007f9d8533422a: jne    0x00007f9d853342e6  ;*if_icmpne
                                                ; - java.util.HashMap::putVal@69 (line 633)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334230: mov    edi,DWORD PTR [r12+r8*8+0x10]
                                                ;*getfield key
                                                ; - java.util.HashMap::putVal@74 (line 633)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334235: mov    rdx,rdi
  0x00007f9d85334238: shl    rdx,0x3
  0x00007f9d8533423c: cmp    rdx,QWORD PTR [rsp+0x28]
  0x00007f9d85334241: je     0x00007f9d85334265  ;*if_acmpeq
                                                ; - java.util.HashMap::putVal@81 (line 633)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334243: mov    edx,DWORD PTR [r12+rdi*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f9d85334ba1
  0x00007f9d85334248: cmp    edx,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f9d8533424e: jne    0x00007f9d85334b25
  0x00007f9d85334254: shl    rdi,0x3            ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334258: mov    rdi,QWORD PTR [rdi+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533425c: cmp    rdi,r13
  0x00007f9d8533425f: jne    0x00007f9d8533484d  ;*aload
                                                ; - java.util.HashMap::putVal@97 (line 635)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334265: mov    r10d,DWORD PTR [r12+r8*8+0x14]
                                                ;*getfield value
                                                ; - java.util.HashMap::putVal@229 (line 653)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533426a: mov    DWORD PTR [r12+r8*8+0x14],ecx
  0x00007f9d8533426f: mov    r11,r9
  0x00007f9d85334272: shr    r11,0x9
  0x00007f9d85334276: mov    r8,0x7f9d811ff000
  0x00007f9d85334280: mov    BYTE PTR [r8+r11*1],r12b  ;*putfield value
                                                ; - java.util.HashMap::putVal@247 (line 655)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334284: cmp    ebx,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f9d8533428a: jne    0x00007f9d85334364  ;*synchronization entry
                                                ; - Hash_LongPoint::inc@-1 (line 47)

  0x00007f9d85334290: add    rsp,0x60
  0x00007f9d85334294: pop    rbp
  0x00007f9d85334295: test   DWORD PTR [rip+0x155c8d65],eax        # 0x00007f9d9a8fd000
                                                ;   {poll_return}
  0x00007f9d8533429b: ret    
  0x00007f9d8533429c: mov    r11d,DWORD PTR [r12+r10*8+0x18]
                                                ;*getfield next
                                                ; - java.util.HashMap::getNode@70 (line 573)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853342a1: test   r11d,r11d
  0x00007f9d853342a4: je     0x00007f9d85334459  ;*ifnull
                                                ; - java.util.HashMap::getNode@76 (line 573)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853342aa: mov    r10d,DWORD PTR [r12+r10*8+0x8]
  0x00007f9d853342af: cmp    r10d,0xf8006464    ;   {metadata('java/util/HashMap$TreeNode')}
  0x00007f9d853342b6: jne    0x00007f9d85334464  ;*checkcast
                                                ; - java.util.HashMap::getNode@89 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853342bc: mov    rcx,QWORD PTR [rsp+0x28]
  0x00007f9d853342c1: xchg   ax,ax
  0x00007f9d853342c3: call   0x00007f9d85046020  ; OopMap{[0]=Oop [40]=Oop off=840}
                                                ;*invokevirtual getTreeNode
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {optimized virtual_call}
  0x00007f9d853342c8: mov    r10,QWORD PTR [rsp]
  0x00007f9d853342cc: mov    r11d,DWORD PTR [r10+0x14]
                                                ;*getfield counts
                                                ; - Hash_LongPoint::inc@23 (line 49)

  0x00007f9d853342d0: mov    DWORD PTR [rsp+0x24],r11d
  0x00007f9d853342d5: test   rax,rax
  0x00007f9d853342d8: je     0x00007f9d85334459  ;*ifnonnull
                                                ; - java.util.HashMap::get@11 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853342de: mov    rsi,rax
  0x00007f9d853342e1: jmp    0x00007f9d853340e2
  0x00007f9d853342e6: mov    esi,DWORD PTR [r12+r8*8+0x8]
  0x00007f9d853342eb: cmp    esi,0xf8006464     ;   {metadata('java/util/HashMap$TreeNode')}
  0x00007f9d853342f1: jne    0x00007f9d853344fd  ;*instanceof
                                                ; - java.util.HashMap::putVal@106 (line 636)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853342f7: mov    DWORD PTR [rsp+0xc],ecx
  0x00007f9d853342fb: mov    DWORD PTR [rsp+0x8],ebx
  0x00007f9d853342ff: mov    QWORD PTR [rsp],rbp  ;*checkcast
                                                ; - java.util.HashMap::putVal@114 (line 637)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334303: mov    rsi,r9
  0x00007f9d85334306: mov    rdx,QWORD PTR [rsp]
  0x00007f9d8533430a: mov    rcx,r11
  0x00007f9d8533430d: mov    r8d,DWORD PTR [rsp+0x20]
  0x00007f9d85334312: mov    r9,QWORD PTR [rsp+0x28]
  0x00007f9d85334317: mov    rdi,QWORD PTR [rsp+0x10]
  0x00007f9d8533431c: xchg   ax,ax
  0x00007f9d8533431f: call   0x00007f9d85046020  ; OopMap{[0]=Oop [12]=NarrowOop [16]=Oop [36]=NarrowOop off=932}
                                                ;*invokevirtual putTreeVal
                                                ; - java.util.HashMap::putVal@123 (line 637)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {optimized virtual_call}
  0x00007f9d85334324: test   rax,rax
  0x00007f9d85334327: je     0x00007f9d853345a9  ;*ifnull
                                                ; - java.util.HashMap::putVal@224 (line 652)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533432d: mov    r10d,DWORD PTR [rax+0x14]
                                                ;*getfield value
                                                ; - java.util.HashMap::putVal@229 (line 653)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334331: mov    r8d,DWORD PTR [rsp+0xc]
  0x00007f9d85334336: mov    DWORD PTR [rax+0x14],r8d
  0x00007f9d8533433a: mov    r11,rax
  0x00007f9d8533433d: shr    r11,0x9
  0x00007f9d85334341: mov    r8,0x7f9d811ff000
  0x00007f9d8533434b: mov    BYTE PTR [r8+r11*1],r12b  ;*putfield value
                                                ; - java.util.HashMap::putVal@247 (line 655)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533434f: mov    r11d,DWORD PTR [rsp+0x8]
  0x00007f9d85334354: cmp    r11d,0xf8003bd1    ;   {metadata('java/util/HashMap')}
  0x00007f9d8533435b: je     0x00007f9d85334290
  0x00007f9d85334361: mov    r9,rax
  0x00007f9d85334364: mov    esi,0xffffffde
  0x00007f9d85334369: mov    ebp,r10d
  0x00007f9d8533436c: mov    QWORD PTR [rsp+0x8],r9
  0x00007f9d85334371: xchg   ax,ax
  0x00007f9d85334373: call   0x00007f9d850051a0  ; OopMap{rbp=NarrowOop [8]=Oop [36]=NarrowOop off=1016}
                                                ;*invokevirtual afterNodeAccess
                                                ; - java.util.HashMap::putVal@253 (line 656)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334378: call   0x00007f9d9a006320  ;*invokevirtual afterNodeAccess
                                                ; - java.util.HashMap::putVal@253 (line 656)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d8533437d: cmp    ebx,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f9d85334383: jne    0x00007f9d8533493f  ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334389: mov    rax,QWORD PTR [r15+0x60]
  0x00007f9d8533438d: mov    r8,rax
  0x00007f9d85334390: add    r8,0x20
  0x00007f9d85334394: cmp    r8,QWORD PTR [r15+0x70]
  0x00007f9d85334398: jae    0x00007f9d853346f7
  0x00007f9d8533439e: mov    QWORD PTR [r15+0x60],r8
  0x00007f9d853343a2: prefetchnta BYTE PTR [r8+0xc0]
  0x00007f9d853343aa: mov    r10,QWORD PTR [rdx+0xa8]
  0x00007f9d853343b1: mov    QWORD PTR [rax],r10
  0x00007f9d853343b4: mov    DWORD PTR [rax+0x8],0xf8003c4e
                                                ;   {metadata('java/util/HashMap$Node')}
  0x00007f9d853343bb: mov    DWORD PTR [rax+0xc],r12d
  0x00007f9d853343bf: mov    DWORD PTR [rax+0x14],r12d
  0x00007f9d853343c3: mov    QWORD PTR [rax+0x18],r12
  0x00007f9d853343c7: mov    DWORD PTR [rax+0x10],edi  ;*new
                                                ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853343ca: mov    r10d,DWORD PTR [rsp+0x20]
  0x00007f9d853343cf: mov    DWORD PTR [rax+0xc],r10d  ;*putfield hash
                                                ; - java.util.HashMap$Node::<init>@6 (line 285)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853343d3: mov    DWORD PTR [rax+0x14],ecx  ;*putfield value
                                                ; - java.util.HashMap$Node::<init>@16 (line 287)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853343d6: mov    r10d,DWORD PTR [r11+0x8]  ;*aastore
                                                ; - java.util.HashMap::putVal@59 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853343da: mov    r8,rax
  0x00007f9d853343dd: shr    r8,0x9
  0x00007f9d853343e1: mov    rcx,0x7f9d811ff000
  0x00007f9d853343eb: mov    BYTE PTR [rcx+r8*1],r12b  ;*synchronization entry
                                                ; - java.util.HashMap::newNode@-1 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853343ef: cmp    r10d,0xf8003c94    ;   {metadata('java/util/HashMap$Node'[])}
  0x00007f9d853343f6: jne    0x00007f9d85334981
  0x00007f9d853343fc: mov    r10,r14
  0x00007f9d853343ff: mov    r8,rax
  0x00007f9d85334402: shr    r8,0x3
  0x00007f9d85334406: mov    DWORD PTR [r14],r8d
  0x00007f9d85334409: shr    r10,0x9
  0x00007f9d8533440d: mov    r11,0x7f9d811ff000
  0x00007f9d85334417: mov    BYTE PTR [r11+r10*1],r12b
                                                ;*ifnull
                                                ; - java.util.HashMap::putVal@224 (line 652)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533441b: inc    DWORD PTR [rbp+0x18]  ;*putfield modCount
                                                ; - java.util.HashMap::putVal@266 (line 660)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533441e: mov    r11d,DWORD PTR [rbp+0x14]
  0x00007f9d85334422: mov    r10d,DWORD PTR [rbp+0x1c]
  0x00007f9d85334426: inc    r11d               ;*iadd
                                                ; - java.util.HashMap::putVal@275 (line 661)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334429: mov    DWORD PTR [rbp+0x14],r11d
                                                ;*putfield size
                                                ; - java.util.HashMap::putVal@277 (line 661)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533442d: cmp    r11d,r10d
  0x00007f9d85334430: jg     0x00007f9d85334665  ;*aload_0
                                                ; - java.util.HashMap::putVal@292 (line 663)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334436: mov    r11d,DWORD PTR [rbp+0x8]
  0x00007f9d8533443a: cmp    r11d,0xf8003bd1    ;   {metadata('java/util/HashMap')}
  0x00007f9d85334441: je     0x00007f9d85334290
  0x00007f9d85334447: mov    esi,0xffffffde
  0x00007f9d8533444c: xchg   ax,ax
  0x00007f9d8533444f: call   0x00007f9d850051a0  ; OopMap{rbp=Oop off=1236}
                                                ;*invokevirtual afterNodeInsertion
                                                ; - java.util.HashMap::putVal@295 (line 663)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334454: call   0x00007f9d9a006320  ;*checkcast
                                                ; - Hash_LongPoint::inc@17 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334459: mov    r10d,0x1
  0x00007f9d8533445f: jmp    0x00007f9d8533410c
  0x00007f9d85334464: lea    rsi,[r12+r11*8]    ;*aload
                                                ; - java.util.HashMap::getNode@98 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334468: mov    r10d,DWORD PTR [rsi+0xc]
  0x00007f9d8533446c: cmp    r10d,edx
  0x00007f9d8533446f: je     0x00007f9d8533448d  ;*if_icmpne
                                                ; - java.util.HashMap::getNode@104 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334471: mov    ecx,DWORD PTR [rsi+0x18]  ;*getfield next
                                                ; - java.util.HashMap::getNode@137 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334474: mov    r10,QWORD PTR [rsp]
  0x00007f9d85334478: mov    r11,QWORD PTR [rsp+0x28]  ; OopMap{r10=Oop r11=Oop rcx=NarrowOop [0]=Oop [36]=NarrowOop [40]=Oop off=1277}
                                                ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d8533447d: test   DWORD PTR [rip+0x155c8b7d],eax        # 0x00007f9d9a8fd000
                                                ;   {poll}
  0x00007f9d85334483: test   ecx,ecx
  0x00007f9d85334485: je     0x00007f9d85334459  ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334487: lea    rsi,[r12+rcx*8]    ;*getfield next
                                                ; - java.util.HashMap::getNode@137 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d8533448b: jmp    0x00007f9d85334468
  0x00007f9d8533448d: mov    ebp,DWORD PTR [rsi+0x10]  ;*getfield key
                                                ; - java.util.HashMap::getNode@109 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334490: mov    r11,rbp
  0x00007f9d85334493: shl    r11,0x3
  0x00007f9d85334497: mov    r10,QWORD PTR [rsp+0x28]
  0x00007f9d8533449c: cmp    r11,r10
  0x00007f9d8533449f: je     0x00007f9d853340e2  ;*if_acmpeq
                                                ; - java.util.HashMap::getNode@116 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853344a5: mov    r10d,DWORD PTR [r12+rbp*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f9d85334c5d
  0x00007f9d853344aa: cmp    r10d,0xf800c188    ;   {metadata('LongPoint6')}
  0x00007f9d853344b1: jne    0x00007f9d85334b01
  0x00007f9d853344b7: lea    r10,[r12+rbp*8]    ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853344bb: mov    r11,QWORD PTR [r10+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853344bf: cmp    r11,r9
  0x00007f9d853344c2: je     0x00007f9d853340e2  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853344c8: cmp    r11,r9
  0x00007f9d853344cb: mov    ebp,0xffffffff
  0x00007f9d853344d0: jl     0x00007f9d853344da
  0x00007f9d853344d2: setne  bpl
  0x00007f9d853344d6: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d853344da: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d853344df: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f9d853344e4: mov    DWORD PTR [rsp+0x10],edx
  0x00007f9d853344e8: mov    QWORD PTR [rsp+0x20],rsi
  0x00007f9d853344ed: mov    esi,0xffffff65
  0x00007f9d853344f2: nop    
  0x00007f9d853344f3: call   0x00007f9d850051a0  ; OopMap{[0]=Oop [8]=Oop [32]=Oop off=1400}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d853344f8: call   0x00007f9d9a006320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d853344fd: mov    r8d,DWORD PTR [r12+r8*8+0x18]
                                                ;*getfield next
                                                ; - java.util.HashMap::putVal@136 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334502: test   r8d,r8d
  0x00007f9d85334505: je     0x00007f9d853345b5  ;*ifnonnull
                                                ; - java.util.HashMap::putVal@142 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533450b: lea    r9,[r12+r8*8]      ;*getfield next
                                                ; - java.util.HashMap::putVal@136 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533450f: xor    r8d,r8d            ;*aload
                                                ; - java.util.HashMap::putVal@175 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334512: mov    esi,DWORD PTR [r9+0xc]
  0x00007f9d85334516: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f9d8533451a: cmp    esi,eax
  0x00007f9d8533451c: je     0x00007f9d85334540  ;*if_icmpne
                                                ; - java.util.HashMap::putVal@181 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533451e: mov    esi,DWORD PTR [r9+0x18]  ;*getfield next
                                                ; - java.util.HashMap::putVal@136 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334522: inc    r8d                ;*iinc
                                                ; - java.util.HashMap::putVal@216 (line 639)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334525: vmovss xmm0,DWORD PTR [rsp+0x20]
  0x00007f9d8533452b: mov    r14,QWORD PTR [rsp+0x28]  ; OopMap{r10=Oop r11=Oop r9=Oop rcx=NarrowOop rdi=NarrowOop rsi=NarrowOop rbp=Oop r14=Oop [36]=NarrowOop [40]=Oop off=1456}
                                                ;*goto
                                                ; - java.util.HashMap::putVal@219 (line 639)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334530: test   DWORD PTR [rip+0x155c8aca],eax        # 0x00007f9d9a8fd000
                                                ;*goto
                                                ; - java.util.HashMap::putVal@219 (line 639)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {poll}
  0x00007f9d85334536: test   esi,esi
  0x00007f9d85334538: je     0x00007f9d853345b8  ;*ifnonnull
                                                ; - java.util.HashMap::putVal@142 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533453a: lea    r9,[r12+rsi*8]     ;*getfield next
                                                ; - java.util.HashMap::putVal@136 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533453e: jmp    0x00007f9d85334512
  0x00007f9d85334540: mov    ebp,DWORD PTR [r9+0x10]  ;*getfield key
                                                ; - java.util.HashMap::putVal@186 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334544: mov    rdx,rbp
  0x00007f9d85334547: shl    rdx,0x3
  0x00007f9d8533454b: mov    rdi,QWORD PTR [rsp+0x28]
  0x00007f9d85334550: cmp    rdx,rdi
  0x00007f9d85334553: je     0x00007f9d853349f5  ;*if_acmpeq
                                                ; - java.util.HashMap::putVal@193 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334559: mov    edi,DWORD PTR [r12+rbp*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f9d85334c29
  0x00007f9d8533455e: cmp    edi,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f9d85334564: jne    0x00007f9d85334a92
  0x00007f9d8533456a: lea    rdi,[r12+rbp*8]    ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533456e: mov    rdi,QWORD PTR [rdi+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334572: cmp    rdi,r13
  0x00007f9d85334575: jne    0x00007f9d853349a1  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533457b: mov    r10d,DWORD PTR [r9+0x14]  ;*getfield value
                                                ; - java.util.HashMap::putVal@229 (line 653)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533457f: mov    DWORD PTR [r9+0x14],ecx
  0x00007f9d85334583: mov    r11,r9
  0x00007f9d85334586: shr    r11,0x9
  0x00007f9d8533458a: mov    r8,0x7f9d811ff000
  0x00007f9d85334594: mov    BYTE PTR [r8+r11*1],r12b  ;*putfield value
                                                ; - java.util.HashMap::putVal@247 (line 655)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334598: cmp    ebx,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f9d8533459e: je     0x00007f9d85334290  ;*invokevirtual afterNodeAccess
                                                ; - java.util.HashMap::putVal@253 (line 656)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853345a4: jmp    0x00007f9d85334364
  0x00007f9d853345a9: mov    r10,QWORD PTR [rsp]
  0x00007f9d853345ad: mov    rbp,r10
  0x00007f9d853345b0: jmp    0x00007f9d8533441b
  0x00007f9d853345b5: xor    r8d,r8d            ;*aload
                                                ; - java.util.HashMap::putVal@145 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853345b8: cmp    ebx,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f9d853345be: jne    0x00007f9d85334a35  ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853345c4: mov    rax,QWORD PTR [r15+0x60]
  0x00007f9d853345c8: mov    rbx,rax
  0x00007f9d853345cb: add    rbx,0x20
  0x00007f9d853345cf: cmp    rbx,QWORD PTR [r15+0x70]
  0x00007f9d853345d3: jae    0x00007f9d853348c1
  0x00007f9d853345d9: mov    QWORD PTR [r15+0x60],rbx
  0x00007f9d853345dd: prefetchnta BYTE PTR [rbx+0xc0]
  0x00007f9d853345e4: mov    rbx,QWORD PTR [rdx+0xa8]
  0x00007f9d853345eb: mov    QWORD PTR [rax],rbx
  0x00007f9d853345ee: mov    DWORD PTR [rax+0x8],0xf8003c4e
                                                ;   {metadata('java/util/HashMap$Node')}
  0x00007f9d853345f5: mov    DWORD PTR [rax+0xc],r12d
  0x00007f9d853345f9: mov    DWORD PTR [rax+0x14],r12d
  0x00007f9d853345fd: mov    QWORD PTR [rax+0x18],r12
  0x00007f9d85334601: mov    DWORD PTR [rax+0x10],edi  ;*new
                                                ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334604: mov    edi,DWORD PTR [rsp+0x20]
  0x00007f9d85334608: mov    DWORD PTR [rax+0xc],edi  ;*putfield hash
                                                ; - java.util.HashMap$Node::<init>@6 (line 285)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533460b: mov    DWORD PTR [rax+0x14],ecx  ;*putfield value
                                                ; - java.util.HashMap$Node::<init>@16 (line 287)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533460e: mov    rcx,rax
  0x00007f9d85334611: mov    rbx,rax
  0x00007f9d85334614: shr    rbx,0x3
  0x00007f9d85334618: shr    rcx,0x9
  0x00007f9d8533461c: mov    rdi,0x7f9d811ff000
  0x00007f9d85334626: mov    BYTE PTR [rdi+rcx*1],r12b
                                                ;*synchronization entry
                                                ; - java.util.HashMap::newNode@-1 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533462a: mov    DWORD PTR [r9+0x18],ebx
  0x00007f9d8533462e: shr    r9,0x9
  0x00007f9d85334632: mov    rcx,0x7f9d811ff000
  0x00007f9d8533463c: mov    BYTE PTR [rcx+r9*1],r12b
  0x00007f9d85334640: cmp    r8d,0x7
  0x00007f9d85334644: jl     0x00007f9d8533441b  ;*putfield next
                                                ; - java.util.HashMap::putVal@155 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533464a: mov    QWORD PTR [rsp],r10
  0x00007f9d8533464e: mov    rsi,rbp
  0x00007f9d85334651: mov    rdx,r11
  0x00007f9d85334654: mov    ecx,DWORD PTR [rsp+0x20]
  0x00007f9d85334658: xchg   ax,ax
  0x00007f9d8533465b: call   0x00007f9d85046020  ; OopMap{rbp=Oop [0]=Oop off=1760}
                                                ;*invokevirtual treeifyBin
                                                ; - java.util.HashMap::putVal@169 (line 643)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {optimized virtual_call}
  0x00007f9d85334660: jmp    0x00007f9d8533441b  ;*aastore
                                                ; - java.util.HashMap::putVal@59 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334665: mov    rsi,rbp
  0x00007f9d85334668: xchg   ax,ax
  0x00007f9d8533466b: call   0x00007f9d85046020  ; OopMap{rbp=Oop off=1776}
                                                ;*invokevirtual resize
                                                ; - java.util.HashMap::putVal@288 (line 662)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {optimized virtual_call}
  0x00007f9d85334670: jmp    0x00007f9d85334436
  0x00007f9d85334675: mov    rsi,rbp
  0x00007f9d85334678: xchg   ax,ax
  0x00007f9d8533467b: call   0x00007f9d85046020  ; OopMap{rbp=Oop [16]=Oop [36]=NarrowOop [40]=Oop off=1792}
                                                ;*invokevirtual resize
                                                ; - java.util.HashMap::putVal@20 (line 628)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {optimized virtual_call}
  0x00007f9d85334680: mov    r10d,DWORD PTR [rax+0xc]  ;*arraylength
                                                ; - java.util.HashMap::putVal@26 (line 628)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ; implicit exception: dispatches to 0x00007f9d85334c85
  0x00007f9d85334684: mov    r11,QWORD PTR [rsp+0x28]
  0x00007f9d85334689: mov    r13,QWORD PTR [r11+0x10]  ;*getfield v
                                                ; - LongPoint::equals@8 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533468d: mov    r11,rax
  0x00007f9d85334690: jmp    0x00007f9d853341c6
  0x00007f9d85334695: mov    rsi,0x7c0060c40    ;   {metadata('LongPoint6')}
  0x00007f9d8533469f: call   0x00007f9d852a5ea0  ; OopMap{[0]=Oop off=1828}
                                                ;*new  ; - LongPoint6$1::create@0 (line 9)
                                                ; - LongPoint6$1::create@2 (line 5)
                                                ; - Hash_LongPoint::inc@5 (line 47)
                                                ;   {runtime_call}
  0x00007f9d853346a4: jmp    0x00007f9d85333ffd
  0x00007f9d853346a9: mov    rax,QWORD PTR [r15+0x60]
  0x00007f9d853346ad: mov    r11,rax
  0x00007f9d853346b0: add    r11,0x10
  0x00007f9d853346b4: cmp    r11,QWORD PTR [r15+0x70]
  0x00007f9d853346b8: jae    0x00007f9d85334a6d
  0x00007f9d853346be: mov    QWORD PTR [r15+0x60],r11
  0x00007f9d853346c2: prefetchnta BYTE PTR [r11+0xc0]
  0x00007f9d853346ca: mov    r11d,0xf8002260    ;   {metadata('java/lang/Integer')}
  0x00007f9d853346d0: shl    r11,0x3
  0x00007f9d853346d4: mov    r11,QWORD PTR [r11+0xa8]
  0x00007f9d853346db: mov    QWORD PTR [rax],r11
  0x00007f9d853346de: mov    DWORD PTR [rax+0x8],0xf8002260
                                                ;   {metadata('java/lang/Integer')}
  0x00007f9d853346e5: mov    DWORD PTR [rax+0xc],r12d  ;*new
                                                ; - java.lang.Integer::valueOf@23 (line 832)
                                                ; - Hash_LongPoint::inc@43 (line 49)

  0x00007f9d853346e9: mov    DWORD PTR [rax+0xc],r10d  ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 830)
                                                ; - Hash_LongPoint::inc@43 (line 49)

  0x00007f9d853346ed: mov    QWORD PTR [rsp+0x10],rax
  0x00007f9d853346f2: jmp    0x00007f9d85334155
  0x00007f9d853346f7: mov    DWORD PTR [rsp+0x38],edi
  0x00007f9d853346fb: mov    DWORD PTR [rsp+0x24],ecx
  0x00007f9d853346ff: mov    QWORD PTR [rsp+0x30],r14
  0x00007f9d85334704: mov    DWORD PTR [rsp+0x14],r9d
  0x00007f9d85334709: mov    QWORD PTR [rsp+0x18],r11
  0x00007f9d8533470e: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d85334713: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f9d85334717: mov    DWORD PTR [rsp+0x10],eax
  0x00007f9d8533471b: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d85334720: mov    rsi,0x7c001e270    ;   {metadata('java/util/HashMap$Node')}
  0x00007f9d8533472a: mov    QWORD PTR [rsp+0x8],r10
  0x00007f9d8533472f: call   0x00007f9d852a5ea0  ; OopMap{rbp=Oop [8]=Oop [24]=Oop [36]=NarrowOop [40]=Oop [48]=Derived_oop_[24] [56]=NarrowOop off=1972}
                                                ;*new  ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334734: mov    r11,QWORD PTR [rsp+0x18]
  0x00007f9d85334739: mov    r9d,DWORD PTR [rsp+0x14]
  0x00007f9d8533473e: mov    r14,QWORD PTR [rsp+0x30]
  0x00007f9d85334743: mov    ecx,DWORD PTR [rsp+0x24]
  0x00007f9d85334747: mov    edi,DWORD PTR [rsp+0x38]
  0x00007f9d8533474b: jmp    0x00007f9d853343c7
  0x00007f9d85334750: mov    esi,0xfffffff6
  0x00007f9d85334755: xchg   ax,ax
  0x00007f9d85334757: call   0x00007f9d850051a0  ; OopMap{off=2012}
                                                ;*invokevirtual create
                                                ; - Hash_LongPoint::inc@5 (line 47)
                                                ;   {runtime_call}
  0x00007f9d8533475c: call   0x00007f9d9a006320  ;*invokevirtual create
                                                ; - Hash_LongPoint::inc@5 (line 47)
                                                ;   {runtime_call}
  0x00007f9d85334761: mov    esi,0xffffffe4
  0x00007f9d85334766: mov    rbp,QWORD PTR [rsp]
  0x00007f9d8533476a: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d8533476f: rex.W pop    QWORD PTR [rsp]
  0x00007f9d85334773: mov    DWORD PTR [rsp+0x8],edx
  0x00007f9d85334777: mov    DWORD PTR [rsp+0xc],r10d
  0x00007f9d8533477c: mov    DWORD PTR [rsp+0x18],r11d
  0x00007f9d85334781: xchg   ax,ax
  0x00007f9d85334783: call   0x00007f9d850051a0  ; OopMap{rbp=Oop [0]=Oop [12]=NarrowOop off=2056}
                                                ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334788: call   0x00007f9d9a006320  ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d8533478d: mov    esi,0xffffffe4
  0x00007f9d85334792: mov    ebp,DWORD PTR [rsp+0x24]
  0x00007f9d85334796: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d8533479b: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f9d8533479f: mov    DWORD PTR [rsp],eax
  0x00007f9d853347a2: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d853347a7: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d853347ac: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f9d853347b1: mov    QWORD PTR [rsp+0x20],r11
  0x00007f9d853347b6: mov    DWORD PTR [rsp+0x28],r9d
  0x00007f9d853347bb: call   0x00007f9d850051a0  ; OopMap{rbp=NarrowOop [8]=Oop [16]=Oop [32]=Oop off=2112}
                                                ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d853347c0: call   0x00007f9d9a006320  ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d853347c5: mov    esi,0xffffffe4
  0x00007f9d853347ca: mov    DWORD PTR [rsp+0x8],r8d
  0x00007f9d853347cf: call   0x00007f9d850051a0  ; OopMap{[36]=NarrowOop [40]=Oop off=2132}
                                                ;*aaload
                                                ; - java.lang.Integer::valueOf@21 (line 831)
                                                ; - Hash_LongPoint::inc@43 (line 49)
                                                ;   {runtime_call}
  0x00007f9d853347d4: call   0x00007f9d9a006320  ;*aaload
                                                ; - java.lang.Integer::valueOf@21 (line 831)
                                                ; - Hash_LongPoint::inc@43 (line 49)
                                                ;   {runtime_call}
  0x00007f9d853347d9: mov    esi,0xffffffde
  0x00007f9d853347de: mov    rbp,QWORD PTR [rsp]
  0x00007f9d853347e2: mov    QWORD PTR [rsp+0x10],rax
  0x00007f9d853347e7: call   0x00007f9d850051a0  ; OopMap{rbp=Oop [16]=Oop [36]=NarrowOop [40]=Oop off=2156}
                                                ;*invokevirtual get
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d853347ec: call   0x00007f9d9a006320  ;*invokevirtual get
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d853347f1: mov    esi,0xffffff65
  0x00007f9d853347f6: mov    rbp,QWORD PTR [rsp]
  0x00007f9d853347fa: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d853347ff: rex.W pop    QWORD PTR [rsp]
  0x00007f9d85334803: mov    DWORD PTR [rsp+0x8],edx
  0x00007f9d85334807: mov    DWORD PTR [rsp+0xc],r10d
  0x00007f9d8533480c: mov    DWORD PTR [rsp+0x1c],r8d
  0x00007f9d85334811: xchg   ax,ax
  0x00007f9d85334813: call   0x00007f9d850051a0  ; OopMap{rbp=Oop [0]=Oop [12]=NarrowOop off=2200}
                                                ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334818: call   0x00007f9d9a006320  ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d8533481d: mov    esi,0xffffff65
  0x00007f9d85334822: mov    DWORD PTR [rsp+0xc],r10d
  0x00007f9d85334827: call   0x00007f9d850051a0  ; OopMap{[36]=NarrowOop [40]=Oop off=2220}
                                                ;*if_icmplt
                                                ; - java.lang.Integer::valueOf@3 (line 830)
                                                ; - Hash_LongPoint::inc@43 (line 49)
                                                ;   {runtime_call}
  0x00007f9d8533482c: call   0x00007f9d9a006320  ;*if_icmplt
                                                ; - java.lang.Integer::valueOf@3 (line 830)
                                                ; - Hash_LongPoint::inc@43 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334831: mov    esi,0xffffff65
  0x00007f9d85334836: mov    DWORD PTR [rsp+0x4],r11d
  0x00007f9d8533483b: mov    DWORD PTR [rsp+0x1c],r10d
  0x00007f9d85334840: xchg   ax,ax
  0x00007f9d85334843: call   0x00007f9d850051a0  ; OopMap{[4]=NarrowOop [16]=Oop [36]=NarrowOop [40]=Oop off=2248}
                                                ;*ifne
                                                ; - java.util.HashMap::putVal@16 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334848: call   0x00007f9d9a006320  ;*ifne
                                                ; - java.util.HashMap::putVal@16 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d8533484d: cmp    rdi,r13
  0x00007f9d85334850: mov    ebp,0xffffffff
  0x00007f9d85334855: jl     0x00007f9d8533485f
  0x00007f9d85334857: setne  bpl
  0x00007f9d8533485b: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d8533485f: mov    esi,0xffffff65
  0x00007f9d85334864: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d85334869: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f9d8533486d: mov    DWORD PTR [rsp+0x4],eax
  0x00007f9d85334871: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d85334876: mov    QWORD PTR [rsp+0x18],r11
  0x00007f9d8533487b: mov    DWORD PTR [rsp+0x20],r8d
  0x00007f9d85334880: xchg   ax,ax
  0x00007f9d85334883: call   0x00007f9d850051a0  ; OopMap{[16]=Oop [24]=Oop [32]=NarrowOop [36]=NarrowOop [40]=Oop off=2312}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334888: call   0x00007f9d9a006320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d8533488d: cmp    r8,r9
  0x00007f9d85334890: mov    ebp,0xffffffff
  0x00007f9d85334895: jl     0x00007f9d8533489f
  0x00007f9d85334897: setne  bpl
  0x00007f9d8533489b: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d8533489f: mov    esi,0xffffff65
  0x00007f9d853348a4: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d853348a9: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f9d853348ae: mov    DWORD PTR [rsp+0x10],edx
  0x00007f9d853348b2: mov    DWORD PTR [rsp+0x14],r10d
  0x00007f9d853348b7: call   0x00007f9d850051a0  ; OopMap{[0]=Oop [8]=Oop [20]=NarrowOop off=2364}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d853348bc: call   0x00007f9d9a006320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d853348c1: mov    QWORD PTR [rsp+0x38],rbp
  0x00007f9d853348c6: mov    DWORD PTR [rsp+0x1c],r8d
  0x00007f9d853348cb: mov    QWORD PTR [rsp+0x30],r9
  0x00007f9d853348d0: mov    DWORD PTR [rsp+0x18],edi
  0x00007f9d853348d4: mov    DWORD PTR [rsp+0xc],ecx
  0x00007f9d853348d8: mov    QWORD PTR [rsp+0x10],r11
  0x00007f9d853348dd: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d853348e2: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f9d853348e6: mov    DWORD PTR [rsp+0x8],eax
  0x00007f9d853348ea: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d853348ef: mov    QWORD PTR [rsp],r10
  0x00007f9d853348f3: mov    rsi,0x7c001e270    ;   {metadata('java/util/HashMap$Node')}
  0x00007f9d853348fd: mov    rbp,QWORD PTR [rsp+0x28]
  0x00007f9d85334902: nop    
  0x00007f9d85334903: call   0x00007f9d852a5ea0  ; OopMap{rbp=Oop [0]=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [48]=Oop [56]=Oop off=2440}
                                                ;*new  ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334908: mov    r10,QWORD PTR [rsp]
  0x00007f9d8533490c: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d85334911: mov    eax,DWORD PTR [rsp+0x8]
  0x00007f9d85334915: mov    DWORD PTR [rsp+0x20],eax
  0x00007f9d85334919: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d8533491e: mov    r11,QWORD PTR [rsp+0x10]
  0x00007f9d85334923: mov    ecx,DWORD PTR [rsp+0xc]
  0x00007f9d85334927: mov    edi,DWORD PTR [rsp+0x18]
  0x00007f9d8533492b: mov    r9,QWORD PTR [rsp+0x30]
  0x00007f9d85334930: mov    r8d,DWORD PTR [rsp+0x1c]
  0x00007f9d85334935: mov    rbp,QWORD PTR [rsp+0x38]
  0x00007f9d8533493a: jmp    0x00007f9d85334601
  0x00007f9d8533493f: mov    esi,0xffffff76
  0x00007f9d85334944: mov    QWORD PTR [rsp],r11
  0x00007f9d85334948: mov    DWORD PTR [rsp+0x8],r9d
  0x00007f9d8533494d: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d85334952: mov    eax,DWORD PTR [rsp+0x24]
  0x00007f9d85334956: mov    DWORD PTR [rsp+0xc],eax
  0x00007f9d8533495a: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d8533495f: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d85334964: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f9d85334968: mov    DWORD PTR [rsp+0x10],eax
  0x00007f9d8533496c: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d85334971: mov    QWORD PTR [rsp+0x20],r10
  0x00007f9d85334976: nop    
  0x00007f9d85334977: call   0x00007f9d850051a0  ; OopMap{[0]=Oop [12]=NarrowOop [32]=Oop [40]=Oop off=2556}
                                                ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d8533497c: call   0x00007f9d9a006320  ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334981: mov    esi,0xffffffd6
  0x00007f9d85334986: mov    QWORD PTR [rsp],r11
  0x00007f9d8533498a: mov    DWORD PTR [rsp+0x8],r9d
  0x00007f9d8533498f: mov    QWORD PTR [rsp+0x10],rax
  0x00007f9d85334994: xchg   ax,ax
  0x00007f9d85334997: call   0x00007f9d850051a0  ; OopMap{rbp=Oop [0]=Oop [16]=Oop off=2588}
                                                ;*aastore
                                                ; - java.util.HashMap::putVal@59 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d8533499c: call   0x00007f9d9a006320  ;*aastore
                                                ; - java.util.HashMap::putVal@59 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d853349a1: cmp    rdi,r13
  0x00007f9d853349a4: mov    ebp,0xffffffff
  0x00007f9d853349a9: jl     0x00007f9d853349b3
  0x00007f9d853349ab: setne  bpl
  0x00007f9d853349af: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d853349b3: mov    esi,0xffffff65
  0x00007f9d853349b8: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d853349bd: mov    eax,DWORD PTR [rsp+0x24]
  0x00007f9d853349c1: mov    DWORD PTR [rsp],eax
  0x00007f9d853349c4: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d853349c9: mov    DWORD PTR [rsp+0x4],eax
  0x00007f9d853349cd: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d853349d2: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f9d853349d7: mov    QWORD PTR [rsp+0x10],r10
  0x00007f9d853349dc: mov    QWORD PTR [rsp+0x18],r11
  0x00007f9d853349e1: mov    QWORD PTR [rsp+0x20],r9
  0x00007f9d853349e6: mov    DWORD PTR [rsp+0x28],r8d
  0x00007f9d853349eb: call   0x00007f9d850051a0  ; OopMap{[0]=NarrowOop [8]=Oop [16]=Oop [24]=Oop [32]=Oop off=2672}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d853349f0: call   0x00007f9d9a006320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d853349f5: mov    esi,0xffffff65
  0x00007f9d853349fa: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d853349ff: mov    eax,DWORD PTR [rsp+0x24]
  0x00007f9d85334a03: mov    DWORD PTR [rsp],eax
  0x00007f9d85334a06: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d85334a0b: mov    DWORD PTR [rsp+0x4],eax
  0x00007f9d85334a0f: mov    QWORD PTR [rsp+0x10],r10
  0x00007f9d85334a14: mov    QWORD PTR [rsp+0x18],r11
  0x00007f9d85334a19: mov    QWORD PTR [rsp+0x20],rdi
  0x00007f9d85334a1e: mov    QWORD PTR [rsp+0x28],r9
  0x00007f9d85334a23: mov    DWORD PTR [rsp+0x30],r8d
  0x00007f9d85334a28: xchg   ax,ax
  0x00007f9d85334a2b: call   0x00007f9d850051a0  ; OopMap{rbp=NarrowOop [0]=NarrowOop [16]=Oop [24]=Oop [32]=Oop [40]=Oop off=2736}
                                                ;*if_acmpeq
                                                ; - java.util.HashMap::putVal@193 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334a30: call   0x00007f9d9a006320  ;*if_acmpeq
                                                ; - java.util.HashMap::putVal@193 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334a35: mov    esi,0xffffff76
  0x00007f9d85334a3a: mov    QWORD PTR [rsp+0x10],r11
  0x00007f9d85334a3f: mov    QWORD PTR [rsp+0x18],r9
  0x00007f9d85334a44: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d85334a49: mov    eax,DWORD PTR [rsp+0x24]
  0x00007f9d85334a4d: mov    DWORD PTR [rsp+0x4],eax
  0x00007f9d85334a51: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d85334a56: mov    QWORD PTR [rsp+0x30],r10
  0x00007f9d85334a5b: mov    DWORD PTR [rsp+0x24],r8d
  0x00007f9d85334a60: xchg   ax,ax
  0x00007f9d85334a63: call   0x00007f9d850051a0  ; OopMap{[4]=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop off=2792}
                                                ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334a68: call   0x00007f9d9a006320  ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334a6d: mov    DWORD PTR [rsp+0x4],r10d
  0x00007f9d85334a72: mov    rbp,QWORD PTR [rsp+0x28]
  0x00007f9d85334a77: mov    rsi,0x7c0011300    ;   {metadata('java/lang/Integer')}
  0x00007f9d85334a81: xchg   ax,ax
  0x00007f9d85334a83: call   0x00007f9d852a5ea0  ; OopMap{rbp=Oop [36]=NarrowOop [40]=Oop off=2824}
                                                ;*new  ; - java.lang.Integer::valueOf@23 (line 832)
                                                ; - Hash_LongPoint::inc@43 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334a88: mov    r10d,DWORD PTR [rsp+0x4]
  0x00007f9d85334a8d: jmp    0x00007f9d853346e9
  0x00007f9d85334a92: mov    esi,0xffffffde
  0x00007f9d85334a97: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d85334a9c: mov    eax,DWORD PTR [rsp+0x24]
  0x00007f9d85334aa0: mov    DWORD PTR [rsp],eax
  0x00007f9d85334aa3: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d85334aa8: mov    DWORD PTR [rsp+0x4],eax
  0x00007f9d85334aac: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d85334ab1: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f9d85334ab6: mov    QWORD PTR [rsp+0x10],r10
  0x00007f9d85334abb: mov    QWORD PTR [rsp+0x18],r11
  0x00007f9d85334ac0: mov    QWORD PTR [rsp+0x28],r9
  0x00007f9d85334ac5: mov    DWORD PTR [rsp+0x30],r8d
  0x00007f9d85334aca: nop    
  0x00007f9d85334acb: call   0x00007f9d850051a0  ; OopMap{rbp=NarrowOop [0]=NarrowOop [8]=Oop [16]=Oop [24]=Oop [40]=Oop off=2896}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334ad0: call   0x00007f9d9a006320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334ad5: mov    esi,0xffffffde
  0x00007f9d85334ada: mov    rbp,QWORD PTR [rsp]
  0x00007f9d85334ade: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d85334ae3: rex.W pop    QWORD PTR [rsp]
  0x00007f9d85334ae7: mov    DWORD PTR [rsp+0x8],edx
  0x00007f9d85334aeb: mov    DWORD PTR [rsp+0xc],r10d
  0x00007f9d85334af0: mov    DWORD PTR [rsp+0x20],r11d
  0x00007f9d85334af5: xchg   ax,ax
  0x00007f9d85334af7: call   0x00007f9d850051a0  ; OopMap{rbp=Oop [0]=Oop [12]=NarrowOop [32]=NarrowOop off=2940}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334afc: call   0x00007f9d9a006320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334b01: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d85334b06: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f9d85334b0b: mov    DWORD PTR [rsp+0x10],edx
  0x00007f9d85334b0f: mov    QWORD PTR [rsp+0x20],rsi
  0x00007f9d85334b14: mov    esi,0xffffffde
  0x00007f9d85334b19: xchg   ax,ax
  0x00007f9d85334b1b: call   0x00007f9d850051a0  ; OopMap{rbp=NarrowOop [0]=Oop [8]=Oop [32]=Oop off=2976}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334b20: call   0x00007f9d9a006320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334b25: mov    esi,0xffffffde
  0x00007f9d85334b2a: mov    ebp,DWORD PTR [rsp+0x24]
  0x00007f9d85334b2e: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d85334b33: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f9d85334b37: mov    DWORD PTR [rsp],eax
  0x00007f9d85334b3a: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d85334b3f: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d85334b44: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f9d85334b49: mov    QWORD PTR [rsp+0x18],r11
  0x00007f9d85334b4e: mov    DWORD PTR [rsp+0x4],r8d
  0x00007f9d85334b53: mov    DWORD PTR [rsp+0x28],edi
  0x00007f9d85334b57: call   0x00007f9d850051a0  ; OopMap{rbp=NarrowOop [4]=NarrowOop [8]=Oop [16]=Oop [24]=Oop [40]=NarrowOop off=3036}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334b5c: call   0x00007f9d9a006320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334b61: mov    esi,0xffffffde
  0x00007f9d85334b66: mov    rbp,QWORD PTR [rsp]
  0x00007f9d85334b6a: mov    DWORD PTR [rsp+0x8],r10d
  0x00007f9d85334b6f: call   0x00007f9d850051a0  ; OopMap{rbp=Oop [8]=NarrowOop [40]=Oop off=3060}
                                                ;*checkcast
                                                ; - Hash_LongPoint::inc@17 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334b74: call   0x00007f9d9a006320  ;*checkcast
                                                ; - Hash_LongPoint::inc@17 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334b79: mov    esi,0xfffffff6
  0x00007f9d85334b7e: mov    rbp,rax
  0x00007f9d85334b81: xchg   ax,ax
  0x00007f9d85334b83: call   0x00007f9d850051a0  ; OopMap{rbp=Oop off=3080}
                                                ;*invokevirtual get
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334b88: call   0x00007f9d9a006320  ;*invokevirtual get
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334b8d: mov    esi,0xfffffff6
  0x00007f9d85334b92: mov    rbp,QWORD PTR [rsp+0x28]
  0x00007f9d85334b97: call   0x00007f9d850051a0  ; OopMap{rbp=Oop [16]=Oop off=3100}
                                                ;*invokevirtual put
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334b9c: call   0x00007f9d9a006320  ;*invokevirtual put
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334ba1: mov    esi,0xfffffff4
  0x00007f9d85334ba6: mov    ebp,DWORD PTR [rsp+0x24]
  0x00007f9d85334baa: mov    QWORD PTR [rsp-0x8],rax
  0x00007f9d85334baf: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f9d85334bb3: mov    DWORD PTR [rsp],eax
  0x00007f9d85334bb6: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f9d85334bbb: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d85334bc0: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f9d85334bc5: mov    QWORD PTR [rsp+0x18],r11
  0x00007f9d85334bca: mov    DWORD PTR [rsp+0x4],r8d
  0x00007f9d85334bcf: call   0x00007f9d850051a0  ; OopMap{rbp=NarrowOop [4]=NarrowOop [8]=Oop [16]=Oop [24]=Oop off=3156}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334bd4: call   0x00007f9d9a006320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334bd9: mov    esi,0xffffff65
  0x00007f9d85334bde: mov    rbp,QWORD PTR [rsp]
  0x00007f9d85334be2: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d85334be7: rex.W pop    QWORD PTR [rsp]
  0x00007f9d85334beb: mov    DWORD PTR [rsp+0x8],edx
  0x00007f9d85334bef: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f9d85334bf4: xchg   ax,ax
  0x00007f9d85334bf7: call   0x00007f9d850051a0  ; OopMap{rbp=Oop [0]=Oop [24]=NarrowOop off=3196}
                                                ;*ifnull
                                                ; - java.util.HashMap::getNode@6 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334bfc: call   0x00007f9d9a006320  ;*ifnull
                                                ; - java.util.HashMap::getNode@6 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334c01: mov    esi,0xfffffff4
  0x00007f9d85334c06: mov    rbp,QWORD PTR [rsp]
  0x00007f9d85334c0a: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d85334c0f: rex.W pop    QWORD PTR [rsp]
  0x00007f9d85334c13: mov    DWORD PTR [rsp+0x8],edx
  0x00007f9d85334c17: mov    DWORD PTR [rsp+0xc],r10d
  0x00007f9d85334c1c: xchg   ax,ax
  0x00007f9d85334c1f: call   0x00007f9d850051a0  ; OopMap{rbp=Oop [0]=Oop [12]=NarrowOop off=3236}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334c24: call   0x00007f9d9a006320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334c29: mov    esi,0xfffffff4
  0x00007f9d85334c2e: mov    ebp,DWORD PTR [rsp+0x24]
  0x00007f9d85334c32: mov    DWORD PTR [rsp],eax
  0x00007f9d85334c35: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d85334c3a: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f9d85334c3f: mov    QWORD PTR [rsp+0x10],r10
  0x00007f9d85334c44: mov    QWORD PTR [rsp+0x18],r11
  0x00007f9d85334c49: mov    QWORD PTR [rsp+0x28],r9
  0x00007f9d85334c4e: mov    DWORD PTR [rsp+0x4],r8d
  0x00007f9d85334c53: call   0x00007f9d850051a0  ; OopMap{rbp=NarrowOop [8]=Oop [16]=Oop [24]=Oop [40]=Oop off=3288}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334c58: call   0x00007f9d9a006320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334c5d: mov    rbp,QWORD PTR [rsp]
  0x00007f9d85334c61: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f9d85334c66: rex.W pop    QWORD PTR [rsp]
  0x00007f9d85334c6a: mov    DWORD PTR [rsp+0x8],edx
  0x00007f9d85334c6e: mov    QWORD PTR [rsp+0x18],rsi
  0x00007f9d85334c73: mov    esi,0xfffffff4
  0x00007f9d85334c78: xchg   ax,ax
  0x00007f9d85334c7b: call   0x00007f9d850051a0  ; OopMap{rbp=Oop [0]=Oop [24]=Oop off=3328}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334c80: call   0x00007f9d9a006320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)
                                                ;   {runtime_call}
  0x00007f9d85334c85: mov    esi,0xfffffff6
  0x00007f9d85334c8a: nop    
  0x00007f9d85334c8b: call   0x00007f9d850051a0  ; OopMap{off=3344}
                                                ;*arraylength
                                                ; - java.util.HashMap::putVal@26 (line 628)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334c90: call   0x00007f9d9a006320  ;*new
                                                ; - java.lang.Integer::valueOf@23 (line 832)
                                                ; - Hash_LongPoint::inc@43 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334c95: mov    rsi,rax
  0x00007f9d85334c98: jmp    0x00007f9d85334cb1  ;*new
                                                ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334c9a: jmp    0x00007f9d85334cae  ;*invokevirtual treeifyBin
                                                ; - java.util.HashMap::putVal@169 (line 643)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334c9c: jmp    0x00007f9d85334cae  ;*new
                                                ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334c9e: jmp    0x00007f9d85334cae  ;*new
                                                ; - LongPoint6$1::create@0 (line 9)
                                                ; - LongPoint6$1::create@2 (line 5)
                                                ; - Hash_LongPoint::inc@5 (line 47)

  0x00007f9d85334ca0: mov    rsi,rax
  0x00007f9d85334ca3: jmp    0x00007f9d85334cb1  ;*invokevirtual resize
                                                ; - java.util.HashMap::putVal@20 (line 628)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334ca5: jmp    0x00007f9d85334cae  ;*invokevirtual resize
                                                ; - java.util.HashMap::putVal@288 (line 662)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334ca7: jmp    0x00007f9d85334cae  ;*invokevirtual getTreeNode
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::inc@14 (line 48)

  0x00007f9d85334ca9: mov    rsi,rax
  0x00007f9d85334cac: jmp    0x00007f9d85334cb1  ;*synchronization entry
                                                ; - java.util.HashMap::putVal@-1 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)

  0x00007f9d85334cae: mov    rsi,rax            ;*synchronization entry
                                                ; - Hash_LongPoint::inc@-1 (line 47)

  0x00007f9d85334cb1: add    rsp,0x60
  0x00007f9d85334cb5: pop    rbp
  0x00007f9d85334cb6: jmp    0x00007f9d852b14e0  ;*goto
                                                ; - java.util.HashMap::putVal@128 (line 637)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::inc@46 (line 49)
                                                ;   {runtime_call}
  0x00007f9d85334cbb: hlt    
  0x00007f9d85334cbc: hlt    
  0x00007f9d85334cbd: hlt    
  0x00007f9d85334cbe: hlt    
  0x00007f9d85334cbf: hlt    
[Stub Code]
  0x00007f9d85334cc0: mov    rbx,0x0            ;   {no_reloc}
  0x00007f9d85334cca: jmp    0x00007f9d85334cca  ;   {runtime_call}
  0x00007f9d85334ccf: mov    rbx,0x0            ;   {static_stub}
  0x00007f9d85334cd9: jmp    0x00007f9d85334cd9  ;   {runtime_call}
  0x00007f9d85334cde: mov    rbx,0x0            ;   {static_stub}
  0x00007f9d85334ce8: jmp    0x00007f9d85334ce8  ;   {runtime_call}
  0x00007f9d85334ced: mov    rbx,0x0            ;   {static_stub}
  0x00007f9d85334cf7: jmp    0x00007f9d85334cf7  ;   {runtime_call}
  0x00007f9d85334cfc: mov    rbx,0x0            ;   {static_stub}
  0x00007f9d85334d06: jmp    0x00007f9d85334d06  ;   {runtime_call}
[Exception Handler]
  0x00007f9d85334d0b: jmp    0x00007f9d8506c3a0  ;   {runtime_call}
[Deopt Handler Code]
  0x00007f9d85334d10: call   0x00007f9d85334d15
  0x00007f9d85334d15: sub    QWORD PTR [rsp],0x5
  0x00007f9d85334d1a: jmp    0x00007f9d850473c0  ;   {runtime_call}
  0x00007f9d85334d1f: hlt    


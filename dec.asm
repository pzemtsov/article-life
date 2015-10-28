[Entry Point]
[Constants]
  # {method} {0x00007f8e81054d58} 'dec' '(J)V' in 'Hash_LongPoint'
  # this:     rsi:rsi   = 'Hash_LongPoint'
  # parm0:    rdx:rdx   = long
  #           [sp+0x70]  (sp of caller)
  0x00007f8e85345ba0: mov    r10d,DWORD PTR [rsi+0x8]
  0x00007f8e85345ba4: shl    r10,0x3
  0x00007f8e85345ba8: cmp    rax,r10
  0x00007f8e85345bab: jne    0x00007f8e85045e20  ;   {runtime_call}
  0x00007f8e85345bb1: xchg   ax,ax
  0x00007f8e85345bb4: nop    DWORD PTR [rax+rax*1+0x0]
  0x00007f8e85345bbc: xchg   ax,ax
[Verified Entry Point]
  0x00007f8e85345bc0: mov    DWORD PTR [rsp-0x14000],eax
  0x00007f8e85345bc7: push   rbp
  0x00007f8e85345bc8: sub    rsp,0x60           ;*synchronization entry
                                                ; - Hash_LongPoint::dec@-1 (line 54)

  0x00007f8e85345bcc: mov    rbp,rdx
  0x00007f8e85345bcf: mov    QWORD PTR [rsp],rsi
  0x00007f8e85345bd3: cmp    r12d,DWORD PTR [rsi+0xc]
  0x00007f8e85345bd7: je     0x00007f8e853465dc  ;*invokevirtual create
                                                ; - Hash_LongPoint::dec@5 (line 54)

  0x00007f8e85345bdd: mov    rax,QWORD PTR [r15+0x60]
  0x00007f8e85345be1: mov    r10,rax
  0x00007f8e85345be4: add    r10,0x18
  0x00007f8e85345be8: cmp    r10,QWORD PTR [r15+0x70]
  0x00007f8e85345bec: jae    0x00007f8e85346516
  0x00007f8e85345bf2: mov    QWORD PTR [r15+0x60],r10
  0x00007f8e85345bf6: prefetchnta BYTE PTR [r10+0xc0]
  0x00007f8e85345bfe: mov    r11d,0xf800c188    ;   {metadata('LongPoint6')}
  0x00007f8e85345c04: mov    r10,0x0
  0x00007f8e85345c0e: lea    r10,[r10+r11*8]
  0x00007f8e85345c12: mov    r10,QWORD PTR [r10+0xa8]
  0x00007f8e85345c19: mov    QWORD PTR [rax],r10
  0x00007f8e85345c1c: mov    DWORD PTR [rax+0x8],0xf800c188
                                                ;   {metadata('LongPoint6')}
  0x00007f8e85345c23: mov    DWORD PTR [rax+0xc],r12d
  0x00007f8e85345c27: mov    r9,rbp
  0x00007f8e85345c2a: mov    QWORD PTR [rax+0x10],r9  ;*new
                                                ; - LongPoint6$1::create@0 (line 9)
                                                ; - LongPoint6$1::create@2 (line 5)
                                                ; - Hash_LongPoint::dec@5 (line 54)

  0x00007f8e85345c2e: mov    QWORD PTR [rsp+0x28],rax  ;*synchronization entry
                                                ; - LongPoint6::<init>@-1 (line 15)
                                                ; - LongPoint6::<init>@2 (line 2)
                                                ; - LongPoint6$1::create@6 (line 9)
                                                ; - LongPoint6$1::create@2 (line 5)
                                                ; - Hash_LongPoint::dec@5 (line 54)

  0x00007f8e85345c33: mov    r10,QWORD PTR [rsp]
  0x00007f8e85345c37: mov    r11d,DWORD PTR [r10+0x14]
                                                ;*getfield counts
                                                ; - Hash_LongPoint::dec@10 (line 55)

  0x00007f8e85345c3b: mov    DWORD PTR [rsp+0x20],r11d
  0x00007f8e85345c40: mov    r11d,DWORD PTR [r12+r11*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f8e85346b81
  0x00007f8e85345c45: cmp    r11d,0xf8003bd1    ;   {metadata('java/util/HashMap')}
  0x00007f8e85345c4c: jne    0x00007f8e85346619
  0x00007f8e85345c52: mov    r10d,DWORD PTR [rsp+0x20]
  0x00007f8e85345c57: shl    r10,0x3            ;*invokevirtual get
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345c5b: mov    r11d,DWORD PTR [r10+0x24]
                                                ;*getfield table
                                                ; - java.util.HashMap::getNode@1 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345c5f: mov    r10,r9
  0x00007f8e85345c62: sar    r10,0x3f
  0x00007f8e85345c66: mov    rax,0x2449f0232c624b0b
  0x00007f8e85345c70: imul   r9
  0x00007f8e85345c73: sar    rdx,0x1b
  0x00007f8e85345c77: sub    rdx,r10
  0x00007f8e85345c7a: imul   r10,rdx,0x386fa527
  0x00007f8e85345c81: mov    r8,r9
  0x00007f8e85345c84: sub    r8,r10
  0x00007f8e85345c87: mov    r10d,r8d           ;*l2i  ; - LongPoint6::hashCode@8 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::get@2 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345c8a: mov    edx,r10d
  0x00007f8e85345c8d: shr    edx,0x10
  0x00007f8e85345c90: xor    edx,r10d           ;*ixor
                                                ; - java.util.HashMap::hash@18 (line 338)
                                                ; - java.util.HashMap::get@2 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345c93: mov    r8d,DWORD PTR [r12+r11*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap::getNode@10 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ; implicit exception: dispatches to 0x00007f8e85346bd5
  0x00007f8e85345c98: test   r8d,r8d
  0x00007f8e85345c9b: jle    0x00007f8e85346671  ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345ca1: mov    r10d,r8d
  0x00007f8e85345ca4: dec    r10d
  0x00007f8e85345ca7: and    r10d,edx           ;*iand
                                                ; - java.util.HashMap::getNode@23 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345caa: cmp    r10d,r8d
  0x00007f8e85345cad: jae    0x00007f8e853465ed
  0x00007f8e85345cb3: shl    r11,0x3
  0x00007f8e85345cb7: mov    r11d,DWORD PTR [r11+r10*4+0x10]
  0x00007f8e85345cbc: mov    r10d,DWORD PTR [r12+r11*8+0xc]
                                                ; implicit exception: dispatches to 0x00007f8e853467ad
  0x00007f8e85345cc1: lea    rsi,[r12+r11*8]    ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345cc5: cmp    r10d,edx
  0x00007f8e85345cc8: jne    0x00007f8e85345f3b  ;*if_icmpne
                                                ; - java.util.HashMap::getNode@37 (line 570)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345cce: mov    r10d,DWORD PTR [r12+r11*8+0x10]
                                                ;*getfield key
                                                ; - java.util.HashMap::getNode@42 (line 570)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345cd3: mov    r8,r10
  0x00007f8e85345cd6: shl    r8,0x3
  0x00007f8e85345cda: cmp    r8,QWORD PTR [rsp+0x28]
  0x00007f8e85345cdf: je     0x00007f8e85345d03  ;*if_acmpeq
                                                ; - java.util.HashMap::getNode@49 (line 570)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345ce1: mov    ecx,DWORD PTR [r12+r10*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f8e85346bfd
  0x00007f8e85345ce6: cmp    ecx,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f8e85345cec: jne    0x00007f8e85346ac9
  0x00007f8e85345cf2: shl    r10,0x3            ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345cf6: mov    r8,QWORD PTR [r10+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345cfa: cmp    r8,r9
  0x00007f8e85345cfd: jne    0x00007f8e85346779  ;*aload
                                                ; - java.util.HashMap::getNode@65 (line 572)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345d03: mov    rdi,r9             ;*invokevirtual getNode
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345d06: mov    r10d,DWORD PTR [rsi+0x14]
                                                ;*getfield value
                                                ; - java.util.HashMap::get@19 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345d0a: mov    r8d,DWORD PTR [r12+r10*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f8e853467ad
  0x00007f8e85345d0f: cmp    r8d,0xf8002260     ;   {metadata('java/lang/Integer')}
  0x00007f8e85345d16: jne    0x00007f8e85346a3d
  0x00007f8e85345d1c: shl    r10,0x3            ;*checkcast
                                                ; - Hash_LongPoint::dec@17 (line 55)

  0x00007f8e85345d20: mov    r10d,DWORD PTR [r10+0xc]  ;*getfield value
                                                ; - java.lang.Integer::intValue@1 (line 893)
                                                ; - Hash_LongPoint::dec@20 (line 55)

  0x00007f8e85345d24: mov    ebp,r10d
  0x00007f8e85345d27: dec    ebp                ;*isub
                                                ; - Hash_LongPoint::dec@24 (line 55)

  0x00007f8e85345d29: test   ebp,ebp
  0x00007f8e85345d2b: je     0x00007f8e85346065  ;*ifeq
                                                ; - Hash_LongPoint::dec@29 (line 56)

  0x00007f8e85345d31: cmp    ebp,0xffffffffffffff80
  0x00007f8e85345d34: jl     0x00007f8e8534669d  ;*if_icmplt
                                                ; - java.lang.Integer::valueOf@3 (line 830)
                                                ; - Hash_LongPoint::dec@39 (line 57)

  0x00007f8e85345d3a: cmp    ebp,0x7f
  0x00007f8e85345d3d: jg     0x00007f8e8534657c  ;*if_icmpgt
                                                ; - java.lang.Integer::valueOf@10 (line 830)
                                                ; - Hash_LongPoint::dec@39 (line 57)

  0x00007f8e85345d43: mov    r11d,r10d
  0x00007f8e85345d46: add    r11d,0x7f          ;*iadd
                                                ; - java.lang.Integer::valueOf@20 (line 831)
                                                ; - Hash_LongPoint::dec@39 (line 57)

  0x00007f8e85345d4a: cmp    r11d,0x100
  0x00007f8e85345d51: jae    0x00007f8e8534665d
  0x00007f8e85345d57: movsxd r10,r10d
  0x00007f8e85345d5a: mov    r11,0x67092cd58    ;   {oop(a 'java/lang/Integer'[256] )}
  0x00007f8e85345d64: mov    r11d,DWORD PTR [r11+r10*4+0x20c]
  0x00007f8e85345d6c: lea    r10,[r12+r11*8]    ;*aaload
                                                ; - java.lang.Integer::valueOf@21 (line 831)
                                                ; - Hash_LongPoint::dec@39 (line 57)

  0x00007f8e85345d70: mov    QWORD PTR [rsp+0x10],r10  ;*invokestatic valueOf
                                                ; - Hash_LongPoint::dec@39 (line 57)

  0x00007f8e85345d75: mov    r10d,DWORD PTR [rsp+0x20]
  0x00007f8e85345d7a: mov    r11d,DWORD PTR [r12+r10*8+0x24]
                                                ;*getfield table
                                                ; - java.util.HashMap::putVal@1 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ; implicit exception: dispatches to 0x00007f8e85346b95
  0x00007f8e85345d7f: mov    rax,0x2449f0232c624b0b
  0x00007f8e85345d89: imul   rdi
  0x00007f8e85345d8c: lea    rbp,[r12+r10*8]    ;*getfield counts
                                                ; - Hash_LongPoint::dec@33 (line 57)

  0x00007f8e85345d90: sar    rdx,0x1b
  0x00007f8e85345d94: mov    r10,rdi
  0x00007f8e85345d97: sar    r10,0x3f
  0x00007f8e85345d9b: sub    rdx,r10
  0x00007f8e85345d9e: imul   r10,rdx,0x386fa527
  0x00007f8e85345da5: mov    r8,rdi
  0x00007f8e85345da8: sub    r8,r10
  0x00007f8e85345dab: mov    r8d,r8d            ;*l2i  ; - LongPoint6::hashCode@8 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::put@2 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345dae: mov    r10d,r8d
  0x00007f8e85345db1: shr    r10d,0x10
  0x00007f8e85345db5: xor    r10d,r8d           ;*ixor
                                                ; - java.util.HashMap::hash@18 (line 338)
                                                ; - java.util.HashMap::put@2 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345db8: test   r11d,r11d
  0x00007f8e85345dbb: je     0x00007f8e853464e1  ;*ifnull
                                                ; - java.util.HashMap::putVal@7 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345dc1: mov    r8d,DWORD PTR [r12+r11*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap::putVal@12 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345dc6: test   r8d,r8d
  0x00007f8e85345dc9: je     0x00007f8e853466ad  ;*ifne
                                                ; - java.util.HashMap::putVal@16 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345dcf: lea    r13,[r12+r11*8]    ;*getfield v
                                                ; - LongPoint::equals@8 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345dd3: mov    ecx,r8d
  0x00007f8e85345dd6: dec    ecx
  0x00007f8e85345dd8: and    ecx,r10d           ;*iand
                                                ; - java.util.HashMap::putVal@36 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345ddb: cmp    ecx,r8d
  0x00007f8e85345dde: jae    0x00007f8e85346631
  0x00007f8e85345de4: mov    QWORD PTR [rsp],rdi
  0x00007f8e85345de8: lea    r14,[r13+rcx*4+0x10]  ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345ded: mov    r11d,DWORD PTR [rsp+0x20]
  0x00007f8e85345df2: mov    r8d,DWORD PTR [r12+r11*8+0x8]
                                                ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345df7: mov    r9d,DWORD PTR [r14]  ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345dfa: mov    r11,QWORD PTR [rsp+0x28]
  0x00007f8e85345dff: mov    rbx,r11
  0x00007f8e85345e02: shr    rbx,0x3            ;*putfield key
                                                ; - java.util.HashMap$Node::<init>@11 (line 286)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345e06: mov    r11,QWORD PTR [rsp+0x10]
  0x00007f8e85345e0b: mov    rdx,r11
  0x00007f8e85345e0e: shr    rdx,0x3            ;*putfield value
                                                ; - java.util.HashMap$Node::<init>@16 (line 287)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345e12: mov    esi,0xf8003c4e     ;   {metadata('java/util/HashMap$Node')}
  0x00007f8e85345e17: mov    rdi,0x0
  0x00007f8e85345e21: lea    rdi,[rdi+rsi*8]
  0x00007f8e85345e25: test   r9d,r9d
  0x00007f8e85345e28: je     0x00007f8e85345f8f  ;*ifnonnull
                                                ; - java.util.HashMap::putVal@44 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345e2e: mov    esi,DWORD PTR [r12+r9*8+0xc]
  0x00007f8e85345e33: lea    rcx,[r12+r9*8]     ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345e37: cmp    esi,r10d
  0x00007f8e85345e3a: je     0x00007f8e85345ed1  ;*if_icmpne
                                                ; - java.util.HashMap::putVal@69 (line 633)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345e40: mov    esi,DWORD PTR [r12+r9*8+0x8]
  0x00007f8e85345e45: cmp    esi,0xf8006464     ;   {metadata('java/util/HashMap$TreeNode')}
  0x00007f8e85345e4b: jne    0x00007f8e853462ab  ;*instanceof
                                                ; - java.util.HashMap::putVal@106 (line 636)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345e51: mov    DWORD PTR [rsp+0xc],edx
  0x00007f8e85345e55: mov    DWORD PTR [rsp+0x8],r8d
  0x00007f8e85345e5a: mov    QWORD PTR [rsp],rbp  ;*checkcast
                                                ; - java.util.HashMap::putVal@114 (line 637)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345e5e: mov    rsi,rcx
  0x00007f8e85345e61: mov    rdx,QWORD PTR [rsp]
  0x00007f8e85345e65: mov    rcx,r13
  0x00007f8e85345e68: mov    r8d,r10d
  0x00007f8e85345e6b: mov    r9,QWORD PTR [rsp+0x28]
  0x00007f8e85345e70: mov    rdi,QWORD PTR [rsp+0x10]
  0x00007f8e85345e75: xchg   ax,ax
  0x00007f8e85345e77: call   0x00007f8e85046020  ; OopMap{[0]=Oop [12]=NarrowOop [16]=Oop [32]=NarrowOop off=732}
                                                ;*invokevirtual putTreeVal
                                                ; - java.util.HashMap::putVal@123 (line 637)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {optimized virtual_call}
  0x00007f8e85345e7c: test   rax,rax
  0x00007f8e85345e7f: je     0x00007f8e853463a5  ;*ifnull
                                                ; - java.util.HashMap::putVal@224 (line 652)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345e85: mov    r11d,DWORD PTR [rax+0x14]
                                                ;*getfield value
                                                ; - java.util.HashMap::putVal@229 (line 653)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345e89: mov    r8d,DWORD PTR [rsp+0xc]
  0x00007f8e85345e8e: mov    DWORD PTR [rax+0x14],r8d
  0x00007f8e85345e92: mov    r10,rax
  0x00007f8e85345e95: shr    r10,0x9
  0x00007f8e85345e99: mov    r8,0x7f8e811ff000
  0x00007f8e85345ea3: mov    BYTE PTR [r8+r10*1],r12b  ;*putfield value
                                                ; - java.util.HashMap::putVal@247 (line 655)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345ea7: mov    r10d,DWORD PTR [rsp+0x8]
  0x00007f8e85345eac: cmp    r10d,0xf8003bd1    ;   {metadata('java/util/HashMap')}
  0x00007f8e85345eb3: je     0x00007f8e85345f2f
  0x00007f8e85345eb5: mov    rcx,rax
  0x00007f8e85345eb8: mov    esi,0xffffffde
  0x00007f8e85345ebd: mov    ebp,r11d
  0x00007f8e85345ec0: mov    QWORD PTR [rsp+0x8],rcx
  0x00007f8e85345ec5: xchg   ax,ax
  0x00007f8e85345ec7: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [8]=Oop [32]=NarrowOop off=812}
                                                ;*invokevirtual afterNodeAccess
                                                ; - java.util.HashMap::putVal@253 (line 656)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85345ecc: call   0x00007f8e99dc2320  ;*invokevirtual afterNodeAccess
                                                ; - java.util.HashMap::putVal@253 (line 656)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85345ed1: mov    eax,DWORD PTR [r12+r9*8+0x10]
                                                ;*getfield key
                                                ; - java.util.HashMap::putVal@74 (line 633)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345ed6: mov    rbx,rax
  0x00007f8e85345ed9: shl    rbx,0x3
  0x00007f8e85345edd: cmp    rbx,QWORD PTR [rsp+0x28]
  0x00007f8e85345ee2: je     0x00007f8e85345f07  ;*if_acmpeq
                                                ; - java.util.HashMap::putVal@81 (line 633)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345ee4: mov    edi,DWORD PTR [r12+rax*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f8e85346ba9
  0x00007f8e85345ee9: cmp    edi,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f8e85345eef: jne    0x00007f8e85346b19
  0x00007f8e85345ef5: lea    rbx,[r12+rax*8]    ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345ef9: mov    rbx,QWORD PTR [rbx+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345efd: cmp    rbx,QWORD PTR [rsp]
  0x00007f8e85345f01: jne    0x00007f8e85346732  ;*aload
                                                ; - java.util.HashMap::putVal@97 (line 635)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345f07: mov    r11d,DWORD PTR [r12+r9*8+0x14]
                                                ;*getfield value
                                                ; - java.util.HashMap::putVal@229 (line 653)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345f0c: mov    DWORD PTR [r12+r9*8+0x14],edx
  0x00007f8e85345f11: mov    r10,rcx
  0x00007f8e85345f14: shr    r10,0x9
  0x00007f8e85345f18: mov    r9,0x7f8e811ff000
  0x00007f8e85345f22: mov    BYTE PTR [r9+r10*1],r12b  ;*putfield value
                                                ; - java.util.HashMap::putVal@247 (line 655)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345f26: cmp    r8d,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f8e85345f2d: jne    0x00007f8e85345eb8  ;*synchronization entry
                                                ; - Hash_LongPoint::dec@-1 (line 54)

  0x00007f8e85345f2f: add    rsp,0x60
  0x00007f8e85345f33: pop    rbp
  0x00007f8e85345f34: test   DWORD PTR [rip+0x153730c6],eax        # 0x00007f8e9a6b9000
                                                ;   {poll_return}
  0x00007f8e85345f3a: ret    
  0x00007f8e85345f3b: mov    r10d,DWORD PTR [r12+r11*8+0x18]
                                                ;*getfield next
                                                ; - java.util.HashMap::getNode@70 (line 573)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345f40: test   r10d,r10d
  0x00007f8e85345f43: je     0x00007f8e853467ad  ;*ifnull
                                                ; - java.util.HashMap::getNode@76 (line 573)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345f49: mov    r11d,DWORD PTR [r12+r11*8+0x8]
  0x00007f8e85345f4e: cmp    r11d,0xf8006464    ;   {metadata('java/util/HashMap$TreeNode')}
  0x00007f8e85345f55: jne    0x00007f8e8534623f  ;*checkcast
                                                ; - java.util.HashMap::getNode@89 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345f5b: mov    rcx,QWORD PTR [rsp+0x28]
  0x00007f8e85345f60: xchg   ax,ax
  0x00007f8e85345f63: call   0x00007f8e85046020  ; OopMap{[0]=Oop [40]=Oop off=968}
                                                ;*invokevirtual getTreeNode
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {optimized virtual_call}
  0x00007f8e85345f68: test   rax,rax
  0x00007f8e85345f6b: je     0x00007f8e853467ad  ;*ifnonnull
                                                ; - java.util.HashMap::get@11 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85345f71: mov    r10,QWORD PTR [rsp+0x28]
  0x00007f8e85345f76: mov    rdi,QWORD PTR [r10+0x10]  ;*getfield v
                                                ; - LongPoint6::hashCode@1 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::remove@2 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85345f7a: mov    r10,QWORD PTR [rsp]
  0x00007f8e85345f7e: mov    r10d,DWORD PTR [r10+0x14]
                                                ;*getfield counts
                                                ; - Hash_LongPoint::dec@33 (line 57)

  0x00007f8e85345f82: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f8e85345f87: mov    rsi,rax
  0x00007f8e85345f8a: jmp    0x00007f8e85345d06
  0x00007f8e85345f8f: cmp    r8d,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f8e85345f96: jne    0x00007f8e853467c1  ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345f9c: mov    rax,QWORD PTR [r15+0x60]
  0x00007f8e85345fa0: mov    r8,rax
  0x00007f8e85345fa3: add    r8,0x20
  0x00007f8e85345fa7: cmp    r8,QWORD PTR [r15+0x70]
  0x00007f8e85345fab: jae    0x00007f8e8534652d
  0x00007f8e85345fb1: mov    QWORD PTR [r15+0x60],r8
  0x00007f8e85345fb5: prefetchnta BYTE PTR [r8+0xc0]
  0x00007f8e85345fbd: mov    r11,QWORD PTR [rdi+0xa8]
  0x00007f8e85345fc4: mov    QWORD PTR [rax],r11
  0x00007f8e85345fc7: mov    DWORD PTR [rax+0x8],0xf8003c4e
                                                ;   {metadata('java/util/HashMap$Node')}
  0x00007f8e85345fce: mov    DWORD PTR [rax+0xc],r12d
  0x00007f8e85345fd2: mov    DWORD PTR [rax+0x14],r12d
  0x00007f8e85345fd6: mov    QWORD PTR [rax+0x18],r12
  0x00007f8e85345fda: mov    DWORD PTR [rax+0x10],ebx  ;*new
                                                ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345fdd: mov    DWORD PTR [rax+0xc],r10d  ;*putfield hash
                                                ; - java.util.HashMap$Node::<init>@6 (line 285)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345fe1: mov    DWORD PTR [rax+0x14],edx  ;*putfield value
                                                ; - java.util.HashMap$Node::<init>@16 (line 287)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345fe4: mov    r10d,DWORD PTR [r13+0x8]  ;*aastore
                                                ; - java.util.HashMap::putVal@59 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345fe8: mov    r11,rax
  0x00007f8e85345feb: shr    r11,0x9
  0x00007f8e85345fef: mov    r8,0x7f8e811ff000
  0x00007f8e85345ff9: mov    BYTE PTR [r8+r11*1],r12b  ;*synchronization entry
                                                ; - java.util.HashMap::newNode@-1 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85345ffd: cmp    r10d,0xf8003c94    ;   {metadata('java/util/HashMap$Node'[])}
  0x00007f8e85346004: jne    0x00007f8e853467f5
  0x00007f8e8534600a: mov    r10,r14
  0x00007f8e8534600d: mov    r11,rax
  0x00007f8e85346010: shr    r11,0x3
  0x00007f8e85346014: mov    DWORD PTR [r14],r11d
  0x00007f8e85346017: shr    r10,0x9
  0x00007f8e8534601b: mov    r11,0x7f8e811ff000
  0x00007f8e85346025: mov    BYTE PTR [r11+r10*1],r12b
                                                ;*ifnull
                                                ; - java.util.HashMap::putVal@224 (line 652)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346029: inc    DWORD PTR [rbp+0x18]  ;*putfield modCount
                                                ; - java.util.HashMap::putVal@266 (line 660)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e8534602c: mov    r10d,DWORD PTR [rbp+0x14]
  0x00007f8e85346030: mov    r8d,DWORD PTR [rbp+0x1c]
  0x00007f8e85346034: inc    r10d               ;*iadd
                                                ; - java.util.HashMap::putVal@275 (line 661)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346037: mov    DWORD PTR [rbp+0x14],r10d
                                                ;*putfield size
                                                ; - java.util.HashMap::putVal@277 (line 661)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e8534603b: cmp    r10d,r8d
  0x00007f8e8534603e: jg     0x00007f8e853464d4  ;*aload_0
                                                ; - java.util.HashMap::putVal@292 (line 663)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346044: mov    r10d,DWORD PTR [rbp+0x8]
  0x00007f8e85346048: cmp    r10d,0xf8003bd1    ;   {metadata('java/util/HashMap')}
  0x00007f8e8534604f: je     0x00007f8e85345f2f
  0x00007f8e85346055: mov    esi,0xffffffde
  0x00007f8e8534605a: nop    
  0x00007f8e8534605b: call   0x00007f8e850051a0  ; OopMap{rbp=Oop off=1216}
                                                ;*invokevirtual afterNodeInsertion
                                                ; - java.util.HashMap::putVal@295 (line 663)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346060: call   0x00007f8e99dc2320  ;*invokevirtual afterNodeInsertion
                                                ; - java.util.HashMap::putVal@295 (line 663)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346065: mov    r10d,DWORD PTR [rsp+0x20]
  0x00007f8e8534606a: mov    r13d,DWORD PTR [r12+r10*8+0x24]
                                                ;*getfield table
                                                ; - java.util.HashMap::removeNode@1 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ; implicit exception: dispatches to 0x00007f8e85346c25
  0x00007f8e8534606f: mov    rax,0x2449f0232c624b0b
  0x00007f8e85346079: imul   rdi
  0x00007f8e8534607c: sar    rdx,0x1b
  0x00007f8e85346080: mov    r10,rdi
  0x00007f8e85346083: sar    r10,0x3f
  0x00007f8e85346087: sub    rdx,r10
  0x00007f8e8534608a: imul   r10,rdx,0x386fa527
  0x00007f8e85346091: mov    r11,rdi
  0x00007f8e85346094: sub    r11,r10
  0x00007f8e85346097: mov    r11d,r11d          ;*l2i  ; - LongPoint6::hashCode@8 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::remove@2 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e8534609a: mov    edx,r11d
  0x00007f8e8534609d: shr    edx,0x10
  0x00007f8e853460a0: xor    edx,r11d           ;*ixor
                                                ; - java.util.HashMap::hash@18 (line 338)
                                                ; - java.util.HashMap::remove@2 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853460a3: mov    r11d,DWORD PTR [r12+r13*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap::removeNode@12 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ; implicit exception: dispatches to 0x00007f8e85346c39
  0x00007f8e853460a8: test   r11d,r11d
  0x00007f8e853460ab: jle    0x00007f8e8534682d  ;*ifle
                                                ; - java.util.HashMap::removeNode@16 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853460b1: mov    r10d,r11d
  0x00007f8e853460b4: dec    r10d
  0x00007f8e853460b7: and    r10d,edx           ;*iand
                                                ; - java.util.HashMap::removeNode@26 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853460ba: cmp    r10d,r11d
  0x00007f8e853460bd: jae    0x00007f8e85346811  ;*aaload
                                                ; - java.util.HashMap::removeNode@30 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853460c3: lea    rcx,[r12+r13*8]    ;*getfield table
                                                ; - java.util.HashMap::removeNode@1 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853460c7: lea    rbx,[rcx+r10*4+0x10]
  0x00007f8e853460cc: mov    r8d,DWORD PTR [rbx]
  0x00007f8e853460cf: mov    esi,DWORD PTR [r12+r8*8+0xc]
                                                ; implicit exception: dispatches to 0x00007f8e85346c51
  0x00007f8e853460d4: lea    rax,[r12+r8*8]     ;*aaload
                                                ; - java.util.HashMap::removeNode@30 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853460d8: mov    r11d,DWORD PTR [rsp+0x20]
  0x00007f8e853460dd: lea    r9,[r12+r11*8]     ;*getfield counts
                                                ; - Hash_LongPoint::dec@33 (line 57)

  0x00007f8e853460e1: cmp    esi,edx
  0x00007f8e853460e3: jne    0x00007f8e853461bd  ;*if_icmpne
                                                ; - java.util.HashMap::removeNode@46 (line 818)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853460e9: mov    r11d,DWORD PTR [r12+r8*8+0x10]
                                                ;*getfield key
                                                ; - java.util.HashMap::removeNode@51 (line 818)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853460ee: mov    rsi,r11
  0x00007f8e853460f1: shl    rsi,0x3
  0x00007f8e853460f5: cmp    rsi,QWORD PTR [rsp+0x28]
  0x00007f8e853460fa: je     0x00007f8e85346151  ;*if_acmpeq
                                                ; - java.util.HashMap::removeNode@58 (line 818)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853460fc: mov    esi,DWORD PTR [r12+r11*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f8e85346c75
  0x00007f8e85346101: cmp    esi,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f8e85346107: jne    0x00007f8e85346a95
  0x00007f8e8534610d: shl    r11,0x3            ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::removeNode@68 (line 819)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346111: mov    rsi,QWORD PTR [r11+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::removeNode@68 (line 819)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346115: cmp    rsi,rdi
  0x00007f8e85346118: je     0x00007f8e85346151  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::removeNode@68 (line 819)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e8534611a: cmp    rsi,rdi
  0x00007f8e8534611d: mov    ebp,0xffffffff
  0x00007f8e85346122: jl     0x00007f8e8534612c
  0x00007f8e85346124: setne  bpl
  0x00007f8e85346128: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::removeNode@68 (line 819)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e8534612c: mov    esi,0xffffff65
  0x00007f8e85346131: mov    DWORD PTR [rsp+0x4],edx
  0x00007f8e85346135: mov    DWORD PTR [rsp+0x10],r13d
  0x00007f8e8534613a: mov    DWORD PTR [rsp+0x14],r8d
  0x00007f8e8534613f: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f8e85346144: xchg   ax,ax
  0x00007f8e85346147: call   0x00007f8e850051a0  ; OopMap{[16]=NarrowOop [20]=NarrowOop [32]=NarrowOop [40]=Oop off=1452}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::removeNode@68 (line 819)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e8534614c: call   0x00007f8e99dc2320  ;*aload
                                                ; - java.util.HashMap::removeNode@74 (line 820)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346151: mov    r8,rax             ;*goto
                                                ; - java.util.HashMap::removeNode@112 (line 823)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346154: mov    r11d,DWORD PTR [rax+0x8]
  0x00007f8e85346158: cmp    r11d,0xf8006464    ;   {metadata('java/util/HashMap$TreeNode')}
  0x00007f8e8534615f: jne    0x00007f8e85346351  ;*instanceof
                                                ; - java.util.HashMap::removeNode@208 (line 838)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346165: mov    rbp,rax            ;*checkcast
                                                ; - java.util.HashMap::removeNode@216 (line 839)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346168: mov    r8d,0x1
  0x00007f8e8534616e: mov    QWORD PTR [rsp],r9
  0x00007f8e85346172: mov    rsi,rbp
  0x00007f8e85346175: mov    rdx,r9
  0x00007f8e85346178: xchg   ax,ax
  0x00007f8e8534617b: call   0x00007f8e85046020  ; OopMap{rbp=Oop [0]=Oop [32]=NarrowOop off=1504}
                                                ;*invokevirtual removeTreeNode
                                                ; - java.util.HashMap::removeNode@224 (line 839)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {optimized virtual_call}
  0x00007f8e85346180: mov    rax,rbp            ;*goto
                                                ; - java.util.HashMap::removeNode@247 (line 841)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346183: mov    r10d,DWORD PTR [rsp+0x20]
  0x00007f8e85346188: inc    DWORD PTR [r12+r10*8+0x18]
                                                ;*putfield modCount
                                                ; - java.util.HashMap::removeNode@267 (line 844)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e8534618d: mov    r10d,DWORD PTR [r12+r10*8+0x8]
                                                ;*invokevirtual afterNodeRemoval
                                                ; - java.util.HashMap::removeNode@283 (line 846)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346192: mov    r11d,DWORD PTR [rsp+0x20]
  0x00007f8e85346197: dec    DWORD PTR [r12+r11*8+0x14]
                                                ;*putfield size
                                                ; - java.util.HashMap::removeNode@277 (line 845)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e8534619c: cmp    r10d,0xf8003bd1    ;   {metadata('java/util/HashMap')}
  0x00007f8e853461a3: je     0x00007f8e85345f2f
  0x00007f8e853461a9: mov    esi,0xffffff76
  0x00007f8e853461ae: mov    QWORD PTR [rsp+0x8],rax
  0x00007f8e853461b3: call   0x00007f8e850051a0  ; OopMap{[8]=Oop [32]=NarrowOop off=1560}
                                                ;*invokevirtual afterNodeRemoval
                                                ; - java.util.HashMap::removeNode@283 (line 846)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e853461b8: call   0x00007f8e99dc2320  ;*invokevirtual afterNodeRemoval
                                                ; - java.util.HashMap::removeNode@283 (line 846)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e853461bd: mov    ebp,DWORD PTR [r12+r8*8+0x18]
                                                ;*getfield next
                                                ; - java.util.HashMap::removeNode@83 (line 821)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853461c2: test   ebp,ebp
  0x00007f8e853461c4: je     0x00007f8e85346869  ;*ifnull
                                                ; - java.util.HashMap::removeNode@89 (line 821)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853461ca: mov    r8d,DWORD PTR [r12+r8*8+0x8]
  0x00007f8e853461cf: cmp    r8d,0xf8006464     ;   {metadata('java/util/HashMap$TreeNode')}
  0x00007f8e853461d6: jne    0x00007f8e85346461  ;*instanceof
                                                ; - java.util.HashMap::removeNode@94 (line 822)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853461dc: mov    QWORD PTR [rsp+0x18],r9
  0x00007f8e853461e1: mov    QWORD PTR [rsp+0x10],rbx
  0x00007f8e853461e6: mov    QWORD PTR [rsp+0x8],rcx
  0x00007f8e853461eb: mov    DWORD PTR [rsp+0x4],r10d
  0x00007f8e853461f0: mov    DWORD PTR [rsp],r13d
  0x00007f8e853461f4: mov    ebp,DWORD PTR [rsp+0x20]
  0x00007f8e853461f8: mov    r10,QWORD PTR [rsp+0x28]
  0x00007f8e853461fd: mov    r11,rax            ;*checkcast
                                                ; - java.util.HashMap::removeNode@102 (line 823)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346200: mov    QWORD PTR [rsp+0x20],r11
  0x00007f8e85346205: mov    rsi,r11
  0x00007f8e85346208: mov    rcx,r10
  0x00007f8e8534620b: call   0x00007f8e85046020  ; OopMap{rbp=NarrowOop [0]=NarrowOop [8]=Oop [16]=Derived_oop_[8] [24]=Oop [32]=Oop off=1648}
                                                ;*invokevirtual getTreeNode
                                                ; - java.util.HashMap::removeNode@107 (line 823)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {optimized virtual_call}
  0x00007f8e85346210: test   rax,rax
  0x00007f8e85346213: je     0x00007f8e8534688d  ;*ifnull
                                                ; - java.util.HashMap::removeNode@173 (line 836)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346219: mov    r8,QWORD PTR [rsp+0x20]
  0x00007f8e8534621e: mov    DWORD PTR [rsp+0x20],ebp
  0x00007f8e85346222: mov    r13d,DWORD PTR [rsp]
  0x00007f8e85346226: mov    r10d,DWORD PTR [rsp+0x4]
  0x00007f8e8534622b: mov    rcx,QWORD PTR [rsp+0x8]
  0x00007f8e85346230: mov    rbx,QWORD PTR [rsp+0x10]
  0x00007f8e85346235: mov    r9,QWORD PTR [rsp+0x18]
  0x00007f8e8534623a: jmp    0x00007f8e85346154
  0x00007f8e8534623f: lea    rsi,[r12+r10*8]    ;*aload
                                                ; - java.util.HashMap::getNode@98 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85346243: mov    r10d,DWORD PTR [rsi+0xc]
  0x00007f8e85346247: cmp    r10d,edx
  0x00007f8e8534624a: je     0x00007f8e8534626c  ;*if_icmpne
                                                ; - java.util.HashMap::getNode@104 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e8534624c: mov    ecx,DWORD PTR [rsi+0x18]  ;*getfield next
                                                ; - java.util.HashMap::getNode@137 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e8534624f: mov    r10,QWORD PTR [rsp]
  0x00007f8e85346253: mov    r11,QWORD PTR [rsp+0x28]  ; OopMap{r10=Oop r11=Oop rcx=NarrowOop [0]=Oop [32]=NarrowOop [40]=Oop off=1720}
                                                ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85346258: test   DWORD PTR [rip+0x15372da2],eax        # 0x00007f8e9a6b9000
                                                ;   {poll}
  0x00007f8e8534625e: test   ecx,ecx
  0x00007f8e85346260: je     0x00007f8e853467ad  ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85346266: lea    rsi,[r12+rcx*8]    ;*getfield next
                                                ; - java.util.HashMap::getNode@137 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e8534626a: jmp    0x00007f8e85346243
  0x00007f8e8534626c: mov    ebp,DWORD PTR [rsi+0x10]  ;*getfield key
                                                ; - java.util.HashMap::getNode@109 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e8534626f: mov    r11,rbp
  0x00007f8e85346272: shl    r11,0x3
  0x00007f8e85346276: mov    r10,QWORD PTR [rsp+0x28]
  0x00007f8e8534627b: cmp    r11,r10
  0x00007f8e8534627e: je     0x00007f8e853462a3  ;*if_acmpeq
                                                ; - java.util.HashMap::getNode@116 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85346280: mov    r10d,DWORD PTR [r12+rbp*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f8e85346cd1
  0x00007f8e85346285: cmp    r10d,0xf800c188    ;   {metadata('LongPoint6')}
  0x00007f8e8534628c: jne    0x00007f8e85346af5
  0x00007f8e85346292: lea    r10,[r12+rbp*8]    ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85346296: mov    r11,QWORD PTR [r10+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e8534629a: cmp    r11,r9
  0x00007f8e8534629d: jne    0x00007f8e8534693d  ;*aload
                                                ; - java.util.HashMap::getNode@132 (line 579)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e853462a3: mov    rdi,r9
  0x00007f8e853462a6: jmp    0x00007f8e85345d06
  0x00007f8e853462ab: mov    r9d,DWORD PTR [r12+r9*8+0x18]
                                                ;*getfield next
                                                ; - java.util.HashMap::putVal@136 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853462b0: test   r9d,r9d
  0x00007f8e853462b3: je     0x00007f8e853463b1  ;*ifnonnull
                                                ; - java.util.HashMap::putVal@142 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853462b9: lea    rcx,[r12+r9*8]     ;*getfield next
                                                ; - java.util.HashMap::putVal@136 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853462bd: xor    r9d,r9d            ;*aload
                                                ; - java.util.HashMap::putVal@175 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853462c0: mov    esi,DWORD PTR [rcx+0xc]
  0x00007f8e853462c3: cmp    esi,r10d
  0x00007f8e853462c6: je     0x00007f8e853462e8  ;*if_icmpne
                                                ; - java.util.HashMap::putVal@181 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853462c8: mov    esi,DWORD PTR [rcx+0x18]  ;*getfield next
                                                ; - java.util.HashMap::putVal@136 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853462cb: inc    r9d                ;*iinc
                                                ; - java.util.HashMap::putVal@216 (line 639)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853462ce: vmovsd xmm0,QWORD PTR [rsp+0x28]
                                                ; OopMap{r11=Oop rcx=Oop rbx=NarrowOop rdx=NarrowOop rsi=NarrowOop rbp=Oop r13=Oop xmm0=Oop [32]=NarrowOop [40]=Oop off=1844}
                                                ;*goto
                                                ; - java.util.HashMap::putVal@219 (line 639)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853462d4: test   DWORD PTR [rip+0x15372d26],eax        # 0x00007f8e9a6b9000
                                                ;*goto
                                                ; - java.util.HashMap::putVal@219 (line 639)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {poll}
  0x00007f8e853462da: test   esi,esi
  0x00007f8e853462dc: je     0x00007f8e853463b4  ;*ifnonnull
                                                ; - java.util.HashMap::putVal@142 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853462e2: lea    rcx,[r12+rsi*8]    ;*getfield next
                                                ; - java.util.HashMap::putVal@136 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853462e6: jmp    0x00007f8e853462c0
  0x00007f8e853462e8: mov    ebp,DWORD PTR [rcx+0x10]  ;*getfield key
                                                ; - java.util.HashMap::putVal@186 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853462eb: mov    rdi,rbp
  0x00007f8e853462ee: shl    rdi,0x3
  0x00007f8e853462f2: mov    rbx,QWORD PTR [rsp+0x28]
  0x00007f8e853462f7: cmp    rdi,rbx
  0x00007f8e853462fa: je     0x00007f8e853468fd  ;*if_acmpeq
                                                ; - java.util.HashMap::putVal@193 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346300: mov    edi,DWORD PTR [r12+rbp*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f8e85346ca1
  0x00007f8e85346305: cmp    edi,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f8e8534630b: jne    0x00007f8e85346a55
  0x00007f8e85346311: lea    rbx,[r12+rbp*8]    ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346315: mov    rbx,QWORD PTR [rbx+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346319: cmp    rbx,QWORD PTR [rsp]
  0x00007f8e8534631d: jne    0x00007f8e853468a1  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346323: mov    r11d,DWORD PTR [rcx+0x14]
                                                ;*getfield value
                                                ; - java.util.HashMap::putVal@229 (line 653)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346327: mov    DWORD PTR [rcx+0x14],edx
  0x00007f8e8534632a: mov    r10,rcx
  0x00007f8e8534632d: shr    r10,0x9
  0x00007f8e85346331: mov    r9,0x7f8e811ff000
  0x00007f8e8534633b: mov    BYTE PTR [r9+r10*1],r12b  ;*putfield value
                                                ; - java.util.HashMap::putVal@247 (line 655)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e8534633f: cmp    r8d,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f8e85346346: je     0x00007f8e85345f2f  ;*invokevirtual afterNodeAccess
                                                ; - java.util.HashMap::putVal@253 (line 656)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e8534634c: jmp    0x00007f8e85345eb8
  0x00007f8e85346351: mov    ebp,DWORD PTR [rax+0x18]  ;*getfield next
                                                ; - java.util.HashMap::removeNode@243 (line 841)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346354: cmp    rax,r8
  0x00007f8e85346357: je     0x00007f8e85346377  ;*if_acmpne
                                                ; - java.util.HashMap::removeNode@234 (line 840)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346359: mov    DWORD PTR [r8+0x18],ebp
  0x00007f8e8534635d: mov    r10,r8
  0x00007f8e85346360: shr    r10,0x9
  0x00007f8e85346364: mov    r11,0x7f8e811ff000
  0x00007f8e8534636e: mov    BYTE PTR [r11+r10*1],r12b
                                                ;*putfield next
                                                ; - java.util.HashMap::removeNode@257 (line 843)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346372: jmp    0x00007f8e85346183
  0x00007f8e85346377: mov    r8d,DWORD PTR [r12+r13*8+0x8]
  0x00007f8e8534637c: cmp    r8d,0xf8003c94     ;   {metadata('java/util/HashMap$Node'[])}
  0x00007f8e85346383: jne    0x00007f8e85346849
  0x00007f8e85346389: mov    DWORD PTR [rbx],ebp
  0x00007f8e8534638b: mov    r10,rbx
  0x00007f8e8534638e: shr    r10,0x9
  0x00007f8e85346392: mov    r11,0x7f8e811ff000
  0x00007f8e8534639c: mov    BYTE PTR [r11+r10*1],r12b
                                                ;*aastore
                                                ; - java.util.HashMap::removeNode@246 (line 841)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853463a0: jmp    0x00007f8e85346183
  0x00007f8e853463a5: mov    r10,QWORD PTR [rsp]
  0x00007f8e853463a9: mov    rbp,r10
  0x00007f8e853463ac: jmp    0x00007f8e85346029
  0x00007f8e853463b1: xor    r9d,r9d            ;*aload
                                                ; - java.util.HashMap::putVal@145 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853463b4: cmp    r8d,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f8e853463bb: jne    0x00007f8e85346971  ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853463c1: mov    rax,QWORD PTR [r15+0x60]
  0x00007f8e853463c5: mov    r8,rax
  0x00007f8e853463c8: add    r8,0x20
  0x00007f8e853463cc: cmp    r8,QWORD PTR [r15+0x70]
  0x00007f8e853463d0: jae    0x00007f8e853466cd
  0x00007f8e853463d6: mov    QWORD PTR [r15+0x60],r8
  0x00007f8e853463da: prefetchnta BYTE PTR [r8+0xc0]
  0x00007f8e853463e2: mov    r8,QWORD PTR [rdi+0xa8]
  0x00007f8e853463e9: mov    QWORD PTR [rax],r8
  0x00007f8e853463ec: mov    DWORD PTR [rax+0x8],0xf8003c4e
                                                ;   {metadata('java/util/HashMap$Node')}
  0x00007f8e853463f3: mov    DWORD PTR [rax+0xc],r12d
  0x00007f8e853463f7: mov    DWORD PTR [rax+0x14],r12d
  0x00007f8e853463fb: mov    QWORD PTR [rax+0x18],r12
  0x00007f8e853463ff: mov    DWORD PTR [rax+0x10],ebx  ;*new
                                                ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346402: mov    DWORD PTR [rax+0xc],r10d  ;*putfield hash
                                                ; - java.util.HashMap$Node::<init>@6 (line 285)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346406: mov    DWORD PTR [rax+0x14],edx
  0x00007f8e85346409: mov    r8,rax
  0x00007f8e8534640c: mov    rdi,rax
  0x00007f8e8534640f: shr    rdi,0x3
  0x00007f8e85346413: shr    r8,0x9
  0x00007f8e85346417: mov    rbx,0x7f8e811ff000
  0x00007f8e85346421: mov    BYTE PTR [rbx+r8*1],r12b  ;*synchronization entry
                                                ; - java.util.HashMap::newNode@-1 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346425: mov    DWORD PTR [rcx+0x18],edi
  0x00007f8e85346428: mov    r8,rcx
  0x00007f8e8534642b: shr    r8,0x9
  0x00007f8e8534642f: mov    rcx,0x7f8e811ff000
  0x00007f8e85346439: mov    BYTE PTR [rcx+r8*1],r12b
  0x00007f8e8534643d: cmp    r9d,0x7
  0x00007f8e85346441: jl     0x00007f8e85346029  ;*putfield next
                                                ; - java.util.HashMap::putVal@155 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346447: mov    QWORD PTR [rsp],r11
  0x00007f8e8534644b: mov    rsi,rbp
  0x00007f8e8534644e: mov    rdx,r13
  0x00007f8e85346451: mov    ecx,r10d
  0x00007f8e85346454: xchg   ax,ax
  0x00007f8e85346457: call   0x00007f8e85046020  ; OopMap{rbp=Oop [0]=Oop off=2236}
                                                ;*invokevirtual treeifyBin
                                                ; - java.util.HashMap::putVal@169 (line 643)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {optimized virtual_call}
  0x00007f8e8534645c: jmp    0x00007f8e85346029
  0x00007f8e85346461: lea    r11,[r12+rbp*8]    ;*aload
                                                ; - java.util.HashMap::removeNode@115 (line 826)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346465: mov    r8d,DWORD PTR [r11+0xc]
  0x00007f8e85346469: cmp    r8d,edx
  0x00007f8e8534646c: je     0x00007f8e85346491  ;*if_icmpne
                                                ; - java.util.HashMap::removeNode@121 (line 826)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e8534646e: mov    ebp,DWORD PTR [r11+0x18]  ;*getfield next
                                                ; - java.util.HashMap::removeNode@162 (line 833)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346472: mov    rsi,QWORD PTR [rsp+0x28]  ; OopMap{r11=Oop r9=Oop rcx=Oop rbx=Derived_oop_rcx rsi=Oop rbp=NarrowOop r13=NarrowOop [32]=NarrowOop [40]=Oop off=2263}
                                                ;*ifnonnull
                                                ; - java.util.HashMap::removeNode@168 (line 833)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346477: test   DWORD PTR [rip+0x15372b83],eax        # 0x00007f8e9a6b9000
                                                ;   {poll}
  0x00007f8e8534647d: test   ebp,ebp
  0x00007f8e8534647f: je     0x00007f8e85346a19  ;*ifnonnull
                                                ; - java.util.HashMap::removeNode@168 (line 833)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346485: lea    r8,[r12+rbp*8]     ;*getfield next
                                                ; - java.util.HashMap::removeNode@162 (line 833)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346489: mov    rax,r11
  0x00007f8e8534648c: mov    r11,r8
  0x00007f8e8534648f: jmp    0x00007f8e85346465
  0x00007f8e85346491: mov    ebp,DWORD PTR [r11+0x10]  ;*getfield key
                                                ; - java.util.HashMap::removeNode@126 (line 826)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346495: mov    rsi,rbp
  0x00007f8e85346498: shl    rsi,0x3
  0x00007f8e8534649c: mov    r8,QWORD PTR [rsp+0x28]
  0x00007f8e853464a1: cmp    rsi,r8
  0x00007f8e853464a4: je     0x00007f8e853464c9  ;*if_acmpeq
                                                ; - java.util.HashMap::removeNode@133 (line 826)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853464a6: mov    r8d,DWORD PTR [r12+rbp*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f8e85346cf9
  0x00007f8e853464ab: cmp    r8d,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f8e853464b2: jne    0x00007f8e85346b49
  0x00007f8e853464b8: lea    r8,[r12+rbp*8]     ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::removeNode@143 (line 828)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853464bc: mov    rsi,QWORD PTR [r8+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::removeNode@143 (line 828)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853464c0: cmp    rsi,rdi
  0x00007f8e853464c3: jne    0x00007f8e853469cd  ;*aload
                                                ; - java.util.HashMap::removeNode@149 (line 829)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853464c9: mov    r8,rax
  0x00007f8e853464cc: mov    rax,r11
  0x00007f8e853464cf: jmp    0x00007f8e85346154  ;*aastore
                                                ; - java.util.HashMap::putVal@59 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853464d4: mov    rsi,rbp
  0x00007f8e853464d7: call   0x00007f8e85046020  ; OopMap{rbp=Oop off=2364}
                                                ;*invokevirtual resize
                                                ; - java.util.HashMap::putVal@288 (line 662)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {optimized virtual_call}
  0x00007f8e853464dc: jmp    0x00007f8e85346044
  0x00007f8e853464e1: mov    DWORD PTR [rsp+0x4],r10d
  0x00007f8e853464e6: mov    QWORD PTR [rsp+0x8],rbp
  0x00007f8e853464eb: mov    rbp,QWORD PTR [rsp+0x28]
  0x00007f8e853464f0: mov    rsi,QWORD PTR [rsp+0x8]
  0x00007f8e853464f5: xchg   ax,ax
  0x00007f8e853464f7: call   0x00007f8e85046020  ; OopMap{rbp=Oop [8]=Oop [16]=Oop [32]=NarrowOop [40]=Oop off=2396}
                                                ;*invokevirtual resize
                                                ; - java.util.HashMap::putVal@20 (line 628)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {optimized virtual_call}
  0x00007f8e853464fc: mov    r8d,DWORD PTR [rax+0xc]  ;*arraylength
                                                ; - java.util.HashMap::putVal@26 (line 628)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ; implicit exception: dispatches to 0x00007f8e85346d25
  0x00007f8e85346500: mov    rdi,QWORD PTR [rbp+0x10]  ;*getfield v
                                                ; - LongPoint::equals@8 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346504: mov    rbp,QWORD PTR [rsp+0x8]
  0x00007f8e85346509: mov    r10d,DWORD PTR [rsp+0x4]
  0x00007f8e8534650e: mov    r13,rax
  0x00007f8e85346511: jmp    0x00007f8e85345dd3
  0x00007f8e85346516: mov    rsi,0x7c0060c40    ;   {metadata('LongPoint6')}
  0x00007f8e85346520: xchg   ax,ax
  0x00007f8e85346523: call   0x00007f8e852a73e0  ; OopMap{[0]=Oop off=2440}
                                                ;*new  ; - LongPoint6$1::create@0 (line 9)
                                                ; - LongPoint6$1::create@2 (line 5)
                                                ; - Hash_LongPoint::dec@5 (line 54)
                                                ;   {runtime_call}
  0x00007f8e85346528: jmp    0x00007f8e85345c27
  0x00007f8e8534652d: mov    DWORD PTR [rsp+0x34],edx
  0x00007f8e85346531: mov    DWORD PTR [rsp+0x30],ebx
  0x00007f8e85346535: mov    QWORD PTR [rsp+0x20],r14
  0x00007f8e8534653a: mov    DWORD PTR [rsp+0x14],ecx
  0x00007f8e8534653e: mov    QWORD PTR [rsp+0x18],r13
  0x00007f8e85346543: mov    DWORD PTR [rsp+0x10],r10d
  0x00007f8e85346548: mov    rsi,0x7c001e270    ;   {metadata('java/util/HashMap$Node')}
  0x00007f8e85346552: mov    QWORD PTR [rsp+0x8],r11
  0x00007f8e85346557: call   0x00007f8e852a73e0  ; OopMap{rbp=Oop [8]=Oop [24]=Oop [32]=Derived_oop_[24] [40]=Oop [48]=NarrowOop [52]=NarrowOop off=2492}
                                                ;*new  ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e8534655c: mov    r10d,DWORD PTR [rsp+0x10]
  0x00007f8e85346561: mov    r13,QWORD PTR [rsp+0x18]
  0x00007f8e85346566: mov    ecx,DWORD PTR [rsp+0x14]
  0x00007f8e8534656a: mov    r14,QWORD PTR [rsp+0x20]
  0x00007f8e8534656f: mov    ebx,DWORD PTR [rsp+0x30]
  0x00007f8e85346573: mov    edx,DWORD PTR [rsp+0x34]
  0x00007f8e85346577: jmp    0x00007f8e85345fda
  0x00007f8e8534657c: mov    rax,QWORD PTR [r15+0x60]
  0x00007f8e85346580: mov    r10,rax
  0x00007f8e85346583: add    r10,0x10
  0x00007f8e85346587: cmp    r10,QWORD PTR [r15+0x70]
  0x00007f8e8534658b: jae    0x00007f8e853469ad
  0x00007f8e85346591: mov    QWORD PTR [r15+0x60],r10
  0x00007f8e85346595: prefetchnta BYTE PTR [r10+0xc0]
  0x00007f8e8534659d: mov    r11d,0xf8002260    ;   {metadata('java/lang/Integer')}
  0x00007f8e853465a3: mov    r10,0x0
  0x00007f8e853465ad: lea    r10,[r10+r11*8]
  0x00007f8e853465b1: mov    r10,QWORD PTR [r10+0xa8]
  0x00007f8e853465b8: mov    QWORD PTR [rax],r10
  0x00007f8e853465bb: mov    DWORD PTR [rax+0x8],0xf8002260
                                                ;   {metadata('java/lang/Integer')}
  0x00007f8e853465c2: mov    DWORD PTR [rax+0xc],r12d  ;*new
                                                ; - java.lang.Integer::valueOf@23 (line 832)
                                                ; - Hash_LongPoint::dec@39 (line 57)

  0x00007f8e853465c6: mov    DWORD PTR [rax+0xc],ebp  ;*synchronization entry
                                                ; - java.lang.Integer::valueOf@-1 (line 830)
                                                ; - Hash_LongPoint::dec@39 (line 57)

  0x00007f8e853465c9: mov    r10,QWORD PTR [rsp+0x28]
  0x00007f8e853465ce: mov    rdi,QWORD PTR [r10+0x10]  ;*getfield v
                                                ; - LongPoint6::hashCode@1 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::put@2 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853465d2: mov    QWORD PTR [rsp+0x10],rax
  0x00007f8e853465d7: jmp    0x00007f8e85345d75
  0x00007f8e853465dc: mov    esi,0xfffffff6
  0x00007f8e853465e1: xchg   ax,ax
  0x00007f8e853465e3: call   0x00007f8e850051a0  ; OopMap{off=2632}
                                                ;*invokevirtual create
                                                ; - Hash_LongPoint::dec@5 (line 54)
                                                ;   {runtime_call}
  0x00007f8e853465e8: call   0x00007f8e99dc2320  ;*invokevirtual create
                                                ; - Hash_LongPoint::dec@5 (line 54)
                                                ;   {runtime_call}
  0x00007f8e853465ed: mov    esi,0xffffffe4
  0x00007f8e853465f2: mov    rbp,QWORD PTR [rsp]
  0x00007f8e853465f6: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e853465fb: rex.W pop    QWORD PTR [rsp]
  0x00007f8e853465ff: mov    DWORD PTR [rsp+0x8],edx
  0x00007f8e85346603: mov    DWORD PTR [rsp+0xc],r11d
  0x00007f8e85346608: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f8e8534660d: xchg   ax,ax
  0x00007f8e8534660f: call   0x00007f8e850051a0  ; OopMap{rbp=Oop [0]=Oop [12]=NarrowOop off=2676}
                                                ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346614: call   0x00007f8e99dc2320  ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346619: mov    esi,0xffffffde
  0x00007f8e8534661e: mov    rbp,r10
  0x00007f8e85346621: mov    QWORD PTR [rsp+0x10],rax
  0x00007f8e85346626: nop    
  0x00007f8e85346627: call   0x00007f8e850051a0  ; OopMap{rbp=Oop [16]=Oop [32]=NarrowOop [40]=Oop off=2700}
                                                ;*invokevirtual get
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e8534662c: call   0x00007f8e99dc2320  ;*invokevirtual get
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346631: mov    esi,0xffffffe4
  0x00007f8e85346636: mov    ebp,DWORD PTR [rsp+0x20]
  0x00007f8e8534663a: mov    DWORD PTR [rsp],r10d
  0x00007f8e8534663e: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e85346643: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f8e85346648: mov    QWORD PTR [rsp+0x20],r13
  0x00007f8e8534664d: mov    DWORD PTR [rsp+0x28],ecx
  0x00007f8e85346651: xchg   ax,ax
  0x00007f8e85346653: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [8]=Oop [16]=Oop [32]=Oop off=2744}
                                                ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346658: call   0x00007f8e99dc2320  ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e8534665d: mov    esi,0xffffffe4
  0x00007f8e85346662: mov    DWORD PTR [rsp+0x8],r11d
  0x00007f8e85346667: call   0x00007f8e850051a0  ; OopMap{[32]=NarrowOop [40]=Oop off=2764}
                                                ;*aaload
                                                ; - java.lang.Integer::valueOf@21 (line 831)
                                                ; - Hash_LongPoint::dec@39 (line 57)
                                                ;   {runtime_call}
  0x00007f8e8534666c: call   0x00007f8e99dc2320  ;*aaload
                                                ; - java.lang.Integer::valueOf@21 (line 831)
                                                ; - Hash_LongPoint::dec@39 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346671: mov    esi,0xffffff65
  0x00007f8e85346676: mov    rbp,QWORD PTR [rsp]
  0x00007f8e8534667a: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e8534667f: rex.W pop    QWORD PTR [rsp]
  0x00007f8e85346683: mov    DWORD PTR [rsp+0x8],edx
  0x00007f8e85346687: mov    DWORD PTR [rsp+0xc],r11d
  0x00007f8e8534668c: mov    DWORD PTR [rsp+0x1c],r8d
  0x00007f8e85346691: xchg   ax,ax
  0x00007f8e85346693: call   0x00007f8e850051a0  ; OopMap{rbp=Oop [0]=Oop [12]=NarrowOop off=2808}
                                                ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346698: call   0x00007f8e99dc2320  ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e8534669d: mov    esi,0xffffff65
  0x00007f8e853466a2: nop    
  0x00007f8e853466a3: call   0x00007f8e850051a0  ; OopMap{[32]=NarrowOop [40]=Oop off=2824}
                                                ;*if_icmplt
                                                ; - java.lang.Integer::valueOf@3 (line 830)
                                                ; - Hash_LongPoint::dec@39 (line 57)
                                                ;   {runtime_call}
  0x00007f8e853466a8: call   0x00007f8e99dc2320  ;*if_icmplt
                                                ; - java.lang.Integer::valueOf@3 (line 830)
                                                ; - Hash_LongPoint::dec@39 (line 57)
                                                ;   {runtime_call}
  0x00007f8e853466ad: mov    esi,0xffffff65
  0x00007f8e853466b2: mov    DWORD PTR [rsp],r10d
  0x00007f8e853466b6: mov    DWORD PTR [rsp+0x4],r11d
  0x00007f8e853466bb: mov    DWORD PTR [rsp+0x1c],r8d
  0x00007f8e853466c0: xchg   ax,ax
  0x00007f8e853466c3: call   0x00007f8e850051a0  ; OopMap{[4]=NarrowOop [16]=Oop [32]=NarrowOop [40]=Oop off=2856}
                                                ;*ifne
                                                ; - java.util.HashMap::putVal@16 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e853466c8: call   0x00007f8e99dc2320  ;*ifne
                                                ; - java.util.HashMap::putVal@16 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e853466cd: mov    QWORD PTR [rsp+0x30],rbp
  0x00007f8e853466d2: mov    DWORD PTR [rsp+0x1c],r9d
  0x00007f8e853466d7: mov    QWORD PTR [rsp+0x20],rcx
  0x00007f8e853466dc: mov    DWORD PTR [rsp+0x18],edx
  0x00007f8e853466e0: mov    DWORD PTR [rsp+0xc],ebx
  0x00007f8e853466e4: mov    QWORD PTR [rsp+0x10],r13
  0x00007f8e853466e9: mov    DWORD PTR [rsp+0x8],r10d
  0x00007f8e853466ee: mov    QWORD PTR [rsp],r11
  0x00007f8e853466f2: mov    rsi,0x7c001e270    ;   {metadata('java/util/HashMap$Node')}
  0x00007f8e853466fc: mov    rbp,QWORD PTR [rsp+0x28]
  0x00007f8e85346701: xchg   ax,ax
  0x00007f8e85346703: call   0x00007f8e852a73e0  ; OopMap{rbp=Oop [0]=Oop [12]=NarrowOop [16]=Oop [24]=NarrowOop [32]=Oop [48]=Oop off=2920}
                                                ;*new  ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346708: mov    r11,QWORD PTR [rsp]
  0x00007f8e8534670c: mov    r10d,DWORD PTR [rsp+0x8]
  0x00007f8e85346711: mov    r13,QWORD PTR [rsp+0x10]
  0x00007f8e85346716: mov    ebx,DWORD PTR [rsp+0xc]
  0x00007f8e8534671a: mov    edx,DWORD PTR [rsp+0x18]
  0x00007f8e8534671e: mov    rcx,QWORD PTR [rsp+0x20]
  0x00007f8e85346723: mov    r9d,DWORD PTR [rsp+0x1c]
  0x00007f8e85346728: mov    rbp,QWORD PTR [rsp+0x30]
  0x00007f8e8534672d: jmp    0x00007f8e853463ff
  0x00007f8e85346732: mov    r8,QWORD PTR [rsp]
  0x00007f8e85346736: cmp    rbx,r8
  0x00007f8e85346739: mov    ebp,0xffffffff
  0x00007f8e8534673e: jl     0x00007f8e85346748
  0x00007f8e85346740: setne  bpl
  0x00007f8e85346744: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346748: mov    esi,0xffffff65
  0x00007f8e8534674d: mov    QWORD PTR [rsp-0x8],rax
  0x00007f8e85346752: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f8e85346756: mov    DWORD PTR [rsp],eax
  0x00007f8e85346759: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f8e8534675e: mov    DWORD PTR [rsp+0x4],r10d
  0x00007f8e85346763: mov    QWORD PTR [rsp+0x18],r13
  0x00007f8e85346768: mov    DWORD PTR [rsp+0x20],r9d
  0x00007f8e8534676d: xchg   ax,ax
  0x00007f8e8534676f: call   0x00007f8e850051a0  ; OopMap{[0]=NarrowOop [16]=Oop [24]=Oop [32]=NarrowOop [40]=Oop off=3028}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346774: call   0x00007f8e99dc2320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346779: cmp    r8,r9
  0x00007f8e8534677c: mov    ebp,0xffffffff
  0x00007f8e85346781: jl     0x00007f8e8534678b
  0x00007f8e85346783: setne  bpl
  0x00007f8e85346787: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e8534678b: mov    esi,0xffffff65
  0x00007f8e85346790: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e85346795: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f8e8534679a: mov    DWORD PTR [rsp+0x10],edx
  0x00007f8e8534679e: mov    DWORD PTR [rsp+0x14],r11d
  0x00007f8e853467a3: call   0x00007f8e850051a0  ; OopMap{[0]=Oop [8]=Oop [20]=NarrowOop off=3080}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e853467a8: call   0x00007f8e99dc2320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e853467ad: mov    esi,0xfffffff4
  0x00007f8e853467b2: mov    rbp,QWORD PTR [rsp]
  0x00007f8e853467b6: nop    
  0x00007f8e853467b7: call   0x00007f8e850051a0  ; OopMap{rbp=Oop [40]=Oop off=3100}
                                                ;*checkcast
                                                ; - Hash_LongPoint::dec@17 (line 55)
                                                ;   {runtime_call}
  0x00007f8e853467bc: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - Hash_LongPoint::dec@17 (line 55)
                                                ;   {runtime_call}
  0x00007f8e853467c1: mov    esi,0xffffff76
  0x00007f8e853467c6: mov    QWORD PTR [rsp],r13
  0x00007f8e853467ca: mov    DWORD PTR [rsp+0x8],ecx
  0x00007f8e853467ce: mov    QWORD PTR [rsp-0x8],rax
  0x00007f8e853467d3: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f8e853467d7: mov    DWORD PTR [rsp+0xc],eax
  0x00007f8e853467db: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f8e853467e0: mov    DWORD PTR [rsp+0x10],r10d
  0x00007f8e853467e5: mov    QWORD PTR [rsp+0x20],r11
  0x00007f8e853467ea: nop    
  0x00007f8e853467eb: call   0x00007f8e850051a0  ; OopMap{[0]=Oop [12]=NarrowOop [32]=Oop [40]=Oop off=3152}
                                                ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e853467f0: call   0x00007f8e99dc2320  ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e853467f5: mov    esi,0xffffffd6
  0x00007f8e853467fa: mov    QWORD PTR [rsp],r13
  0x00007f8e853467fe: mov    DWORD PTR [rsp+0x8],ecx
  0x00007f8e85346802: mov    QWORD PTR [rsp+0x10],rax
  0x00007f8e85346807: call   0x00007f8e850051a0  ; OopMap{rbp=Oop [0]=Oop [16]=Oop off=3180}
                                                ;*aastore
                                                ; - java.util.HashMap::putVal@59 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e8534680c: call   0x00007f8e99dc2320  ;*aastore
                                                ; - java.util.HashMap::putVal@59 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346811: mov    esi,0xffffffe4
  0x00007f8e85346816: mov    DWORD PTR [rsp],edx
  0x00007f8e85346819: mov    DWORD PTR [rsp+0x14],r13d
  0x00007f8e8534681e: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f8e85346823: call   0x00007f8e850051a0  ; OopMap{[20]=NarrowOop [32]=NarrowOop [40]=Oop off=3208}
                                                ;*aaload
                                                ; - java.util.HashMap::removeNode@30 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346828: call   0x00007f8e99dc2320  ;*aaload
                                                ; - java.util.HashMap::removeNode@30 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e8534682d: mov    esi,0xffffff65
  0x00007f8e85346832: mov    DWORD PTR [rsp],edx
  0x00007f8e85346835: mov    DWORD PTR [rsp+0x4],r13d
  0x00007f8e8534683a: mov    DWORD PTR [rsp+0x14],r11d
  0x00007f8e8534683f: call   0x00007f8e850051a0  ; OopMap{[4]=NarrowOop [32]=NarrowOop [40]=Oop off=3236}
                                                ;*ifle
                                                ; - java.util.HashMap::removeNode@16 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346844: call   0x00007f8e99dc2320  ;*ifle
                                                ; - java.util.HashMap::removeNode@16 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346849: mov    esi,0xffffffd6
  0x00007f8e8534684e: mov    QWORD PTR [rsp+0x8],rax
  0x00007f8e85346853: mov    DWORD PTR [rsp+0x4],r13d
  0x00007f8e85346858: mov    DWORD PTR [rsp+0x10],r10d
  0x00007f8e8534685d: xchg   ax,ax
  0x00007f8e8534685f: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [4]=NarrowOop [8]=Oop [32]=NarrowOop off=3268}
                                                ;*aastore
                                                ; - java.util.HashMap::removeNode@246 (line 841)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346864: call   0x00007f8e99dc2320  ;*aastore
                                                ; - java.util.HashMap::removeNode@246 (line 841)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346869: mov    esi,0xffffff65
  0x00007f8e8534686e: mov    DWORD PTR [rsp+0x4],edx
  0x00007f8e85346872: mov    DWORD PTR [rsp+0x10],r13d
  0x00007f8e85346877: mov    DWORD PTR [rsp+0x14],r8d
  0x00007f8e8534687c: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f8e85346881: xchg   ax,ax
  0x00007f8e85346883: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [16]=NarrowOop [20]=NarrowOop [32]=NarrowOop [40]=Oop off=3304}
                                                ;*ifnull
                                                ; - java.util.HashMap::removeNode@89 (line 821)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346888: call   0x00007f8e99dc2320  ;*ifnull
                                                ; - java.util.HashMap::removeNode@89 (line 821)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e8534688d: mov    esi,0xffffff65
  0x00007f8e85346892: mov    QWORD PTR [rsp+0x18],rax
  0x00007f8e85346897: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [0]=NarrowOop [24]=Oop [32]=Oop off=3324}
                                                ;*ifnull
                                                ; - java.util.HashMap::removeNode@173 (line 836)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e8534689c: call   0x00007f8e99dc2320  ;*ifnull
                                                ; - java.util.HashMap::removeNode@173 (line 836)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e853468a1: mov    r8,QWORD PTR [rsp]
  0x00007f8e853468a5: cmp    rbx,r8
  0x00007f8e853468a8: mov    ebp,0xffffffff
  0x00007f8e853468ad: jl     0x00007f8e853468b7
  0x00007f8e853468af: setne  bpl
  0x00007f8e853468b3: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e853468b7: mov    esi,0xffffff65
  0x00007f8e853468bc: mov    QWORD PTR [rsp-0x8],rax
  0x00007f8e853468c1: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f8e853468c5: mov    DWORD PTR [rsp],eax
  0x00007f8e853468c8: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f8e853468cd: mov    DWORD PTR [rsp+0x4],r10d
  0x00007f8e853468d2: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e853468d7: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f8e853468dc: mov    QWORD PTR [rsp+0x10],r11
  0x00007f8e853468e1: mov    QWORD PTR [rsp+0x18],r13
  0x00007f8e853468e6: mov    QWORD PTR [rsp+0x20],rcx
  0x00007f8e853468eb: mov    DWORD PTR [rsp+0x28],r9d
  0x00007f8e853468f0: xchg   ax,ax
  0x00007f8e853468f3: call   0x00007f8e850051a0  ; OopMap{[0]=NarrowOop [8]=Oop [16]=Oop [24]=Oop [32]=Oop off=3416}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e853468f8: call   0x00007f8e99dc2320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e853468fd: mov    esi,0xffffff65
  0x00007f8e85346902: mov    QWORD PTR [rsp-0x8],rax
  0x00007f8e85346907: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f8e8534690b: mov    DWORD PTR [rsp],eax
  0x00007f8e8534690e: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f8e85346913: mov    DWORD PTR [rsp+0x4],r10d
  0x00007f8e85346918: mov    QWORD PTR [rsp+0x10],r11
  0x00007f8e8534691d: mov    QWORD PTR [rsp+0x18],r13
  0x00007f8e85346922: mov    QWORD PTR [rsp+0x20],rbx
  0x00007f8e85346927: mov    QWORD PTR [rsp+0x28],rcx
  0x00007f8e8534692c: mov    DWORD PTR [rsp+0x30],r9d
  0x00007f8e85346931: xchg   ax,ax
  0x00007f8e85346933: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [0]=NarrowOop [16]=Oop [24]=Oop [32]=Oop [40]=Oop off=3480}
                                                ;*if_acmpeq
                                                ; - java.util.HashMap::putVal@193 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346938: call   0x00007f8e99dc2320  ;*if_acmpeq
                                                ; - java.util.HashMap::putVal@193 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e8534693d: cmp    r11,r9
  0x00007f8e85346940: mov    ebp,0xffffffff
  0x00007f8e85346945: jl     0x00007f8e8534694f
  0x00007f8e85346947: setne  bpl
  0x00007f8e8534694b: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e8534694f: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e85346954: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f8e85346959: mov    DWORD PTR [rsp+0x10],edx
  0x00007f8e8534695d: mov    QWORD PTR [rsp+0x20],rsi
  0x00007f8e85346962: mov    esi,0xffffff65
  0x00007f8e85346967: call   0x00007f8e850051a0  ; OopMap{[0]=Oop [8]=Oop [32]=Oop off=3532}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e8534696c: call   0x00007f8e99dc2320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346971: mov    esi,0xffffff76
  0x00007f8e85346976: mov    QWORD PTR [rsp+0x10],r13
  0x00007f8e8534697b: mov    QWORD PTR [rsp+0x18],rcx
  0x00007f8e85346980: mov    QWORD PTR [rsp-0x8],rax
  0x00007f8e85346985: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f8e85346989: mov    DWORD PTR [rsp+0x4],eax
  0x00007f8e8534698d: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f8e85346992: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f8e85346997: mov    QWORD PTR [rsp+0x30],r11
  0x00007f8e8534699c: mov    DWORD PTR [rsp+0x24],r9d
  0x00007f8e853469a1: xchg   ax,ax
  0x00007f8e853469a3: call   0x00007f8e850051a0  ; OopMap{[4]=NarrowOop [16]=Oop [24]=Oop [40]=Oop [48]=Oop off=3592}
                                                ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e853469a8: call   0x00007f8e99dc2320  ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e853469ad: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e853469b2: rex.W pop    QWORD PTR [rsp]
  0x00007f8e853469b6: mov    rsi,0x7c0011300    ;   {metadata('java/lang/Integer')}
  0x00007f8e853469c0: xchg   ax,ax
  0x00007f8e853469c3: call   0x00007f8e852a73e0  ; OopMap{[0]=Oop [32]=NarrowOop [40]=Oop off=3624}
                                                ;*new  ; - java.lang.Integer::valueOf@23 (line 832)
                                                ; - Hash_LongPoint::dec@39 (line 57)
                                                ;   {runtime_call}
  0x00007f8e853469c8: jmp    0x00007f8e853465c6
  0x00007f8e853469cd: cmp    rsi,rdi
  0x00007f8e853469d0: mov    ebp,0xffffffff
  0x00007f8e853469d5: jl     0x00007f8e853469df
  0x00007f8e853469d7: setne  bpl
  0x00007f8e853469db: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::removeNode@143 (line 828)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e853469df: mov    esi,0xffffff65
  0x00007f8e853469e4: mov    QWORD PTR [rsp-0x8],rax
  0x00007f8e853469e9: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f8e853469ed: mov    DWORD PTR [rsp],eax
  0x00007f8e853469f0: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f8e853469f5: mov    DWORD PTR [rsp+0x4],edx
  0x00007f8e853469f9: mov    DWORD PTR [rsp+0x10],r13d
  0x00007f8e853469fe: mov    QWORD PTR [rsp+0x18],rax
  0x00007f8e85346a03: mov    DWORD PTR [rsp+0x14],r10d
  0x00007f8e85346a08: mov    QWORD PTR [rsp+0x20],r11
  0x00007f8e85346a0d: xchg   ax,ax
  0x00007f8e85346a0f: call   0x00007f8e850051a0  ; OopMap{[0]=NarrowOop [16]=NarrowOop [24]=Oop [32]=Oop [40]=Oop off=3700}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::removeNode@143 (line 828)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346a14: call   0x00007f8e99dc2320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::removeNode@143 (line 828)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346a19: mov    esi,0xffffff65
  0x00007f8e85346a1e: mov    DWORD PTR [rsp+0x4],edx
  0x00007f8e85346a22: mov    DWORD PTR [rsp+0x10],r13d
  0x00007f8e85346a27: mov    QWORD PTR [rsp+0x18],r11
  0x00007f8e85346a2c: mov    DWORD PTR [rsp+0x14],r10d
  0x00007f8e85346a31: xchg   ax,ax
  0x00007f8e85346a33: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [16]=NarrowOop [24]=Oop [32]=NarrowOop [40]=Oop off=3736}
                                                ;*ifnonnull
                                                ; - java.util.HashMap::removeNode@168 (line 833)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346a38: call   0x00007f8e99dc2320  ;*ifnonnull
                                                ; - java.util.HashMap::removeNode@168 (line 833)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346a3d: mov    esi,0xffffffde
  0x00007f8e85346a42: mov    rbp,QWORD PTR [rsp]
  0x00007f8e85346a46: mov    DWORD PTR [rsp+0x8],r10d
  0x00007f8e85346a4b: call   0x00007f8e850051a0  ; OopMap{rbp=Oop [8]=NarrowOop [40]=Oop off=3760}
                                                ;*checkcast
                                                ; - Hash_LongPoint::dec@17 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346a50: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - Hash_LongPoint::dec@17 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346a55: mov    esi,0xffffffde
  0x00007f8e85346a5a: mov    QWORD PTR [rsp-0x8],rax
  0x00007f8e85346a5f: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f8e85346a63: mov    DWORD PTR [rsp],eax
  0x00007f8e85346a66: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f8e85346a6b: mov    DWORD PTR [rsp+0x4],r10d
  0x00007f8e85346a70: mov    QWORD PTR [rsp+0x10],r11
  0x00007f8e85346a75: mov    QWORD PTR [rsp+0x18],r13
  0x00007f8e85346a7a: mov    QWORD PTR [rsp+0x20],rbx
  0x00007f8e85346a7f: mov    QWORD PTR [rsp+0x28],rcx
  0x00007f8e85346a84: mov    DWORD PTR [rsp+0x30],r9d
  0x00007f8e85346a89: xchg   ax,ax
  0x00007f8e85346a8b: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [0]=NarrowOop [16]=Oop [24]=Oop [32]=Oop [40]=Oop off=3824}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346a90: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346a95: mov    esi,0xffffffde
  0x00007f8e85346a9a: mov    ebp,DWORD PTR [rsp+0x20]
  0x00007f8e85346a9e: mov    DWORD PTR [rsp],edx
  0x00007f8e85346aa1: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e85346aa6: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f8e85346aab: mov    DWORD PTR [rsp+0x4],r13d
  0x00007f8e85346ab0: mov    DWORD PTR [rsp+0x10],r8d
  0x00007f8e85346ab5: mov    DWORD PTR [rsp+0x14],r10d
  0x00007f8e85346aba: mov    DWORD PTR [rsp+0x20],r11d
  0x00007f8e85346abf: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [4]=NarrowOop [8]=Oop [16]=NarrowOop [32]=NarrowOop off=3876}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::removeNode@68 (line 819)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346ac4: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::removeNode@68 (line 819)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346ac9: mov    esi,0xffffffde
  0x00007f8e85346ace: mov    rbp,QWORD PTR [rsp]
  0x00007f8e85346ad2: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e85346ad7: rex.W pop    QWORD PTR [rsp]
  0x00007f8e85346adb: mov    DWORD PTR [rsp+0x8],edx
  0x00007f8e85346adf: mov    DWORD PTR [rsp+0xc],r11d
  0x00007f8e85346ae4: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f8e85346ae9: xchg   ax,ax
  0x00007f8e85346aeb: call   0x00007f8e850051a0  ; OopMap{rbp=Oop [0]=Oop [12]=NarrowOop [32]=NarrowOop off=3920}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346af0: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346af5: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e85346afa: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f8e85346aff: mov    DWORD PTR [rsp+0x10],edx
  0x00007f8e85346b03: mov    QWORD PTR [rsp+0x20],rsi
  0x00007f8e85346b08: mov    esi,0xffffffde
  0x00007f8e85346b0d: xchg   ax,ax
  0x00007f8e85346b0f: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [0]=Oop [8]=Oop [32]=Oop off=3956}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346b14: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346b19: mov    esi,0xffffffde
  0x00007f8e85346b1e: mov    ebp,DWORD PTR [rsp+0x20]
  0x00007f8e85346b22: mov    DWORD PTR [rsp],r10d
  0x00007f8e85346b26: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e85346b2b: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f8e85346b30: mov    QWORD PTR [rsp+0x18],r13
  0x00007f8e85346b35: mov    DWORD PTR [rsp+0x4],r9d
  0x00007f8e85346b3a: mov    DWORD PTR [rsp+0x28],eax
  0x00007f8e85346b3e: nop    
  0x00007f8e85346b3f: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [4]=NarrowOop [8]=Oop [16]=Oop [24]=Oop [40]=NarrowOop off=4004}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346b44: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346b49: mov    esi,0xffffffde
  0x00007f8e85346b4e: mov    QWORD PTR [rsp-0x8],rax
  0x00007f8e85346b53: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f8e85346b57: mov    DWORD PTR [rsp],eax
  0x00007f8e85346b5a: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f8e85346b5f: mov    DWORD PTR [rsp+0x4],edx
  0x00007f8e85346b63: mov    DWORD PTR [rsp+0x10],r13d
  0x00007f8e85346b68: mov    QWORD PTR [rsp+0x18],rax
  0x00007f8e85346b6d: mov    DWORD PTR [rsp+0x14],r10d
  0x00007f8e85346b72: mov    QWORD PTR [rsp+0x20],r11
  0x00007f8e85346b77: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [0]=NarrowOop [16]=NarrowOop [24]=Oop [32]=Oop [40]=Oop off=4060}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::removeNode@143 (line 828)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346b7c: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::removeNode@143 (line 828)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346b81: mov    esi,0xfffffff6
  0x00007f8e85346b86: mov    rbp,rax
  0x00007f8e85346b89: xchg   ax,ax
  0x00007f8e85346b8b: call   0x00007f8e850051a0  ; OopMap{rbp=Oop off=4080}
                                                ;*invokevirtual get
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346b90: call   0x00007f8e99dc2320  ;*invokevirtual get
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346b95: mov    esi,0xfffffff6
  0x00007f8e85346b9a: mov    rbp,QWORD PTR [rsp+0x28]
  0x00007f8e85346b9f: call   0x00007f8e850051a0  ; OopMap{rbp=Oop [16]=Oop off=4100}
                                                ;*invokevirtual put
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346ba4: call   0x00007f8e99dc2320  ;*invokevirtual put
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346ba9: mov    esi,0xfffffff4
  0x00007f8e85346bae: mov    ebp,DWORD PTR [rsp+0x20]
  0x00007f8e85346bb2: mov    DWORD PTR [rsp],r10d
  0x00007f8e85346bb6: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e85346bbb: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f8e85346bc0: mov    QWORD PTR [rsp+0x18],r13
  0x00007f8e85346bc5: mov    DWORD PTR [rsp+0x4],r9d
  0x00007f8e85346bca: nop    
  0x00007f8e85346bcb: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [4]=NarrowOop [8]=Oop [16]=Oop [24]=Oop off=4144}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346bd0: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346bd5: mov    esi,0xffffff65
  0x00007f8e85346bda: mov    rbp,QWORD PTR [rsp]
  0x00007f8e85346bde: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e85346be3: rex.W pop    QWORD PTR [rsp]
  0x00007f8e85346be7: mov    DWORD PTR [rsp+0x8],edx
  0x00007f8e85346beb: mov    DWORD PTR [rsp+0x18],r11d
  0x00007f8e85346bf0: xchg   ax,ax
  0x00007f8e85346bf3: call   0x00007f8e850051a0  ; OopMap{rbp=Oop [0]=Oop [24]=NarrowOop off=4184}
                                                ;*ifnull
                                                ; - java.util.HashMap::getNode@6 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346bf8: call   0x00007f8e99dc2320  ;*ifnull
                                                ; - java.util.HashMap::getNode@6 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346bfd: mov    esi,0xfffffff4
  0x00007f8e85346c02: mov    rbp,QWORD PTR [rsp]
  0x00007f8e85346c06: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e85346c0b: rex.W pop    QWORD PTR [rsp]
  0x00007f8e85346c0f: mov    DWORD PTR [rsp+0x8],edx
  0x00007f8e85346c13: mov    DWORD PTR [rsp+0xc],r11d
  0x00007f8e85346c18: xchg   ax,ax
  0x00007f8e85346c1b: call   0x00007f8e850051a0  ; OopMap{rbp=Oop [0]=Oop [12]=NarrowOop off=4224}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346c20: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346c25: mov    esi,0xfffffff6
  0x00007f8e85346c2a: mov    rbp,QWORD PTR [rsp+0x28]
  0x00007f8e85346c2f: call   0x00007f8e850051a0  ; OopMap{rbp=Oop off=4244}
                                                ;*invokevirtual remove
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346c34: call   0x00007f8e99dc2320  ;*invokevirtual remove
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346c39: mov    esi,0xffffff65
  0x00007f8e85346c3e: mov    DWORD PTR [rsp],edx
  0x00007f8e85346c41: mov    DWORD PTR [rsp+0x10],r13d
  0x00007f8e85346c46: nop    
  0x00007f8e85346c47: call   0x00007f8e850051a0  ; OopMap{[16]=NarrowOop [32]=NarrowOop [40]=Oop off=4268}
                                                ;*ifnull
                                                ; - java.util.HashMap::removeNode@7 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346c4c: call   0x00007f8e99dc2320  ;*ifnull
                                                ; - java.util.HashMap::removeNode@7 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346c51: mov    esi,0xffffff65
  0x00007f8e85346c56: mov    DWORD PTR [rsp],edx
  0x00007f8e85346c59: mov    DWORD PTR [rsp+0x4],r13d
  0x00007f8e85346c5e: mov    DWORD PTR [rsp+0x14],r10d
  0x00007f8e85346c63: mov    DWORD PTR [rsp+0x18],r8d
  0x00007f8e85346c68: xchg   ax,ax
  0x00007f8e85346c6b: call   0x00007f8e850051a0  ; OopMap{[4]=NarrowOop [24]=NarrowOop [32]=NarrowOop [40]=Oop off=4304}
                                                ;*ifnull
                                                ; - java.util.HashMap::removeNode@34 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346c70: call   0x00007f8e99dc2320  ;*ifnull
                                                ; - java.util.HashMap::removeNode@34 (line 815)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346c75: mov    esi,0xfffffff4
  0x00007f8e85346c7a: mov    DWORD PTR [rsp],edx
  0x00007f8e85346c7d: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e85346c82: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f8e85346c87: mov    DWORD PTR [rsp+0x4],r13d
  0x00007f8e85346c8c: mov    DWORD PTR [rsp+0x10],r8d
  0x00007f8e85346c91: mov    DWORD PTR [rsp+0x14],r10d
  0x00007f8e85346c96: nop    
  0x00007f8e85346c97: call   0x00007f8e850051a0  ; OopMap{[4]=NarrowOop [8]=Oop [16]=NarrowOop [32]=NarrowOop off=4348}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::removeNode@68 (line 819)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346c9c: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::removeNode@68 (line 819)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346ca1: mov    esi,0xfffffff4
  0x00007f8e85346ca6: mov    ebp,DWORD PTR [rsp+0x20]
  0x00007f8e85346caa: mov    DWORD PTR [rsp],r10d
  0x00007f8e85346cae: mov    QWORD PTR [rsp+0x10],r11
  0x00007f8e85346cb3: mov    QWORD PTR [rsp+0x18],r13
  0x00007f8e85346cb8: mov    QWORD PTR [rsp+0x20],rbx
  0x00007f8e85346cbd: mov    QWORD PTR [rsp+0x28],rcx
  0x00007f8e85346cc2: mov    DWORD PTR [rsp+0x4],r9d
  0x00007f8e85346cc7: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [16]=Oop [24]=Oop [32]=Oop [40]=Oop off=4396}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346ccc: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346cd1: mov    rbp,QWORD PTR [rsp]
  0x00007f8e85346cd5: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f8e85346cda: rex.W pop    QWORD PTR [rsp]
  0x00007f8e85346cde: mov    DWORD PTR [rsp+0x8],edx
  0x00007f8e85346ce2: mov    QWORD PTR [rsp+0x18],rsi
  0x00007f8e85346ce7: mov    esi,0xfffffff4
  0x00007f8e85346cec: xchg   ax,ax
  0x00007f8e85346cef: call   0x00007f8e850051a0  ; OopMap{rbp=Oop [0]=Oop [24]=Oop off=4436}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346cf4: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346cf9: mov    esi,0xfffffff4
  0x00007f8e85346cfe: mov    ebp,DWORD PTR [rsp+0x20]
  0x00007f8e85346d02: mov    DWORD PTR [rsp],edx
  0x00007f8e85346d05: mov    DWORD PTR [rsp+0x4],r13d
  0x00007f8e85346d0a: mov    QWORD PTR [rsp+0x10],rax
  0x00007f8e85346d0f: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f8e85346d14: mov    QWORD PTR [rsp+0x20],r11
  0x00007f8e85346d19: xchg   ax,ax
  0x00007f8e85346d1b: call   0x00007f8e850051a0  ; OopMap{rbp=NarrowOop [4]=NarrowOop [16]=Oop [32]=Oop [40]=Oop off=4480}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::removeNode@143 (line 828)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346d20: call   0x00007f8e99dc2320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::removeNode@143 (line 828)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)
                                                ;   {runtime_call}
  0x00007f8e85346d25: mov    esi,0xfffffff6
  0x00007f8e85346d2a: nop    
  0x00007f8e85346d2b: call   0x00007f8e850051a0  ; OopMap{off=4496}
                                                ;*arraylength
                                                ; - java.util.HashMap::putVal@26 (line 628)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346d30: call   0x00007f8e99dc2320  ;*new
                                                ; - java.lang.Integer::valueOf@23 (line 832)
                                                ; - Hash_LongPoint::dec@39 (line 57)
                                                ;   {runtime_call}
  0x00007f8e85346d35: mov    rsi,rax
  0x00007f8e85346d38: jmp    0x00007f8e85346d58  ;*new
                                                ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346d3a: jmp    0x00007f8e85346d50  ;*invokevirtual treeifyBin
                                                ; - java.util.HashMap::putVal@169 (line 643)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346d3c: jmp    0x00007f8e85346d50  ;*new
                                                ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346d3e: jmp    0x00007f8e85346d50  ;*new
                                                ; - LongPoint6$1::create@0 (line 9)
                                                ; - LongPoint6$1::create@2 (line 5)
                                                ; - Hash_LongPoint::dec@5 (line 54)

  0x00007f8e85346d40: mov    rsi,rax
  0x00007f8e85346d43: jmp    0x00007f8e85346d58  ;*invokevirtual resize
                                                ; - java.util.HashMap::putVal@20 (line 628)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346d45: jmp    0x00007f8e85346d50  ;*invokevirtual resize
                                                ; - java.util.HashMap::putVal@288 (line 662)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346d47: jmp    0x00007f8e85346d50  ;*invokevirtual getTreeNode
                                                ; - java.util.HashMap::removeNode@107 (line 823)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346d49: jmp    0x00007f8e85346d55  ;*invokevirtual getTreeNode
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)

  0x00007f8e85346d4b: mov    rsi,rax
  0x00007f8e85346d4e: jmp    0x00007f8e85346d58  ;*synchronization entry
                                                ; - java.util.HashMap::putVal@-1 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - Hash_LongPoint::dec@42 (line 57)

  0x00007f8e85346d50: mov    rsi,rax
  0x00007f8e85346d53: jmp    0x00007f8e85346d58  ;*invokevirtual removeTreeNode
                                                ; - java.util.HashMap::removeNode@224 (line 839)
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - Hash_LongPoint::dec@54 (line 59)

  0x00007f8e85346d55: mov    rsi,rax            ;*synchronization entry
                                                ; - Hash_LongPoint::dec@-1 (line 54)

  0x00007f8e85346d58: add    rsp,0x60
  0x00007f8e85346d5c: pop    rbp
  0x00007f8e85346d5d: jmp    0x00007f8e852b09e0  ;*invokevirtual getNode
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::dec@14 (line 55)
                                                ;   {runtime_call}
  0x00007f8e85346d62: hlt    
  0x00007f8e85346d63: hlt    
  0x00007f8e85346d64: hlt    
  0x00007f8e85346d65: hlt    
  0x00007f8e85346d66: hlt    
  0x00007f8e85346d67: hlt    
  0x00007f8e85346d68: hlt    
  0x00007f8e85346d69: hlt    
  0x00007f8e85346d6a: hlt    
  0x00007f8e85346d6b: hlt    
  0x00007f8e85346d6c: hlt    
  0x00007f8e85346d6d: hlt    
  0x00007f8e85346d6e: hlt    
  0x00007f8e85346d6f: hlt    
  0x00007f8e85346d70: hlt    
  0x00007f8e85346d71: hlt    
  0x00007f8e85346d72: hlt    
  0x00007f8e85346d73: hlt    
  0x00007f8e85346d74: hlt    
  0x00007f8e85346d75: hlt    
  0x00007f8e85346d76: hlt    
  0x00007f8e85346d77: hlt    
  0x00007f8e85346d78: hlt    
  0x00007f8e85346d79: hlt    
  0x00007f8e85346d7a: hlt    
  0x00007f8e85346d7b: hlt    
  0x00007f8e85346d7c: hlt    
  0x00007f8e85346d7d: hlt    
  0x00007f8e85346d7e: hlt    
  0x00007f8e85346d7f: hlt    
[Stub Code]
  0x00007f8e85346d80: mov    rbx,0x0            ;   {no_reloc}
  0x00007f8e85346d8a: jmp    0x00007f8e85346d8a  ;   {runtime_call}
  0x00007f8e85346d8f: mov    rbx,0x0            ;   {static_stub}
  0x00007f8e85346d99: jmp    0x00007f8e85346d99  ;   {runtime_call}
  0x00007f8e85346d9e: mov    rbx,0x0            ;   {static_stub}
  0x00007f8e85346da8: jmp    0x00007f8e85346da8  ;   {runtime_call}
  0x00007f8e85346dad: mov    rbx,0x0            ;   {static_stub}
  0x00007f8e85346db7: jmp    0x00007f8e85346db7  ;   {runtime_call}
  0x00007f8e85346dbc: mov    rbx,0x0            ;   {static_stub}
  0x00007f8e85346dc6: jmp    0x00007f8e85346dc6  ;   {runtime_call}
  0x00007f8e85346dcb: mov    rbx,0x0            ;   {static_stub}
  0x00007f8e85346dd5: jmp    0x00007f8e85346dd5  ;   {runtime_call}
  0x00007f8e85346dda: mov    rbx,0x0            ;   {static_stub}
  0x00007f8e85346de4: jmp    0x00007f8e85346de4  ;   {runtime_call}
[Exception Handler]
  0x00007f8e85346de9: jmp    0x00007f8e8506c3a0  ;   {runtime_call}
[Deopt Handler Code]
  0x00007f8e85346dee: call   0x00007f8e85346df3
  0x00007f8e85346df3: sub    QWORD PTR [rsp],0x5
  0x00007f8e85346df8: jmp    0x00007f8e850473c0  ;   {runtime_call}
  0x00007f8e85346dfd: hlt    
  0x00007f8e85346dfe: hlt    
  0x00007f8e85346dff: hlt    

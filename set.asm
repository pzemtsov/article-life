[Entry Point]
[Constants]
  # {method} {0x00007f9539357e68} 'set' '(LLongPoint;)V' in 'Hash_LongPoint'
  # this:     rsi:rsi   = 'Hash_LongPoint'
  # parm0:    rdx:rdx   = 'LongPoint'
  #           [sp+0x50]  (sp of caller)
  0x00007f953d300b60: mov    r10d,DWORD PTR [rsi+0x8]
  0x00007f953d300b64: shl    r10,0x3
  0x00007f953d300b68: cmp    rax,r10
  0x00007f953d300b6b: jne    0x00007f953d045e20  ;   {runtime_call}
  0x00007f953d300b71: xchg   ax,ax
  0x00007f953d300b74: nop    DWORD PTR [rax+rax*1+0x0]
  0x00007f953d300b7c: xchg   ax,ax
[Verified Entry Point]
  0x00007f953d300b80: mov    DWORD PTR [rsp-0x14000],eax
  0x00007f953d300b87: push   rbp
  0x00007f953d300b88: sub    rsp,0x40           ;*synchronization entry
                                                ; - Hash_LongPoint::set@-1 (line 65)

  0x00007f953d300b8c: mov    QWORD PTR [rsp],rsi
  0x00007f953d300b90: mov    QWORD PTR [rsp+0x28],rdx
  0x00007f953d300b95: mov    rbp,QWORD PTR [rdx+0x10]  ;*getfield v
                                                ; - Hash_LongPoint::set@1 (line 65)
                                                ; implicit exception: dispatches to 0x00007f953d301311
  0x00007f953d300b99: mov    r10,0xfffffffeffffffff
  0x00007f953d300ba3: mov    rdx,rbp
  0x00007f953d300ba6: add    rdx,r10            ;*lsub
                                                ; - Hash_LongPoint::set@12 (line 66)

  0x00007f953d300ba9: xchg   ax,ax
  0x00007f953d300bab: call   0x00007f953d046020  ; OopMap{[0]=Oop [40]=Oop off=80}
                                                ;*invokespecial inc
                                                ; - Hash_LongPoint::set@13 (line 66)
                                                ;   {optimized virtual_call}
  0x00007f953d300bb0: mov    r10,0xffffffff00000000
  0x00007f953d300bba: mov    rdx,rbp
  0x00007f953d300bbd: add    rdx,r10            ;*lsub
                                                ; - Hash_LongPoint::set@10 (line 66)

  0x00007f953d300bc0: mov    rsi,QWORD PTR [rsp]
  0x00007f953d300bc4: xchg   ax,ax
  0x00007f953d300bc7: call   0x00007f953d046020  ; OopMap{[0]=Oop [40]=Oop off=108}
                                                ;*invokespecial inc
                                                ; - Hash_LongPoint::set@22 (line 67)
                                                ;   {optimized virtual_call}
  0x00007f953d300bcc: mov    r10,0xffffffff00000001
  0x00007f953d300bd6: mov    rdx,rbp
  0x00007f953d300bd9: add    rdx,r10            ;*ladd
                                                ; - Hash_LongPoint::set@32 (line 68)

  0x00007f953d300bdc: mov    rsi,QWORD PTR [rsp]
  0x00007f953d300be0: xchg   ax,ax
  0x00007f953d300be3: call   0x00007f953d046020  ; OopMap{[0]=Oop [40]=Oop off=136}
                                                ;*invokespecial inc
                                                ; - Hash_LongPoint::set@33 (line 68)
                                                ;   {optimized virtual_call}
  0x00007f953d300be8: mov    rdx,rbp
  0x00007f953d300beb: dec    rdx                ;*lsub
                                                ; - Hash_LongPoint::set@39 (line 69)

  0x00007f953d300bee: mov    rsi,QWORD PTR [rsp]
  0x00007f953d300bf2: nop    
  0x00007f953d300bf3: call   0x00007f953d046020  ; OopMap{[0]=Oop [40]=Oop off=152}
                                                ;*invokespecial inc
                                                ; - Hash_LongPoint::set@40 (line 69)
                                                ;   {optimized virtual_call}
  0x00007f953d300bf8: mov    rdx,rbp
  0x00007f953d300bfb: add    rdx,0x1            ;*ladd
                                                ; - Hash_LongPoint::set@46 (line 70)

  0x00007f953d300bff: mov    rsi,QWORD PTR [rsp]
  0x00007f953d300c03: call   0x00007f953d046020  ; OopMap{[0]=Oop [40]=Oop off=168}
                                                ;*invokespecial inc
                                                ; - Hash_LongPoint::set@47 (line 70)
                                                ;   {optimized virtual_call}
  0x00007f953d300c08: mov    r10d,0xffffffff
  0x00007f953d300c0e: mov    rdx,rbp
  0x00007f953d300c11: add    rdx,r10            ;*lsub
                                                ; - Hash_LongPoint::set@57 (line 71)

  0x00007f953d300c14: mov    rsi,QWORD PTR [rsp]
  0x00007f953d300c18: xchg   ax,ax
  0x00007f953d300c1b: call   0x00007f953d046020  ; OopMap{[0]=Oop [40]=Oop off=192}
                                                ;*invokespecial inc
                                                ; - Hash_LongPoint::set@58 (line 71)
                                                ;   {optimized virtual_call}
  0x00007f953d300c20: mov    r10,0x100000000
  0x00007f953d300c2a: mov    rdx,rbp
  0x00007f953d300c2d: add    rdx,r10            ;*ladd
                                                ; - Hash_LongPoint::set@55 (line 71)

  0x00007f953d300c30: mov    rsi,QWORD PTR [rsp]
  0x00007f953d300c34: xchg   ax,ax
  0x00007f953d300c37: call   0x00007f953d046020  ; OopMap{[0]=Oop [40]=Oop off=220}
                                                ;*invokespecial inc
                                                ; - Hash_LongPoint::set@67 (line 72)
                                                ;   {optimized virtual_call}
  0x00007f953d300c3c: mov    r10,0x100000001
  0x00007f953d300c46: mov    rdx,rbp
  0x00007f953d300c49: add    rdx,r10            ;*ladd
                                                ; - Hash_LongPoint::set@77 (line 73)

  0x00007f953d300c4c: mov    rsi,QWORD PTR [rsp]
  0x00007f953d300c50: xchg   ax,ax
  0x00007f953d300c53: call   0x00007f953d046020  ; OopMap{[0]=Oop [40]=Oop off=248}
                                                ;*invokespecial inc
                                                ; - Hash_LongPoint::set@78 (line 73)
                                                ;   {optimized virtual_call}
  0x00007f953d300c58: mov    r10,QWORD PTR [rsp]
  0x00007f953d300c5c: mov    r10d,DWORD PTR [r10+0x10]
                                                ;*getfield field
                                                ; - Hash_LongPoint::set@82 (line 74)

  0x00007f953d300c60: mov    r10d,DWORD PTR [r12+r10*8+0xc]
                                                ;*getfield map
                                                ; - java.util.HashSet::add@1 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ; implicit exception: dispatches to 0x00007f953d301321
  0x00007f953d300c65: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f953d300c6a: mov    r11d,DWORD PTR [r12+r10*8+0x24]
                                                ;*getfield table
                                                ; - java.util.HashMap::putVal@1 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ; implicit exception: dispatches to 0x00007f953d301335
  0x00007f953d300c6f: mov    r10,QWORD PTR [rsp+0x28]
  0x00007f953d300c74: mov    rbx,QWORD PTR [r10+0x10]  ;*getfield v
                                                ; - LongPoint6::hashCode@1 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::put@2 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300c78: mov    r8d,DWORD PTR [rsp+0x18]
  0x00007f953d300c7d: lea    r13,[r12+r8*8]     ;*getfield map
                                                ; - java.util.HashSet::add@1 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300c81: mov    r10,rbx
  0x00007f953d300c84: sar    r10,0x3f
  0x00007f953d300c88: mov    rax,0x2449f0232c624b0b
  0x00007f953d300c92: imul   rbx
  0x00007f953d300c95: sar    rdx,0x1b
  0x00007f953d300c99: sub    rdx,r10
  0x00007f953d300c9c: imul   r10,rdx,0x386fa527
  0x00007f953d300ca3: mov    r8,rbx
  0x00007f953d300ca6: sub    r8,r10
  0x00007f953d300ca9: mov    r10d,r8d           ;*l2i  ; - LongPoint6::hashCode@8 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::put@2 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300cac: mov    r8d,r10d
  0x00007f953d300caf: shr    r8d,0x10
  0x00007f953d300cb3: xor    r8d,r10d           ;*ixor
                                                ; - java.util.HashMap::hash@18 (line 338)
                                                ; - java.util.HashMap::put@2 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300cb6: mov    DWORD PTR [rsp+0x1c],r8d
  0x00007f953d300cbb: test   r11d,r11d
  0x00007f953d300cbe: je     0x00007f953d301000  ;*ifnull
                                                ; - java.util.HashMap::putVal@7 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300cc4: mov    r9d,DWORD PTR [r12+r11*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap::putVal@12 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300cc9: test   r9d,r9d
  0x00007f953d300ccc: je     0x00007f953d3010fd  ;*ifne
                                                ; - java.util.HashMap::putVal@16 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300cd2: lea    r10,[r12+r11*8]    ;*getfield v
                                                ; - LongPoint::equals@8 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300cd6: mov    r11d,r9d
  0x00007f953d300cd9: dec    r11d
  0x00007f953d300cdc: and    r11d,DWORD PTR [rsp+0x1c]
                                                ;*iand
                                                ; - java.util.HashMap::putVal@36 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300ce1: cmp    r11d,r9d
  0x00007f953d300ce4: jae    0x00007f953d3010cd
  0x00007f953d300cea: lea    rdx,[r10+r11*4+0x10]  ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300cef: mov    r9d,DWORD PTR [rsp+0x18]
  0x00007f953d300cf4: mov    esi,DWORD PTR [r12+r9*8+0x8]
                                                ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300cf9: mov    ecx,DWORD PTR [rdx]  ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300cfb: mov    r8,QWORD PTR [rsp+0x28]
  0x00007f953d300d00: mov    r9,r8
  0x00007f953d300d03: shr    r9,0x3             ;*putfield key
                                                ; - java.util.HashMap$Node::<init>@11 (line 286)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d07: mov    r8d,0xf8003c4e     ;   {metadata('java/util/HashMap$Node')}
  0x00007f953d300d0d: mov    rdi,0x0
  0x00007f953d300d17: lea    rdi,[rdi+r8*8]
  0x00007f953d300d1b: test   ecx,ecx
  0x00007f953d300d1d: je     0x00007f953d300e7a  ;*ifnonnull
                                                ; - java.util.HashMap::putVal@44 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d23: mov    r11d,DWORD PTR [r12+rcx*8+0xc]
  0x00007f953d300d28: lea    r8,[r12+rcx*8]     ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d2c: cmp    r11d,DWORD PTR [rsp+0x1c]
  0x00007f953d300d31: je     0x00007f953d300e0d  ;*if_icmpne
                                                ; - java.util.HashMap::putVal@69 (line 633)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d37: mov    r11d,DWORD PTR [r12+rcx*8+0x8]
  0x00007f953d300d3c: cmp    r11d,0xf8006464    ;   {metadata('java/util/HashMap$TreeNode')}
  0x00007f953d300d43: jne    0x00007f953d300ff9
  0x00007f953d300d49: mov    ebp,0x1            ;*instanceof
                                                ; - java.util.HashMap::putVal@106 (line 636)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d4e: cmp    r11d,0xf8006464    ;   {metadata('java/util/HashMap$TreeNode')}
  0x00007f953d300d55: je     0x00007f953d3011a9  ;*ifeq
                                                ; - java.util.HashMap::putVal@109 (line 636)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d5b: mov    ecx,DWORD PTR [r12+rcx*8+0x18]
                                                ;*getfield next
                                                ; - java.util.HashMap::putVal@136 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d60: test   ecx,ecx
  0x00007f953d300d62: je     0x00007f953d300f45  ;*ifnonnull
                                                ; - java.util.HashMap::putVal@142 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d68: lea    r8,[r12+rcx*8]     ;*getfield next
                                                ; - java.util.HashMap::putVal@136 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d6c: xor    r11d,r11d          ;*aload
                                                ; - java.util.HashMap::putVal@175 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d6f: mov    ecx,DWORD PTR [r8+0xc]
  0x00007f953d300d73: cmp    ecx,DWORD PTR [rsp+0x1c]
  0x00007f953d300d77: je     0x00007f953d300d94  ;*if_icmpne
                                                ; - java.util.HashMap::putVal@181 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d79: mov    ecx,DWORD PTR [r8+0x18]  ;*getfield next
                                                ; - java.util.HashMap::putVal@136 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d7d: inc    r11d               ; OopMap{r10=Oop r8=Oop r9=NarrowOop rcx=NarrowOop r13=Oop [24]=NarrowOop [40]=Oop off=544}
                                                ;*goto
                                                ; - java.util.HashMap::putVal@219 (line 639)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d80: test   DWORD PTR [rip+0x1570f27a],eax        # 0x00007f9552a10000
                                                ;*goto
                                                ; - java.util.HashMap::putVal@219 (line 639)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {poll}
  0x00007f953d300d86: test   ecx,ecx
  0x00007f953d300d88: je     0x00007f953d300f48  ;*ifnonnull
                                                ; - java.util.HashMap::putVal@142 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d8e: lea    r8,[r12+rcx*8]     ;*getfield next
                                                ; - java.util.HashMap::putVal@136 (line 640)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d92: jmp    0x00007f953d300d6f
  0x00007f953d300d94: mov    ebp,DWORD PTR [r8+0x10]  ;*getfield key
                                                ; - java.util.HashMap::putVal@186 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300d98: mov    r9,rbp
  0x00007f953d300d9b: shl    r9,0x3
  0x00007f953d300d9f: cmp    r9,QWORD PTR [rsp+0x28]
  0x00007f953d300da4: je     0x00007f953d301229  ;*if_acmpeq
                                                ; - java.util.HashMap::putVal@193 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300daa: mov    ecx,DWORD PTR [r12+rbp*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f953d301381
  0x00007f953d300daf: cmp    ecx,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f953d300db5: jne    0x00007f953d301291
  0x00007f953d300dbb: lea    r9,[r12+rbp*8]     ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300dbf: mov    r9,QWORD PTR [r9+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300dc3: cmp    r9,rbx
  0x00007f953d300dc6: jne    0x00007f953d3011d5  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300dcc: mov    r10d,DWORD PTR [r8+0x14]  ;*getfield value
                                                ; - java.util.HashMap::putVal@229 (line 653)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300dd0: mov    DWORD PTR [r8+0x14],0xce1291a0
                                                ;   {oop(a 'java/lang/Object')}
  0x00007f953d300dd8: mov    r11,r8
  0x00007f953d300ddb: shr    r11,0x9
  0x00007f953d300ddf: mov    r9,0x7f95391ff000
  0x00007f953d300de9: mov    BYTE PTR [r9+r11*1],r12b  ;*putfield value
                                                ; - java.util.HashMap::putVal@247 (line 655)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300ded: cmp    esi,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f953d300df3: je     0x00007f953d300e6e
  0x00007f953d300df5: mov    esi,0xffffffde
  0x00007f953d300dfa: mov    ebp,r10d
  0x00007f953d300dfd: mov    QWORD PTR [rsp+0x8],r8
  0x00007f953d300e02: nop    
  0x00007f953d300e03: call   0x00007f953d0051a0  ; OopMap{rbp=NarrowOop [8]=Oop [24]=NarrowOop off=680}
                                                ;*invokevirtual afterNodeAccess
                                                ; - java.util.HashMap::putVal@253 (line 656)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d300e08: call   0x00007f9552119320  ;*invokevirtual afterNodeAccess
                                                ; - java.util.HashMap::putVal@253 (line 656)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d300e0d: mov    r9d,DWORD PTR [r12+rcx*8+0x10]
                                                ;*getfield key
                                                ; - java.util.HashMap::putVal@74 (line 633)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300e12: mov    r11,r9
  0x00007f953d300e15: shl    r11,0x3
  0x00007f953d300e19: cmp    r11,QWORD PTR [rsp+0x28]
  0x00007f953d300e1e: je     0x00007f953d300e43  ;*if_acmpeq
                                                ; - java.util.HashMap::putVal@81 (line 633)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300e20: mov    r11d,DWORD PTR [r12+r9*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f953d301349
  0x00007f953d300e25: cmp    r11d,0xf800c188    ;   {metadata('LongPoint6')}
  0x00007f953d300e2c: jne    0x00007f953d3012d5
  0x00007f953d300e32: lea    r11,[r12+r9*8]     ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300e36: mov    r11,QWORD PTR [r11+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300e3a: cmp    r11,rbx
  0x00007f953d300e3d: jne    0x00007f953d30111d  ;*aload
                                                ; - java.util.HashMap::putVal@97 (line 635)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300e43: mov    r10d,DWORD PTR [r12+rcx*8+0x14]
                                                ;*getfield value
                                                ; - java.util.HashMap::putVal@229 (line 653)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300e48: mov    DWORD PTR [r12+rcx*8+0x14],0xce1291a0
                                                ;   {oop(a 'java/lang/Object')}
  0x00007f953d300e51: mov    r11,r8
  0x00007f953d300e54: shr    r11,0x9
  0x00007f953d300e58: mov    r9,0x7f95391ff000
  0x00007f953d300e62: mov    BYTE PTR [r9+r11*1],r12b  ;*putfield value
                                                ; - java.util.HashMap::putVal@247 (line 655)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300e66: cmp    esi,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f953d300e6c: jne    0x00007f953d300df5  ;*invokevirtual putVal
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300e6e: add    rsp,0x40
  0x00007f953d300e72: pop    rbp
  0x00007f953d300e73: test   DWORD PTR [rip+0x1570f187],eax        # 0x00007f9552a10000
                                                ;   {poll_return}
  0x00007f953d300e79: ret    
  0x00007f953d300e7a: cmp    esi,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f953d300e80: jne    0x00007f953d301159
  0x00007f953d300e86: mov    rbp,r13            ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300e89: mov    rcx,QWORD PTR [r15+0x60]
  0x00007f953d300e8d: mov    r8,rcx
  0x00007f953d300e90: add    r8,0x20
  0x00007f953d300e94: cmp    r8,QWORD PTR [r15+0x70]
  0x00007f953d300e98: jae    0x00007f953d30102a
  0x00007f953d300e9e: mov    QWORD PTR [r15+0x60],r8
  0x00007f953d300ea2: prefetchnta BYTE PTR [r8+0xc0]
  0x00007f953d300eaa: mov    r8,QWORD PTR [rdi+0xa8]
  0x00007f953d300eb1: mov    QWORD PTR [rcx],r8
  0x00007f953d300eb4: mov    DWORD PTR [rcx+0x8],0xf8003c4e
                                                ;   {metadata('java/util/HashMap$Node')}
  0x00007f953d300ebb: mov    DWORD PTR [rcx+0xc],r12d
  0x00007f953d300ebf: mov    QWORD PTR [rcx+0x18],r12  ;*new
                                                ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300ec3: mov    DWORD PTR [rcx+0x10],r9d  ;*putfield key
                                                ; - java.util.HashMap$Node::<init>@11 (line 286)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300ec7: mov    r9d,DWORD PTR [r10+0x8]  ;*aastore
                                                ; - java.util.HashMap::putVal@59 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300ecb: mov    DWORD PTR [rcx+0x14],0xce1291a0
                                                ;*new  ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {oop(a 'java/lang/Object')}
  0x00007f953d300ed2: mov    ebx,DWORD PTR [rsp+0x1c]
  0x00007f953d300ed6: mov    DWORD PTR [rcx+0xc],ebx  ;*putfield hash
                                                ; - java.util.HashMap$Node::<init>@6 (line 285)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300ed9: mov    r8,rcx
  0x00007f953d300edc: shr    r8,0x9
  0x00007f953d300ee0: mov    rbx,0x7f95391ff000
  0x00007f953d300eea: mov    BYTE PTR [rbx+r8*1],r12b  ;*synchronization entry
                                                ; - java.util.HashMap::newNode@-1 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300eee: cmp    r9d,0xf8003c94     ;   {metadata('java/util/HashMap$Node'[])}
  0x00007f953d300ef5: jne    0x00007f953d301189
  0x00007f953d300efb: mov    r10,rdx
  0x00007f953d300efe: mov    r8,rcx
  0x00007f953d300f01: shr    r8,0x3
  0x00007f953d300f05: mov    DWORD PTR [rdx],r8d
  0x00007f953d300f08: shr    r10,0x9
  0x00007f953d300f0c: mov    r11,0x7f95391ff000
  0x00007f953d300f16: mov    BYTE PTR [r11+r10*1],r12b
                                                ;*ifnull
                                                ; - java.util.HashMap::putVal@224 (line 652)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300f1a: inc    DWORD PTR [rbp+0x18]  ;*putfield modCount
                                                ; - java.util.HashMap::putVal@266 (line 660)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300f1d: mov    r11d,DWORD PTR [rbp+0x14]
  0x00007f953d300f21: mov    r10d,DWORD PTR [rbp+0x1c]
  0x00007f953d300f25: inc    r11d               ;*iadd
                                                ; - java.util.HashMap::putVal@275 (line 661)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300f28: mov    DWORD PTR [rbp+0x14],r11d
                                                ;*putfield size
                                                ; - java.util.HashMap::putVal@277 (line 661)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300f2c: cmp    r11d,r10d
  0x00007f953d300f2f: jle    0x00007f953d300e6e  ;*aastore
                                                ; - java.util.HashMap::putVal@59 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300f35: mov    rsi,rbp
  0x00007f953d300f38: xchg   ax,ax
  0x00007f953d300f3b: call   0x00007f953d046020  ; OopMap{rbp=Oop off=992}
                                                ;*invokevirtual resize
                                                ; - java.util.HashMap::putVal@288 (line 662)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {optimized virtual_call}
  0x00007f953d300f40: jmp    0x00007f953d300e6e
  0x00007f953d300f45: xor    r11d,r11d          ;*aload
                                                ; - java.util.HashMap::putVal@145 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300f48: cmp    esi,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f953d300f4e: jne    0x00007f953d30126d
  0x00007f953d300f54: mov    rbp,r13            ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300f57: mov    rax,QWORD PTR [r15+0x60]
  0x00007f953d300f5b: mov    rcx,rax
  0x00007f953d300f5e: add    rcx,0x20
  0x00007f953d300f62: cmp    rcx,QWORD PTR [r15+0x70]
  0x00007f953d300f66: jae    0x00007f953d30107c
  0x00007f953d300f6c: mov    QWORD PTR [r15+0x60],rcx
  0x00007f953d300f70: prefetchnta BYTE PTR [rcx+0xc0]
  0x00007f953d300f77: mov    rcx,QWORD PTR [rdi+0xa8]
  0x00007f953d300f7e: mov    QWORD PTR [rax],rcx
  0x00007f953d300f81: mov    DWORD PTR [rax+0x8],0xf8003c4e
                                                ;   {metadata('java/util/HashMap$Node')}
  0x00007f953d300f88: mov    DWORD PTR [rax+0xc],r12d
  0x00007f953d300f8c: mov    QWORD PTR [rax+0x18],r12  ;*new
                                                ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300f90: mov    DWORD PTR [rax+0x10],r9d  ;*putfield key
                                                ; - java.util.HashMap$Node::<init>@11 (line 286)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300f94: mov    DWORD PTR [rax+0x14],0xce1291a0
                                                ;*new  ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {oop(a 'java/lang/Object')}
  0x00007f953d300f9b: mov    r9d,DWORD PTR [rsp+0x1c]
  0x00007f953d300fa0: mov    DWORD PTR [rax+0xc],r9d  ;*putfield hash
                                                ; - java.util.HashMap$Node::<init>@6 (line 285)
                                                ; - java.util.HashMap::newNode@9 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300fa4: mov    r9,rax
  0x00007f953d300fa7: mov    rbx,rax
  0x00007f953d300faa: shr    rbx,0x3
  0x00007f953d300fae: shr    r9,0x9
  0x00007f953d300fb2: mov    rcx,0x7f95391ff000
  0x00007f953d300fbc: mov    BYTE PTR [rcx+r9*1],r12b  ;*synchronization entry
                                                ; - java.util.HashMap::newNode@-1 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300fc0: mov    DWORD PTR [r8+0x18],ebx
  0x00007f953d300fc4: shr    r8,0x9
  0x00007f953d300fc8: mov    r9,0x7f95391ff000
  0x00007f953d300fd2: mov    BYTE PTR [r9+r8*1],r12b
  0x00007f953d300fd6: cmp    r11d,0x7
  0x00007f953d300fda: jl     0x00007f953d300f1a  ;*putfield next
                                                ; - java.util.HashMap::putVal@155 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d300fe0: mov    esi,0xffffff65
  0x00007f953d300fe5: mov    QWORD PTR [rsp+0x8],r10
  0x00007f953d300fea: mov    DWORD PTR [rsp+0x4],r11d
  0x00007f953d300fef: call   0x00007f953d0051a0  ; OopMap{rbp=Oop [8]=Oop off=1172}
                                                ;*if_icmplt
                                                ; - java.util.HashMap::putVal@162 (line 642)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d300ff4: call   0x00007f9552119320  ;*if_icmplt
                                                ; - java.util.HashMap::putVal@162 (line 642)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d300ff9: xor    ebp,ebp
  0x00007f953d300ffb: jmp    0x00007f953d300d4e
  0x00007f953d301000: mov    rsi,r13
  0x00007f953d301003: mov    QWORD PTR [rsp+0x10],r13
  0x00007f953d301008: xchg   ax,ax
  0x00007f953d30100b: call   0x00007f953d046020  ; OopMap{[16]=Oop [24]=NarrowOop [40]=Oop off=1200}
                                                ;*invokevirtual resize
                                                ; - java.util.HashMap::putVal@20 (line 628)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {optimized virtual_call}
  0x00007f953d301010: mov    r10,rax
  0x00007f953d301013: mov    r9d,DWORD PTR [rax+0xc]  ;*arraylength
                                                ; - java.util.HashMap::putVal@26 (line 628)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ; implicit exception: dispatches to 0x00007f953d3013c1
  0x00007f953d301017: mov    r11,QWORD PTR [rsp+0x28]
  0x00007f953d30101c: mov    rbx,QWORD PTR [r11+0x10]  ;*getfield v
                                                ; - LongPoint::equals@8 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d301020: mov    r13,QWORD PTR [rsp+0x10]
  0x00007f953d301025: jmp    0x00007f953d300cd6
  0x00007f953d30102a: mov    DWORD PTR [rsp+0x18],r9d
  0x00007f953d30102f: mov    QWORD PTR [rsp+0x20],rdx
  0x00007f953d301034: mov    DWORD PTR [rsp+0xc],r11d
  0x00007f953d301039: mov    QWORD PTR [rsp+0x10],r10
  0x00007f953d30103e: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d301043: mov    eax,DWORD PTR [rsp+0x1c]
  0x00007f953d301047: mov    DWORD PTR [rsp+0x8],eax
  0x00007f953d30104b: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d301050: mov    rsi,0x7c001e270    ;   {metadata('java/util/HashMap$Node')}
  0x00007f953d30105a: nop    
  0x00007f953d30105b: call   0x00007f953d06bb60  ; OopMap{rbp=Oop [16]=Oop [24]=NarrowOop [32]=Derived_oop_[16] [40]=Oop off=1280}
                                                ;*new  ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301060: mov    r10,QWORD PTR [rsp+0x10]
  0x00007f953d301065: mov    r11d,DWORD PTR [rsp+0xc]
  0x00007f953d30106a: mov    rdx,QWORD PTR [rsp+0x20]
  0x00007f953d30106f: mov    r9d,DWORD PTR [rsp+0x18]
  0x00007f953d301074: mov    rcx,rax
  0x00007f953d301077: jmp    0x00007f953d300ec3
  0x00007f953d30107c: mov    DWORD PTR [rsp+0x18],r11d
  0x00007f953d301081: mov    QWORD PTR [rsp+0x20],r8
  0x00007f953d301086: mov    DWORD PTR [rsp+0xc],r9d
  0x00007f953d30108b: mov    QWORD PTR [rsp+0x10],r10
  0x00007f953d301090: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d301095: mov    eax,DWORD PTR [rsp+0x1c]
  0x00007f953d301099: mov    DWORD PTR [rsp+0x8],eax
  0x00007f953d30109d: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d3010a2: mov    rsi,0x7c001e270    ;   {metadata('java/util/HashMap$Node')}
  0x00007f953d3010ac: xchg   ax,ax
  0x00007f953d3010af: call   0x00007f953d06bb60  ; OopMap{rbp=Oop [12]=NarrowOop [16]=Oop [32]=Oop [40]=Oop off=1364}
                                                ;*new  ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3010b4: mov    r10,QWORD PTR [rsp+0x10]
  0x00007f953d3010b9: mov    r9d,DWORD PTR [rsp+0xc]
  0x00007f953d3010be: mov    r8,QWORD PTR [rsp+0x20]
  0x00007f953d3010c3: mov    r11d,DWORD PTR [rsp+0x18]
  0x00007f953d3010c8: jmp    0x00007f953d300f90
  0x00007f953d3010cd: mov    esi,0xffffffe4
  0x00007f953d3010d2: mov    ebp,DWORD PTR [rsp+0x18]
  0x00007f953d3010d6: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d3010db: mov    eax,DWORD PTR [rsp+0x1c]
  0x00007f953d3010df: mov    DWORD PTR [rsp],eax
  0x00007f953d3010e2: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d3010e7: mov    QWORD PTR [rsp+0x18],r10
  0x00007f953d3010ec: mov    DWORD PTR [rsp+0x20],r11d
  0x00007f953d3010f1: xchg   ax,ax
  0x00007f953d3010f3: call   0x00007f953d0051a0  ; OopMap{rbp=NarrowOop [24]=Oop [40]=Oop off=1432}
                                                ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3010f8: call   0x00007f9552119320  ;*aaload
                                                ; - java.util.HashMap::putVal@40 (line 629)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3010fd: mov    esi,0xffffff65
  0x00007f953d301102: mov    ebp,DWORD PTR [rsp+0x18]
  0x00007f953d301106: mov    DWORD PTR [rsp+0x4],r11d
  0x00007f953d30110b: mov    DWORD PTR [rsp+0x14],r9d
  0x00007f953d301110: xchg   ax,ax
  0x00007f953d301113: call   0x00007f953d0051a0  ; OopMap{rbp=NarrowOop [4]=NarrowOop [40]=Oop off=1464}
                                                ;*ifne
                                                ; - java.util.HashMap::putVal@16 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301118: call   0x00007f9552119320  ;*ifne
                                                ; - java.util.HashMap::putVal@16 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d30111d: cmp    r11,rbx
  0x00007f953d301120: mov    ebp,0xffffffff
  0x00007f953d301125: jl     0x00007f953d30112f
  0x00007f953d301127: setne  bpl
  0x00007f953d30112b: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d30112f: mov    esi,0xffffff65
  0x00007f953d301134: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d301139: mov    eax,DWORD PTR [rsp+0x18]
  0x00007f953d30113d: mov    DWORD PTR [rsp],eax
  0x00007f953d301140: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d301145: mov    QWORD PTR [rsp+0x10],r10
  0x00007f953d30114a: mov    DWORD PTR [rsp+0x18],ecx
  0x00007f953d30114e: nop    
  0x00007f953d30114f: call   0x00007f953d0051a0  ; OopMap{[0]=NarrowOop [16]=Oop [24]=NarrowOop [40]=Oop off=1524}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301154: call   0x00007f9552119320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301159: mov    esi,0xffffff76
  0x00007f953d30115e: mov    ebp,DWORD PTR [rsp+0x18]
  0x00007f953d301162: mov    QWORD PTR [rsp],r10
  0x00007f953d301166: mov    DWORD PTR [rsp+0x8],r11d
  0x00007f953d30116b: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d301170: mov    eax,DWORD PTR [rsp+0x1c]
  0x00007f953d301174: mov    DWORD PTR [rsp+0x10],eax
  0x00007f953d301178: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d30117d: xchg   ax,ax
  0x00007f953d30117f: call   0x00007f953d0051a0  ; OopMap{rbp=NarrowOop [0]=Oop [40]=Oop off=1572}
                                                ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301184: call   0x00007f9552119320  ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301189: mov    esi,0xffffffd6
  0x00007f953d30118e: mov    QWORD PTR [rsp],r10
  0x00007f953d301192: mov    DWORD PTR [rsp+0x8],r11d
  0x00007f953d301197: mov    QWORD PTR [rsp+0x10],rcx
  0x00007f953d30119c: xchg   ax,ax
  0x00007f953d30119f: call   0x00007f953d0051a0  ; OopMap{rbp=Oop [0]=Oop [16]=Oop off=1604}
                                                ;*aastore
                                                ; - java.util.HashMap::putVal@59 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3011a4: call   0x00007f9552119320  ;*aastore
                                                ; - java.util.HashMap::putVal@59 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3011a9: mov    esi,0xffffff65
  0x00007f953d3011ae: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d3011b3: mov    eax,DWORD PTR [rsp+0x18]
  0x00007f953d3011b7: mov    DWORD PTR [rsp],eax
  0x00007f953d3011ba: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d3011bf: mov    QWORD PTR [rsp+0x10],r10
  0x00007f953d3011c4: mov    DWORD PTR [rsp+0x18],ecx
  0x00007f953d3011c8: xchg   ax,ax
  0x00007f953d3011cb: call   0x00007f953d0051a0  ; OopMap{[0]=NarrowOop [16]=Oop [24]=NarrowOop [40]=Oop off=1648}
                                                ;*ifeq
                                                ; - java.util.HashMap::putVal@109 (line 636)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3011d0: call   0x00007f9552119320  ;*ifeq
                                                ; - java.util.HashMap::putVal@109 (line 636)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3011d5: cmp    r9,rbx
  0x00007f953d3011d8: mov    ebp,0xffffffff
  0x00007f953d3011dd: jl     0x00007f953d3011e7
  0x00007f953d3011df: setne  bpl
  0x00007f953d3011e3: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d3011e7: mov    esi,0xffffff65
  0x00007f953d3011ec: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d3011f1: mov    eax,DWORD PTR [rsp+0x18]
  0x00007f953d3011f5: mov    DWORD PTR [rsp],eax
  0x00007f953d3011f8: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d3011fd: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d301202: mov    eax,DWORD PTR [rsp+0x1c]
  0x00007f953d301206: mov    DWORD PTR [rsp+0x4],eax
  0x00007f953d30120a: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d30120f: mov    QWORD PTR [rsp+0x10],r10
  0x00007f953d301214: mov    QWORD PTR [rsp+0x18],r8
  0x00007f953d301219: mov    DWORD PTR [rsp+0x20],r11d
  0x00007f953d30121e: nop    
  0x00007f953d30121f: call   0x00007f953d0051a0  ; OopMap{[0]=NarrowOop [16]=Oop [24]=Oop [40]=Oop off=1732}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301224: call   0x00007f9552119320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301229: mov    esi,0xffffff65
  0x00007f953d30122e: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d301233: mov    eax,DWORD PTR [rsp+0x18]
  0x00007f953d301237: mov    DWORD PTR [rsp],eax
  0x00007f953d30123a: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d30123f: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d301244: mov    eax,DWORD PTR [rsp+0x1c]
  0x00007f953d301248: mov    DWORD PTR [rsp+0x4],eax
  0x00007f953d30124c: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d301251: mov    QWORD PTR [rsp+0x10],r10
  0x00007f953d301256: mov    QWORD PTR [rsp+0x18],r8
  0x00007f953d30125b: mov    DWORD PTR [rsp+0x20],r11d
  0x00007f953d301260: xchg   ax,ax
  0x00007f953d301263: call   0x00007f953d0051a0  ; OopMap{rbp=NarrowOop [0]=NarrowOop [16]=Oop [24]=Oop [40]=Oop off=1800}
                                                ;*if_acmpeq
                                                ; - java.util.HashMap::putVal@193 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301268: call   0x00007f9552119320  ;*if_acmpeq
                                                ; - java.util.HashMap::putVal@193 (line 646)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d30126d: mov    esi,0xffffff76
  0x00007f953d301272: mov    ebp,DWORD PTR [rsp+0x18]
  0x00007f953d301276: mov    QWORD PTR [rsp+0x8],r10
  0x00007f953d30127b: mov    DWORD PTR [rsp+0x4],r11d
  0x00007f953d301280: mov    QWORD PTR [rsp+0x10],r8
  0x00007f953d301285: xchg   ax,ax
  0x00007f953d301287: call   0x00007f953d0051a0  ; OopMap{rbp=NarrowOop [8]=Oop [16]=Oop [40]=Oop off=1836}
                                                ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d30128c: call   0x00007f9552119320  ;*invokevirtual newNode
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301291: mov    esi,0xffffffde
  0x00007f953d301296: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d30129b: mov    eax,DWORD PTR [rsp+0x18]
  0x00007f953d30129f: mov    DWORD PTR [rsp],eax
  0x00007f953d3012a2: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d3012a7: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d3012ac: mov    eax,DWORD PTR [rsp+0x1c]
  0x00007f953d3012b0: mov    DWORD PTR [rsp+0x4],eax
  0x00007f953d3012b4: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d3012b9: mov    QWORD PTR [rsp+0x10],r10
  0x00007f953d3012be: mov    QWORD PTR [rsp+0x18],r8
  0x00007f953d3012c3: mov    DWORD PTR [rsp+0x20],r11d
  0x00007f953d3012c8: xchg   ax,ax
  0x00007f953d3012cb: call   0x00007f953d0051a0  ; OopMap{rbp=NarrowOop [0]=NarrowOop [16]=Oop [24]=Oop [40]=Oop off=1904}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3012d0: call   0x00007f9552119320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3012d5: mov    esi,0xffffffde
  0x00007f953d3012da: mov    ebp,DWORD PTR [rsp+0x18]
  0x00007f953d3012de: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d3012e3: mov    eax,DWORD PTR [rsp+0x1c]
  0x00007f953d3012e7: mov    DWORD PTR [rsp],eax
  0x00007f953d3012ea: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d3012ef: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f953d3012f4: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f953d3012f9: mov    QWORD PTR [rsp+0x10],r10
  0x00007f953d3012fe: mov    DWORD PTR [rsp+0x4],ecx
  0x00007f953d301302: mov    DWORD PTR [rsp+0x20],r9d
  0x00007f953d301307: call   0x00007f953d0051a0  ; OopMap{rbp=NarrowOop [4]=NarrowOop [8]=Oop [16]=Oop [32]=NarrowOop off=1964}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d30130c: call   0x00007f9552119320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301311: mov    esi,0xfffffff6
  0x00007f953d301316: nop    
  0x00007f953d301317: call   0x00007f953d0051a0  ; OopMap{off=1980}
                                                ;*getfield v
                                                ; - Hash_LongPoint::set@1 (line 65)
                                                ;   {runtime_call}
  0x00007f953d30131c: call   0x00007f9552119320  ;*getfield v
                                                ; - Hash_LongPoint::set@1 (line 65)
                                                ;   {runtime_call}
  0x00007f953d301321: mov    esi,0xfffffff6
  0x00007f953d301326: mov    rbp,QWORD PTR [rsp+0x28]
  0x00007f953d30132b: call   0x00007f953d0051a0  ; OopMap{rbp=Oop off=2000}
                                                ;*invokevirtual add
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301330: call   0x00007f9552119320  ;*invokevirtual add
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301335: mov    esi,0xfffffff6
  0x00007f953d30133a: mov    rbp,QWORD PTR [rsp+0x28]
  0x00007f953d30133f: call   0x00007f953d0051a0  ; OopMap{rbp=Oop off=2020}
                                                ;*invokevirtual put
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301344: call   0x00007f9552119320  ;*invokevirtual put
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301349: mov    esi,0xfffffff4
  0x00007f953d30134e: mov    ebp,DWORD PTR [rsp+0x18]
  0x00007f953d301352: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d301357: mov    eax,DWORD PTR [rsp+0x1c]
  0x00007f953d30135b: mov    DWORD PTR [rsp],eax
  0x00007f953d30135e: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d301363: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f953d301368: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f953d30136d: mov    QWORD PTR [rsp+0x10],r10
  0x00007f953d301372: mov    DWORD PTR [rsp+0x4],ecx
  0x00007f953d301376: nop    
  0x00007f953d301377: call   0x00007f953d0051a0  ; OopMap{rbp=NarrowOop [4]=NarrowOop [8]=Oop [16]=Oop off=2076}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d30137c: call   0x00007f9552119320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@91 (line 634)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d301381: mov    esi,0xfffffff4
  0x00007f953d301386: mov    ebp,DWORD PTR [rsp+0x18]
  0x00007f953d30138a: mov    QWORD PTR [rsp-0x8],rax
  0x00007f953d30138f: mov    eax,DWORD PTR [rsp+0x1c]
  0x00007f953d301393: mov    DWORD PTR [rsp],eax
  0x00007f953d301396: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f953d30139b: rex.W push   QWORD PTR [rsp+0x28]
  0x00007f953d3013a0: rex.W pop    QWORD PTR [rsp+0x8]
  0x00007f953d3013a5: mov    QWORD PTR [rsp+0x10],r10
  0x00007f953d3013aa: mov    QWORD PTR [rsp+0x18],r8
  0x00007f953d3013af: mov    DWORD PTR [rsp+0x4],r11d
  0x00007f953d3013b4: xchg   ax,ax
  0x00007f953d3013b7: call   0x00007f953d0051a0  ; OopMap{rbp=NarrowOop [8]=Oop [16]=Oop [24]=Oop off=2140}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3013bc: call   0x00007f9552119320  ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::putVal@203 (line 647)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3013c1: mov    esi,0xfffffff6
  0x00007f953d3013c6: nop    
  0x00007f953d3013c7: call   0x00007f953d0051a0  ; OopMap{off=2156}
                                                ;*arraylength
                                                ; - java.util.HashMap::putVal@26 (line 628)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3013cc: call   0x00007f9552119320  ;*new
                                                ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@152 (line 641)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d3013d1: jmp    0x00007f953d3013d7  ;*new
                                                ; - java.util.HashMap::newNode@0 (line 1734)
                                                ; - java.util.HashMap::putVal@56 (line 630)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d3013d3: jmp    0x00007f953d3013d7  ;*invokevirtual resize
                                                ; - java.util.HashMap::putVal@288 (line 662)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d3013d5: jmp    0x00007f953d3013d7  ;*synchronization entry
                                                ; - java.util.HashMap::putVal@-1 (line 627)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)

  0x00007f953d3013d7: mov    rsi,rax
  0x00007f953d3013da: jmp    0x00007f953d301402  ;*invokespecial inc
                                                ; - Hash_LongPoint::set@78 (line 73)

  0x00007f953d3013dc: mov    rsi,rax
  0x00007f953d3013df: jmp    0x00007f953d301402  ;*invokespecial inc
                                                ; - Hash_LongPoint::set@67 (line 72)

  0x00007f953d3013e1: mov    rsi,rax
  0x00007f953d3013e4: jmp    0x00007f953d301402  ;*invokespecial inc
                                                ; - Hash_LongPoint::set@58 (line 71)

  0x00007f953d3013e6: mov    rsi,rax
  0x00007f953d3013e9: jmp    0x00007f953d301402  ;*invokespecial inc
                                                ; - Hash_LongPoint::set@47 (line 70)

  0x00007f953d3013eb: mov    rsi,rax
  0x00007f953d3013ee: jmp    0x00007f953d301402  ;*invokespecial inc
                                                ; - Hash_LongPoint::set@40 (line 69)

  0x00007f953d3013f0: mov    rsi,rax
  0x00007f953d3013f3: jmp    0x00007f953d301402  ;*invokespecial inc
                                                ; - Hash_LongPoint::set@33 (line 68)

  0x00007f953d3013f5: mov    rsi,rax
  0x00007f953d3013f8: jmp    0x00007f953d301402  ;*invokespecial inc
                                                ; - Hash_LongPoint::set@22 (line 67)

  0x00007f953d3013fa: mov    rsi,rax
  0x00007f953d3013fd: jmp    0x00007f953d301402  ;*invokespecial inc
                                                ; - Hash_LongPoint::set@13 (line 66)

  0x00007f953d3013ff: mov    rsi,rax            ;*invokespecial inc
                                                ; - Hash_LongPoint::set@22 (line 67)

  0x00007f953d301402: add    rsp,0x40
  0x00007f953d301406: pop    rbp
  0x00007f953d301407: jmp    0x00007f953d2b1a20  ;*aload_0
                                                ; - java.util.HashMap::putVal@292 (line 663)
                                                ; - java.util.HashMap::put@9 (line 611)
                                                ; - java.util.HashSet::add@8 (line 219)
                                                ; - Hash_LongPoint::set@86 (line 74)
                                                ;   {runtime_call}
  0x00007f953d30140c: hlt    
  0x00007f953d30140d: hlt    
  0x00007f953d30140e: hlt    
  0x00007f953d30140f: hlt    
  0x00007f953d301410: hlt    
  0x00007f953d301411: hlt    
  0x00007f953d301412: hlt    
  0x00007f953d301413: hlt    
  0x00007f953d301414: hlt    
  0x00007f953d301415: hlt    
  0x00007f953d301416: hlt    
  0x00007f953d301417: hlt    
  0x00007f953d301418: hlt    
  0x00007f953d301419: hlt    
  0x00007f953d30141a: hlt    
  0x00007f953d30141b: hlt    
  0x00007f953d30141c: hlt    
  0x00007f953d30141d: hlt    
  0x00007f953d30141e: hlt    
  0x00007f953d30141f: hlt    
[Stub Code]
  0x00007f953d301420: mov    rbx,0x0            ;   {no_reloc}
  0x00007f953d30142a: jmp    0x00007f953d30142a  ;   {runtime_call}
  0x00007f953d30142f: mov    rbx,0x0            ;   {static_stub}
  0x00007f953d301439: jmp    0x00007f953d301439  ;   {runtime_call}
  0x00007f953d30143e: mov    rbx,0x0            ;   {static_stub}
  0x00007f953d301448: jmp    0x00007f953d301448  ;   {runtime_call}
  0x00007f953d30144d: mov    rbx,0x0            ;   {static_stub}
  0x00007f953d301457: jmp    0x00007f953d301457  ;   {runtime_call}
  0x00007f953d30145c: mov    rbx,0x0            ;   {static_stub}
  0x00007f953d301466: jmp    0x00007f953d301466  ;   {runtime_call}
  0x00007f953d30146b: mov    rbx,0x0            ;   {static_stub}
  0x00007f953d301475: jmp    0x00007f953d301475  ;   {runtime_call}
  0x00007f953d30147a: mov    rbx,0x0            ;   {static_stub}
  0x00007f953d301484: jmp    0x00007f953d301484  ;   {runtime_call}
  0x00007f953d301489: mov    rbx,0x0            ;   {static_stub}
  0x00007f953d301493: jmp    0x00007f953d301493  ;   {runtime_call}
  0x00007f953d301498: mov    rbx,0x0            ;   {static_stub}
  0x00007f953d3014a2: jmp    0x00007f953d3014a2  ;   {runtime_call}
  0x00007f953d3014a7: mov    rbx,0x0            ;   {static_stub}
  0x00007f953d3014b1: jmp    0x00007f953d3014b1  ;   {runtime_call}
[Exception Handler]
  0x00007f953d3014b6: jmp    0x00007f953d06c3a0  ;   {runtime_call}
[Deopt Handler Code]
  0x00007f953d3014bb: call   0x00007f953d3014c0
  0x00007f953d3014c0: sub    QWORD PTR [rsp],0x5
  0x00007f953d3014c5: jmp    0x00007f953d0473c0  ;   {runtime_call}
  0x00007f953d3014ca: hlt    
  0x00007f953d3014cb: hlt    
  0x00007f953d3014cc: hlt    
  0x00007f953d3014cd: hlt    
  0x00007f953d3014ce: hlt    
  0x00007f953d3014cf: hlt    

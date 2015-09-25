Compiled method (c2)     327   29       4       HashTime::iterate (19 bytes)
 total in heap  [0x00007f0b212bb090,0x00007f0b212bb7e0] = 1872
 relocation     [0x00007f0b212bb1b8,0x00007f0b212bb260] = 168
 main code      [0x00007f0b212bb260,0x00007f0b212bb540] = 736
 stub code      [0x00007f0b212bb540,0x00007f0b212bb558] = 24
 oops           [0x00007f0b212bb558,0x00007f0b212bb560] = 8
 metadata       [0x00007f0b212bb560,0x00007f0b212bb578] = 24
 scopes data    [0x00007f0b212bb578,0x00007f0b212bb5c8] = 80
 scopes pcs     [0x00007f0b212bb5c8,0x00007f0b212bb7c8] = 512
 dependencies   [0x00007f0b212bb7c8,0x00007f0b212bb7d0] = 8
 nul chk table  [0x00007f0b212bb7d0,0x00007f0b212bb7e0] = 16
Decoding compiled method 0x00007f0b212bb090:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f0b1d7955f8} 'iterate' '(ILjava/lang/Object;)V' in 'HashTime'
  # this:     rsi:rsi   = 'HashTime'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00007f0b212bb260: mov    r10d,DWORD PTR [rsi+0x8]
  0x00007f0b212bb264: shl    r10,0x3
  0x00007f0b212bb268: cmp    rax,r10
  0x00007f0b212bb26b: jne    0x00007f0b21045e20  ;   {runtime_call}
  0x00007f0b212bb271: xchg   ax,ax
  0x00007f0b212bb274: nop    DWORD PTR [rax+rax*1+0x0]
  0x00007f0b212bb27c: xchg   ax,ax
[Verified Entry Point]
  0x00007f0b212bb280: mov    DWORD PTR [rsp-0x14000],eax
  0x00007f0b212bb287: push   rbp
  0x00007f0b212bb288: sub    rsp,0x30           ;*synchronization entry
                                                ; - HashTime::iterate@-1 (line 7)

  0x00007f0b212bb28c: test   edx,edx
  0x00007f0b212bb28e: jle    0x00007f0b212bb2dd  ;*if_icmpge
                                                ; - HashTime::iterate@4 (line 7)

  0x00007f0b212bb290: mov    r10d,DWORD PTR [rcx+0x8]  ; implicit exception: dispatches to 0x00007f0b212bb528
  0x00007f0b212bb294: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb29b: jne    0x00007f0b212bb501  ;*synchronization entry
                                                ; - HashTime::iterate@-1 (line 7)

  0x00007f0b212bb2a1: mov    r8d,edx
  0x00007f0b212bb2a4: add    r8d,0xfffffffffffffff1
  0x00007f0b212bb2a8: mov    r9d,0x80000000
  0x00007f0b212bb2ae: cmp    edx,r8d
  0x00007f0b212bb2b1: cmovl  r8d,r9d
  0x00007f0b212bb2b5: mov    r11d,0x1
  0x00007f0b212bb2bb: cmp    r8d,0x1
  0x00007f0b212bb2bf: jg     0x00007f0b212bb309
  0x00007f0b212bb2c1: cmp    r11d,edx
  0x00007f0b212bb2c4: jge    0x00007f0b212bb2dd
  0x00007f0b212bb2c6: xchg   ax,ax              ;*aload_2
                                                ; - HashTime::iterate@7 (line 8)

  0x00007f0b212bb2c8: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb2cf: jne    0x00007f0b212bb516  ;*synchronization entry
                                                ; - HashTime::iterate@-1 (line 7)

  0x00007f0b212bb2d5: inc    r11d               ;*iinc
                                                ; - HashTime::iterate@12 (line 7)

  0x00007f0b212bb2d8: cmp    r11d,edx
  0x00007f0b212bb2db: jl     0x00007f0b212bb2c8  ;*return
                                                ; - HashTime::iterate@18 (line 9)

  0x00007f0b212bb2dd: add    rsp,0x30
  0x00007f0b212bb2e1: pop    rbp
  0x00007f0b212bb2e2: test   DWORD PTR [rip+0x17a76d18],eax        # 0x00007f0b38d32000
                                                ;   {poll_return}
  0x00007f0b212bb2e8: ret    
  0x00007f0b212bb2e9: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb2f0: je     0x00007f0b212bb371  ;*invokevirtual hashCode
                                                ; - HashTime::iterate@8 (line 8)

  0x00007f0b212bb2f6: jmp    0x00007f0b212bb3de
  0x00007f0b212bb2fb: nop    DWORD PTR [rax+rax*1+0x0]
                                                ;*synchronization entry
                                                ; - HashTime::iterate@-1 (line 7)

  0x00007f0b212bb300: add    r11d,0x10          ;*iinc
                                                ; - HashTime::iterate@12 (line 7)

  0x00007f0b212bb304: cmp    r11d,r8d
  0x00007f0b212bb307: jge    0x00007f0b212bb2c1  ;*aload_2
                                                ; - HashTime::iterate@7 (line 8)

  0x00007f0b212bb309: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb310: jne    0x00007f0b212bb46d
  0x00007f0b212bb316: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb31d: jne    0x00007f0b212bb47c
  0x00007f0b212bb323: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb32a: jne    0x00007f0b212bb48b
  0x00007f0b212bb330: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb337: jne    0x00007f0b212bb49a
  0x00007f0b212bb33d: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb344: jne    0x00007f0b212bb4ac
  0x00007f0b212bb34a: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb351: jne    0x00007f0b212bb3f7
  0x00007f0b212bb357: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb35e: jne    0x00007f0b212bb41c
  0x00007f0b212bb364: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb36b: jne    0x00007f0b212bb2e9
  0x00007f0b212bb371: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb378: jne    0x00007f0b212bb4d5
  0x00007f0b212bb37e: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb385: jne    0x00007f0b212bb4eb
  0x00007f0b212bb38b: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb392: jne    0x00007f0b212bb43e
  0x00007f0b212bb398: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb39f: jne    0x00007f0b212bb3e4
  0x00007f0b212bb3a1: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb3a8: jne    0x00007f0b212bb4bb
  0x00007f0b212bb3ae: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb3b5: jne    0x00007f0b212bb406
  0x00007f0b212bb3b7: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb3be: jne    0x00007f0b212bb42b  ;*synchronization entry
                                                ; - HashTime::iterate@-1 (line 7)

  0x00007f0b212bb3c0: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f0b212bb3c7: je     0x00007f0b212bb300
  0x00007f0b212bb3cd: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb3d4: je     0x00007f0b212bb300  ;*invokevirtual hashCode
                                                ; - HashTime::iterate@8 (line 8)

  0x00007f0b212bb3da: add    r11d,0x8
  0x00007f0b212bb3de: add    r11d,0x4           ;*iinc
                                                ; - HashTime::iterate@12 (line 7)

  0x00007f0b212bb3e2: jmp    0x00007f0b212bb3f1
  0x00007f0b212bb3e4: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb3eb: je     0x00007f0b212bb3a1  ;*invokevirtual hashCode
                                                ; - HashTime::iterate@8 (line 8)

  0x00007f0b212bb3ed: add    r11d,0x8
  0x00007f0b212bb3f1: add    r11d,0x2           ;*iinc
                                                ; - HashTime::iterate@12 (line 7)

  0x00007f0b212bb3f5: jmp    0x00007f0b212bb417
  0x00007f0b212bb3f7: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb3fe: je     0x00007f0b212bb357
  0x00007f0b212bb404: jmp    0x00007f0b212bb413
  0x00007f0b212bb406: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb40d: je     0x00007f0b212bb3b7  ;*invokevirtual hashCode
                                                ; - HashTime::iterate@8 (line 8)

  0x00007f0b212bb40f: add    r11d,0x8
  0x00007f0b212bb413: add    r11d,0x4
  0x00007f0b212bb417: inc    r11d               ;*iinc
                                                ; - HashTime::iterate@12 (line 7)

  0x00007f0b212bb41a: jmp    0x00007f0b212bb453
  0x00007f0b212bb41c: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb423: je     0x00007f0b212bb364
  0x00007f0b212bb429: jmp    0x00007f0b212bb438
  0x00007f0b212bb42b: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb432: je     0x00007f0b212bb3c0  ;*invokevirtual hashCode
                                                ; - HashTime::iterate@8 (line 8)

  0x00007f0b212bb434: add    r11d,0x8
  0x00007f0b212bb438: add    r11d,0x4           ;*iinc
                                                ; - HashTime::iterate@12 (line 7)

  0x00007f0b212bb43c: jmp    0x00007f0b212bb44f
  0x00007f0b212bb43e: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb445: je     0x00007f0b212bb398  ;*invokevirtual hashCode
                                                ; - HashTime::iterate@8 (line 8)

  0x00007f0b212bb44b: add    r11d,0x8
  0x00007f0b212bb44f: add    r11d,0x2
  0x00007f0b212bb453: mov    esi,0xffffffc6
  0x00007f0b212bb458: mov    ebp,r11d
  0x00007f0b212bb45b: mov    DWORD PTR [rsp],edx
  0x00007f0b212bb45e: mov    QWORD PTR [rsp+0x10],rcx
  0x00007f0b212bb463: call   0x00007f0b210051a0  ; OopMap{[16]=Oop off=520}
                                                ;*invokevirtual hashCode
                                                ; - HashTime::iterate@8 (line 8)
                                                ;   {runtime_call}
  0x00007f0b212bb468: call   0x00007f0b3843b320  ;   {runtime_call}
  0x00007f0b212bb46d: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb474: je     0x00007f0b212bb316
  0x00007f0b212bb47a: jmp    0x00007f0b212bb453
  0x00007f0b212bb47c: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb483: je     0x00007f0b212bb323
  0x00007f0b212bb489: jmp    0x00007f0b212bb417
  0x00007f0b212bb48b: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb492: je     0x00007f0b212bb330
  0x00007f0b212bb498: jmp    0x00007f0b212bb44f
  0x00007f0b212bb49a: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb4a1: je     0x00007f0b212bb33d
  0x00007f0b212bb4a7: jmp    0x00007f0b212bb3f1
  0x00007f0b212bb4ac: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb4b3: je     0x00007f0b212bb34a
  0x00007f0b212bb4b9: jmp    0x00007f0b212bb4cc
  0x00007f0b212bb4bb: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb4c2: je     0x00007f0b212bb3ae  ;*invokevirtual hashCode
                                                ; - HashTime::iterate@8 (line 8)

  0x00007f0b212bb4c8: add    r11d,0x8
  0x00007f0b212bb4cc: add    r11d,0x4           ;*iinc
                                                ; - HashTime::iterate@12 (line 7)

  0x00007f0b212bb4d0: jmp    0x00007f0b212bb453
  0x00007f0b212bb4d5: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb4dc: je     0x00007f0b212bb37e  ;*invokevirtual hashCode
                                                ; - HashTime::iterate@8 (line 8)

  0x00007f0b212bb4e2: add    r11d,0x8           ;*iinc
                                                ; - HashTime::iterate@12 (line 7)

  0x00007f0b212bb4e6: jmp    0x00007f0b212bb453
  0x00007f0b212bb4eb: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb4f2: je     0x00007f0b212bb38b  ;*invokevirtual hashCode
                                                ; - HashTime::iterate@8 (line 8)

  0x00007f0b212bb4f8: add    r11d,0x8           ;*iinc
                                                ; - HashTime::iterate@12 (line 7)

  0x00007f0b212bb4fc: jmp    0x00007f0b212bb417
  0x00007f0b212bb501: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb508: je     0x00007f0b212bb2a1
  0x00007f0b212bb50e: xor    r11d,r11d
  0x00007f0b212bb511: jmp    0x00007f0b212bb453
  0x00007f0b212bb516: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f0b212bb51d: je     0x00007f0b212bb2d5
  0x00007f0b212bb523: jmp    0x00007f0b212bb453
  0x00007f0b212bb528: mov    esi,0xfffffff6
  0x00007f0b212bb52d: xchg   ax,ax
  0x00007f0b212bb52f: call   0x00007f0b210051a0  ; OopMap{off=724}
                                                ;*invokevirtual hashCode
                                                ; - HashTime::iterate@8 (line 8)
                                                ;   {runtime_call}
  0x00007f0b212bb534: call   0x00007f0b3843b320  ;*invokevirtual hashCode
                                                ; - HashTime::iterate@8 (line 8)
                                                ;   {runtime_call}
  0x00007f0b212bb539: hlt    
  0x00007f0b212bb53a: hlt    
  0x00007f0b212bb53b: hlt    
  0x00007f0b212bb53c: hlt    
  0x00007f0b212bb53d: hlt    
  0x00007f0b212bb53e: hlt    
  0x00007f0b212bb53f: hlt    
[Exception Handler]
[Stub Code]
  0x00007f0b212bb540: jmp    0x00007f0b2106c3a0  ;   {no_reloc}
[Deopt Handler Code]
  0x00007f0b212bb545: call   0x00007f0b212bb54a
  0x00007f0b212bb54a: sub    QWORD PTR [rsp],0x5
  0x00007f0b212bb54f: jmp    0x00007f0b210473c0  ;   {runtime_call}
  0x00007f0b212bb554: hlt    
  0x00007f0b212bb555: hlt    
  0x00007f0b212bb556: hlt    
  0x00007f0b212bb557: hlt    
OopMapSet contains 2 OopMaps

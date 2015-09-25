[Entry Point]
[Constants]
  # {method} {0x00007f8a4bc006c0} 'sum' '(ILjava/lang/Object;)I' in 'HashTime'
  # this:     rsi:rsi   = 'HashTime'
  # parm0:    rdx       = int
  # parm1:    rcx:rcx   = 'java/lang/Object'
  #           [sp+0x40]  (sp of caller)
  0x00007f8a6d2ba000: mov    r10d,DWORD PTR [rsi+0x8]
  0x00007f8a6d2ba004: shl    r10,0x3
  0x00007f8a6d2ba008: cmp    rax,r10
  0x00007f8a6d2ba00b: jne    0x00007f8a6d045e20  ;   {runtime_call}
  0x00007f8a6d2ba011: xchg   ax,ax
  0x00007f8a6d2ba014: nop    DWORD PTR [rax+rax*1+0x0]
  0x00007f8a6d2ba01c: xchg   ax,ax
[Verified Entry Point]
  0x00007f8a6d2ba020: mov    DWORD PTR [rsp-0x14000],eax
  0x00007f8a6d2ba027: push   rbp
  0x00007f8a6d2ba028: sub    rsp,0x30           ;*synchronization entry
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba02c: xor    r9d,r9d
  0x00007f8a6d2ba02f: mov    r11d,edx
  0x00007f8a6d2ba032: test   edx,edx
  0x00007f8a6d2ba034: jle    0x00007f8a6d2ba28d  ;*if_icmpge
                                                ; - HashTime::sum@8 (line 14)

  0x00007f8a6d2ba03a: mov    r10d,DWORD PTR [rcx+0x8]  ; implicit exception: dispatches to 0x00007f8a6d2ba29c
  0x00007f8a6d2ba03e: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f8a6d2ba045: jne    0x00007f8a6d2ba219
  0x00007f8a6d2ba04b: mov    r8,rcx             ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba04e: mov    ebx,DWORD PTR [r8+0xc]  ;*getfield x
                                                ; - Point::hashCode@1 (line 21)
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba052: mov    r8d,DWORD PTR [r8+0x10]  ;*getfield y
                                                ; - Point::hashCode@7 (line 21)
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba056: mov    eax,ebx
  0x00007f8a6d2ba058: shl    eax,1
  0x00007f8a6d2ba05a: add    eax,ebx
  0x00007f8a6d2ba05c: mov    ebx,r8d
  0x00007f8a6d2ba05f: shl    ebx,0x2
  0x00007f8a6d2ba062: add    ebx,r8d
  0x00007f8a6d2ba065: add    eax,ebx            ;*synchronization entry
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba067: add    edx,0xfffffffffffffffd
  0x00007f8a6d2ba06a: mov    r9d,0x1
  0x00007f8a6d2ba070: mov    r8d,0x80000000
  0x00007f8a6d2ba076: cmp    r11d,edx
  0x00007f8a6d2ba079: cmovl  edx,r8d
  0x00007f8a6d2ba07d: cmp    edx,0x1
  0x00007f8a6d2ba080: jg     0x00007f8a6d2ba0f7
  0x00007f8a6d2ba086: cmp    r9d,r11d
  0x00007f8a6d2ba089: jge    0x00007f8a6d2ba0c2
  0x00007f8a6d2ba08b: nop                       ;*iload_3
                                                ; - HashTime::sum@11 (line 15)

  0x00007f8a6d2ba08c: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f8a6d2ba093: jne    0x00007f8a6d2ba23b
  0x00007f8a6d2ba099: mov    r8,rcx             ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba09c: mov    ebx,DWORD PTR [r8+0xc]  ;*getfield x
                                                ; - Point::hashCode@1 (line 21)
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba0a0: mov    edi,DWORD PTR [r8+0x10]  ;*getfield y
                                                ; - Point::hashCode@7 (line 21)
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba0a4: mov    r8d,ebx
  0x00007f8a6d2ba0a7: shl    r8d,1
  0x00007f8a6d2ba0aa: add    r8d,ebx
  0x00007f8a6d2ba0ad: mov    edx,edi
  0x00007f8a6d2ba0af: shl    edx,0x2
  0x00007f8a6d2ba0b2: add    edx,edi
  0x00007f8a6d2ba0b4: add    r8d,edx            ;*synchronization entry
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba0b7: add    eax,r8d            ;*iadd
                                                ; - HashTime::sum@16 (line 15)

  0x00007f8a6d2ba0ba: inc    r9d                ;*iinc
                                                ; - HashTime::sum@18 (line 14)

  0x00007f8a6d2ba0bd: cmp    r9d,r11d
  0x00007f8a6d2ba0c0: jl     0x00007f8a6d2ba08c  ;*if_icmpge
                                                ; - HashTime::sum@8 (line 14)

  0x00007f8a6d2ba0c2: add    rsp,0x30
  0x00007f8a6d2ba0c6: pop    rbp
  0x00007f8a6d2ba0c7: test   DWORD PTR [rip+0x165aff33],eax        # 0x00007f8a8386a000
                                                ;   {poll_return}
  0x00007f8a6d2ba0cd: ret    
  0x00007f8a6d2ba0ce: xchg   ax,ax
  0x00007f8a6d2ba0d0: mov    r8,rcx             ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba0d3: mov    esi,DWORD PTR [r8+0xc]  ;*getfield x
                                                ; - Point::hashCode@1 (line 21)
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba0d7: mov    r8d,DWORD PTR [r8+0x10]  ;*getfield y
                                                ; - Point::hashCode@7 (line 21)
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba0db: mov    eax,esi
  0x00007f8a6d2ba0dd: shl    eax,1
  0x00007f8a6d2ba0df: add    eax,esi
  0x00007f8a6d2ba0e1: mov    esi,r8d
  0x00007f8a6d2ba0e4: shl    esi,0x2
  0x00007f8a6d2ba0e7: add    esi,r8d
  0x00007f8a6d2ba0ea: add    eax,esi            ;*synchronization entry
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba0ec: add    eax,edi            ;*iadd
                                                ; - HashTime::sum@16 (line 15)

  0x00007f8a6d2ba0ee: add    r9d,0x4            ;*iinc
                                                ; - HashTime::sum@18 (line 14)

  0x00007f8a6d2ba0f2: cmp    r9d,edx
  0x00007f8a6d2ba0f5: jge    0x00007f8a6d2ba086  ;*iload_3
                                                ; - HashTime::sum@11 (line 15)

  0x00007f8a6d2ba0f7: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f8a6d2ba0fe: jne    0x00007f8a6d2ba1ae
  0x00007f8a6d2ba104: mov    r8,rcx             ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba107: mov    ebx,DWORD PTR [r8+0xc]  ;*getfield x
                                                ; - Point::hashCode@1 (line 21)
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba10b: mov    esi,DWORD PTR [r8+0x10]  ;*getfield y
                                                ; - Point::hashCode@7 (line 21)
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba10f: mov    edi,ebx
  0x00007f8a6d2ba111: shl    edi,1
  0x00007f8a6d2ba113: add    edi,ebx
  0x00007f8a6d2ba115: mov    r8d,esi
  0x00007f8a6d2ba118: shl    r8d,0x2
  0x00007f8a6d2ba11c: add    r8d,esi
  0x00007f8a6d2ba11f: add    edi,r8d            ;*synchronization entry
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba122: add    edi,eax            ;*iadd
                                                ; - HashTime::sum@16 (line 15)

  0x00007f8a6d2ba124: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f8a6d2ba12b: jne    0x00007f8a6d2ba1d3
  0x00007f8a6d2ba131: mov    r8,rcx             ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba134: mov    esi,DWORD PTR [r8+0xc]  ;*getfield x
                                                ; - Point::hashCode@1 (line 21)
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba138: mov    r8d,DWORD PTR [r8+0x10]  ;*getfield y
                                                ; - Point::hashCode@7 (line 21)
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba13c: mov    eax,esi
  0x00007f8a6d2ba13e: shl    eax,1
  0x00007f8a6d2ba140: add    eax,esi
  0x00007f8a6d2ba142: mov    esi,r8d
  0x00007f8a6d2ba145: shl    esi,0x2
  0x00007f8a6d2ba148: add    esi,r8d
  0x00007f8a6d2ba14b: add    eax,esi            ;*synchronization entry
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba14d: add    eax,edi            ;*iadd
                                                ; - HashTime::sum@16 (line 15)

  0x00007f8a6d2ba14f: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f8a6d2ba156: jne    0x00007f8a6d2ba1f8
  0x00007f8a6d2ba15c: mov    r8,rcx             ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba15f: mov    ebx,DWORD PTR [r8+0xc]  ;*getfield x
                                                ; - Point::hashCode@1 (line 21)
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba163: mov    esi,DWORD PTR [r8+0x10]  ;*getfield y
                                                ; - Point::hashCode@7 (line 21)
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba167: mov    edi,ebx
  0x00007f8a6d2ba169: shl    edi,1
  0x00007f8a6d2ba16b: add    edi,ebx
  0x00007f8a6d2ba16d: mov    r8d,esi
  0x00007f8a6d2ba170: shl    r8d,0x2
  0x00007f8a6d2ba174: add    r8d,esi
  0x00007f8a6d2ba177: add    edi,r8d            ;*synchronization entry
                                                ; - HashTime::sum@-1 (line 13)

  0x00007f8a6d2ba17a: add    edi,eax            ;*iadd
                                                ; - HashTime::sum@16 (line 15)

  0x00007f8a6d2ba17c: cmp    r10d,0xf800c046    ;   {metadata('Point')}
  0x00007f8a6d2ba183: je     0x00007f8a6d2ba0d0
  0x00007f8a6d2ba189: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f8a6d2ba190: jne    0x00007f8a6d2ba265
  0x00007f8a6d2ba196: mov    r8,rcx             ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba199: mov    r8,QWORD PTR [r8+0x10]  ;*getfield value
                                                ; - java.lang.Long::hashCode@1 (line 1049)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba19d: mov    rbx,r8
  0x00007f8a6d2ba1a0: shr    rbx,0x20
  0x00007f8a6d2ba1a4: xor    rbx,r8
  0x00007f8a6d2ba1a7: mov    eax,ebx            ;*l2i  ; - java.lang.Long::hashCode@6 (line 1061)
                                                ; - java.lang.Long::hashCode@4 (line 1049)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba1a9: jmp    0x00007f8a6d2ba0ec
  0x00007f8a6d2ba1ae: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f8a6d2ba1b5: jne    0x00007f8a6d2ba261
  0x00007f8a6d2ba1bb: mov    r8,rcx             ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba1be: mov    r8,QWORD PTR [r8+0x10]  ;*getfield value
                                                ; - java.lang.Long::hashCode@1 (line 1049)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba1c2: mov    rbx,r8
  0x00007f8a6d2ba1c5: shr    rbx,0x20
  0x00007f8a6d2ba1c9: xor    rbx,r8
  0x00007f8a6d2ba1cc: mov    edi,ebx            ;*l2i  ; - java.lang.Long::hashCode@6 (line 1061)
                                                ; - java.lang.Long::hashCode@4 (line 1049)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba1ce: jmp    0x00007f8a6d2ba122
  0x00007f8a6d2ba1d3: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f8a6d2ba1da: jne    0x00007f8a6d2ba269
  0x00007f8a6d2ba1e0: mov    r8,rcx             ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba1e3: mov    r8,QWORD PTR [r8+0x10]  ;*getfield value
                                                ; - java.lang.Long::hashCode@1 (line 1049)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba1e7: mov    rbx,r8
  0x00007f8a6d2ba1ea: shr    rbx,0x20
  0x00007f8a6d2ba1ee: xor    rbx,r8
  0x00007f8a6d2ba1f1: mov    eax,ebx            ;*l2i  ; - java.lang.Long::hashCode@6 (line 1061)
                                                ; - java.lang.Long::hashCode@4 (line 1049)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba1f3: jmp    0x00007f8a6d2ba14d
  0x00007f8a6d2ba1f8: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f8a6d2ba1ff: jne    0x00007f8a6d2ba25d
  0x00007f8a6d2ba201: mov    r8,rcx             ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba204: mov    r8,QWORD PTR [r8+0x10]  ;*getfield value
                                                ; - java.lang.Long::hashCode@1 (line 1049)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba208: mov    rbx,r8
  0x00007f8a6d2ba20b: shr    rbx,0x20
  0x00007f8a6d2ba20f: xor    rbx,r8
  0x00007f8a6d2ba212: mov    edi,ebx            ;*l2i  ; - java.lang.Long::hashCode@6 (line 1061)
                                                ; - java.lang.Long::hashCode@4 (line 1049)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba214: jmp    0x00007f8a6d2ba17a
  0x00007f8a6d2ba219: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f8a6d2ba220: jne    0x00007f8a6d2ba294
  0x00007f8a6d2ba222: mov    r8,rcx             ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba225: mov    r8,QWORD PTR [r8+0x10]  ;*getfield value
                                                ; - java.lang.Long::hashCode@1 (line 1049)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba229: mov    r9,r8
  0x00007f8a6d2ba22c: shr    r9,0x20
  0x00007f8a6d2ba230: xor    r9,r8
  0x00007f8a6d2ba233: mov    eax,r9d            ;*l2i  ; - java.lang.Long::hashCode@6 (line 1061)
                                                ; - java.lang.Long::hashCode@4 (line 1049)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba236: jmp    0x00007f8a6d2ba067
  0x00007f8a6d2ba23b: cmp    r10d,0xf80022a7    ;   {metadata('java/lang/Long')}
  0x00007f8a6d2ba242: jne    0x00007f8a6d2ba298
  0x00007f8a6d2ba244: mov    r8,rcx             ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba247: mov    r8,QWORD PTR [r8+0x10]  ;*getfield value
                                                ; - java.lang.Long::hashCode@1 (line 1049)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba24b: mov    rbx,r8
  0x00007f8a6d2ba24e: shr    rbx,0x20
  0x00007f8a6d2ba252: xor    rbx,r8
  0x00007f8a6d2ba255: mov    r8d,ebx            ;*l2i  ; - java.lang.Long::hashCode@6 (line 1061)
                                                ; - java.lang.Long::hashCode@4 (line 1049)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f8a6d2ba258: jmp    0x00007f8a6d2ba0b7
  0x00007f8a6d2ba25d: add    r9d,0x2
  0x00007f8a6d2ba261: mov    edi,eax
  0x00007f8a6d2ba263: jmp    0x00007f8a6d2ba26c
  0x00007f8a6d2ba265: add    r9d,0x2
  0x00007f8a6d2ba269: inc    r9d
  0x00007f8a6d2ba26c: mov    esi,0xffffffc6
  0x00007f8a6d2ba271: mov    DWORD PTR [rsp],r9d
  0x00007f8a6d2ba275: mov    DWORD PTR [rsp+0x4],edi
  0x00007f8a6d2ba279: mov    QWORD PTR [rsp+0x8],rcx
  0x00007f8a6d2ba27e: mov    DWORD PTR [rsp+0x10],r11d
  0x00007f8a6d2ba283: call   0x00007f8a6d0051a0  ; OopMap{[8]=Oop off=648}
                                                ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)
                                                ;   {runtime_call}
  0x00007f8a6d2ba288: call   0x00007f8a82f73320  ;   {runtime_call}
  0x00007f8a6d2ba28d: xor    eax,eax
  0x00007f8a6d2ba28f: jmp    0x00007f8a6d2ba0c2
  0x00007f8a6d2ba294: xor    edi,edi
  0x00007f8a6d2ba296: jmp    0x00007f8a6d2ba26c
  0x00007f8a6d2ba298: mov    edi,eax
  0x00007f8a6d2ba29a: jmp    0x00007f8a6d2ba26c
  0x00007f8a6d2ba29c: mov    esi,0xfffffff6
  0x00007f8a6d2ba2a1: xchg   ax,ax
  0x00007f8a6d2ba2a3: call   0x00007f8a6d0051a0  ; OopMap{off=680}
                                                ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)
                                                ;   {runtime_call}
  0x00007f8a6d2ba2a8: call   0x00007f8a82f73320  ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)
                                                ;   {runtime_call}
  0x00007f8a6d2ba2ad: hlt    
  0x00007f8a6d2ba2ae: hlt    
  0x00007f8a6d2ba2af: hlt    
  0x00007f8a6d2ba2b0: hlt    
  0x00007f8a6d2ba2b1: hlt    
  0x00007f8a6d2ba2b2: hlt    
  0x00007f8a6d2ba2b3: hlt    
  0x00007f8a6d2ba2b4: hlt    
  0x00007f8a6d2ba2b5: hlt    
  0x00007f8a6d2ba2b6: hlt    
  0x00007f8a6d2ba2b7: hlt    
  0x00007f8a6d2ba2b8: hlt    
  0x00007f8a6d2ba2b9: hlt    
  0x00007f8a6d2ba2ba: hlt    
  0x00007f8a6d2ba2bb: hlt    
  0x00007f8a6d2ba2bc: hlt    
  0x00007f8a6d2ba2bd: hlt    
  0x00007f8a6d2ba2be: hlt    
  0x00007f8a6d2ba2bf: hlt    
[Exception Handler]
[Stub Code]
  0x00007f8a6d2ba2c0: jmp    0x00007f8a6d06c3a0  ;   {no_reloc}
[Deopt Handler Code]
  0x00007f8a6d2ba2c5: call   0x00007f8a6d2ba2ca
  0x00007f8a6d2ba2ca: sub    QWORD PTR [rsp],0x5
  0x00007f8a6d2ba2cf: jmp    0x00007f8a6d0473c0  ;   {runtime_call}
  0x00007f8a6d2ba2d4: hlt    
  0x00007f8a6d2ba2d5: hlt    
  0x00007f8a6d2ba2d6: hlt    
  0x00007f8a6d2ba2d7: hlt    
OopMapSet contains 2 OopMaps

#0 
OopMap{[8]=Oop off=648}
#1 
OopMap{off=680}
   166   152; sum=-1786864128
    667   31       3       java.lang.String::startsWith-- 


  0x00007f48152bc1a0: call   0x00007f482c533320  ;   {runtime_call}
  0x00007f48152bc1a5: nop    WORD PTR [rax+rax*1+0x0]
  0x00007f48152bc1b0: mov    DWORD PTR [rsp-0x14000],eax
  0x00007f48152bc1b7: push   rbp
  0x00007f48152bc1b8: sub    rsp,0x30
  0x00007f48152bc1bc: mov    ebx,DWORD PTR [rsi+0x8]
  0x00007f48152bc1bf: mov    r13d,DWORD PTR [rsi]
  0x00007f48152bc1c2: mov    ebp,DWORD PTR [rsi+0x18]
  0x00007f48152bc1c5: mov    r14,QWORD PTR [rsi+0x10]
  0x00007f48152bc1c9: mov    rdi,rsi
  0x00007f48152bc1cc: mov    r10,0x7f482c5d4bc0
  0x00007f48152bc1d6: call   r10                ;*iload
                                                ; - HashTime::sum@5 (line 14)

  0x00007f48152bc1d9: cmp    r13d,ebp
  0x00007f48152bc1dc: jge    0x00007f48152bc26e  ;*if_icmpge
                                                ; - HashTime::sum@8 (line 14)

  0x00007f48152bc1e2: mov    r11d,r13d
  0x00007f48152bc1e5: inc    r11d
  0x00007f48152bc1e8: mov    r8d,DWORD PTR [r14+0x8]  ; implicit exception: dispatches to 0x00007f48152bc299
  0x00007f48152bc1ec: cmp    r8d,0xf800c105     ;   {metadata('Point')}
  0x00007f48152bc1f3: jne    0x00007f48152bc27c
  0x00007f48152bc1f9: mov    r10,r14            ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f48152bc1fc: mov    r9d,DWORD PTR [r10+0x10]  ;*getfield y
                                                ; - Point::hashCode@7 (line 21)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f48152bc200: mov    r10d,DWORD PTR [r10+0xc]  ;*getfield x
                                                ; - Point::hashCode@1 (line 21)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f48152bc204: mov    ecx,r9d
  0x00007f48152bc207: shl    ecx,0x2
  0x00007f48152bc20a: add    ecx,r9d
  0x00007f48152bc20d: mov    r8d,r10d
  0x00007f48152bc210: shl    r8d,1
  0x00007f48152bc213: add    r8d,r10d
  0x00007f48152bc216: add    ecx,r8d            ;*iadd
                                                ; - Point::hashCode@12 (line 21)
                                                ; - HashTime::sum@13 (line 15)

  0x00007f48152bc219: add    ebx,ecx            ;*iadd
                                                ; - HashTime::sum@16 (line 15)

  0x00007f48152bc21b: inc    r13d               ;*iinc
                                                ; - HashTime::sum@18 (line 14)

  0x00007f48152bc21e: cmp    r13d,r11d
  0x00007f48152bc221: jl     0x00007f48152bc1e8  ;*if_icmpge
                                                ; - HashTime::sum@8 (line 14)

  0x00007f48152bc223: mov    r11d,ebp
  0x00007f48152bc226: add    r11d,0xfffffffffffffff1
  0x00007f48152bc22a: mov    r8d,0x80000000
  0x00007f48152bc230: cmp    ebp,r11d
  0x00007f48152bc233: cmovl  r11d,r8d
  0x00007f48152bc237: cmp    r13d,r11d
  0x00007f48152bc23a: jge    0x00007f48152bc25c
  0x00007f48152bc23c: mov    r10d,ecx
  0x00007f48152bc23f: add    r10d,ecx
  0x00007f48152bc242: add    r10d,r10d
  0x00007f48152bc245: add    r10d,r10d
  0x00007f48152bc248: add    r10d,r10d
  0x00007f48152bc24b: nop    DWORD PTR [rax+rax*1+0x0]
                                                ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f48152bc250: add    ebx,r10d           ;*iadd
                                                ; - HashTime::sum@16 (line 15)

  0x00007f48152bc253: add    r13d,0x10          ;*iinc
                                                ; - HashTime::sum@18 (line 14)

  0x00007f48152bc257: cmp    r13d,r11d
  0x00007f48152bc25a: jl     0x00007f48152bc250  ;*if_icmpge
                                                ; - HashTime::sum@8 (line 14)

  0x00007f48152bc25c: cmp    r13d,ebp
  0x00007f48152bc25f: jge    0x00007f48152bc26e
  0x00007f48152bc261: xchg   ax,ax              ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)

  0x00007f48152bc264: add    ebx,ecx            ;*iadd
                                                ; - HashTime::sum@16 (line 15)

  0x00007f48152bc266: inc    r13d               ;*iinc
                                                ; - HashTime::sum@18 (line 14)

  0x00007f48152bc269: cmp    r13d,ebp
  0x00007f48152bc26c: jl     0x00007f48152bc264  ;*iload
                                                ; - HashTime::sum@5 (line 14)

  0x00007f48152bc26e: mov    eax,ebx
  0x00007f48152bc270: add    rsp,0x30
  0x00007f48152bc274: pop    rbp
  0x00007f48152bc275: test   DWORD PTR [rip+0x17b6dd85],eax        # 0x00007f482ce2a000
                                                ;   {poll_return}
  0x00007f48152bc27b: ret
  0x00007f48152bc27c: mov    esi,0xffffffde
  0x00007f48152bc281: mov    DWORD PTR [rsp+0x8],r13d
  0x00007f48152bc286: mov    DWORD PTR [rsp+0xc],ebx
  0x00007f48152bc28a: mov    QWORD PTR [rsp+0x10],r14
  0x00007f48152bc28f: call   0x00007f48150051a0  ; OopMap{[16]=Oop off=244}
                                                ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)
                                                ;   {runtime_call}
  0x00007f48152bc294: call   0x00007f482c533320  ;   {runtime_call}
  0x00007f48152bc299: mov    esi,0xfffffff6
  0x00007f48152bc29e: nop
  0x00007f48152bc29f: call   0x00007f48150051a0  ; OopMap{off=260}
                                                ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)
                                                ;   {runtime_call}
  0x00007f48152bc2a4: call   0x00007f482c533320  ;*invokevirtual hashCode
                                                ; - HashTime::sum@13 (line 15)
                                                ;   {runtime_call}


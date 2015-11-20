Compiled method (c2)     284  189       4       LongPoint7::hashCode (141 bytes)
 total in heap  [0x00007f9a0131b850,0x00007f9a0131bc70] = 1056
 relocation     [0x00007f9a0131b978,0x00007f9a0131b988] = 16
 main code      [0x00007f9a0131b9a0,0x00007f9a0131bb00] = 352
 stub code      [0x00007f9a0131bb00,0x00007f9a0131bb18] = 24
 oops           [0x00007f9a0131bb18,0x00007f9a0131bb20] = 8
 metadata       [0x00007f9a0131bb20,0x00007f9a0131bb38] = 24
 scopes data    [0x00007f9a0131bb38,0x00007f9a0131bba8] = 112
 scopes pcs     [0x00007f9a0131bba8,0x00007f9a0131bc68] = 192
 dependencies   [0x00007f9a0131bc68,0x00007f9a0131bc70] = 8
Decoding compiled method 0x00007f9a0131b850:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007f99fd059908} 'hashCode' '()I' in 'LongPoint7'
  #           [sp+0x20]  (sp of caller)
  0x00007f9a0131b9a0: mov    r10d,DWORD PTR [rsi+0x8]
  0x00007f9a0131b9a4: shl    r10,0x3
  0x00007f9a0131b9a8: cmp    rax,r10
  0x00007f9a0131b9ab: jne    0x00007f9a01045e20  ;   {runtime_call}
  0x00007f9a0131b9b1: xchg   ax,ax
  0x00007f9a0131b9b4: nop    DWORD PTR [rax+rax*1+0x0]
  0x00007f9a0131b9bc: xchg   ax,ax
[Verified Entry Point]
  0x00007f9a0131b9c0: sub    rsp,0x18
  0x00007f9a0131b9c7: mov    QWORD PTR [rsp+0x10],rbp  ;*synchronization entry
                                                ; - LongPoint7::hashCode@-1 (line 22)

  0x00007f9a0131b9cc: mov    rdx,QWORD PTR [rsi+0x10]  ;*getfield v
                                                ; - LongPoint7::hashCode@10 (line 23)

  0x00007f9a0131b9d0: mov    r11d,edx
  0x00007f9a0131b9d3: mov    r10,rdx
  0x00007f9a0131b9d6: shr    r10,0x38
  0x00007f9a0131b9da: movzx  r11d,r11b
  0x00007f9a0131b9de: mov    r10d,r10d
  0x00007f9a0131b9e1: not    r11d
  0x00007f9a0131b9e4: movzx  r10d,r10b
  0x00007f9a0131b9e8: movzx  r11d,r11b
  0x00007f9a0131b9ec: mov    r8,rdx
  0x00007f9a0131b9ef: shr    r8,0x30
  0x00007f9a0131b9f3: shl    r11d,0x2
  0x00007f9a0131b9f7: mov    ebx,r8d
  0x00007f9a0131b9fa: movsxd rsi,r11d
  0x00007f9a0131b9fd: movzx  ebx,bl
  0x00007f9a0131ba00: mov    r11,rdx
  0x00007f9a0131ba03: shr    r11,0x28
  0x00007f9a0131ba07: mov    r8,rdx
  0x00007f9a0131ba0a: shr    r8,0x20
  0x00007f9a0131ba0e: mov    edi,r11d
  0x00007f9a0131ba11: mov    r11d,r8d
  0x00007f9a0131ba14: movzx  edi,dil
  0x00007f9a0131ba18: movzx  r11d,r11b
  0x00007f9a0131ba1c: mov    r8,rdx
  0x00007f9a0131ba1f: shr    r8,0x18
  0x00007f9a0131ba23: mov    rcx,rdx
  0x00007f9a0131ba26: shr    rcx,0x10
  0x00007f9a0131ba2a: mov    r9d,r8d
  0x00007f9a0131ba2d: mov    ebp,ecx
  0x00007f9a0131ba2f: movzx  r9d,r9b
  0x00007f9a0131ba33: movzx  ebp,bpl
  0x00007f9a0131ba37: shr    rdx,0x8
  0x00007f9a0131ba3b: mov    ecx,edx
  0x00007f9a0131ba3d: movzx  ecx,cl
  0x00007f9a0131ba40: mov    rdx,0x7f9a16406a00
  0x00007f9a0131ba4a: mov    eax,DWORD PTR [rdx+rsi*1]
                                                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 58)
                                                ; - LongPoint7::hashCode@20 (line 23)

  0x00007f9a0131ba4d: xor    ecx,eax
  0x00007f9a0131ba4f: xor    eax,0xffffff
  0x00007f9a0131ba55: xor    ecx,0xffffff
  0x00007f9a0131ba5b: shr    eax,0x8
  0x00007f9a0131ba5e: movzx  ecx,cl
  0x00007f9a0131ba61: shl    ecx,0x2
  0x00007f9a0131ba64: movsxd r8,ecx
  0x00007f9a0131ba67: xor    eax,DWORD PTR [rdx+r8*1]  ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 58)
                                                ; - LongPoint7::hashCode@36 (line 24)

  0x00007f9a0131ba6b: xor    ebp,eax
  0x00007f9a0131ba6d: shr    eax,0x8
  0x00007f9a0131ba70: movzx  ebp,bpl
  0x00007f9a0131ba74: shl    ebp,0x2
  0x00007f9a0131ba77: movsxd r8,ebp
  0x00007f9a0131ba7a: xor    eax,DWORD PTR [rdx+r8*1]  ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 58)
                                                ; - LongPoint7::hashCode@52 (line 25)

  0x00007f9a0131ba7e: xor    r9d,eax
  0x00007f9a0131ba81: shr    eax,0x8
  0x00007f9a0131ba84: movzx  r9d,r9b
  0x00007f9a0131ba88: shl    r9d,0x2
  0x00007f9a0131ba8c: movsxd r8,r9d
  0x00007f9a0131ba8f: xor    eax,DWORD PTR [rdx+r8*1]  ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 58)
                                                ; - LongPoint7::hashCode@68 (line 26)

  0x00007f9a0131ba93: xor    r11d,eax
  0x00007f9a0131ba96: shr    eax,0x8
  0x00007f9a0131ba99: movzx  r11d,r11b
  0x00007f9a0131ba9d: shl    r11d,0x2
  0x00007f9a0131baa1: movsxd r11,r11d
  0x00007f9a0131baa4: xor    eax,DWORD PTR [rdx+r11*1]
                                                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 58)
                                                ; - LongPoint7::hashCode@84 (line 27)

  0x00007f9a0131baa8: xor    edi,eax
  0x00007f9a0131baaa: shr    eax,0x8
  0x00007f9a0131baad: movzx  edi,dil
  0x00007f9a0131bab1: shl    edi,0x2
  0x00007f9a0131bab4: movsxd r11,edi
  0x00007f9a0131bab7: xor    eax,DWORD PTR [rdx+r11*1]
                                                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 58)
                                                ; - LongPoint7::hashCode@100 (line 28)

  0x00007f9a0131babb: xor    ebx,eax
  0x00007f9a0131babd: shr    eax,0x8
  0x00007f9a0131bac0: movzx  ebx,bl
  0x00007f9a0131bac3: shl    ebx,0x2
  0x00007f9a0131bac6: movsxd r11,ebx
  0x00007f9a0131bac9: xor    eax,DWORD PTR [rdx+r11*1]
                                                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 58)
                                                ; - LongPoint7::hashCode@116 (line 29)

  0x00007f9a0131bacd: xor    r10d,eax
  0x00007f9a0131bad0: shr    eax,0x8
  0x00007f9a0131bad3: movzx  r10d,r10b
  0x00007f9a0131bad7: shl    r10d,0x2
  0x00007f9a0131badb: movsxd r10,r10d
  0x00007f9a0131bade: xor    eax,DWORD PTR [rdx+r10*1]
  0x00007f9a0131bae2: not    eax                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 58)
                                                ; - LongPoint7::hashCode@132 (line 30)

  0x00007f9a0131bae4: add    rsp,0x10
  0x00007f9a0131bae8: pop    rbp
  0x00007f9a0131bae9: test   DWORD PTR [rip+0x15382511],eax        # 0x00007f9a1669e000
                                                ;   {poll_return}
  0x00007f9a0131baef: ret    
  0x00007f9a0131baf0: hlt    
  0x00007f9a0131baf1: hlt    
  0x00007f9a0131baf2: hlt    
  0x00007f9a0131baf3: hlt    
  0x00007f9a0131baf4: hlt    
  0x00007f9a0131baf5: hlt    
  0x00007f9a0131baf6: hlt    
  0x00007f9a0131baf7: hlt    
  0x00007f9a0131baf8: hlt    
  0x00007f9a0131baf9: hlt    
  0x00007f9a0131bafa: hlt    
  0x00007f9a0131bafb: hlt    
  0x00007f9a0131bafc: hlt    
  0x00007f9a0131bafd: hlt    
  0x00007f9a0131bafe: hlt    
  0x00007f9a0131baff: hlt    
[Exception Handler]
[Stub Code]
  0x00007f9a0131bb00: jmp    0x00007f9a0106c3a0  ;   {no_reloc}
[Deopt Handler Code]
  0x00007f9a0131bb05: call   0x00007f9a0131bb0a
  0x00007f9a0131bb0a: sub    QWORD PTR [rsp],0x5
  0x00007f9a0131bb0f: jmp    0x00007f9a010473c0  ;   {runtime_call}
  0x00007f9a0131bb14: hlt    
  0x00007f9a0131bb15: hlt    
  0x00007f9a0131bb16: hlt    
  0x00007f9a0131bb17: hlt    

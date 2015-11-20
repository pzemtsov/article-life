Compiled method (c2)     273  184       4       LongPoint75::hashCode (8 bytes)
 total in heap  [0x00007fbf51311890,0x00007fbf51311ca0] = 1040
 relocation     [0x00007fbf513119b8,0x00007fbf513119c8] = 16
 main code      [0x00007fbf513119e0,0x00007fbf51311b20] = 320
 stub code      [0x00007fbf51311b20,0x00007fbf51311b38] = 24
 oops           [0x00007fbf51311b38,0x00007fbf51311b40] = 8
 metadata       [0x00007fbf51311b40,0x00007fbf51311b60] = 32
 scopes data    [0x00007fbf51311b60,0x00007fbf51311bd8] = 120
 scopes pcs     [0x00007fbf51311bd8,0x00007fbf51311c98] = 192
 dependencies   [0x00007fbf51311c98,0x00007fbf51311ca0] = 8
Decoding compiled method 0x00007fbf51311890:
Code:
[Entry Point]
[Constants]
  # {method} {0x00007fbf4c5e1488} 'hashCode' '()I' in 'LongPoint75'
  #           [sp+0x20]  (sp of caller)
  0x00007fbf513119e0: mov    r10d,DWORD PTR [rsi+0x8]
  0x00007fbf513119e4: shl    r10,0x3
  0x00007fbf513119e8: cmp    rax,r10
  0x00007fbf513119eb: jne    0x00007fbf51045e20  ;   {runtime_call}
  0x00007fbf513119f1: xchg   ax,ax
  0x00007fbf513119f4: nop    DWORD PTR [rax+rax*1+0x0]
  0x00007fbf513119fc: xchg   ax,ax
[Verified Entry Point]
  0x00007fbf51311a00: sub    rsp,0x18
  0x00007fbf51311a07: mov    QWORD PTR [rsp+0x10],rbp  ;*synchronization entry
                                                ; - LongPoint75::hashCode@-1 (line 20)

  0x00007fbf51311a0c: mov    rcx,QWORD PTR [rsi+0x10]  ;*getfield v
                                                ; - LongPoint75::hashCode@1 (line 20)

  0x00007fbf51311a10: mov    r11d,ecx
  0x00007fbf51311a13: mov    r10,rcx
  0x00007fbf51311a16: shr    r10,0x38
  0x00007fbf51311a1a: movsx  ebx,r11b
  0x00007fbf51311a1e: mov    r11d,r10d
  0x00007fbf51311a21: not    ebx
  0x00007fbf51311a23: movsx  r10d,r11b
  0x00007fbf51311a27: movzx  ebx,bl
  0x00007fbf51311a2a: mov    r11,rcx
  0x00007fbf51311a2d: shr    r11,0x30
  0x00007fbf51311a31: mov    r8,rcx
  0x00007fbf51311a34: shr    r8,0x28
  0x00007fbf51311a38: mov    r11d,r11d
  0x00007fbf51311a3b: mov    r9d,r8d
  0x00007fbf51311a3e: movsx  edi,r11b
  0x00007fbf51311a42: movsx  esi,r9b
  0x00007fbf51311a46: mov    r11,rcx
  0x00007fbf51311a49: shr    r11,0x20
  0x00007fbf51311a4d: mov    r8,rcx
  0x00007fbf51311a50: shr    r8,0x18
  0x00007fbf51311a54: mov    r9d,r11d
  0x00007fbf51311a57: mov    r11d,r8d
  0x00007fbf51311a5a: movsx  r9d,r9b
  0x00007fbf51311a5e: movsx  ebp,r11b
  0x00007fbf51311a62: mov    r11,rcx
  0x00007fbf51311a65: shr    r11,0x10
  0x00007fbf51311a69: shr    rcx,0x8
  0x00007fbf51311a6d: mov    r8d,r11d
  0x00007fbf51311a70: mov    r11d,ecx
  0x00007fbf51311a73: movsx  ecx,r8b
  0x00007fbf51311a77: movsx  r11d,r11b
  0x00007fbf51311a7b: mov    r8,0x675ec4c38     ;   {oop([I)}
  0x00007fbf51311a85: mov    eax,DWORD PTR [r8+rbx*4+0x10]
                                                ;*iaload
                                                ; - TableCRC32::update@14 (line 63)
                                                ; - TableCRC32::update@48 (line 68)
                                                ; - TableCRC32::crc32@2 (line 80)
                                                ; - LongPoint75::hashCode@4 (line 20)

  0x00007fbf51311a8a: xor    r11d,eax
  0x00007fbf51311a8d: xor    eax,0xffffff
  0x00007fbf51311a93: xor    r11d,0xffffff
  0x00007fbf51311a9a: shr    eax,0x8
  0x00007fbf51311a9d: movzx  r11d,r11b
  0x00007fbf51311aa1: xor    eax,DWORD PTR [r8+r11*4+0x10]
                                                ;*ixor
                                                ; - TableCRC32::update@15 (line 63)
                                                ; - TableCRC32::update@51 (line 68)
                                                ; - TableCRC32::crc32@2 (line 80)
                                                ; - LongPoint75::hashCode@4 (line 20)

  0x00007fbf51311aa6: xor    ecx,eax
  0x00007fbf51311aa8: shr    eax,0x8
  0x00007fbf51311aab: movzx  ecx,cl
  0x00007fbf51311aae: xor    eax,DWORD PTR [r8+rcx*4+0x10]
                                                ;*ixor
                                                ; - TableCRC32::update@15 (line 63)
                                                ; - TableCRC32::update@54 (line 68)
                                                ; - TableCRC32::crc32@2 (line 80)
                                                ; - LongPoint75::hashCode@4 (line 20)

  0x00007fbf51311ab3: xor    ebp,eax
  0x00007fbf51311ab5: shr    eax,0x8
  0x00007fbf51311ab8: movzx  ebp,bpl
  0x00007fbf51311abc: xor    eax,DWORD PTR [r8+rbp*4+0x10]
                                                ;*ixor
                                                ; - TableCRC32::update@15 (line 63)
                                                ; - TableCRC32::update@57 (line 68)
                                                ; - TableCRC32::crc32@2 (line 80)
                                                ; - LongPoint75::hashCode@4 (line 20)

  0x00007fbf51311ac1: xor    r9d,eax
  0x00007fbf51311ac4: shr    eax,0x8
  0x00007fbf51311ac7: movzx  r9d,r9b
  0x00007fbf51311acb: xor    eax,DWORD PTR [r8+r9*4+0x10]
                                                ;*ixor
                                                ; - TableCRC32::update@15 (line 63)
                                                ; - TableCRC32::update@60 (line 68)
                                                ; - TableCRC32::crc32@2 (line 80)
                                                ; - LongPoint75::hashCode@4 (line 20)

  0x00007fbf51311ad0: xor    esi,eax
  0x00007fbf51311ad2: shr    eax,0x8
  0x00007fbf51311ad5: movzx  esi,sil
  0x00007fbf51311ad9: xor    eax,DWORD PTR [r8+rsi*4+0x10]
                                                ;*ixor
                                                ; - TableCRC32::update@15 (line 63)
                                                ; - TableCRC32::update@63 (line 68)
                                                ; - TableCRC32::crc32@2 (line 80)
                                                ; - LongPoint75::hashCode@4 (line 20)

  0x00007fbf51311ade: xor    edi,eax
  0x00007fbf51311ae0: shr    eax,0x8
  0x00007fbf51311ae3: movzx  edi,dil
  0x00007fbf51311ae7: xor    eax,DWORD PTR [r8+rdi*4+0x10]
                                                ;*ixor
                                                ; - TableCRC32::update@15 (line 63)
                                                ; - TableCRC32::update@66 (line 68)
                                                ; - TableCRC32::crc32@2 (line 80)
                                                ; - LongPoint75::hashCode@4 (line 20)

  0x00007fbf51311aec: xor    r10d,eax
  0x00007fbf51311aef: shr    eax,0x8
  0x00007fbf51311af2: movzx  r10d,r10b
  0x00007fbf51311af6: xor    eax,DWORD PTR [r8+r10*4+0x10]
  0x00007fbf51311afb: not    eax                ;*ixor
                                                ; - TableCRC32::crc32@6 (line 80)
                                                ; - LongPoint75::hashCode@4 (line 20)

  0x00007fbf51311afd: add    rsp,0x10
  0x00007fbf51311b01: pop    rbp
  0x00007fbf51311b02: test   DWORD PTR [rip+0x1686d4f8],eax        # 0x00007fbf67b7f000
                                                ;   {poll_return}
  0x00007fbf51311b08: ret    
  0x00007fbf51311b09: hlt    
  0x00007fbf51311b0a: hlt    
  0x00007fbf51311b0b: hlt    
  0x00007fbf51311b0c: hlt    
  0x00007fbf51311b0d: hlt    
  0x00007fbf51311b0e: hlt    
  0x00007fbf51311b0f: hlt    
  0x00007fbf51311b10: hlt    
  0x00007fbf51311b11: hlt    
  0x00007fbf51311b12: hlt    
  0x00007fbf51311b13: hlt    
  0x00007fbf51311b14: hlt    
  0x00007fbf51311b15: hlt    
  0x00007fbf51311b16: hlt    
  0x00007fbf51311b17: hlt    
  0x00007fbf51311b18: hlt    
  0x00007fbf51311b19: hlt    
  0x00007fbf51311b1a: hlt    
  0x00007fbf51311b1b: hlt    
  0x00007fbf51311b1c: hlt    
  0x00007fbf51311b1d: hlt    
  0x00007fbf51311b1e: hlt    
  0x00007fbf51311b1f: hlt    
[Exception Handler]
[Stub Code]
  0x00007fbf51311b20: jmp    0x00007fbf5106c3a0  ;   {no_reloc}
[Deopt Handler Code]
  0x00007fbf51311b25: call   0x00007fbf51311b2a
  0x00007fbf51311b2a: sub    QWORD PTR [rsp],0x5
  0x00007fbf51311b2f: jmp    0x00007fbf510473c0  ;   {runtime_call}
  0x00007fbf51311b34: hlt    
  0x00007fbf51311b35: hlt    
  0x00007fbf51311b36: hlt    
  0x00007fbf51311b37: hlt    

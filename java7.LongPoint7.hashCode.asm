Compiled method (c2)     336   90             LongPoint7::hashCode (141 bytes)
 total in heap  [0x00007f4f44a1e850,0x00007f4f44a1f0a0] = 2128
 relocation     [0x00007f4f44a1e970,0x00007f4f44a1e9e0] = 112
 main code      [0x00007f4f44a1e9e0,0x00007f4f44a1eb20] = 320
 stub code      [0x00007f4f44a1eb20,0x00007f4f44a1ebb0] = 144
 oops           [0x00007f4f44a1ebb0,0x00007f4f44a1ebd0] = 32
 scopes data    [0x00007f4f44a1ebd0,0x00007f4f44a1eda8] = 472
 scopes pcs     [0x00007f4f44a1eda8,0x00007f4f44a1efd8] = 560
 dependencies   [0x00007f4f44a1efd8,0x00007f4f44a1efe0] = 8
 handler table  [0x00007f4f44a1efe0,0x00007f4f44a1f0a0] = 192
Loaded disassembler from hsdis-amd64.so
Decoding compiled method 0x00007f4f44a1e850:
Code:
[Disassembling for mach='i386:x86-64']
[Entry Point]
[Constants]
  # {method} 'hashCode' '()I' in 'LongPoint7'
  #           [sp+0x30]  (sp of caller)
  0x00007f4f44a1e9e0: mov    r10d,DWORD PTR [rsi+0x8]
  0x00007f4f44a1e9e4: shl    r10,0x3
  0x00007f4f44a1e9e8: cmp    rax,r10
  0x00007f4f44a1e9eb: jne    0x00007f4f449e4960  ;   {runtime_call}
  0x00007f4f44a1e9f1: xchg   ax,ax
  0x00007f4f44a1e9f4: nop    DWORD PTR [rax+rax*1+0x0]
  0x00007f4f44a1e9fc: xchg   ax,ax
[Verified Entry Point]
  0x00007f4f44a1ea00: mov    DWORD PTR [rsp-0x14000],eax
  0x00007f4f44a1ea07: push   rbp
  0x00007f4f44a1ea08: sub    rsp,0x20           ;*synchronization entry
                                                ; - LongPoint7::hashCode@-1 (line 22)
  0x00007f4f44a1ea0c: mov    rbp,rsi
  0x00007f4f44a1ea0f: mov    r10,QWORD PTR [rsi+0x10]
  0x00007f4f44a1ea13: mov    edx,r10d
  0x00007f4f44a1ea16: movzx  edx,dl             ;*iand
                                                ; - LongPoint7::hashCode@19 (line 23)
  0x00007f4f44a1ea19: xor    esi,esi
  0x00007f4f44a1ea1b: call   0x00007f4f449e4f60  ; OopMap{rbp=Oop off=64}
                                                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@20 (line 23)
                                                ;   {static_call}
  0x00007f4f44a1ea20: mov    DWORD PTR [rsp],eax  ;*synchronization entry
                                                ; - java.util.zip.CRC32::update@-1 (line 52)
                                                ; - LongPoint7::hashCode@36 (line 24)
  0x00007f4f44a1ea23: mov    r10,QWORD PTR [rbp+0x10]
  0x00007f4f44a1ea27: shr    r10,0x8
  0x00007f4f44a1ea2b: mov    edx,r10d
  0x00007f4f44a1ea2e: movzx  edx,dl             ;*iand
                                                ; - LongPoint7::hashCode@35 (line 24)
  0x00007f4f44a1ea31: mov    esi,eax
  0x00007f4f44a1ea33: call   0x00007f4f449e4f60  ; OopMap{rbp=Oop off=88}
                                                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@36 (line 24)
                                                ;   {static_call}
  0x00007f4f44a1ea38: mov    DWORD PTR [rsp],eax  ;*synchronization entry
                                                ; - java.util.zip.CRC32::update@-1 (line 52)
                                                ; - LongPoint7::hashCode@52 (line 25)
  0x00007f4f44a1ea3b: mov    r10,QWORD PTR [rbp+0x10]
  0x00007f4f44a1ea3f: shr    r10,0x10
  0x00007f4f44a1ea43: mov    edx,r10d
  0x00007f4f44a1ea46: movzx  edx,dl             ;*iand
                                                ; - LongPoint7::hashCode@51 (line 25)
  0x00007f4f44a1ea49: mov    esi,eax
  0x00007f4f44a1ea4b: call   0x00007f4f449e4f60  ; OopMap{rbp=Oop off=112}
                                                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@52 (line 25)
                                                ;   {static_call}
  0x00007f4f44a1ea50: mov    DWORD PTR [rsp],eax  ;*synchronization entry
                                                ; - java.util.zip.CRC32::update@-1 (line 52)
                                                ; - LongPoint7::hashCode@68 (line 26)
  0x00007f4f44a1ea53: mov    r10,QWORD PTR [rbp+0x10]
  0x00007f4f44a1ea57: shr    r10,0x18
  0x00007f4f44a1ea5b: mov    edx,r10d
  0x00007f4f44a1ea5e: movzx  edx,dl             ;*iand
                                                ; - LongPoint7::hashCode@67 (line 26)
  0x00007f4f44a1ea61: mov    esi,eax
  0x00007f4f44a1ea63: call   0x00007f4f449e4f60  ; OopMap{rbp=Oop off=136}
                                                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@68 (line 26)
                                                ;   {static_call}
  0x00007f4f44a1ea68: mov    DWORD PTR [rsp],eax  ;*synchronization entry
                                                ; - java.util.zip.CRC32::update@-1 (line 52)
                                                ; - LongPoint7::hashCode@84 (line 27)
  0x00007f4f44a1ea6b: mov    r10,QWORD PTR [rbp+0x10]
  0x00007f4f44a1ea6f: shr    r10,0x20
  0x00007f4f44a1ea73: mov    edx,r10d
  0x00007f4f44a1ea76: movzx  edx,dl             ;*iand
                                                ; - LongPoint7::hashCode@83 (line 27)
  0x00007f4f44a1ea79: mov    esi,eax
  0x00007f4f44a1ea7b: call   0x00007f4f449e4f60  ; OopMap{rbp=Oop off=160}
                                                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@84 (line 27)
                                                ;   {static_call}
  0x00007f4f44a1ea80: mov    DWORD PTR [rsp],eax  ;*synchronization entry
                                                ; - java.util.zip.CRC32::update@-1 (line 52)
                                                ; - LongPoint7::hashCode@100 (line 28)
  0x00007f4f44a1ea83: mov    r10,QWORD PTR [rbp+0x10]
  0x00007f4f44a1ea87: shr    r10,0x28
  0x00007f4f44a1ea8b: mov    edx,r10d
  0x00007f4f44a1ea8e: movzx  edx,dl             ;*iand
                                                ; - LongPoint7::hashCode@99 (line 28)
  0x00007f4f44a1ea91: mov    esi,eax
  0x00007f4f44a1ea93: call   0x00007f4f449e4f60  ; OopMap{rbp=Oop off=184}
                                                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@100 (line 28)
                                                ;   {static_call}
  0x00007f4f44a1ea98: mov    DWORD PTR [rsp],eax  ;*synchronization entry
                                                ; - java.util.zip.CRC32::update@-1 (line 52)
                                                ; - LongPoint7::hashCode@116 (line 29)
  0x00007f4f44a1ea9b: mov    r10,QWORD PTR [rbp+0x10]
  0x00007f4f44a1ea9f: shr    r10,0x30
  0x00007f4f44a1eaa3: mov    edx,r10d
  0x00007f4f44a1eaa6: movzx  edx,dl             ;*iand
                                                ; - LongPoint7::hashCode@115 (line 29)
  0x00007f4f44a1eaa9: mov    esi,eax
  0x00007f4f44a1eaab: call   0x00007f4f449e4f60  ; OopMap{rbp=Oop off=208}
                                                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@116 (line 29)
                                                ;   {static_call}
  0x00007f4f44a1eab0: mov    DWORD PTR [rsp],eax  ;*synchronization entry
                                                ; - java.util.zip.CRC32::update@-1 (line 52)
                                                ; - LongPoint7::hashCode@132 (line 30)
  0x00007f4f44a1eab3: mov    r10,QWORD PTR [rbp+0x10]
  0x00007f4f44a1eab7: shr    r10,0x38
  0x00007f4f44a1eabb: mov    edx,r10d
  0x00007f4f44a1eabe: movzx  edx,dl             ;*iand
                                                ; - LongPoint7::hashCode@131 (line 30)
  0x00007f4f44a1eac1: mov    esi,eax
  0x00007f4f44a1eac3: call   0x00007f4f449e4f60  ; OopMap{off=232}
                                                ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@132 (line 30)
                                                ;   {static_call}
  0x00007f4f44a1eac8: add    rsp,0x20
  0x00007f4f44a1eacc: pop    rbp
  0x00007f4f44a1eacd: test   DWORD PTR [rip+0x8b7452d],eax        # 0x00007f4f4d593000
                                                ;   {poll_return}
  0x00007f4f44a1ead3: ret                       ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@132 (line 30)
  0x00007f4f44a1ead4: mov    rsi,rax
  0x00007f4f44a1ead7: jmp    0x00007f4f44a1eafa  ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@116 (line 29)
  0x00007f4f44a1ead9: mov    rsi,rax
  0x00007f4f44a1eadc: jmp    0x00007f4f44a1eafa  ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@100 (line 28)
  0x00007f4f44a1eade: mov    rsi,rax
  0x00007f4f44a1eae1: jmp    0x00007f4f44a1eafa  ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@84 (line 27)
  0x00007f4f44a1eae3: mov    rsi,rax
  0x00007f4f44a1eae6: jmp    0x00007f4f44a1eafa  ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@68 (line 26)
  0x00007f4f44a1eae8: mov    rsi,rax
  0x00007f4f44a1eaeb: jmp    0x00007f4f44a1eafa  ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@52 (line 25)
  0x00007f4f44a1eaed: mov    rsi,rax
  0x00007f4f44a1eaf0: jmp    0x00007f4f44a1eafa  ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@36 (line 24)
  0x00007f4f44a1eaf2: mov    rsi,rax
  0x00007f4f44a1eaf5: jmp    0x00007f4f44a1eafa  ;*invokestatic update
                                                ; - java.util.zip.CRC32::update@6 (line 52)
                                                ; - LongPoint7::hashCode@20 (line 23)
  0x00007f4f44a1eaf7: mov    rsi,rax            ;*new  ; - LongPoint7::hashCode@0 (line 22)
  0x00007f4f44a1eafa: add    rsp,0x20
  0x00007f4f44a1eafe: pop    rbp
  0x00007f4f44a1eaff: jmp    0x00007f4f44a0eda0  ;   {runtime_call}
  0x00007f4f44a1eb04: hlt    
  0x00007f4f44a1eb05: hlt    
  0x00007f4f44a1eb06: hlt    
  0x00007f4f44a1eb07: hlt    
  0x00007f4f44a1eb08: hlt    
  0x00007f4f44a1eb09: hlt    
  0x00007f4f44a1eb0a: hlt    
  0x00007f4f44a1eb0b: hlt    
  0x00007f4f44a1eb0c: hlt    
  0x00007f4f44a1eb0d: hlt    
  0x00007f4f44a1eb0e: hlt    
  0x00007f4f44a1eb0f: hlt    
  0x00007f4f44a1eb10: hlt    
  0x00007f4f44a1eb11: hlt    
  0x00007f4f44a1eb12: hlt    
  0x00007f4f44a1eb13: hlt    
  0x00007f4f44a1eb14: hlt    
  0x00007f4f44a1eb15: hlt    
  0x00007f4f44a1eb16: hlt    
  0x00007f4f44a1eb17: hlt    
  0x00007f4f44a1eb18: hlt    
  0x00007f4f44a1eb19: hlt    
  0x00007f4f44a1eb1a: hlt    
  0x00007f4f44a1eb1b: hlt    
  0x00007f4f44a1eb1c: hlt    
  0x00007f4f44a1eb1d: hlt    
  0x00007f4f44a1eb1e: hlt    
  0x00007f4f44a1eb1f: hlt    
[Stub Code]
  0x00007f4f44a1eb20: mov    rbx,0x0            ;   {no_reloc}
  0x00007f4f44a1eb2a: jmp    0x00007f4f44a1eb2a  ;   {runtime_call}
  0x00007f4f44a1eb2f: mov    rbx,0x0            ;   {static_stub}
  0x00007f4f44a1eb39: jmp    0x00007f4f44a1eb39  ;   {runtime_call}
  0x00007f4f44a1eb3e: mov    rbx,0x0            ;   {static_stub}
  0x00007f4f44a1eb48: jmp    0x00007f4f44a1eb48  ;   {runtime_call}
  0x00007f4f44a1eb4d: mov    rbx,0x0            ;   {static_stub}
  0x00007f4f44a1eb57: jmp    0x00007f4f44a1eb57  ;   {runtime_call}
  0x00007f4f44a1eb5c: mov    rbx,0x0            ;   {static_stub}
  0x00007f4f44a1eb66: jmp    0x00007f4f44a1eb66  ;   {runtime_call}
  0x00007f4f44a1eb6b: mov    rbx,0x0            ;   {static_stub}
  0x00007f4f44a1eb75: jmp    0x00007f4f44a1eb75  ;   {runtime_call}
  0x00007f4f44a1eb7a: mov    rbx,0x0            ;   {static_stub}
  0x00007f4f44a1eb84: jmp    0x00007f4f44a1eb84  ;   {runtime_call}
  0x00007f4f44a1eb89: mov    rbx,0x0            ;   {static_stub}
  0x00007f4f44a1eb93: jmp    0x00007f4f44a1eb93  ;   {runtime_call}
[Exception Handler]
  0x00007f4f44a1eb98: jmp    0x00007f4f44a0c020  ;   {runtime_call}
[Deopt Handler Code]
  0x00007f4f44a1eb9d: call   0x00007f4f44a1eba2
  0x00007f4f44a1eba2: sub    QWORD PTR [rsp],0x5
  0x00007f4f44a1eba7: jmp    0x00007f4f449e5f00  ;   {runtime_call}
  0x00007f4f44a1ebac: hlt    
  0x00007f4f44a1ebad: hlt    
  0x00007f4f44a1ebae: hlt    
  0x00007f4f44a1ebaf: hlt    

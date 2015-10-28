[Entry Point]
[Constants]
  # {method} {0x00007f0418d8cf60} 'reset' '(LLongPoint;)V' in 'Hash_LongPoint'
  # this:     rsi:rsi   = 'Hash_LongPoint'
  # parm0:    rdx:rdx   = 'LongPoint'
  #           [sp+0x30]  (sp of caller)
  0x00007f041d2ec0e0: mov    r10d,DWORD PTR [rsi+0x8]
  0x00007f041d2ec0e4: shl    r10,0x3
  0x00007f041d2ec0e8: cmp    rax,r10
  0x00007f041d2ec0eb: jne    0x00007f041d045e20  ;   {runtime_call}
  0x00007f041d2ec0f1: xchg   ax,ax
  0x00007f041d2ec0f4: nop    DWORD PTR [rax+rax*1+0x0]
  0x00007f041d2ec0fc: xchg   ax,ax
[Verified Entry Point]
  0x00007f041d2ec100: mov    DWORD PTR [rsp-0x14000],eax
  0x00007f041d2ec107: push   rbp
  0x00007f041d2ec108: sub    rsp,0x20           ;*synchronization entry
                                                ; - Hash_LongPoint::reset@-1 (line 79)

  0x00007f041d2ec10c: mov    QWORD PTR [rsp],rsi
  0x00007f041d2ec110: mov    QWORD PTR [rsp+0x8],rdx
  0x00007f041d2ec115: mov    rbp,QWORD PTR [rdx+0x10]  ;*getfield v
                                                ; - Hash_LongPoint::reset@1 (line 79)
                                                ; implicit exception: dispatches to 0x00007f041d2ec2b2
  0x00007f041d2ec119: mov    r10,0xfffffffeffffffff
  0x00007f041d2ec123: mov    rdx,rbp
  0x00007f041d2ec126: add    rdx,r10            ;*lsub
                                                ; - Hash_LongPoint::reset@12 (line 80)

  0x00007f041d2ec129: xchg   ax,ax
  0x00007f041d2ec12b: call   0x00007f041d046020  ; OopMap{[0]=Oop [8]=Oop off=80}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@13 (line 80)
                                                ;   {optimized virtual_call}
  0x00007f041d2ec130: mov    r10,0xffffffff00000000
  0x00007f041d2ec13a: mov    rdx,rbp
  0x00007f041d2ec13d: add    rdx,r10            ;*lsub
                                                ; - Hash_LongPoint::reset@10 (line 80)

  0x00007f041d2ec140: mov    rsi,QWORD PTR [rsp]
  0x00007f041d2ec144: xchg   ax,ax
  0x00007f041d2ec147: call   0x00007f041d046020  ; OopMap{[0]=Oop [8]=Oop off=108}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@22 (line 81)
                                                ;   {optimized virtual_call}
  0x00007f041d2ec14c: mov    r10,0xffffffff00000001
  0x00007f041d2ec156: mov    rdx,rbp
  0x00007f041d2ec159: add    rdx,r10            ;*ladd
                                                ; - Hash_LongPoint::reset@32 (line 82)

  0x00007f041d2ec15c: mov    rsi,QWORD PTR [rsp]
  0x00007f041d2ec160: xchg   ax,ax
  0x00007f041d2ec163: call   0x00007f041d046020  ; OopMap{[0]=Oop [8]=Oop off=136}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@33 (line 82)
                                                ;   {optimized virtual_call}
  0x00007f041d2ec168: mov    rdx,rbp
  0x00007f041d2ec16b: dec    rdx                ;*lsub
                                                ; - Hash_LongPoint::reset@39 (line 83)

  0x00007f041d2ec16e: mov    rsi,QWORD PTR [rsp]
  0x00007f041d2ec172: nop    
  0x00007f041d2ec173: call   0x00007f041d046020  ; OopMap{[0]=Oop [8]=Oop off=152}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@40 (line 83)
                                                ;   {optimized virtual_call}
  0x00007f041d2ec178: mov    rdx,rbp
  0x00007f041d2ec17b: add    rdx,0x1            ;*ladd
                                                ; - Hash_LongPoint::reset@46 (line 84)

  0x00007f041d2ec17f: mov    rsi,QWORD PTR [rsp]
  0x00007f041d2ec183: call   0x00007f041d046020  ; OopMap{[0]=Oop [8]=Oop off=168}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@47 (line 84)
                                                ;   {optimized virtual_call}
  0x00007f041d2ec188: mov    r10d,0xffffffff
  0x00007f041d2ec18e: mov    rdx,rbp
  0x00007f041d2ec191: add    rdx,r10            ;*lsub
                                                ; - Hash_LongPoint::reset@57 (line 85)

  0x00007f041d2ec194: mov    rsi,QWORD PTR [rsp]
  0x00007f041d2ec198: xchg   ax,ax
  0x00007f041d2ec19b: call   0x00007f041d046020  ; OopMap{[0]=Oop [8]=Oop off=192}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@58 (line 85)
                                                ;   {optimized virtual_call}
  0x00007f041d2ec1a0: mov    r10,0x100000000
  0x00007f041d2ec1aa: mov    rdx,rbp
  0x00007f041d2ec1ad: add    rdx,r10            ;*ladd
                                                ; - Hash_LongPoint::reset@55 (line 85)

  0x00007f041d2ec1b0: mov    rsi,QWORD PTR [rsp]
  0x00007f041d2ec1b4: xchg   ax,ax
  0x00007f041d2ec1b7: call   0x00007f041d046020  ; OopMap{[0]=Oop [8]=Oop off=220}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@67 (line 86)
                                                ;   {optimized virtual_call}
  0x00007f041d2ec1bc: mov    r10,0x100000001
  0x00007f041d2ec1c6: mov    rdx,rbp
  0x00007f041d2ec1c9: add    rdx,r10            ;*ladd
                                                ; - Hash_LongPoint::reset@77 (line 87)

  0x00007f041d2ec1cc: mov    rsi,QWORD PTR [rsp]
  0x00007f041d2ec1d0: xchg   ax,ax
  0x00007f041d2ec1d3: call   0x00007f041d046020  ; OopMap{[0]=Oop [8]=Oop off=248}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@78 (line 87)
                                                ;   {optimized virtual_call}
  0x00007f041d2ec1d8: mov    r10,QWORD PTR [rsp]
  0x00007f041d2ec1dc: mov    r10d,DWORD PTR [r10+0x10]
                                                ;*getfield field
                                                ; - Hash_LongPoint::reset@82 (line 88)

  0x00007f041d2ec1e0: mov    r11d,DWORD PTR [r12+r10*8+0xc]
                                                ;*getfield map
                                                ; - java.util.HashSet::remove@1 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; implicit exception: dispatches to 0x00007f041d2ec2c1
  0x00007f041d2ec1e5: test   r11d,r11d
  0x00007f041d2ec1e8: je     0x00007f041d2ec257  ;*invokevirtual remove
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)

  0x00007f041d2ec1ea: mov    r10,QWORD PTR [rsp+0x8]
  0x00007f041d2ec1ef: mov    r10,QWORD PTR [r10+0x10]  ;*getfield v
                                                ; - LongPoint6::hashCode@1 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::remove@2 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)

  0x00007f041d2ec1f3: lea    rsi,[r12+r11*8]    ;*getfield map
                                                ; - java.util.HashSet::remove@1 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)

  0x00007f041d2ec1f7: mov    r11,r10
  0x00007f041d2ec1fa: sar    r11,0x3f
  0x00007f041d2ec1fe: xor    r9d,r9d
  0x00007f041d2ec201: xor    r8d,r8d
  0x00007f041d2ec204: mov    rax,0x2449f0232c624b0b
  0x00007f041d2ec20e: imul   r10
  0x00007f041d2ec211: sar    rdx,0x1b
  0x00007f041d2ec215: sub    rdx,r11
  0x00007f041d2ec218: imul   r11,rdx,0x386fa527
  0x00007f041d2ec21f: sub    r10,r11
  0x00007f041d2ec222: mov    r11d,r10d          ;*l2i  ; - LongPoint6::hashCode@8 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::remove@2 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)

  0x00007f041d2ec225: mov    edx,r11d
  0x00007f041d2ec228: shr    edx,0x10
  0x00007f041d2ec22b: xor    edx,r11d           ;*ixor
                                                ; - java.util.HashMap::hash@18 (line 338)
                                                ; - java.util.HashMap::remove@2 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)

  0x00007f041d2ec22e: mov    edi,0x1
  0x00007f041d2ec233: mov    rcx,QWORD PTR [rsp+0x8]
  0x00007f041d2ec238: xchg   ax,ax
  0x00007f041d2ec23b: call   0x00007f041d046020  ; OopMap{off=352}
                                                ;*invokevirtual removeNode
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ;   {optimized virtual_call}
  0x00007f041d2ec240: mov    ebp,DWORD PTR [rax+0x14]  ;*getfield value
                                                ; - java.util.HashMap::remove@22 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; implicit exception: dispatches to 0x00007f041d2ec2d5
  0x00007f041d2ec243: cmp    ebp,0xce1291a0     ;   {oop(a 'java/lang/Object')}
  0x00007f041d2ec249: jne    0x00007f041d2ec26d  ;*if_acmpne
                                                ; - java.util.HashSet::remove@11 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)

  0x00007f041d2ec24b: add    rsp,0x20
  0x00007f041d2ec24f: pop    rbp
  0x00007f041d2ec250: test   DWORD PTR [rip+0x16f3adaa],eax        # 0x00007f0434227000
                                                ;   {poll_return}
  0x00007f041d2ec256: ret    
  0x00007f041d2ec257: mov    esi,0xfffffff6
  0x00007f041d2ec25c: mov    rbp,QWORD PTR [rsp+0x8]
  0x00007f041d2ec261: xchg   ax,ax
  0x00007f041d2ec263: call   0x00007f041d0051a0  ; OopMap{rbp=Oop off=392}
                                                ;*invokevirtual remove
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ;   {runtime_call}
  0x00007f041d2ec268: call   0x00007f0433930320  ;*invokevirtual remove
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ;   {runtime_call}
  0x00007f041d2ec26d: mov    esi,0xffffff65
  0x00007f041d2ec272: nop    
  0x00007f041d2ec273: call   0x00007f041d0051a0  ; OopMap{rbp=NarrowOop off=408}
                                                ;*if_acmpne
                                                ; - java.util.HashSet::remove@11 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ;   {runtime_call}
  0x00007f041d2ec278: call   0x00007f0433930320  ;*invokevirtual removeNode
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ;   {runtime_call}
  0x00007f041d2ec27d: mov    rsi,rax
  0x00007f041d2ec280: jmp    0x00007f041d2ec2a8  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@78 (line 87)

  0x00007f041d2ec282: mov    rsi,rax
  0x00007f041d2ec285: jmp    0x00007f041d2ec2a8  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@67 (line 86)

  0x00007f041d2ec287: mov    rsi,rax
  0x00007f041d2ec28a: jmp    0x00007f041d2ec2a8  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@58 (line 85)

  0x00007f041d2ec28c: mov    rsi,rax
  0x00007f041d2ec28f: jmp    0x00007f041d2ec2a8  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@47 (line 84)

  0x00007f041d2ec291: mov    rsi,rax
  0x00007f041d2ec294: jmp    0x00007f041d2ec2a8  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@40 (line 83)

  0x00007f041d2ec296: mov    rsi,rax
  0x00007f041d2ec299: jmp    0x00007f041d2ec2a8  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@33 (line 82)

  0x00007f041d2ec29b: mov    rsi,rax
  0x00007f041d2ec29e: jmp    0x00007f041d2ec2a8  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@22 (line 81)

  0x00007f041d2ec2a0: mov    rsi,rax
  0x00007f041d2ec2a3: jmp    0x00007f041d2ec2a8  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@13 (line 80)

  0x00007f041d2ec2a5: mov    rsi,rax            ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@22 (line 81)

  0x00007f041d2ec2a8: add    rsp,0x20
  0x00007f041d2ec2ac: pop    rbp
  0x00007f041d2ec2ad: jmp    0x00007f041d2a81a0  ;   {runtime_call}
  0x00007f041d2ec2b2: mov    esi,0xfffffff6
  0x00007f041d2ec2b7: call   0x00007f041d0051a0  ; OopMap{off=476}
                                                ;*getfield v
                                                ; - Hash_LongPoint::reset@1 (line 79)
                                                ;   {runtime_call}
  0x00007f041d2ec2bc: call   0x00007f0433930320  ;*getfield v
                                                ; - Hash_LongPoint::reset@1 (line 79)
                                                ;   {runtime_call}
  0x00007f041d2ec2c1: mov    esi,0xfffffff6
  0x00007f041d2ec2c6: mov    rbp,QWORD PTR [rsp+0x8]
  0x00007f041d2ec2cb: call   0x00007f041d0051a0  ; OopMap{rbp=Oop off=496}
                                                ;*invokevirtual remove
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ;   {runtime_call}
  0x00007f041d2ec2d0: call   0x00007f0433930320  ;*invokevirtual remove
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ;   {runtime_call}
  0x00007f041d2ec2d5: mov    esi,0xffffff65
  0x00007f041d2ec2da: mov    QWORD PTR [rsp],rax
  0x00007f041d2ec2de: nop    
  0x00007f041d2ec2df: call   0x00007f041d0051a0  ; OopMap{[0]=Oop off=516}
                                                ;*ifnonnull
                                                ; - java.util.HashMap::remove@14 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ;   {runtime_call}
  0x00007f041d2ec2e4: call   0x00007f0433930320  ;*ifnonnull
                                                ; - java.util.HashMap::remove@14 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ;   {runtime_call}
  0x00007f041d2ec2e9: hlt    
  0x00007f041d2ec2ea: hlt    
  0x00007f041d2ec2eb: hlt    
  0x00007f041d2ec2ec: hlt    
  0x00007f041d2ec2ed: hlt    
  0x00007f041d2ec2ee: hlt    
  0x00007f041d2ec2ef: hlt    
  0x00007f041d2ec2f0: hlt    
  0x00007f041d2ec2f1: hlt    
  0x00007f041d2ec2f2: hlt    
  0x00007f041d2ec2f3: hlt    
  0x00007f041d2ec2f4: hlt    
  0x00007f041d2ec2f5: hlt    
  0x00007f041d2ec2f6: hlt    
  0x00007f041d2ec2f7: hlt    
  0x00007f041d2ec2f8: hlt    
  0x00007f041d2ec2f9: hlt    
  0x00007f041d2ec2fa: hlt    
  0x00007f041d2ec2fb: hlt    
  0x00007f041d2ec2fc: hlt    
  0x00007f041d2ec2fd: hlt    
  0x00007f041d2ec2fe: hlt    
  0x00007f041d2ec2ff: hlt    
[Stub Code]
  0x00007f041d2ec300: mov    rbx,0x0            ;   {no_reloc}
  0x00007f041d2ec30a: jmp    0x00007f041d2ec30a  ;   {runtime_call}
  0x00007f041d2ec30f: mov    rbx,0x0            ;   {static_stub}
  0x00007f041d2ec319: jmp    0x00007f041d2ec319  ;   {runtime_call}
  0x00007f041d2ec31e: mov    rbx,0x0            ;   {static_stub}
  0x00007f041d2ec328: jmp    0x00007f041d2ec328  ;   {runtime_call}
  0x00007f041d2ec32d: mov    rbx,0x0            ;   {static_stub}
  0x00007f041d2ec337: jmp    0x00007f041d2ec337  ;   {runtime_call}
  0x00007f041d2ec33c: mov    rbx,0x0            ;   {static_stub}
  0x00007f041d2ec346: jmp    0x00007f041d2ec346  ;   {runtime_call}
  0x00007f041d2ec34b: mov    rbx,0x0            ;   {static_stub}
  0x00007f041d2ec355: jmp    0x00007f041d2ec355  ;   {runtime_call}
  0x00007f041d2ec35a: mov    rbx,0x0            ;   {static_stub}
  0x00007f041d2ec364: jmp    0x00007f041d2ec364  ;   {runtime_call}
  0x00007f041d2ec369: mov    rbx,0x0            ;   {static_stub}
  0x00007f041d2ec373: jmp    0x00007f041d2ec373  ;   {runtime_call}
  0x00007f041d2ec378: mov    rbx,0x0            ;   {static_stub}
  0x00007f041d2ec382: jmp    0x00007f041d2ec382  ;   {runtime_call}
[Exception Handler]
  0x00007f041d2ec387: jmp    0x00007f041d06c3a0  ;   {runtime_call}
[Deopt Handler Code]
  0x00007f041d2ec38c: call   0x00007f041d2ec391
  0x00007f041d2ec391: sub    QWORD PTR [rsp],0x5
  0x00007f041d2ec396: jmp    0x00007f041d0473c0  ;   {runtime_call}
  0x00007f041d2ec39b: hlt    
  0x00007f041d2ec39c: hlt    
  0x00007f041d2ec39d: hlt    
  0x00007f041d2ec39e: hlt    
  0x00007f041d2ec39f: hlt    

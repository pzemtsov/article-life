  # {method} {0x00007f493fc03c20} 'hashCode' '()I' in 'LongPoint6'
  #           [sp+0x40]  (sp of caller)
  0x00007f49692c14e0: mov    r10d,DWORD PTR [rsi+0x8]
  0x00007f49692c14e4: shl    r10,0x3
  0x00007f49692c14e8: cmp    r10,rax
  0x00007f49692c14eb: jne    0x00007f4969045e20  ;   {runtime_call}
  0x00007f49692c14f1: nop    WORD PTR [rax+rax*1+0x0]
  0x00007f49692c14fc: xchg   ax,ax
[Verified Entry Point]
  0x00007f49692c1500: mov    DWORD PTR [rsp-0x14000],eax
  0x00007f49692c1507: push   rbp
  0x00007f49692c1508: sub    rsp,0x30           ;*aload_0
                                                ; - LongPoint6::hashCode@0 (line 21)

  0x00007f49692c150c: mov    rdi,QWORD PTR [rsi+0x10]  ;*getfield v
                                                ; - LongPoint6::hashCode@1 (line 21)

  0x00007f49692c1510: mov    rsi,rdi
  0x00007f49692c1513: mov    rdi,0x386fa527
  0x00007f49692c151d: mov    rbx,rdi
  0x00007f49692c1520: mov    rdi,rbx
  0x00007f49692c1523: cmp    rbx,0x0
  0x00007f49692c1527: je     0x00007f49692c1540
  0x00007f49692c152d: call   0x00007f497e8e9960  ;*lrem
                                                ; - LongPoint6::hashCode@7 (line 21)
                                                ;   {runtime_call}
  0x00007f49692c1532: mov    eax,eax
  0x00007f49692c1534: add    rsp,0x30
  0x00007f49692c1538: pop    rbp
  0x00007f49692c1539: test   DWORD PTR [rip+0x15e7dbc1],eax        # 0x00007f497f13f100
                                                ;   {poll_return}
  0x00007f49692c153f: ret    
  0x00007f49692c1540: call   0x00007f4969212ec0  ; OopMap{off=101}
                                                ;*lrem
                                                ; - LongPoint6::hashCode@7 (line 21)
                                                ;   {runtime_call}
  0x00007f49692c1545: nop    
  0x00007f49692c1546: nop    
  0x00007f49692c1547: mov    rax,QWORD PTR [r15+0x2a8]
  0x00007f49692c154e: mov    r10,0x0
  0x00007f49692c1558: mov    QWORD PTR [r15+0x2a8],r10
  0x00007f49692c155f: mov    r10,0x0
  0x00007f49692c1569: mov    QWORD PTR [r15+0x2b0],r10
  0x00007f49692c1570: add    rsp,0x30
  0x00007f49692c1574: pop    rbp
  0x00007f49692c1575: jmp    0x00007f496906c0e0  ;   {runtime_call}
  0x00007f49692c157a: hlt    
  0x00007f49692c157b: hlt    
  0x00007f49692c157c: hlt    
  0x00007f49692c157d: hlt    
  0x00007f49692c157e: hlt    
  0x00007f49692c157f: hlt    

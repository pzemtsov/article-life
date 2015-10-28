[Entry Point]
[Constants]
  # {method} {0x00007f2a7db541b8} 'step' '()V' in 'Hash_LongPoint'
  #           [sp+0xc0]  (sp of caller)
  0x00007f2aa5365840: mov    r10d,DWORD PTR [rsi+0x8]
  0x00007f2aa5365844: shl    r10,0x3
  0x00007f2aa5365848: cmp    rax,r10
  0x00007f2aa536584b: jne    0x00007f2aa5045e20  ;   {runtime_call}
  0x00007f2aa5365851: xchg   ax,ax
  0x00007f2aa5365854: nop    DWORD PTR [rax+rax*1+0x0]
  0x00007f2aa536585c: xchg   ax,ax
[Verified Entry Point]
  0x00007f2aa5365860: mov    DWORD PTR [rsp-0x14000],eax
  0x00007f2aa5365867: push   rbp
  0x00007f2aa5365868: sub    rsp,0xb0           ;*synchronization entry
                                                ; - Hash_LongPoint::step@-1 (line 100)

  0x00007f2aa536586f: mov    QWORD PTR [rsp],rsi
  0x00007f2aa5365873: mov    r11d,0xf80036d8    ;   {metadata('java/util/ArrayList')}
  0x00007f2aa5365879: mov    rbp,0x0
  0x00007f2aa5365883: lea    rbp,[rbp+r11*8+0x0]
  0x00007f2aa5365888: mov    r11,QWORD PTR [r15+0x60]
  0x00007f2aa536588c: mov    r10,r11
  0x00007f2aa536588f: add    r10,0x18
  0x00007f2aa5365893: cmp    r10,QWORD PTR [r15+0x70]
  0x00007f2aa5365897: jae    0x00007f2aa53676f8
  0x00007f2aa536589d: mov    QWORD PTR [r15+0x60],r10
  0x00007f2aa53658a1: prefetchnta BYTE PTR [r10+0xc0]
  0x00007f2aa53658a9: mov    r10,QWORD PTR [rbp+0xa8]
  0x00007f2aa53658b0: mov    QWORD PTR [r11],r10
  0x00007f2aa53658b3: mov    DWORD PTR [r11+0x8],0xf80036d8
                                                ;   {metadata('java/util/ArrayList')}
  0x00007f2aa53658bb: mov    DWORD PTR [r11+0xc],r12d
  0x00007f2aa53658bf: mov    DWORD PTR [r11+0x10],r12d
  0x00007f2aa53658c3: mov    DWORD PTR [r11+0x14],0xd00a027d
                                                ;*new  ; - Hash_LongPoint::step@0 (line 100)
                                                ;   {oop(a 'java/lang/Object'[0] )}
  0x00007f2aa53658cb: mov    r10,r11
  0x00007f2aa53658ce: shr    r10,0x9
  0x00007f2aa53658d2: mov    r8,0x7f2ab6fa4000
  0x00007f2aa53658dc: mov    BYTE PTR [r8+r10*1],r12b  ;*putfield elementData
                                                ; - java.util.ArrayList::<init>@8 (line 165)
                                                ; - Hash_LongPoint::step@4 (line 100)

  0x00007f2aa53658e0: mov    r8,QWORD PTR [r15+0x60]
  0x00007f2aa53658e4: mov    r10,r8
  0x00007f2aa53658e7: add    r10,0x18
  0x00007f2aa53658eb: cmp    r10,QWORD PTR [r15+0x70]
  0x00007f2aa53658ef: jae    0x00007f2aa5367710
  0x00007f2aa53658f5: mov    QWORD PTR [r15+0x60],r10
  0x00007f2aa53658f9: prefetchnta BYTE PTR [r10+0xc0]
  0x00007f2aa5365901: mov    r10,QWORD PTR [rbp+0xa8]
  0x00007f2aa5365908: mov    QWORD PTR [r8],r10
  0x00007f2aa536590b: mov    DWORD PTR [r8+0x8],0xf80036d8
                                                ;   {metadata('java/util/ArrayList')}
  0x00007f2aa5365913: mov    DWORD PTR [r8+0xc],r12d
  0x00007f2aa5365917: mov    DWORD PTR [r8+0x10],r12d
  0x00007f2aa536591b: mov    DWORD PTR [r8+0x14],0xd00a027d
                                                ;*new  ; - Hash_LongPoint::step@8 (line 101)
                                                ;   {oop(a 'java/lang/Object'[0] )}
  0x00007f2aa5365923: mov    r13,QWORD PTR [rsp]
  0x00007f2aa5365927: mov    r10d,DWORD PTR [r13+0x10]
                                                ;*getfield field
                                                ; - Hash_LongPoint::step@17 (line 102)

  0x00007f2aa536592b: mov    r9,r8
  0x00007f2aa536592e: shr    r9,0x9
  0x00007f2aa5365932: mov    rcx,0x7f2ab6fa4000
  0x00007f2aa536593c: mov    BYTE PTR [rcx+r9*1],r12b  ;*putfield elementData
                                                ; - java.util.ArrayList::<init>@8 (line 165)
                                                ; - Hash_LongPoint::step@12 (line 101)

  0x00007f2aa5365940: mov    ebp,DWORD PTR [r12+r10*8+0xc]
                                                ;*getfield map
                                                ; - java.util.HashSet::iterator@1 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ; implicit exception: dispatches to 0x00007f2aa5368441
  0x00007f2aa5365945: mov    r10d,DWORD PTR [r12+rbp*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa5368451
  0x00007f2aa536594a: cmp    r10d,0xf8003bd1    ;   {metadata('java/util/HashMap')}
  0x00007f2aa5365951: jne    0x00007f2aa5367b2a  ;*synchronization entry
                                                ; - java.util.HashMap::keySet@-1 (line 906)
                                                ; - java.util.HashSet::iterator@4 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365957: lea    rcx,[r12+rbp*8]    ;*invokevirtual keySet
                                                ; - java.util.HashSet::iterator@4 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa536595b: mov    r9d,DWORD PTR [rcx+0xc]  ;*getfield keySet
                                                ; - java.util.HashMap::keySet@1 (line 906)
                                                ; - java.util.HashSet::iterator@4 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa536595f: mov    r10d,0xf8008302    ;   {metadata('java/util/HashMap$KeySet')}
  0x00007f2aa5365965: mov    rdx,0x0
  0x00007f2aa536596f: lea    rdx,[rdx+r10*8]
  0x00007f2aa5365973: test   r9d,r9d
  0x00007f2aa5365976: je     0x00007f2aa536728c  ;*ifnonnull
                                                ; - java.util.HashMap::keySet@6 (line 906)
                                                ; - java.util.HashSet::iterator@4 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa536597c: lea    rbp,[r12+r9*8]     ;*areturn
                                                ; - java.util.HashMap::keySet@26 (line 906)
                                                ; - java.util.HashSet::iterator@4 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365980: mov    r10d,DWORD PTR [rbp+0x8]
  0x00007f2aa5365984: cmp    r10d,0xf8008302    ;   {metadata('java/util/HashMap$KeySet')}
  0x00007f2aa536598b: jne    0x00007f2aa5367b45  ;*invokeinterface iterator
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365991: mov    r10d,DWORD PTR [rbp+0xc]  ;*getfield this$0
                                                ; - java.util.HashMap$KeySet::iterator@5 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365995: mov    r9d,DWORD PTR [r12+r10*8+0x24]
                                                ;*getfield table
                                                ; - java.util.HashMap$HashIterator::<init>@18 (line 1413)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ; implicit exception: dispatches to 0x00007f2aa5368461
  0x00007f2aa536599a: mov    ecx,DWORD PTR [r12+r10*8+0x18]
                                                ;*getfield modCount
                                                ; - java.util.HashMap$HashIterator::<init>@11 (line 1412)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa536599f: mov    ebx,DWORD PTR [r12+r9*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap$HashIterator::<init>@53 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ; implicit exception: dispatches to 0x00007f2aa5368491
  0x00007f2aa53659a4: mov    ebp,DWORD PTR [r12+r10*8+0x14]
                                                ;*getfield size
                                                ; - java.util.HashMap$HashIterator::<init>@42 (line 1416)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa53659a9: test   ebp,ebp
  0x00007f2aa53659ab: jle    0x00007f2aa5367b89  ;*ifle
                                                ; - java.util.HashMap$HashIterator::<init>@45 (line 1416)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa53659b1: test   ebx,ebx
  0x00007f2aa53659b3: jle    0x00007f2aa5367bb5  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa53659b9: test   ebx,ebx
  0x00007f2aa53659bb: jbe    0x00007f2aa5367a64
  0x00007f2aa53659c1: mov    esi,ebx
  0x00007f2aa53659c3: dec    esi
  0x00007f2aa53659c5: cmp    esi,ebx
  0x00007f2aa53659c7: jae    0x00007f2aa5367a64  ;*aload_0
                                                ; - java.util.HashMap$HashIterator::<init>@57 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa53659cd: mov    edi,DWORD PTR [r12+r9*8+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa53659d2: test   edi,edi
  0x00007f2aa53659d4: jne    0x00007f2aa5367369  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa53659da: mov    eax,ebx
  0x00007f2aa53659dc: add    eax,0xfffffffffffffff9
  0x00007f2aa53659df: cmp    esi,eax
  0x00007f2aa53659e1: mov    esi,0x80000000
  0x00007f2aa53659e6: cmovl  eax,esi
  0x00007f2aa53659e9: lea    r14,[r12+r9*8]
  0x00007f2aa53659ed: cmp    eax,0x1
  0x00007f2aa53659f0: jle    0x00007f2aa5367b15
  0x00007f2aa53659f6: mov    esi,0x1
  0x00007f2aa53659fb: mov    ebp,r10d
  0x00007f2aa53659fe: xchg   ax,ax              ;*getfield index
                                                ; - java.util.HashMap$HashIterator::<init>@61 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a00: mov    edi,DWORD PTR [r14+rsi*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a05: test   edi,edi
  0x00007f2aa5365a07: jne    0x00007f2aa5365ac0  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a0d: movsxd r10,esi
  0x00007f2aa5365a10: mov    edi,DWORD PTR [r14+r10*4+0x14]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a15: test   edi,edi
  0x00007f2aa5365a17: jne    0x00007f2aa5365ac7  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a1d: mov    edi,DWORD PTR [r14+r10*4+0x18]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a22: test   edi,edi
  0x00007f2aa5365a24: jne    0x00007f2aa5365ab8  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a2a: mov    edi,DWORD PTR [r14+r10*4+0x1c]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a2f: test   edi,edi
  0x00007f2aa5365a31: jne    0x00007f2aa536727c  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a37: mov    edi,DWORD PTR [r14+r10*4+0x20]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a3c: test   edi,edi
  0x00007f2aa5365a3e: jne    0x00007f2aa5365abd  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a40: mov    edi,DWORD PTR [r14+r10*4+0x24]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a45: test   edi,edi
  0x00007f2aa5365a47: jne    0x00007f2aa5365ac4  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a49: mov    edi,DWORD PTR [r14+r10*4+0x28]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a4e: test   edi,edi
  0x00007f2aa5365a50: jne    0x00007f2aa5365ab5  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a52: mov    edi,DWORD PTR [r14+r10*4+0x2c]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a57: add    esi,0x8            ;*iadd
                                                ; - java.util.HashMap$HashIterator::<init>@66 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a5a: test   edi,edi
  0x00007f2aa5365a5c: jne    0x00007f2aa5365aca  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a5e: cmp    esi,eax
  0x00007f2aa5365a60: jl     0x00007f2aa5365a00  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a62: mov    r10d,ebp
  0x00007f2aa5365a65: mov    ebp,esi
  0x00007f2aa5365a67: cmp    ebp,ebx
  0x00007f2aa5365a69: jge    0x00007f2aa5365a7f
  0x00007f2aa5365a6b: nop                       ;*getfield index
                                                ; - java.util.HashMap$HashIterator::<init>@61 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a6c: mov    edi,DWORD PTR [r14+rbp*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a71: inc    ebp                ;*iadd
                                                ; - java.util.HashMap$HashIterator::<init>@66 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a73: test   edi,edi
  0x00007f2aa5365a75: jne    0x00007f2aa536790d  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a7b: cmp    ebp,ebx
  0x00007f2aa5365a7d: jl     0x00007f2aa5365a6c  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365a7f: mov    esi,0xffffff65
  0x00007f2aa5365a84: mov    QWORD PTR [rsp],r13
  0x00007f2aa5365a88: mov    QWORD PTR [rsp+0x8],r11
  0x00007f2aa5365a8d: mov    QWORD PTR [rsp+0x10],r8
  0x00007f2aa5365a92: mov    DWORD PTR [rsp+0x18],ecx
  0x00007f2aa5365a96: mov    DWORD PTR [rsp+0x20],edi
  0x00007f2aa5365a9a: mov    DWORD PTR [rsp+0x28],r10d
  0x00007f2aa5365a9f: mov    DWORD PTR [rsp+0x2c],r9d
  0x00007f2aa5365aa4: mov    DWORD PTR [rsp+0x30],ebx
  0x00007f2aa5365aa8: xchg   ax,ax
  0x00007f2aa5365aab: call   0x00007f2aa50051a0  ; OopMap{[0]=Oop [8]=Oop [16]=Oop [32]=NarrowOop [40]=NarrowOop [44]=NarrowOop off=624}
                                                ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5365ab0: call   0x00007f2abc3f1320  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5365ab5: add    esi,0x4
  0x00007f2aa5365ab8: add    esi,0x2
  0x00007f2aa5365abb: jmp    0x00007f2aa5365ac0
  0x00007f2aa5365abd: add    esi,0x4
  0x00007f2aa5365ac0: inc    esi
  0x00007f2aa5365ac2: jmp    0x00007f2aa5365aca
  0x00007f2aa5365ac4: add    esi,0x4
  0x00007f2aa5365ac7: add    esi,0x2            ;*iadd
                                                ; - java.util.HashMap$HashIterator::<init>@66 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365aca: mov    r10d,ebp
  0x00007f2aa5365acd: mov    QWORD PTR [rsp+0x80],r13
  0x00007f2aa5365ad5: mov    QWORD PTR [rsp+0x88],r11
  0x00007f2aa5365add: mov    QWORD PTR [rsp+0x70],r8
  0x00007f2aa5365ae2: mov    QWORD PTR [rsp+0x78],rdx
  0x00007f2aa5365ae7: mov    DWORD PTR [rsp+0x54],r10d
  0x00007f2aa5365aec: mov    DWORD PTR [rsp+0x90],ecx
  0x00007f2aa5365af3: mov    DWORD PTR [rsp+0x6c],edi
  0x00007f2aa5365af7: mov    DWORD PTR [rsp+0x48],esi  ;*synchronization entry
                                                ; - java.util.HashMap$KeySet::iterator@-1 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa5365afb: xor    r10d,r10d
  0x00007f2aa5365afe: mov    QWORD PTR [rsp+0x28],r10
  0x00007f2aa5365b03: jmp    0x00007f2aa5365d98
  0x00007f2aa5365b08: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365b0d: add    r10d,0x4           ;*iadd
                                                ; - java.util.HashMap$HashIterator::nextNode@86 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365b11: mov    DWORD PTR [rsp+0x48],r10d
  0x00007f2aa5365b16: jmp    0x00007f2aa5365c31  ;*aload_1
                                                ; - Hash_LongPoint::step@81 (line 104)

  0x00007f2aa5365b1b: mov    r10,QWORD PTR [rsp+0x88]
  0x00007f2aa5365b23: mov    ecx,DWORD PTR [r10+0x10]  ;*getfield size
                                                ; - java.util.ArrayList::add@2 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5365b27: mov    r11d,DWORD PTR [r10+0x14]
                                                ;*getfield elementData
                                                ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5365b2b: mov    DWORD PTR [rsp+0x30],r11d
  0x00007f2aa5365b30: mov    r11d,ecx
  0x00007f2aa5365b33: inc    r11d               ;*iadd
                                                ; - java.util.ArrayList::add@6 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5365b36: mov    r10d,DWORD PTR [rsp+0x30]
  0x00007f2aa5365b3b: cmp    r10d,0xd00a027d    ;   {oop(a 'java/lang/Object'[0] )}
  0x00007f2aa5365b42: je     0x00007f2aa5366453  ;*if_acmpne
                                                ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5365b48: mov    r9d,r11d           ;*aload_0
                                                ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5365b4b: mov    r10,QWORD PTR [rsp+0x88]
  0x00007f2aa5365b53: mov    ebx,DWORD PTR [r10+0xc]  ;*getfield modCount
                                                ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5365b57: inc    ebx
  0x00007f2aa5365b59: mov    DWORD PTR [r10+0xc],ebx  ;*putfield modCount
                                                ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5365b5d: mov    r10d,DWORD PTR [rsp+0x30]
  0x00007f2aa5365b62: mov    r10d,DWORD PTR [r12+r10*8+0xc]
                                                ;*arraylength
                                                ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ; implicit exception: dispatches to 0x00007f2aa5368271
  0x00007f2aa5365b67: mov    DWORD PTR [rsp],r10d
  0x00007f2aa5365b6b: mov    ebx,r9d
  0x00007f2aa5365b6e: sub    ebx,r10d
  0x00007f2aa5365b71: test   ebx,ebx
  0x00007f2aa5365b73: jg     0x00007f2aa5366121  ;*ifle
                                                ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5365b79: mov    r10,QWORD PTR [rsp+0x88]
  0x00007f2aa5365b81: mov    DWORD PTR [r10+0x10],r11d
                                                ;*putfield size
                                                ; - java.util.ArrayList::add@22 (line 459)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5365b85: mov    r11d,DWORD PTR [rsp+0x30]
  0x00007f2aa5365b8a: mov    rbx,r11
  0x00007f2aa5365b8d: shl    rbx,0x3            ;*return
                                                ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5365b91: mov    r11d,DWORD PTR [rbx+0xc]
  0x00007f2aa5365b95: cmp    ecx,r11d
  0x00007f2aa5365b98: jae    0x00007f2aa5367699
  0x00007f2aa5365b9e: mov    r11d,DWORD PTR [rbx+0x8]
  0x00007f2aa5365ba2: cmp    r11d,0xf80022ee    ;   {metadata('java/lang/Object'[])}
  0x00007f2aa5365ba9: jne    0x00007f2aa53676bd
  0x00007f2aa5365baf: lea    r10,[rbx+rcx*4+0x10]
  0x00007f2aa5365bb4: mov    r11,QWORD PTR [rsp+0x38]
  0x00007f2aa5365bb9: mov    r9,r11
  0x00007f2aa5365bbc: shr    r9,0x3
  0x00007f2aa5365bc0: mov    DWORD PTR [r10],r9d
  0x00007f2aa5365bc3: shr    r10,0x9
  0x00007f2aa5365bc7: mov    r11,0x7f2ab6fa4000
  0x00007f2aa5365bd1: mov    BYTE PTR [r11+r10*1],r12b
                                                ;*aastore
                                                ; - java.util.ArrayList::add@26 (line 459)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5365bd5: jmp    0x00007f2aa5365d72
  0x00007f2aa5365bda: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365bdf: add    r11d,0x4
  0x00007f2aa5365be3: mov    DWORD PTR [rsp+0x48],r11d
  0x00007f2aa5365be8: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365bed: add    r11d,0x2
  0x00007f2aa5365bf1: mov    DWORD PTR [rsp+0x48],r11d
  0x00007f2aa5365bf6: jmp    0x00007f2aa5365c06
  0x00007f2aa5365bf8: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365bfd: add    r11d,0x4
  0x00007f2aa5365c01: mov    DWORD PTR [rsp+0x48],r11d
  0x00007f2aa5365c06: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365c0b: inc    r11d
  0x00007f2aa5365c0e: mov    DWORD PTR [rsp+0x48],r11d
  0x00007f2aa5365c13: jmp    0x00007f2aa5365c31
  0x00007f2aa5365c15: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365c1a: add    r10d,0x4
  0x00007f2aa5365c1e: mov    DWORD PTR [rsp+0x48],r10d
  0x00007f2aa5365c23: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365c28: add    r10d,0x2           ;*iadd
                                                ; - java.util.HashMap$HashIterator::nextNode@86 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365c2c: mov    DWORD PTR [rsp+0x48],r10d
                                                ;*getfield index
                                                ; - java.util.HashMap$HashIterator::nextNode@69 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365c31: mov    r10d,DWORD PTR [rsp+0x6c]
  0x00007f2aa5365c36: mov    r10d,DWORD PTR [r12+r10*8+0x10]
                                                ;*getfield key
                                                ; - java.util.HashMap$KeyIterator::next@4 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365c3b: mov    r11d,DWORD PTR [r12+r10*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa536805d
  0x00007f2aa5365c40: cmp    r11d,0xf800c188    ;   {metadata('LongPoint6')}
  0x00007f2aa5365c47: jne    0x00007f2aa5367c7d  ;*checkcast
                                                ; - Hash_LongPoint::step@39 (line 102)

  0x00007f2aa5365c4d: mov    r11,QWORD PTR [rsp+0x80]
  0x00007f2aa5365c55: mov    r8d,DWORD PTR [r11+0x14]  ;*getfield counts
                                                ; - Hash_LongPoint::step@45 (line 103)

  0x00007f2aa5365c59: shl    r10,0x3            ;*checkcast
                                                ; - Hash_LongPoint::step@39 (line 102)

  0x00007f2aa5365c5d: mov    QWORD PTR [rsp+0x38],r10
  0x00007f2aa5365c62: mov    r11d,DWORD PTR [r12+r8*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa536806d
  0x00007f2aa5365c67: cmp    r11d,0xf8003bd1    ;   {metadata('java/util/HashMap')}
  0x00007f2aa5365c6e: jne    0x00007f2aa53674e0  ;*invokevirtual get
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365c74: mov    rbx,QWORD PTR [r10+0x10]  ;*getfield v
                                                ; - LongPoint6::hashCode@1 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::get@2 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365c78: mov    rax,0x2449f0232c624b0b
  0x00007f2aa5365c82: imul   rbx
  0x00007f2aa5365c85: lea    r10,[r12+r8*8]     ;*invokevirtual get
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365c89: mov    edi,DWORD PTR [r10+0x24]  ;*getfield table
                                                ; - java.util.HashMap::getNode@1 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365c8d: sar    rdx,0x1b
  0x00007f2aa5365c91: mov    r10,rbx
  0x00007f2aa5365c94: sar    r10,0x3f
  0x00007f2aa5365c98: sub    rdx,r10
  0x00007f2aa5365c9b: imul   r10,rdx,0x386fa527
  0x00007f2aa5365ca2: mov    r11,rbx
  0x00007f2aa5365ca5: sub    r11,r10
  0x00007f2aa5365ca8: mov    r9d,r11d           ;*l2i  ; - LongPoint6::hashCode@8 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::get@2 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365cab: mov    r10d,r9d
  0x00007f2aa5365cae: shr    r10d,0x10
  0x00007f2aa5365cb2: xor    r10d,r9d           ;*ixor
                                                ; - java.util.HashMap::hash@18 (line 338)
                                                ; - java.util.HashMap::get@2 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365cb5: mov    r11d,DWORD PTR [r12+rdi*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap::getNode@10 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ; implicit exception: dispatches to 0x00007f2aa53680b9
  0x00007f2aa5365cba: test   r11d,r11d
  0x00007f2aa5365cbd: jle    0x00007f2aa536757d  ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365cc3: mov    ecx,r11d
  0x00007f2aa5365cc6: dec    ecx
  0x00007f2aa5365cc8: and    ecx,r10d           ;*iand
                                                ; - java.util.HashMap::getNode@23 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365ccb: cmp    ecx,r11d
  0x00007f2aa5365cce: jae    0x00007f2aa53674a1
  0x00007f2aa5365cd4: lea    r11,[r12+rdi*8]
  0x00007f2aa5365cd8: mov    edx,DWORD PTR [r11+rcx*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365cdd: mov    r9d,DWORD PTR [rsp+0x6c]
  0x00007f2aa5365ce2: lea    r11,[r12+r9*8]     ;*getfield next
                                                ; - java.util.HashMap$HashIterator::nextNode@1 (line 1427)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365ce6: mov    QWORD PTR [rsp+0x28],r11
  0x00007f2aa5365ceb: test   edx,edx
  0x00007f2aa5365ced: je     0x00007f2aa5365b1b  ;*ifnull
                                                ; - java.util.HashMap::getNode@28 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365cf3: mov    r11d,DWORD PTR [r12+rdx*8+0xc]
  0x00007f2aa5365cf8: lea    rcx,[r12+rdx*8]    ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365cfc: cmp    r11d,r10d
  0x00007f2aa5365cff: jne    0x00007f2aa5365f53  ;*if_icmpne
                                                ; - java.util.HashMap::getNode@37 (line 570)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365d05: mov    r9d,DWORD PTR [r12+rdx*8+0x10]
                                                ;*getfield key
                                                ; - java.util.HashMap::getNode@42 (line 570)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365d0a: mov    r11,r9
  0x00007f2aa5365d0d: shl    r11,0x3
  0x00007f2aa5365d11: cmp    r11,QWORD PTR [rsp+0x38]
  0x00007f2aa5365d16: je     0x00007f2aa5365d3b  ;*if_acmpeq
                                                ; - java.util.HashMap::getNode@49 (line 570)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365d18: mov    r11d,DWORD PTR [r12+r9*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa53680dd
  0x00007f2aa5365d1d: cmp    r11d,0xf800c188    ;   {metadata('LongPoint6')}
  0x00007f2aa5365d24: jne    0x00007f2aa5367d89
  0x00007f2aa5365d2a: lea    r11,[r12+r9*8]     ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365d2e: mov    r11,QWORD PTR [r11+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365d32: cmp    r11,rbx
  0x00007f2aa5365d35: jne    0x00007f2aa5367665  ;*invokevirtual getNode
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365d3b: mov    r10d,DWORD PTR [rcx+0x14]
                                                ;*getfield value
                                                ; - java.util.HashMap::get@19 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365d3f: test   r10d,r10d
  0x00007f2aa5365d42: je     0x00007f2aa5365b1b
  0x00007f2aa5365d48: mov    r11d,DWORD PTR [r12+r10*8+0x8]
  0x00007f2aa5365d4d: cmp    r11d,0xf8002260    ;   {metadata('java/lang/Integer')}
  0x00007f2aa5365d54: jne    0x00007f2aa5367e0d
  0x00007f2aa5365d5a: lea    r11,[r12+r10*8]    ;*checkcast
                                                ; - Hash_LongPoint::step@53 (line 103)

  0x00007f2aa5365d5e: mov    r10d,0xfffffffe
  0x00007f2aa5365d64: add    r10d,DWORD PTR [r11+0xc]
  0x00007f2aa5365d68: cmp    r10d,0x2
  0x00007f2aa5365d6c: jae    0x00007f2aa5365b1b  ; OopMap{r8=NarrowOop [40]=Oop [76]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=1330}
                                                ;*goto
                                                ; - Hash_LongPoint::step@88 (line 105)

  0x00007f2aa5365d72: test   DWORD PTR [rip+0x17982288],eax        # 0x00007f2abcce8000
                                                ;*goto
                                                ; - Hash_LongPoint::step@88 (line 105)
                                                ;   {poll}
  0x00007f2aa5365d78: mov    r10d,DWORD PTR [rsp+0x4c]
  0x00007f2aa5365d7d: test   r10d,r10d
  0x00007f2aa5365d80: je     0x00007f2aa5366295
  0x00007f2aa5365d86: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5365d8b: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa5365d8f: mov    DWORD PTR [rsp+0x6c],eax
  0x00007f2aa5365d93: mov    rax,QWORD PTR [rsp-0x8]  ;*aload_3
                                                ; - Hash_LongPoint::step@33 (line 102)

  0x00007f2aa5365d98: mov    r10d,DWORD PTR [rsp+0x54]
  0x00007f2aa5365d9d: mov    r10d,DWORD PTR [r12+r10*8+0x18]
                                                ;*getfield modCount
                                                ; - java.util.HashMap$HashIterator::nextNode@9 (line 1428)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365da2: cmp    r10d,DWORD PTR [rsp+0x90]
  0x00007f2aa5365daa: jne    0x00007f2aa53675a5  ;*if_icmpeq
                                                ; - java.util.HashMap$HashIterator::nextNode@16 (line 1428)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365db0: mov    r11d,DWORD PTR [rsp+0x6c]
  0x00007f2aa5365db5: mov    r11d,DWORD PTR [r12+r11*8+0x18]
                                                ;*getfield next
                                                ; - java.util.HashMap$HashIterator::nextNode@46 (line 1432)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)
                                                ; implicit exception: dispatches to 0x00007f2aa53680a9
  0x00007f2aa5365dba: mov    DWORD PTR [rsp+0x4c],r11d
  0x00007f2aa5365dbf: test   r11d,r11d
  0x00007f2aa5365dc2: jne    0x00007f2aa5365c31  ;*ifnonnull
                                                ; - java.util.HashMap$HashIterator::nextNode@53 (line 1432)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365dc8: mov    r11d,DWORD PTR [rsp+0x54]
  0x00007f2aa5365dcd: mov    r10d,DWORD PTR [r12+r11*8+0x24]
                                                ;*getfield table
                                                ; - java.util.HashMap$HashIterator::nextNode@60 (line 1432)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365dd2: mov    ecx,DWORD PTR [r12+r10*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap$HashIterator::nextNode@73 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)
                                                ; implicit exception: dispatches to 0x00007f2aa5368101
  0x00007f2aa5365dd7: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365ddc: cmp    r11d,ecx
  0x00007f2aa5365ddf: jge    0x00007f2aa5365c31  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::nextNode@74 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365de5: cmp    r11d,ecx
  0x00007f2aa5365de8: jae    0x00007f2aa53674f9
  0x00007f2aa5365dee: mov    r11d,ecx
  0x00007f2aa5365df1: dec    r11d
  0x00007f2aa5365df4: cmp    r11d,ecx
  0x00007f2aa5365df7: jae    0x00007f2aa53674f9
  0x00007f2aa5365dfd: mov    r9d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365e02: inc    r9d
  0x00007f2aa5365e05: lea    r8,[r12+r10*8]     ;*getfield index
                                                ; - java.util.HashMap$HashIterator::nextNode@81 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e09: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365e0e: mov    ebx,DWORD PTR [r8+r10*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e13: mov    DWORD PTR [rsp+0x4c],ebx
  0x00007f2aa5365e17: inc    r10d               ;*iadd
                                                ; - java.util.HashMap$HashIterator::nextNode@86 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e1a: mov    DWORD PTR [rsp+0x48],r10d
  0x00007f2aa5365e1f: test   ebx,ebx
  0x00007f2aa5365e21: jne    0x00007f2aa5365c31  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e27: cmp    r10d,r9d
  0x00007f2aa5365e2a: jl     0x00007f2aa5365e09  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::nextNode@74 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e2c: mov    r9d,ecx
  0x00007f2aa5365e2f: add    r9d,0xfffffffffffffff9
  0x00007f2aa5365e33: cmp    r11d,r9d
  0x00007f2aa5365e36: mov    r11d,0x80000000
  0x00007f2aa5365e3c: cmovl  r9d,r11d
  0x00007f2aa5365e40: cmp    r10d,r9d
  0x00007f2aa5365e43: jge    0x00007f2aa5365f0a
  0x00007f2aa5365e49: mov    r11d,r10d
  0x00007f2aa5365e4c: mov    DWORD PTR [rsp+0x48],r11d
                                                ;*getfield index
                                                ; - java.util.HashMap$HashIterator::nextNode@81 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e51: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365e56: mov    r10d,DWORD PTR [r8+r10*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e5b: mov    DWORD PTR [rsp+0x4c],r10d
  0x00007f2aa5365e60: test   r10d,r10d
  0x00007f2aa5365e63: jne    0x00007f2aa5365c06  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e69: movsxd rbx,DWORD PTR [rsp+0x48]
  0x00007f2aa5365e6e: mov    r11d,DWORD PTR [r8+rbx*4+0x14]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e73: mov    DWORD PTR [rsp+0x4c],r11d
  0x00007f2aa5365e78: test   r11d,r11d
  0x00007f2aa5365e7b: jne    0x00007f2aa5365c23  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e81: mov    r10d,DWORD PTR [r8+rbx*4+0x18]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e86: mov    DWORD PTR [rsp+0x4c],r10d
  0x00007f2aa5365e8b: test   r10d,r10d
  0x00007f2aa5365e8e: jne    0x00007f2aa5365be8  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e94: mov    r11d,DWORD PTR [r8+rbx*4+0x1c]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365e99: mov    DWORD PTR [rsp+0x4c],r11d
  0x00007f2aa5365e9e: test   r11d,r11d
  0x00007f2aa5365ea1: jne    0x00007f2aa5365b08  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365ea7: mov    r10d,DWORD PTR [r8+rbx*4+0x20]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365eac: mov    DWORD PTR [rsp+0x4c],r10d
  0x00007f2aa5365eb1: test   r10d,r10d
  0x00007f2aa5365eb4: jne    0x00007f2aa5365bf8  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365eba: mov    r11d,DWORD PTR [r8+rbx*4+0x24]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365ebf: mov    DWORD PTR [rsp+0x4c],r11d
  0x00007f2aa5365ec4: test   r11d,r11d
  0x00007f2aa5365ec7: jne    0x00007f2aa5365c15  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365ecd: mov    r10d,DWORD PTR [r8+rbx*4+0x28]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365ed2: mov    DWORD PTR [rsp+0x4c],r10d
  0x00007f2aa5365ed7: test   r10d,r10d
  0x00007f2aa5365eda: jne    0x00007f2aa5365bda  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365ee0: mov    r11d,DWORD PTR [r8+rbx*4+0x2c]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365ee5: mov    DWORD PTR [rsp+0x4c],r11d
  0x00007f2aa5365eea: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365eef: add    r10d,0x8           ;*iadd
                                                ; - java.util.HashMap$HashIterator::nextNode@86 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365ef3: mov    DWORD PTR [rsp+0x48],r10d
  0x00007f2aa5365ef8: test   r11d,r11d
  0x00007f2aa5365efb: jne    0x00007f2aa5365c31  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365f01: cmp    r10d,r9d
  0x00007f2aa5365f04: jl     0x00007f2aa5365e51  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::nextNode@74 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365f0a: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365f0f: cmp    r10d,ecx
  0x00007f2aa5365f12: jge    0x00007f2aa5365c31
  0x00007f2aa5365f18: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365f1d: mov    DWORD PTR [rsp+0x48],r11d
  0x00007f2aa5365f22: xchg   ax,ax              ;*getfield index
                                                ; - java.util.HashMap$HashIterator::nextNode@81 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365f24: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365f29: mov    r10d,DWORD PTR [r8+r10*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365f2e: mov    DWORD PTR [rsp+0x4c],r10d
  0x00007f2aa5365f33: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5365f38: inc    r11d               ;*iadd
                                                ; - java.util.HashMap$HashIterator::nextNode@86 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365f3b: mov    DWORD PTR [rsp+0x48],r11d
  0x00007f2aa5365f40: test   r10d,r10d
  0x00007f2aa5365f43: jne    0x00007f2aa5365c31  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365f49: cmp    r11d,ecx
  0x00007f2aa5365f4c: jl     0x00007f2aa5365f24  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::nextNode@74 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)

  0x00007f2aa5365f4e: jmp    0x00007f2aa5365c31
  0x00007f2aa5365f53: mov    edi,DWORD PTR [r12+rdx*8+0x18]
                                                ;*getfield next
                                                ; - java.util.HashMap::getNode@70 (line 573)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365f58: test   edi,edi
  0x00007f2aa5365f5a: je     0x00007f2aa5365b1b  ;*ifnull
                                                ; - java.util.HashMap::getNode@76 (line 573)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365f60: mov    r9d,DWORD PTR [r12+rdx*8+0x8]
  0x00007f2aa5365f65: cmp    r9d,0xf8006464     ;   {metadata('java/util/HashMap$TreeNode')}
  0x00007f2aa5365f6c: jne    0x00007f2aa5366079  ;*checkcast
                                                ; - java.util.HashMap::getNode@89 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365f72: mov    r11d,DWORD PTR [rcx+0x28]
                                                ;*getfield parent
                                                ; - java.util.HashMap$TreeNode::getTreeNode@1 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365f76: test   r11d,r11d
  0x00007f2aa5365f79: je     0x00007f2aa5365fc3  ;*synchronization entry
                                                ; - java.util.HashMap$TreeNode::getTreeNode@-1 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365f7b: mov    esi,0xffffff65
  0x00007f2aa5365f80: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5365f85: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5365f8a: mov    QWORD PTR [rsp+0x18],rcx
  0x00007f2aa5365f8f: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5365f94: mov    DWORD PTR [rsp+0x24],r11d
  0x00007f2aa5365f99: xchg   ax,ax
  0x00007f2aa5365f9b: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [24]=Oop [36]=NarrowOop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=1888}
                                                ;*ifnull
                                                ; - java.util.HashMap$TreeNode::getTreeNode@4 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa5365fa0: call   0x00007f2abc3f1320  ;*ifnull
                                                ; - java.util.HashMap$TreeNode::getTreeNode@4 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa5365fa5: mov    r11d,r9d
  0x00007f2aa5365fa8: nop    DWORD PTR [rax+rax*1+0x0]
                                                ; OopMap{r11=NarrowOop r8=NarrowOop [40]=Oop [56]=Oop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=1904}
                                                ;*ifnonnull
                                                ; - java.util.HashMap$TreeNode::find@167 (line 1865)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365fb0: test   DWORD PTR [rip+0x1798204a],eax        # 0x00007f2abcce8000
                                                ;   {poll}
  0x00007f2aa5365fb6: test   r11d,r11d
  0x00007f2aa5365fb9: je     0x00007f2aa5365b1b  ;*ifnonnull
                                                ; - java.util.HashMap$TreeNode::find@167 (line 1865)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365fbf: lea    rcx,[r12+r11*8]    ;*aload
                                                ; - java.util.HashMap$TreeNode::find@3 (line 1846)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365fc3: mov    edi,DWORD PTR [rcx+0xc]  ;*getfield hash
                                                ; - java.util.HashMap$TreeNode::find@19 (line 1847)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365fc6: mov    r9d,DWORD PTR [rcx+0x2c]  ;*getfield left
                                                ; - java.util.HashMap$TreeNode::find@5 (line 1846)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365fca: cmp    edi,r10d
  0x00007f2aa5365fcd: jg     0x00007f2aa5365fa5  ;*if_icmple
                                                ; - java.util.HashMap$TreeNode::find@26 (line 1847)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365fcf: mov    r11d,DWORD PTR [rcx+0x30]
                                                ;*getfield right
                                                ; - java.util.HashMap$TreeNode::find@12 (line 1846)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365fd3: cmp    edi,r10d
  0x00007f2aa5365fd6: jl     0x00007f2aa5365fb0  ;*if_icmpge
                                                ; - java.util.HashMap$TreeNode::find@39 (line 1849)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365fd8: mov    edx,DWORD PTR [rcx+0x10]  ;*getfield key
                                                ; - java.util.HashMap$TreeNode::find@51 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365fdb: mov    rdi,rdx
  0x00007f2aa5365fde: shl    rdi,0x3
  0x00007f2aa5365fe2: cmp    rdi,QWORD PTR [rsp+0x38]
  0x00007f2aa5365fe7: je     0x00007f2aa5365d3b  ;*if_acmpeq
                                                ; - java.util.HashMap$TreeNode::find@58 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5365fed: mov    edi,DWORD PTR [r12+rdx*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa5368295
  0x00007f2aa5365ff2: cmp    edi,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f2aa5365ff8: jne    0x00007f2aa5367d21
  0x00007f2aa5365ffe: lea    rdi,[r12+rdx*8]    ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5366002: mov    rdi,QWORD PTR [rdi+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5366006: cmp    rdi,rbx
  0x00007f2aa5366009: je     0x00007f2aa5365d3b  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa536600f: cmp    rdi,rbx
  0x00007f2aa5366012: mov    ebp,0xffffffff
  0x00007f2aa5366017: jl     0x00007f2aa5366021
  0x00007f2aa5366019: setne  bpl
  0x00007f2aa536601d: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5366021: mov    esi,0xffffff65
  0x00007f2aa5366026: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa536602b: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa5366030: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5366035: mov    QWORD PTR [rsp+0x30],rcx
  0x00007f2aa536603a: mov    DWORD PTR [rsp+0x24],edx
  0x00007f2aa536603e: mov    DWORD PTR [rsp+0x38],r9d
  0x00007f2aa5366043: mov    DWORD PTR [rsp+0x3c],r11d
  0x00007f2aa5366048: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536604d: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5366051: mov    DWORD PTR [rsp+0x44],eax
  0x00007f2aa5366055: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536605a: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536605f: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa5366063: mov    DWORD PTR [rsp+0x48],eax
  0x00007f2aa5366067: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536606c: xchg   ax,ax
  0x00007f2aa536606f: call   0x00007f2aa50051a0  ; OopMap{[24]=Oop [36]=NarrowOop [48]=Oop [56]=NarrowOop [60]=NarrowOop [72]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=2100}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa5366074: call   0x00007f2abc3f1320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa5366079: lea    rcx,[r12+rdi*8]    ;*aload
                                                ; - java.util.HashMap::getNode@98 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa536607d: mov    r9d,DWORD PTR [rcx+0xc]
  0x00007f2aa5366081: cmp    r9d,r10d
  0x00007f2aa5366084: je     0x00007f2aa536609f  ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5366086: mov    r11d,DWORD PTR [rcx+0x18]
                                                ; OopMap{r11=NarrowOop r8=NarrowOop [40]=Oop [56]=Oop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=2122}
                                                ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa536608a: test   DWORD PTR [rip+0x17981f70],eax        # 0x00007f2abcce8000
                                                ;   {poll}
  0x00007f2aa5366090: test   r11d,r11d
  0x00007f2aa5366093: je     0x00007f2aa5365b1b  ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5366099: lea    rcx,[r12+r11*8]    ;*getfield next
                                                ; - java.util.HashMap::getNode@137 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa536609d: jmp    0x00007f2aa536607d
  0x00007f2aa536609f: mov    ebp,DWORD PTR [rcx+0x10]  ;*getfield key
                                                ; - java.util.HashMap::getNode@109 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa53660a2: mov    r11,rbp
  0x00007f2aa53660a5: shl    r11,0x3
  0x00007f2aa53660a9: cmp    r11,QWORD PTR [rsp+0x38]
  0x00007f2aa53660ae: je     0x00007f2aa5365d3b  ;*if_acmpeq
                                                ; - java.util.HashMap::getNode@116 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa53660b4: mov    r11d,DWORD PTR [r12+rbp*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa53683c1
  0x00007f2aa53660b9: cmp    r11d,0xf800c188    ;   {metadata('LongPoint6')}
  0x00007f2aa53660c0: jne    0x00007f2aa5367dc5
  0x00007f2aa53660c6: lea    r11,[r12+rbp*8]    ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa53660ca: mov    r11,QWORD PTR [r11+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa53660ce: cmp    r11,rbx
  0x00007f2aa53660d1: je     0x00007f2aa5365d3b  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa53660d7: cmp    r11,rbx
  0x00007f2aa53660da: mov    ebp,0xffffffff
  0x00007f2aa53660df: jl     0x00007f2aa53660e9
  0x00007f2aa53660e1: setne  bpl
  0x00007f2aa53660e5: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa53660e9: mov    esi,0xffffff65
  0x00007f2aa53660ee: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53660f3: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa53660f8: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa53660fd: mov    QWORD PTR [rsp+0x30],rcx
  0x00007f2aa5366102: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366107: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa536610b: mov    DWORD PTR [rsp+0x38],eax
  0x00007f2aa536610f: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366114: xchg   ax,ax
  0x00007f2aa5366117: call   0x00007f2aa50051a0  ; OopMap{[24]=Oop [48]=Oop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=2268}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa536611c: call   0x00007f2abc3f1320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa5366121: sar    r10d,1
  0x00007f2aa5366124: add    r10d,DWORD PTR [rsp]  ;*iadd
                                                ; - java.util.ArrayList::grow@10 (line 255)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5366128: mov    DWORD PTR [rsp+0x50],r10d
  0x00007f2aa536612d: mov    r11d,r10d
  0x00007f2aa5366130: sub    r11d,r9d
  0x00007f2aa5366133: test   r11d,r11d
  0x00007f2aa5366136: jl     0x00007f2aa5366449  ;*iload_3
                                                ; - java.util.ArrayList::grow@20 (line 258)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa536613c: mov    ebp,DWORD PTR [rsp+0x50]
  0x00007f2aa5366140: add    ebp,0x80000009     ;*isub
                                                ; - java.util.ArrayList::grow@23 (line 258)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5366146: test   ebp,ebp
  0x00007f2aa5366148: jg     0x00007f2aa53679a9  ;*ifle
                                                ; - java.util.ArrayList::grow@24 (line 258)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa536614e: mov    r10d,DWORD PTR [rsp+0x30]
  0x00007f2aa5366153: mov    r8d,DWORD PTR [r12+r10*8+0x8]
  0x00007f2aa5366158: mov    rsi,0x0
  0x00007f2aa5366162: lea    rsi,[rsi+r8*8]
  0x00007f2aa5366166: mov    r9,QWORD PTR [rsi+0x68]  ;*invokevirtual getClass
                                                ; - java.util.Arrays::copyOf@3 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa536616a: mov    r11d,DWORD PTR [rsp+0x50]
  0x00007f2aa536616f: test   r11d,r11d
  0x00007f2aa5366172: jl     0x00007f2aa5367960  ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5366178: movsxd r11,DWORD PTR [rsp+0x50]
  0x00007f2aa536617d: lea    rbp,[r12+r10*8]    ;*getfield elementData
                                                ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5366181: shl    r11,0x2
  0x00007f2aa5366185: add    r11,0x17
  0x00007f2aa5366189: mov    QWORD PTR [rsp+0x8],r11
  0x00007f2aa536618e: mov    r11d,DWORD PTR [rsp+0x50]
  0x00007f2aa5366193: cmp    r11d,0x40000
  0x00007f2aa536619a: ja     0x00007f2aa53674c9
  0x00007f2aa53661a0: mov    rbx,QWORD PTR [r15+0x60]
  0x00007f2aa53661a4: mov    r10,QWORD PTR [rsp+0x8]
  0x00007f2aa53661a9: and    r10,0xfffffffffffffff8
  0x00007f2aa53661ad: mov    r11,rbx
  0x00007f2aa53661b0: add    r11,r10
  0x00007f2aa53661b3: cmp    r11,QWORD PTR [r15+0x70]
  0x00007f2aa53661b7: jae    0x00007f2aa53674c9
  0x00007f2aa53661bd: mov    QWORD PTR [r15+0x60],r11
  0x00007f2aa53661c1: prefetchnta BYTE PTR [r11+0xc0]
  0x00007f2aa53661c9: mov    QWORD PTR [rbx],0x1
  0x00007f2aa53661d0: mov    DWORD PTR [rbx+0x8],r8d
  0x00007f2aa53661d4: mov    r8d,DWORD PTR [rsp+0x50]
  0x00007f2aa53661d9: mov    DWORD PTR [rbx+0xc],r8d
  0x00007f2aa53661dd: prefetchnta BYTE PTR [r11+0x100]
  0x00007f2aa53661e5: prefetchnta BYTE PTR [r11+0x140]
  0x00007f2aa53661ed: prefetchnta BYTE PTR [r11+0x180]
  0x00007f2aa53661f5: mov    r10d,DWORD PTR [rsp]
  0x00007f2aa53661f9: cmp    r10d,DWORD PTR [rsp+0x50]
  0x00007f2aa53661fe: mov    r10d,DWORD PTR [rsp+0x50]
  0x00007f2aa5366203: cmovl  r10d,DWORD PTR [rsp]
  0x00007f2aa5366208: mov    rsi,rbx
  0x00007f2aa536620b: add    rsi,0x10
  0x00007f2aa536620f: mov    r8,QWORD PTR [rsp+0x8]
  0x00007f2aa5366214: shr    r8,0x3
  0x00007f2aa5366218: test   r10d,r10d
  0x00007f2aa536621b: je     0x00007f2aa5367948
  0x00007f2aa5366221: movsxd rdx,r10d
  0x00007f2aa5366224: cmp    r10d,DWORD PTR [rsp+0x50]
  0x00007f2aa5366229: jl     0x00007f2aa5367388
  0x00007f2aa536622f: mov    r11d,DWORD PTR [rsp+0x30]
  0x00007f2aa5366234: lea    rdi,[r12+r11*8+0x10]
  0x00007f2aa5366239: mov    r10,0x7f2aa50524c0
  0x00007f2aa5366243: call   r10                ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5366246: mov    r10,QWORD PTR [rsp+0x80]
  0x00007f2aa536624e: mov    r8d,DWORD PTR [r10+0x14]  ;*getfield counts
                                                ; - Hash_LongPoint::step@92 (line 106)

  0x00007f2aa5366252: mov    r10,QWORD PTR [rsp+0x88]
  0x00007f2aa536625a: mov    ecx,DWORD PTR [r10+0x10]  ;*getfield size
                                                ; - java.util.ArrayList::add@16 (line 459)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa536625e: mov    r10,rbx
  0x00007f2aa5366261: shr    r10,0x3
  0x00007f2aa5366265: mov    r11,QWORD PTR [rsp+0x88]
  0x00007f2aa536626d: mov    DWORD PTR [r11+0x14],r10d
                                                ;*putfield elementData
                                                ; - java.util.ArrayList::grow@41 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5366271: mov    r10d,ecx
  0x00007f2aa5366274: inc    r10d
  0x00007f2aa5366277: mov    DWORD PTR [r11+0x10],r10d
                                                ;*putfield size
                                                ; - java.util.ArrayList::add@22 (line 459)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa536627b: mov    r10,r11
  0x00007f2aa536627e: shr    r10,0x9
  0x00007f2aa5366282: mov    r11,0x7f2ab6fa4000
  0x00007f2aa536628c: mov    BYTE PTR [r11+r10*1],r12b
                                                ;*putfield elementData
                                                ; - java.util.ArrayList::grow@41 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5366290: jmp    0x00007f2aa5365b91
  0x00007f2aa5366295: mov    r10d,DWORD PTR [r12+r8*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa5368471
  0x00007f2aa536629a: cmp    r10d,0xf8003bd1    ;   {metadata('java/util/HashMap')}
  0x00007f2aa53662a1: jne    0x00007f2aa5367b65  ;*synchronization entry
                                                ; - java.util.HashMap::keySet@-1 (line 906)
                                                ; - Hash_LongPoint::step@95 (line 106)

  0x00007f2aa53662a7: shl    r8,0x3             ;*invokevirtual keySet
                                                ; - Hash_LongPoint::step@95 (line 106)

  0x00007f2aa53662ab: mov    r11d,DWORD PTR [r8+0xc]  ;*getfield keySet
                                                ; - java.util.HashMap::keySet@1 (line 906)
                                                ; - Hash_LongPoint::step@95 (line 106)

  0x00007f2aa53662af: test   r11d,r11d
  0x00007f2aa53662b2: je     0x00007f2aa53672f6  ;*ifnonnull
                                                ; - java.util.HashMap::keySet@6 (line 906)
                                                ; - Hash_LongPoint::step@95 (line 106)

  0x00007f2aa53662b8: lea    rbp,[r12+r11*8]    ;*areturn
                                                ; - java.util.HashMap::keySet@26 (line 906)
                                                ; - Hash_LongPoint::step@95 (line 106)

  0x00007f2aa53662bc: mov    r10d,DWORD PTR [rbp+0x8]
  0x00007f2aa53662c0: cmp    r10d,0xf8008302    ;   {metadata('java/util/HashMap$KeySet')}
  0x00007f2aa53662c7: jne    0x00007f2aa5367b79  ;*invokeinterface iterator
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53662cd: mov    r10d,DWORD PTR [rbp+0xc]  ;*getfield this$0
                                                ; - java.util.HashMap$KeySet::iterator@5 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53662d1: mov    r11d,DWORD PTR [r12+r10*8+0x24]
                                                ;*getfield table
                                                ; - java.util.HashMap$HashIterator::<init>@18 (line 1413)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ; implicit exception: dispatches to 0x00007f2aa5368481
  0x00007f2aa53662d6: mov    ecx,DWORD PTR [r12+r10*8+0x18]
                                                ;*getfield modCount
                                                ; - java.util.HashMap$HashIterator::<init>@11 (line 1412)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53662db: mov    r8d,DWORD PTR [r12+r11*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap$HashIterator::<init>@53 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ; implicit exception: dispatches to 0x00007f2aa53684c1
  0x00007f2aa53662e0: mov    ebp,DWORD PTR [r12+r10*8+0x14]
                                                ;*getfield size
                                                ; - java.util.HashMap$HashIterator::<init>@42 (line 1416)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53662e5: test   ebp,ebp
  0x00007f2aa53662e7: jle    0x00007f2aa5367be5  ;*ifle
                                                ; - java.util.HashMap$HashIterator::<init>@45 (line 1416)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53662ed: test   r8d,r8d
  0x00007f2aa53662f0: jle    0x00007f2aa5367c05  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53662f6: test   r8d,r8d
  0x00007f2aa53662f9: jbe    0x00007f2aa5367af5
  0x00007f2aa53662ff: mov    r9d,r8d
  0x00007f2aa5366302: dec    r9d
  0x00007f2aa5366305: cmp    r9d,r8d
  0x00007f2aa5366308: jae    0x00007f2aa5367af5  ;*aload_0
                                                ; - java.util.HashMap$HashIterator::<init>@57 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa536630e: mov    DWORD PTR [rsp+0x44],ecx
  0x00007f2aa5366312: mov    DWORD PTR [rsp+0x54],r10d
  0x00007f2aa5366317: mov    ecx,DWORD PTR [r12+r11*8+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa536631c: mov    DWORD PTR [rsp+0x50],ecx
  0x00007f2aa5366320: test   ecx,ecx
  0x00007f2aa5366322: jne    0x00007f2aa5367373  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa5366328: mov    r10d,r8d
  0x00007f2aa536632b: add    r10d,0xfffffffffffffff9
  0x00007f2aa536632f: cmp    r9d,r10d
  0x00007f2aa5366332: mov    ecx,0x80000000
  0x00007f2aa5366337: cmovl  r10d,ecx
  0x00007f2aa536633b: lea    rbx,[r12+r11*8]
  0x00007f2aa536633f: cmp    r10d,0x1
  0x00007f2aa5366343: jle    0x00007f2aa5367b1f
  0x00007f2aa5366349: mov    edi,0x1
  0x00007f2aa536634e: xchg   ax,ax              ;*getfield index
                                                ; - java.util.HashMap$HashIterator::<init>@61 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa5366350: mov    r9d,DWORD PTR [rbx+rdi*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa5366355: mov    DWORD PTR [rsp+0x50],r9d
  0x00007f2aa536635a: test   r9d,r9d
  0x00007f2aa536635d: jne    0x00007f2aa5366473  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa5366363: movsxd rdx,edi
  0x00007f2aa5366366: mov    ecx,DWORD PTR [rbx+rdx*4+0x14]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa536636a: mov    DWORD PTR [rsp+0x50],ecx
  0x00007f2aa536636e: test   ecx,ecx
  0x00007f2aa5366370: jne    0x00007f2aa536647a  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa5366376: mov    r9d,DWORD PTR [rbx+rdx*4+0x18]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa536637b: mov    DWORD PTR [rsp+0x50],r9d
  0x00007f2aa5366380: test   r9d,r9d
  0x00007f2aa5366383: jne    0x00007f2aa536646b  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa5366389: mov    ecx,DWORD PTR [rbx+rdx*4+0x1c]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa536638d: mov    DWORD PTR [rsp+0x50],ecx
  0x00007f2aa5366391: test   ecx,ecx
  0x00007f2aa5366393: jne    0x00007f2aa5367284  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa5366399: mov    r9d,DWORD PTR [rbx+rdx*4+0x20]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa536639e: mov    DWORD PTR [rsp+0x50],r9d
  0x00007f2aa53663a3: test   r9d,r9d
  0x00007f2aa53663a6: jne    0x00007f2aa5366470  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53663ac: mov    ecx,DWORD PTR [rbx+rdx*4+0x24]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53663b0: mov    DWORD PTR [rsp+0x50],ecx
  0x00007f2aa53663b4: test   ecx,ecx
  0x00007f2aa53663b6: jne    0x00007f2aa5366477  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53663bc: mov    r9d,DWORD PTR [rbx+rdx*4+0x28]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53663c1: mov    DWORD PTR [rsp+0x50],r9d
  0x00007f2aa53663c6: test   r9d,r9d
  0x00007f2aa53663c9: jne    0x00007f2aa5366468  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53663cf: mov    ecx,DWORD PTR [rbx+rdx*4+0x2c]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53663d3: mov    DWORD PTR [rsp+0x50],ecx
  0x00007f2aa53663d7: add    edi,0x8            ;*iadd
                                                ; - java.util.HashMap$HashIterator::<init>@66 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53663da: test   ecx,ecx
  0x00007f2aa53663dc: jne    0x00007f2aa536647d  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53663e2: cmp    edi,r10d
  0x00007f2aa53663e5: jl     0x00007f2aa5366350  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53663eb: mov    r9d,edi
  0x00007f2aa53663ee: cmp    r9d,r8d
  0x00007f2aa53663f1: jge    0x00007f2aa5366418
  0x00007f2aa53663f3: nop                       ;*getfield index
                                                ; - java.util.HashMap$HashIterator::<init>@61 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53663f4: mov    r10d,DWORD PTR [rbx+r9*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::<init>@70 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa53663f9: mov    DWORD PTR [rsp+0x50],r10d
  0x00007f2aa53663fe: mov    r10d,r9d
  0x00007f2aa5366401: inc    r10d               ;*iadd
                                                ; - java.util.HashMap$HashIterator::<init>@66 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa5366404: mov    r9d,r10d
  0x00007f2aa5366407: mov    ecx,DWORD PTR [rsp+0x50]
  0x00007f2aa536640b: test   ecx,ecx
  0x00007f2aa536640d: jne    0x00007f2aa5367940  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@75 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa5366413: cmp    r10d,r8d
  0x00007f2aa5366416: jl     0x00007f2aa53663f4  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa5366418: mov    esi,0xffffff65
  0x00007f2aa536641d: mov    DWORD PTR [rsp+0x18],r9d
  0x00007f2aa5366422: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366427: mov    eax,DWORD PTR [rsp+0x54]
  0x00007f2aa536642b: mov    DWORD PTR [rsp+0x20],eax
  0x00007f2aa536642f: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366434: mov    DWORD PTR [rsp+0x28],r11d
  0x00007f2aa5366439: mov    DWORD PTR [rsp+0x2c],r8d
  0x00007f2aa536643e: nop    
  0x00007f2aa536643f: call   0x00007f2aa50051a0  ; OopMap{[32]=NarrowOop [40]=NarrowOop [80]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=3076}
                                                ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5366444: call   0x00007f2abc3f1320  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5366449: mov    DWORD PTR [rsp+0x50],r9d
  0x00007f2aa536644e: jmp    0x00007f2aa536613c
  0x00007f2aa5366453: cmp    r11d,0xa
  0x00007f2aa5366457: mov    r9d,r11d
  0x00007f2aa536645a: mov    ebx,0xa
  0x00007f2aa536645f: cmovle r9d,ebx            ;*invokestatic max
                                                ; - java.util.ArrayList::ensureCapacityInternal@13 (line 224)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5366463: jmp    0x00007f2aa5365b4b
  0x00007f2aa5366468: add    edi,0x4
  0x00007f2aa536646b: add    edi,0x2
  0x00007f2aa536646e: jmp    0x00007f2aa5366473
  0x00007f2aa5366470: add    edi,0x4
  0x00007f2aa5366473: inc    edi
  0x00007f2aa5366475: jmp    0x00007f2aa536647d
  0x00007f2aa5366477: add    edi,0x4
  0x00007f2aa536647a: add    edi,0x2            ;*synchronization entry
                                                ; - java.util.HashMap$KeySet::iterator@-1 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa536647d: xor    r10d,r10d
  0x00007f2aa5366480: mov    DWORD PTR [rsp+0x48],edi
  0x00007f2aa5366484: mov    QWORD PTR [rsp+0x28],r10
  0x00007f2aa5366489: jmp    0x00007f2aa53666f6  ;*ifne
                                                ; - Hash_LongPoint::step@152 (line 107)

  0x00007f2aa536648e: mov    r10,QWORD PTR [rsp+0x70]
  0x00007f2aa5366493: mov    r10d,DWORD PTR [r10+0x10]
                                                ;*getfield size
                                                ; - java.util.ArrayList::add@2 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366497: mov    r11,QWORD PTR [rsp+0x70]
  0x00007f2aa536649c: mov    r8d,DWORD PTR [r11+0x14]  ;*getfield elementData
                                                ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa53664a0: mov    DWORD PTR [rsp+0x30],r8d
  0x00007f2aa53664a5: mov    ecx,r10d
  0x00007f2aa53664a8: inc    ecx                ;*iadd
                                                ; - java.util.ArrayList::add@6 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa53664aa: cmp    r8d,0xd00a027d     ;   {oop(a 'java/lang/Object'[0] )}
  0x00007f2aa53664b1: je     0x00007f2aa5367267  ;*if_acmpne
                                                ; - java.util.ArrayList::ensureCapacityInternal@7 (line 223)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa53664b7: mov    r8d,ecx            ;*aload_0
                                                ; - java.util.ArrayList::ensureCapacityInternal@17 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa53664ba: mov    r11d,DWORD PTR [rsp+0x20]
  0x00007f2aa53664bf: inc    r11d               ;*iadd
                                                ; - java.util.ArrayList::ensureExplicitCapacity@6 (line 231)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa53664c2: mov    DWORD PTR [rsp+0x20],r11d
  0x00007f2aa53664c7: mov    r11,QWORD PTR [rsp+0x70]
  0x00007f2aa53664cc: mov    r9d,DWORD PTR [rsp+0x20]
  0x00007f2aa53664d1: mov    DWORD PTR [r11+0xc],r9d  ;*putfield modCount
                                                ; - java.util.ArrayList::ensureExplicitCapacity@7 (line 231)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa53664d5: mov    r11d,DWORD PTR [rsp+0x30]
  0x00007f2aa53664da: mov    r11d,DWORD PTR [r12+r11*8+0xc]
                                                ;*arraylength
                                                ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ; implicit exception: dispatches to 0x00007f2aa5368335
  0x00007f2aa53664df: mov    DWORD PTR [rsp],r11d
  0x00007f2aa53664e3: mov    r11d,r8d
  0x00007f2aa53664e6: sub    r11d,DWORD PTR [rsp]
  0x00007f2aa53664ea: test   r11d,r11d
  0x00007f2aa53664ed: jg     0x00007f2aa5366de5  ;*ifle
                                                ; - java.util.ArrayList::ensureExplicitCapacity@17 (line 234)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa53664f3: mov    r11,QWORD PTR [rsp+0x70]
  0x00007f2aa53664f8: mov    DWORD PTR [r11+0x10],ecx  ;*putfield size
                                                ; - java.util.ArrayList::add@22 (line 459)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa53664fc: mov    r8d,DWORD PTR [rsp+0x30]
  0x00007f2aa5366501: mov    rbx,r8
  0x00007f2aa5366504: shl    rbx,0x3            ;*return
                                                ; - java.util.ArrayList::ensureExplicitCapacity@25 (line 236)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366508: mov    r8d,DWORD PTR [rbx+0xc]
  0x00007f2aa536650c: cmp    r10d,r8d
  0x00007f2aa536650f: jae    0x00007f2aa53678c5
  0x00007f2aa5366515: mov    r8d,DWORD PTR [rbx+0x8]
  0x00007f2aa5366519: cmp    r8d,0xf80022ee     ;   {metadata('java/lang/Object'[])}
  0x00007f2aa5366520: jne    0x00007f2aa53678e9
  0x00007f2aa5366526: lea    r10,[rbx+r10*4+0x10]
  0x00007f2aa536652b: mov    r11,QWORD PTR [rsp+0x38]
  0x00007f2aa5366530: mov    r8,r11
  0x00007f2aa5366533: shr    r8,0x3
  0x00007f2aa5366537: mov    DWORD PTR [r10],r8d
  0x00007f2aa536653a: shr    r10,0x9
  0x00007f2aa536653e: mov    r11,0x7f2ab6fa4000
  0x00007f2aa5366548: mov    BYTE PTR [r11+r10*1],r12b
                                                ;*aastore
                                                ; - java.util.ArrayList::add@26 (line 459)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa536654c: jmp    0x00007f2aa53666d0
  0x00007f2aa5366551: mov    r11d,r10d
  0x00007f2aa5366554: jmp    0x00007f2aa5366595
  0x00007f2aa5366556: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa536655b: jmp    0x00007f2aa5366566
  0x00007f2aa536655d: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5366562: add    r11d,0x4
  0x00007f2aa5366566: add    r11d,0x2
  0x00007f2aa536656a: jmp    0x00007f2aa536657c
  0x00007f2aa536656c: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5366571: jmp    0x00007f2aa536657c
  0x00007f2aa5366573: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5366578: add    r11d,0x4
  0x00007f2aa536657c: inc    r11d
  0x00007f2aa536657f: jmp    0x00007f2aa5366595
  0x00007f2aa5366581: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5366586: jmp    0x00007f2aa5366591
  0x00007f2aa5366588: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa536658d: add    r11d,0x4
  0x00007f2aa5366591: add    r11d,0x2           ;*getfield next
                                                ; - java.util.HashMap$HashIterator::hasNext@1 (line 1422)
                                                ; - Hash_LongPoint::step@105 (line 106)

  0x00007f2aa5366595: mov    DWORD PTR [rsp+0x48],r11d
                                                ;*getfield index
                                                ; - java.util.HashMap$HashIterator::nextNode@69 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa536659a: mov    r10d,DWORD PTR [rsp+0x50]
  0x00007f2aa536659f: mov    r11d,DWORD PTR [r12+r10*8+0x10]
                                                ;*getfield key
                                                ; - java.util.HashMap$KeyIterator::next@4 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa53665a4: mov    r10d,DWORD PTR [r12+r11*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa5367fb9
  0x00007f2aa53665a9: cmp    r10d,0xf800c188    ;   {metadata('LongPoint6')}
  0x00007f2aa53665b0: jne    0x00007f2aa5367c91  ;*checkcast
                                                ; - Hash_LongPoint::step@119 (line 106)

  0x00007f2aa53665b6: mov    r10,QWORD PTR [rsp+0x80]
  0x00007f2aa53665be: mov    r10d,DWORD PTR [r10+0x14]
                                                ;*getfield counts
                                                ; - Hash_LongPoint::step@125 (line 107)

  0x00007f2aa53665c2: shl    r11,0x3            ;*checkcast
                                                ; - Hash_LongPoint::step@119 (line 106)

  0x00007f2aa53665c6: mov    QWORD PTR [rsp+0x38],r11
  0x00007f2aa53665cb: mov    r8d,DWORD PTR [r12+r10*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa5367fc9
  0x00007f2aa53665d0: cmp    r8d,0xf8003bd1     ;   {metadata('java/util/HashMap')}
  0x00007f2aa53665d7: jne    0x00007f2aa53673e1  ;*invokevirtual get
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa53665dd: mov    rcx,QWORD PTR [r11+0x10]  ;*getfield v
                                                ; - LongPoint6::hashCode@1 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::get@2 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa53665e1: mov    rax,0x2449f0232c624b0b
  0x00007f2aa53665eb: imul   rcx
  0x00007f2aa53665ee: shl    r10,0x3            ;*invokevirtual get
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa53665f2: mov    r9d,DWORD PTR [r10+0x24]  ;*getfield table
                                                ; - java.util.HashMap::getNode@1 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa53665f6: sar    rdx,0x1b
  0x00007f2aa53665fa: mov    r10,rcx
  0x00007f2aa53665fd: sar    r10,0x3f
  0x00007f2aa5366601: sub    rdx,r10
  0x00007f2aa5366604: imul   r10,rdx,0x386fa527
  0x00007f2aa536660b: mov    r11,rcx
  0x00007f2aa536660e: sub    r11,r10
  0x00007f2aa5366611: mov    r11d,r11d          ;*l2i  ; - LongPoint6::hashCode@8 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::get@2 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366614: mov    r10d,r11d
  0x00007f2aa5366617: shr    r10d,0x10
  0x00007f2aa536661b: xor    r10d,r11d          ;*ixor
                                                ; - java.util.HashMap::hash@18 (line 338)
                                                ; - java.util.HashMap::get@2 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa536661e: mov    ebx,DWORD PTR [r12+r9*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap::getNode@10 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ; implicit exception: dispatches to 0x00007f2aa5367fed
  0x00007f2aa5366623: test   ebx,ebx
  0x00007f2aa5366625: jle    0x00007f2aa5367411  ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa536662b: mov    r8d,ebx
  0x00007f2aa536662e: dec    r8d
  0x00007f2aa5366631: and    r8d,r10d           ;*iand
                                                ; - java.util.HashMap::getNode@23 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366634: cmp    r8d,ebx
  0x00007f2aa5366637: jae    0x00007f2aa53673b8
  0x00007f2aa536663d: lea    r11,[r12+r9*8]
  0x00007f2aa5366641: mov    r11d,DWORD PTR [r11+r8*4+0x10]
  0x00007f2aa5366646: mov    r9d,DWORD PTR [r12+r11*8+0xc]
                                                ; implicit exception: dispatches to 0x00007f2aa5367491
  0x00007f2aa536664b: lea    r8,[r12+r11*8]     ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa536664f: mov    ebx,DWORD PTR [rsp+0x50]
  0x00007f2aa5366653: shl    rbx,0x3            ;*getfield next
                                                ; - java.util.HashMap$HashIterator::nextNode@1 (line 1427)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366657: mov    QWORD PTR [rsp+0x28],rbx
  0x00007f2aa536665c: cmp    r9d,r10d
  0x00007f2aa536665f: jne    0x00007f2aa53668c3  ;*if_icmpne
                                                ; - java.util.HashMap::getNode@37 (line 570)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366665: mov    r9d,DWORD PTR [r12+r11*8+0x10]
                                                ;*getfield key
                                                ; - java.util.HashMap::getNode@42 (line 570)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa536666a: mov    rbx,r9
  0x00007f2aa536666d: shl    rbx,0x3
  0x00007f2aa5366671: cmp    rbx,QWORD PTR [rsp+0x38]
  0x00007f2aa5366676: je     0x00007f2aa536669a  ;*if_acmpeq
                                                ; - java.util.HashMap::getNode@49 (line 570)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366678: mov    edi,DWORD PTR [r12+r9*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa5368011
  0x00007f2aa536667d: cmp    edi,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f2aa5366683: jne    0x00007f2aa5367e21
  0x00007f2aa5366689: shl    r9,0x3             ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa536668d: mov    r9,QWORD PTR [r9+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366691: cmp    r9,rcx
  0x00007f2aa5366694: jne    0x00007f2aa536750d  ;*invokevirtual getNode
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa536669a: mov    r9d,DWORD PTR [r8+0x14]  ;*getfield value
                                                ; - java.util.HashMap::get@19 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa536669e: mov    r11d,DWORD PTR [r12+r9*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa5367491
  0x00007f2aa53666a3: cmp    r11d,0xf8002260    ;   {metadata('java/lang/Integer')}
  0x00007f2aa53666aa: jne    0x00007f2aa5367ca5  ;*checkcast
                                                ; - Hash_LongPoint::step@133 (line 107)

  0x00007f2aa53666b0: mov    r11,QWORD PTR [rsp+0x70]
  0x00007f2aa53666b5: mov    r11d,DWORD PTR [r11+0xc]  ;*getfield modCount
                                                ; - java.util.ArrayList::ensureExplicitCapacity@2 (line 231)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa53666b9: mov    DWORD PTR [rsp+0x20],r11d
  0x00007f2aa53666be: lea    r11,[r12+r9*8]     ;*checkcast
                                                ; - Hash_LongPoint::step@133 (line 107)

  0x00007f2aa53666c2: mov    r8d,DWORD PTR [r11+0xc]
  0x00007f2aa53666c6: cmp    r8d,0x3
  0x00007f2aa53666ca: je     0x00007f2aa5366a1d  ; OopMap{[40]=Oop [76]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=3728}
                                                ;*goto
                                                ; - Hash_LongPoint::step@162 (line 108)

  0x00007f2aa53666d0: test   DWORD PTR [rip+0x1798192a],eax        # 0x00007f2abcce8000
                                                ;*goto
                                                ; - Hash_LongPoint::step@162 (line 108)
                                                ;   {poll}
  0x00007f2aa53666d6: mov    r11d,DWORD PTR [rsp+0x4c]
  0x00007f2aa53666db: test   r11d,r11d
  0x00007f2aa53666de: je     0x00007f2aa5366f4f
  0x00007f2aa53666e4: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53666e9: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa53666ed: mov    DWORD PTR [rsp+0x50],eax
  0x00007f2aa53666f1: mov    rax,QWORD PTR [rsp-0x8]  ;*aload_3
                                                ; - Hash_LongPoint::step@113 (line 106)

  0x00007f2aa53666f6: mov    r11d,DWORD PTR [rsp+0x54]
  0x00007f2aa53666fb: mov    r10d,DWORD PTR [r12+r11*8+0x18]
                                                ;*getfield modCount
                                                ; - java.util.HashMap$HashIterator::nextNode@9 (line 1428)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366700: cmp    r10d,DWORD PTR [rsp+0x44]
  0x00007f2aa5366705: jne    0x00007f2aa536747d  ;*if_icmpeq
                                                ; - java.util.HashMap$HashIterator::nextNode@16 (line 1428)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa536670b: mov    r10d,DWORD PTR [rsp+0x50]
  0x00007f2aa5366710: mov    r11d,DWORD PTR [r12+r10*8+0x18]
                                                ;*getfield next
                                                ; - java.util.HashMap$HashIterator::nextNode@46 (line 1432)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)
                                                ; implicit exception: dispatches to 0x00007f2aa5367fdd
  0x00007f2aa5366715: test   r11d,r11d
  0x00007f2aa5366718: jne    0x00007f2aa5366af5  ;*ifnonnull
                                                ; - java.util.HashMap$HashIterator::nextNode@53 (line 1432)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa536671e: mov    DWORD PTR [rsp+0x4c],r11d
  0x00007f2aa5366723: mov    r10d,DWORD PTR [rsp+0x54]
  0x00007f2aa5366728: mov    r10d,DWORD PTR [r12+r10*8+0x24]
                                                ;*getfield table
                                                ; - java.util.HashMap$HashIterator::nextNode@60 (line 1432)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa536672d: mov    ecx,DWORD PTR [r12+r10*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap$HashIterator::nextNode@73 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)
                                                ; implicit exception: dispatches to 0x00007f2aa5368049
  0x00007f2aa5366732: mov    r8d,DWORD PTR [rsp+0x48]
  0x00007f2aa5366737: cmp    r8d,ecx
  0x00007f2aa536673a: jge    0x00007f2aa536659a  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::nextNode@74 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366740: cmp    r8d,ecx
  0x00007f2aa5366743: jae    0x00007f2aa53673fd
  0x00007f2aa5366749: mov    r8d,ecx
  0x00007f2aa536674c: dec    r8d
  0x00007f2aa536674f: cmp    r8d,ecx
  0x00007f2aa5366752: jae    0x00007f2aa53673fd
  0x00007f2aa5366758: mov    ebx,DWORD PTR [rsp+0x48]
  0x00007f2aa536675c: inc    ebx
  0x00007f2aa536675e: lea    r9,[r12+r10*8]     ;*getfield index
                                                ; - java.util.HashMap$HashIterator::nextNode@81 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366762: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5366767: mov    r11d,DWORD PTR [r9+r11*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa536676c: mov    DWORD PTR [rsp+0x4c],r11d
  0x00007f2aa5366771: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa5366776: inc    r10d               ;*iadd
                                                ; - java.util.HashMap$HashIterator::nextNode@86 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366779: mov    DWORD PTR [rsp+0x48],r10d
  0x00007f2aa536677e: test   r11d,r11d
  0x00007f2aa5366781: jne    0x00007f2aa5366d25  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366787: cmp    r10d,ebx
  0x00007f2aa536678a: jl     0x00007f2aa5366762  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::nextNode@74 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa536678c: mov    edi,ecx
  0x00007f2aa536678e: add    edi,0xfffffffffffffff9
  0x00007f2aa5366791: cmp    r8d,edi
  0x00007f2aa5366794: mov    r10d,0x80000000
  0x00007f2aa536679a: cmovl  edi,r10d
  0x00007f2aa536679e: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa53667a3: cmp    r11d,edi
  0x00007f2aa53667a6: jge    0x00007f2aa5366879
  0x00007f2aa53667ac: mov    r10d,r11d
  0x00007f2aa53667af: mov    DWORD PTR [rsp+0x48],r10d
  0x00007f2aa53667b4: nop    DWORD PTR [rax+rax*1+0x0]
  0x00007f2aa53667bc: xchg   ax,ax              ;*getfield index
                                                ; - java.util.HashMap$HashIterator::nextNode@81 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa53667c0: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa53667c5: mov    r10d,DWORD PTR [r9+r10*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa53667ca: mov    DWORD PTR [rsp+0x4c],r10d
  0x00007f2aa53667cf: test   r10d,r10d
  0x00007f2aa53667d2: jne    0x00007f2aa536656c  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa53667d8: movsxd r8,DWORD PTR [rsp+0x48]
  0x00007f2aa53667dd: mov    r11d,DWORD PTR [r9+r8*4+0x14]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa53667e2: mov    DWORD PTR [rsp+0x4c],r11d
  0x00007f2aa53667e7: test   r11d,r11d
  0x00007f2aa53667ea: jne    0x00007f2aa5366581  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa53667f0: mov    r10d,DWORD PTR [r9+r8*4+0x18]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa53667f5: mov    DWORD PTR [rsp+0x4c],r10d
  0x00007f2aa53667fa: test   r10d,r10d
  0x00007f2aa53667fd: jne    0x00007f2aa5366556  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366803: mov    r11d,DWORD PTR [r9+r8*4+0x1c]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366808: mov    DWORD PTR [rsp+0x4c],r11d
  0x00007f2aa536680d: test   r11d,r11d
  0x00007f2aa5366810: jne    0x00007f2aa5366aff  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366816: mov    r10d,DWORD PTR [r9+r8*4+0x20]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa536681b: mov    DWORD PTR [rsp+0x4c],r10d
  0x00007f2aa5366820: test   r10d,r10d
  0x00007f2aa5366823: jne    0x00007f2aa5366573  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366829: mov    r11d,DWORD PTR [r9+r8*4+0x24]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa536682e: mov    DWORD PTR [rsp+0x4c],r11d
  0x00007f2aa5366833: test   r11d,r11d
  0x00007f2aa5366836: jne    0x00007f2aa5366588  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa536683c: mov    r10d,DWORD PTR [r9+r8*4+0x28]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366841: mov    DWORD PTR [rsp+0x4c],r10d
  0x00007f2aa5366846: test   r10d,r10d
  0x00007f2aa5366849: jne    0x00007f2aa536655d  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa536684f: mov    r11d,DWORD PTR [r9+r8*4+0x2c]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366854: mov    DWORD PTR [rsp+0x4c],r11d
  0x00007f2aa5366859: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa536685e: add    r10d,0x8           ;*iadd
                                                ; - java.util.HashMap$HashIterator::nextNode@86 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366862: mov    DWORD PTR [rsp+0x48],r10d
  0x00007f2aa5366867: test   r11d,r11d
  0x00007f2aa536686a: jne    0x00007f2aa5366551  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366870: cmp    r10d,edi
  0x00007f2aa5366873: jl     0x00007f2aa53667c0  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::nextNode@74 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366879: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa536687e: cmp    r10d,ecx
  0x00007f2aa5366881: jge    0x00007f2aa536659a
  0x00007f2aa5366887: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa536688c: mov    DWORD PTR [rsp+0x48],r11d
  0x00007f2aa5366891: xchg   ax,ax              ;*getfield index
                                                ; - java.util.HashMap$HashIterator::nextNode@81 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366894: mov    r10d,DWORD PTR [rsp+0x48]
  0x00007f2aa5366899: mov    r10d,DWORD PTR [r9+r10*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap$HashIterator::nextNode@90 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa536689e: mov    DWORD PTR [rsp+0x4c],r10d
  0x00007f2aa53668a3: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa53668a8: inc    r11d               ;*iadd
                                                ; - java.util.HashMap$HashIterator::nextNode@86 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa53668ab: mov    DWORD PTR [rsp+0x48],r11d
  0x00007f2aa53668b0: test   r10d,r10d
  0x00007f2aa53668b3: jne    0x00007f2aa5366595  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@95 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa53668b9: cmp    r11d,ecx
  0x00007f2aa53668bc: jl     0x00007f2aa5366894  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::nextNode@74 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa53668be: jmp    0x00007f2aa536659a
  0x00007f2aa53668c3: mov    r9d,DWORD PTR [r12+r11*8+0x18]
                                                ;*getfield next
                                                ; - java.util.HashMap::getNode@70 (line 573)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa53668c8: test   r9d,r9d
  0x00007f2aa53668cb: je     0x00007f2aa5367491  ;*ifnull
                                                ; - java.util.HashMap::getNode@76 (line 573)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa53668d1: mov    r11d,DWORD PTR [r12+r11*8+0x8]
  0x00007f2aa53668d6: cmp    r11d,0xf8006464    ;   {metadata('java/util/HashMap$TreeNode')}
  0x00007f2aa53668dd: jne    0x00007f2aa5366c6d  ;*checkcast
                                                ; - java.util.HashMap::getNode@89 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa53668e3: mov    r11d,DWORD PTR [r8+0x28]  ;*getfield parent
                                                ; - java.util.HashMap$TreeNode::getTreeNode@1 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa53668e7: test   r11d,r11d
  0x00007f2aa53668ea: je     0x00007f2aa5366943  ;*synchronization entry
                                                ; - java.util.HashMap$TreeNode::getTreeNode@-1 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa53668ec: mov    esi,0xffffff65
  0x00007f2aa53668f1: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53668f6: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa53668fb: mov    QWORD PTR [rsp+0x18],r8
  0x00007f2aa5366900: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5366905: mov    DWORD PTR [rsp+0x24],r11d
  0x00007f2aa536690a: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536690f: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5366913: mov    DWORD PTR [rsp+0x30],eax
  0x00007f2aa5366917: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536691c: xchg   ax,ax
  0x00007f2aa536691f: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [24]=Oop [36]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=4324}
                                                ;*ifnull
                                                ; - java.util.HashMap$TreeNode::getTreeNode@4 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366924: call   0x00007f2abc3f1320  ;*ifnull
                                                ; - java.util.HashMap$TreeNode::getTreeNode@4 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366929: mov    r11d,r9d
  0x00007f2aa536692c: nop    DWORD PTR [rax+0x0]  ; OopMap{r11=NarrowOop [40]=Oop [56]=Oop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=4336}
                                                ;*ifnonnull
                                                ; - java.util.HashMap$TreeNode::find@167 (line 1865)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366930: test   DWORD PTR [rip+0x179816ca],eax        # 0x00007f2abcce8000
                                                ;   {poll}
  0x00007f2aa5366936: test   r11d,r11d
  0x00007f2aa5366939: je     0x00007f2aa5367491  ;*ifnonnull
                                                ; - java.util.HashMap$TreeNode::find@167 (line 1865)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa536693f: lea    r8,[r12+r11*8]     ;*aload
                                                ; - java.util.HashMap$TreeNode::find@3 (line 1846)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366943: mov    edi,DWORD PTR [r8+0xc]  ;*getfield hash
                                                ; - java.util.HashMap$TreeNode::find@19 (line 1847)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366947: mov    r9d,DWORD PTR [r8+0x2c]  ;*getfield left
                                                ; - java.util.HashMap$TreeNode::find@5 (line 1846)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa536694b: cmp    edi,r10d
  0x00007f2aa536694e: jg     0x00007f2aa5366929  ;*if_icmple
                                                ; - java.util.HashMap$TreeNode::find@26 (line 1847)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366950: mov    r11d,DWORD PTR [r8+0x30]  ;*getfield right
                                                ; - java.util.HashMap$TreeNode::find@12 (line 1846)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366954: cmp    edi,r10d
  0x00007f2aa5366957: jl     0x00007f2aa5366930  ;*if_icmpge
                                                ; - java.util.HashMap$TreeNode::find@39 (line 1849)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366959: mov    edi,DWORD PTR [r8+0x10]  ;*getfield key
                                                ; - java.util.HashMap$TreeNode::find@51 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa536695d: mov    rbx,rdi
  0x00007f2aa5366960: shl    rbx,0x3
  0x00007f2aa5366964: cmp    rbx,QWORD PTR [rsp+0x38]
  0x00007f2aa5366969: je     0x00007f2aa536669a  ;*if_acmpeq
                                                ; - java.util.HashMap$TreeNode::find@58 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa536696f: mov    edx,DWORD PTR [r12+rdi*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa53681f5
  0x00007f2aa5366974: cmp    edx,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f2aa536697a: jne    0x00007f2aa5367d55
  0x00007f2aa5366980: lea    rbx,[r12+rdi*8]    ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366984: mov    rbx,QWORD PTR [rbx+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366988: cmp    rbx,rcx
  0x00007f2aa536698b: je     0x00007f2aa536669a  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366991: cmp    rbx,rcx
  0x00007f2aa5366994: mov    ebp,0xffffffff
  0x00007f2aa5366999: jl     0x00007f2aa53669a3
  0x00007f2aa536699b: setne  bpl
  0x00007f2aa536699f: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa53669a3: mov    esi,0xffffff65
  0x00007f2aa53669a8: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53669ad: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa53669b2: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa53669b7: mov    QWORD PTR [rsp+0x30],r8
  0x00007f2aa53669bc: mov    DWORD PTR [rsp+0x24],edi
  0x00007f2aa53669c0: mov    DWORD PTR [rsp+0x38],r9d
  0x00007f2aa53669c5: mov    DWORD PTR [rsp+0x3c],r11d
  0x00007f2aa53669ca: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53669cf: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa53669d3: mov    DWORD PTR [rsp+0x40],eax
  0x00007f2aa53669d7: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53669dc: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53669e1: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa53669e5: mov    DWORD PTR [rsp+0x44],eax
  0x00007f2aa53669e9: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53669ee: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53669f3: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa53669f7: mov    DWORD PTR [rsp+0x48],eax
  0x00007f2aa53669fb: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366a00: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366a05: mov    eax,DWORD PTR [rsp+0x50]
  0x00007f2aa5366a09: mov    DWORD PTR [rsp+0x4c],eax
  0x00007f2aa5366a0d: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366a12: nop    
  0x00007f2aa5366a13: call   0x00007f2aa50051a0  ; OopMap{[24]=Oop [36]=NarrowOop [48]=Oop [56]=NarrowOop [60]=NarrowOop [72]=NarrowOop [76]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=4568}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366a18: call   0x00007f2abc3f1320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366a1d: mov    r11,QWORD PTR [rsp+0x80]
  0x00007f2aa5366a25: mov    r8d,DWORD PTR [r11+0x10]  ;*getfield field
                                                ; - Hash_LongPoint::step@144 (line 107)

  0x00007f2aa5366a29: mov    r11d,DWORD PTR [r12+r8*8+0xc]
                                                ;*getfield map
                                                ; - java.util.HashSet::contains@1 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ; implicit exception: dispatches to 0x00007f2aa5368081
  0x00007f2aa5366a2e: mov    r8d,DWORD PTR [r12+r11*8+0x24]
                                                ;*getfield table
                                                ; - java.util.HashMap::getNode@1 (line 568)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ; implicit exception: dispatches to 0x00007f2aa5368095
  0x00007f2aa5366a33: mov    r9d,DWORD PTR [r12+r8*8+0xc]
                                                ;*arraylength
                                                ; - java.util.HashMap::getNode@10 (line 568)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ; implicit exception: dispatches to 0x00007f2aa5368199
  0x00007f2aa5366a38: test   r9d,r9d
  0x00007f2aa5366a3b: jle    0x00007f2aa5367629  ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366a41: mov    r11d,r9d
  0x00007f2aa5366a44: dec    r11d
  0x00007f2aa5366a47: and    r11d,r10d          ;*iand
                                                ; - java.util.HashMap::getNode@23 (line 568)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366a4a: cmp    r11d,r9d
  0x00007f2aa5366a4d: jae    0x00007f2aa5367555
  0x00007f2aa5366a53: shl    r8,0x3
  0x00007f2aa5366a57: mov    r8d,DWORD PTR [r8+r11*4+0x10]
                                                ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366a5c: test   r8d,r8d
  0x00007f2aa5366a5f: je     0x00007f2aa536648e  ;*ifnull
                                                ; - java.util.HashMap::getNode@28 (line 568)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366a65: mov    r11d,DWORD PTR [r12+r8*8+0xc]
  0x00007f2aa5366a6a: cmp    r11d,r10d
  0x00007f2aa5366a6d: jne    0x00007f2aa5366b0d  ;*if_icmpne
                                                ; - java.util.HashMap::getNode@37 (line 570)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366a73: mov    r9d,DWORD PTR [r12+r8*8+0x10]
                                                ;*getfield key
                                                ; - java.util.HashMap::getNode@42 (line 570)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366a78: mov    r11,r9
  0x00007f2aa5366a7b: shl    r11,0x3
  0x00007f2aa5366a7f: cmp    r11,QWORD PTR [rsp+0x38]
  0x00007f2aa5366a84: je     0x00007f2aa53666d0  ;*if_acmpeq
                                                ; - java.util.HashMap::getNode@49 (line 570)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366a8a: mov    r11d,DWORD PTR [r12+r9*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa53681bd
  0x00007f2aa5366a8f: cmp    r11d,0xf800c188    ;   {metadata('LongPoint6')}
  0x00007f2aa5366a96: jne    0x00007f2aa5367ecd
  0x00007f2aa5366a9c: lea    r11,[r12+r9*8]     ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366aa0: mov    r11,QWORD PTR [r11+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366aa4: cmp    r11,rcx
  0x00007f2aa5366aa7: je     0x00007f2aa53666d0  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366aad: cmp    r11,rcx
  0x00007f2aa5366ab0: mov    ebp,0xffffffff
  0x00007f2aa5366ab5: jl     0x00007f2aa5366abf
  0x00007f2aa5366ab7: setne  bpl
  0x00007f2aa5366abb: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366abf: mov    esi,0xffffff65
  0x00007f2aa5366ac4: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5366ac9: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa5366ace: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5366ad3: mov    DWORD PTR [rsp+0x24],r8d
  0x00007f2aa5366ad8: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366add: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5366ae1: mov    DWORD PTR [rsp+0x30],eax
  0x00007f2aa5366ae5: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366aea: nop    
  0x00007f2aa5366aeb: call   0x00007f2aa50051a0  ; OopMap{[24]=Oop [36]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=4784}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366af0: call   0x00007f2abc3f1320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366af5: mov    DWORD PTR [rsp+0x4c],r11d
  0x00007f2aa5366afa: jmp    0x00007f2aa536659a
  0x00007f2aa5366aff: mov    r11d,DWORD PTR [rsp+0x48]
  0x00007f2aa5366b04: add    r11d,0x4           ;*iadd
                                                ; - java.util.HashMap$HashIterator::nextNode@86 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)

  0x00007f2aa5366b08: jmp    0x00007f2aa5366595
  0x00007f2aa5366b0d: mov    r9d,DWORD PTR [r12+r8*8+0x18]
                                                ;*getfield next
                                                ; - java.util.HashMap::getNode@70 (line 573)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366b12: test   r9d,r9d
  0x00007f2aa5366b15: je     0x00007f2aa536648e  ;*ifnull
                                                ; - java.util.HashMap::getNode@76 (line 573)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366b1b: mov    r11d,DWORD PTR [r12+r8*8+0x8]
  0x00007f2aa5366b20: cmp    r11d,0xf8006464    ;   {metadata('java/util/HashMap$TreeNode')}
  0x00007f2aa5366b27: jne    0x00007f2aa5366d2d  ;*instanceof
                                                ; - java.util.HashMap::getNode@81 (line 574)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366b2d: lea    rbx,[r12+r8*8]     ;*checkcast
                                                ; - java.util.HashMap::getNode@89 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366b31: mov    r11d,DWORD PTR [rbx+0x28]
                                                ;*getfield parent
                                                ; - java.util.HashMap$TreeNode::getTreeNode@1 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366b35: test   r11d,r11d
  0x00007f2aa5366b38: je     0x00007f2aa5366b93  ;*synchronization entry
                                                ; - java.util.HashMap$TreeNode::getTreeNode@-1 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366b3a: mov    esi,0xffffff65
  0x00007f2aa5366b3f: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5366b44: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5366b49: mov    QWORD PTR [rsp+0x18],rbx
  0x00007f2aa5366b4e: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5366b53: mov    DWORD PTR [rsp+0x24],r11d
  0x00007f2aa5366b58: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366b5d: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5366b61: mov    DWORD PTR [rsp+0x30],eax
  0x00007f2aa5366b65: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366b6a: nop    
  0x00007f2aa5366b6b: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [24]=Oop [36]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=4912}
                                                ;*ifnull
                                                ; - java.util.HashMap$TreeNode::getTreeNode@4 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366b70: call   0x00007f2abc3f1320  ;*ifnull
                                                ; - java.util.HashMap$TreeNode::getTreeNode@4 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366b75: mov    r9d,r11d
  0x00007f2aa5366b78: nop    DWORD PTR [rax+rax*1+0x0]
                                                ; OopMap{r9=NarrowOop [40]=Oop [56]=Oop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=4928}
                                                ;*ifnonnull
                                                ; - java.util.HashMap$TreeNode::find@167 (line 1865)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366b80: test   DWORD PTR [rip+0x1798147a],eax        # 0x00007f2abcce8000
                                                ;   {poll}
  0x00007f2aa5366b86: test   r9d,r9d
  0x00007f2aa5366b89: je     0x00007f2aa536648e  ;*ifnonnull
                                                ; - java.util.HashMap$TreeNode::find@167 (line 1865)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366b8f: lea    rbx,[r12+r9*8]     ;*aload
                                                ; - java.util.HashMap$TreeNode::find@3 (line 1846)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366b93: mov    r11d,DWORD PTR [rbx+0x2c]
                                                ;*getfield left
                                                ; - java.util.HashMap$TreeNode::find@5 (line 1846)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366b97: mov    r8d,DWORD PTR [rbx+0xc]  ;*getfield hash
                                                ; - java.util.HashMap$TreeNode::find@19 (line 1847)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366b9b: cmp    r8d,r10d
  0x00007f2aa5366b9e: jg     0x00007f2aa5366b75  ;*if_icmple
                                                ; - java.util.HashMap$TreeNode::find@26 (line 1847)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366ba0: mov    r9d,DWORD PTR [rbx+0x30]  ;*getfield right
                                                ; - java.util.HashMap$TreeNode::find@12 (line 1846)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366ba4: cmp    r8d,r10d
  0x00007f2aa5366ba7: jl     0x00007f2aa5366b80  ;*if_icmpge
                                                ; - java.util.HashMap$TreeNode::find@39 (line 1849)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366ba9: mov    r8d,DWORD PTR [rbx+0x10]  ;*getfield key
                                                ; - java.util.HashMap$TreeNode::find@51 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366bad: mov    rdi,r8
  0x00007f2aa5366bb0: shl    rdi,0x3
  0x00007f2aa5366bb4: cmp    rdi,QWORD PTR [rsp+0x38]
  0x00007f2aa5366bb9: je     0x00007f2aa53666d0  ;*if_acmpeq
                                                ; - java.util.HashMap$TreeNode::find@58 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366bbf: mov    edi,DWORD PTR [r12+r8*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa5368345
  0x00007f2aa5366bc4: cmp    edi,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f2aa5366bca: jne    0x00007f2aa5367f19
  0x00007f2aa5366bd0: lea    rdi,[r12+r8*8]     ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366bd4: mov    rdi,QWORD PTR [rdi+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366bd8: cmp    rdi,rcx
  0x00007f2aa5366bdb: je     0x00007f2aa53666d0  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366be1: cmp    rdi,rcx
  0x00007f2aa5366be4: mov    ebp,0xffffffff
  0x00007f2aa5366be9: jl     0x00007f2aa5366bf3
  0x00007f2aa5366beb: setne  bpl
  0x00007f2aa5366bef: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366bf3: mov    esi,0xffffff65
  0x00007f2aa5366bf8: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5366bfd: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa5366c02: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5366c07: mov    QWORD PTR [rsp+0x30],rbx
  0x00007f2aa5366c0c: mov    DWORD PTR [rsp+0x24],r8d
  0x00007f2aa5366c11: mov    DWORD PTR [rsp+0x38],r11d
  0x00007f2aa5366c16: mov    DWORD PTR [rsp+0x3c],r9d
  0x00007f2aa5366c1b: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366c20: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5366c24: mov    DWORD PTR [rsp+0x40],eax
  0x00007f2aa5366c28: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366c2d: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366c32: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5366c36: mov    DWORD PTR [rsp+0x44],eax
  0x00007f2aa5366c3a: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366c3f: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366c44: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa5366c48: mov    DWORD PTR [rsp+0x48],eax
  0x00007f2aa5366c4c: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366c51: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366c56: mov    eax,DWORD PTR [rsp+0x50]
  0x00007f2aa5366c5a: mov    DWORD PTR [rsp+0x4c],eax
  0x00007f2aa5366c5e: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366c63: call   0x00007f2aa50051a0  ; OopMap{[24]=Oop [36]=NarrowOop [48]=Oop [56]=NarrowOop [60]=NarrowOop [72]=NarrowOop [76]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=5160}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366c68: call   0x00007f2abc3f1320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366c6d: lea    r8,[r12+r9*8]      ;*aload
                                                ; - java.util.HashMap::getNode@98 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366c71: mov    r9d,DWORD PTR [r8+0xc]
  0x00007f2aa5366c75: cmp    r9d,r10d
  0x00007f2aa5366c78: je     0x00007f2aa5366c93  ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366c7a: mov    r11d,DWORD PTR [r8+0x18]  ; OopMap{r11=NarrowOop [40]=Oop [56]=Oop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=5182}
                                                ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366c7e: test   DWORD PTR [rip+0x1798137c],eax        # 0x00007f2abcce8000
                                                ;   {poll}
  0x00007f2aa5366c84: test   r11d,r11d
  0x00007f2aa5366c87: je     0x00007f2aa5367491  ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366c8d: lea    r8,[r12+r11*8]     ;*getfield next
                                                ; - java.util.HashMap::getNode@137 (line 580)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366c91: jmp    0x00007f2aa5366c71
  0x00007f2aa5366c93: mov    r11d,DWORD PTR [r8+0x10]  ;*getfield key
                                                ; - java.util.HashMap::getNode@109 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366c97: mov    r9,r11
  0x00007f2aa5366c9a: shl    r9,0x3
  0x00007f2aa5366c9e: cmp    r9,QWORD PTR [rsp+0x38]
  0x00007f2aa5366ca3: je     0x00007f2aa536669a  ;*if_acmpeq
                                                ; - java.util.HashMap::getNode@116 (line 577)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366ca9: mov    ebx,DWORD PTR [r12+r11*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa53682ed
  0x00007f2aa5366cae: cmp    ebx,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f2aa5366cb4: jne    0x00007f2aa5367e6d
  0x00007f2aa5366cba: shl    r11,0x3            ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366cbe: mov    r11,QWORD PTR [r11+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366cc2: cmp    r11,rcx
  0x00007f2aa5366cc5: je     0x00007f2aa536669a  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366ccb: cmp    r11,rcx
  0x00007f2aa5366cce: mov    ebp,0xffffffff
  0x00007f2aa5366cd3: jl     0x00007f2aa5366cdd
  0x00007f2aa5366cd5: setne  bpl
  0x00007f2aa5366cd9: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa5366cdd: mov    esi,0xffffff65
  0x00007f2aa5366ce2: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5366ce7: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa5366cec: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5366cf1: mov    QWORD PTR [rsp+0x30],r8
  0x00007f2aa5366cf6: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366cfb: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5366cff: mov    DWORD PTR [rsp+0x24],eax
  0x00007f2aa5366d03: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366d08: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366d0d: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5366d11: mov    DWORD PTR [rsp+0x38],eax
  0x00007f2aa5366d15: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366d1a: nop    
  0x00007f2aa5366d1b: call   0x00007f2aa50051a0  ; OopMap{[24]=Oop [48]=Oop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=5344}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366d20: call   0x00007f2abc3f1320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366d25: mov    r11d,r10d
  0x00007f2aa5366d28: jmp    0x00007f2aa5366595
  0x00007f2aa5366d2d: shl    r9,0x3             ;*aload
                                                ; - java.util.HashMap::getNode@98 (line 577)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366d31: mov    r8d,DWORD PTR [r9+0xc]
  0x00007f2aa5366d35: cmp    r8d,r10d
  0x00007f2aa5366d38: je     0x00007f2aa5366d53  ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366d3a: mov    r8d,DWORD PTR [r9+0x18]  ; OopMap{r8=NarrowOop [40]=Oop [56]=Oop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=5374}
                                                ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366d3e: test   DWORD PTR [rip+0x179812bc],eax        # 0x00007f2abcce8000
                                                ;   {poll}
  0x00007f2aa5366d44: test   r8d,r8d
  0x00007f2aa5366d47: je     0x00007f2aa536648e  ;*ifnonnull
                                                ; - java.util.HashMap::getNode@143 (line 580)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366d4d: lea    r9,[r12+r8*8]      ;*getfield next
                                                ; - java.util.HashMap::getNode@137 (line 580)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366d51: jmp    0x00007f2aa5366d31
  0x00007f2aa5366d53: mov    ebp,DWORD PTR [r9+0x10]  ;*getfield key
                                                ; - java.util.HashMap::getNode@109 (line 577)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366d57: mov    r11,rbp
  0x00007f2aa5366d5a: shl    r11,0x3
  0x00007f2aa5366d5e: cmp    r11,QWORD PTR [rsp+0x38]
  0x00007f2aa5366d63: je     0x00007f2aa53666d0  ;*if_acmpeq
                                                ; - java.util.HashMap::getNode@116 (line 577)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366d69: mov    r11d,DWORD PTR [r12+rbp*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa53683f9
  0x00007f2aa5366d6e: cmp    r11d,0xf800c188    ;   {metadata('LongPoint6')}
  0x00007f2aa5366d75: jne    0x00007f2aa5367f4d
  0x00007f2aa5366d7b: lea    r11,[r12+rbp*8]    ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366d7f: mov    r11,QWORD PTR [r11+0x10]  ;*getfield v
                                                ; - LongPoint::equals@4 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366d83: cmp    r11,rcx
  0x00007f2aa5366d86: je     0x00007f2aa53666d0  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366d8c: cmp    r11,rcx
  0x00007f2aa5366d8f: mov    ebp,0xffffffff
  0x00007f2aa5366d94: jl     0x00007f2aa5366d9e
  0x00007f2aa5366d96: setne  bpl
  0x00007f2aa5366d9a: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)

  0x00007f2aa5366d9e: mov    esi,0xffffff65
  0x00007f2aa5366da3: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5366da8: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa5366dad: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5366db2: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366db7: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5366dbb: mov    DWORD PTR [rsp+0x30],eax
  0x00007f2aa5366dbf: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366dc4: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5366dc9: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa5366dcd: mov    DWORD PTR [rsp+0x34],eax
  0x00007f2aa5366dd1: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5366dd6: mov    QWORD PTR [rsp+0x48],r9
  0x00007f2aa5366ddb: call   0x00007f2aa50051a0  ; OopMap{[24]=Oop [52]=NarrowOop [72]=Oop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=5536}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366de0: call   0x00007f2abc3f1320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5366de5: mov    r10d,DWORD PTR [rsp]
  0x00007f2aa5366de9: sar    r10d,1
  0x00007f2aa5366dec: add    r10d,DWORD PTR [rsp]  ;*iadd
                                                ; - java.util.ArrayList::grow@10 (line 255)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366df0: mov    DWORD PTR [rsp+0x58],r10d
  0x00007f2aa5366df5: mov    r11d,r10d
  0x00007f2aa5366df8: sub    r11d,r8d
  0x00007f2aa5366dfb: test   r11d,r11d
  0x00007f2aa5366dfe: jl     0x00007f2aa536725d  ;*iload_3
                                                ; - java.util.ArrayList::grow@20 (line 258)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366e04: mov    ebp,DWORD PTR [rsp+0x58]
  0x00007f2aa5366e08: add    ebp,0x80000009     ;*isub
                                                ; - java.util.ArrayList::grow@23 (line 258)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366e0e: test   ebp,ebp
  0x00007f2aa5366e10: jg     0x00007f2aa5367c29  ;*ifle
                                                ; - java.util.ArrayList::grow@24 (line 258)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366e16: mov    r11d,DWORD PTR [rsp+0x30]
  0x00007f2aa5366e1b: mov    r11d,DWORD PTR [r12+r11*8+0x8]
  0x00007f2aa5366e20: mov    rsi,0x0
  0x00007f2aa5366e2a: lea    rsi,[rsi+r11*8]
  0x00007f2aa5366e2e: mov    r9,QWORD PTR [rsi+0x68]  ;*invokevirtual getClass
                                                ; - java.util.Arrays::copyOf@3 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366e32: mov    r8d,DWORD PTR [rsp+0x58]
  0x00007f2aa5366e37: test   r8d,r8d
  0x00007f2aa5366e3a: jl     0x00007f2aa5367a8d  ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366e40: movsxd r10,DWORD PTR [rsp+0x58]
  0x00007f2aa5366e45: mov    r8d,DWORD PTR [rsp+0x30]
  0x00007f2aa5366e4a: lea    rbp,[r12+r8*8]     ;*getfield elementData
                                                ; - java.util.ArrayList::ensureCapacityInternal@1 (line 223)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366e4e: shl    r10,0x2
  0x00007f2aa5366e52: add    r10,0x17
  0x00007f2aa5366e56: mov    QWORD PTR [rsp+0x8],r10
  0x00007f2aa5366e5b: mov    r10d,DWORD PTR [rsp+0x58]
  0x00007f2aa5366e60: cmp    r10d,0x40000
  0x00007f2aa5366e67: ja     0x00007f2aa53676e1
  0x00007f2aa5366e6d: mov    rbx,QWORD PTR [r15+0x60]
  0x00007f2aa5366e71: mov    r10,QWORD PTR [rsp+0x8]
  0x00007f2aa5366e76: and    r10,0xfffffffffffffff8
  0x00007f2aa5366e7a: mov    r8,rbx
  0x00007f2aa5366e7d: add    r8,r10
  0x00007f2aa5366e80: cmp    r8,QWORD PTR [r15+0x70]
  0x00007f2aa5366e84: jae    0x00007f2aa53676e1
  0x00007f2aa5366e8a: mov    QWORD PTR [r15+0x60],r8
  0x00007f2aa5366e8e: prefetchnta BYTE PTR [r8+0xc0]
  0x00007f2aa5366e96: mov    QWORD PTR [rbx],0x1
  0x00007f2aa5366e9d: mov    DWORD PTR [rbx+0x8],r11d
  0x00007f2aa5366ea1: mov    r10d,DWORD PTR [rsp+0x58]
  0x00007f2aa5366ea6: mov    DWORD PTR [rbx+0xc],r10d
  0x00007f2aa5366eaa: prefetchnta BYTE PTR [r8+0x100]
  0x00007f2aa5366eb2: prefetchnta BYTE PTR [r8+0x140]
  0x00007f2aa5366eba: prefetchnta BYTE PTR [r8+0x180]
  0x00007f2aa5366ec2: mov    r11d,DWORD PTR [rsp]
  0x00007f2aa5366ec6: cmp    r11d,DWORD PTR [rsp+0x58]
  0x00007f2aa5366ecb: mov    r10d,DWORD PTR [rsp+0x58]
  0x00007f2aa5366ed0: cmovl  r10d,r11d
  0x00007f2aa5366ed4: mov    rsi,rbx
  0x00007f2aa5366ed7: add    rsi,0x10
  0x00007f2aa5366edb: mov    r8,QWORD PTR [rsp+0x8]
  0x00007f2aa5366ee0: shr    r8,0x3
  0x00007f2aa5366ee4: test   r10d,r10d
  0x00007f2aa5366ee7: je     0x00007f2aa5367a4c
  0x00007f2aa5366eed: movsxd rdx,r10d
  0x00007f2aa5366ef0: cmp    r10d,DWORD PTR [rsp+0x58]
  0x00007f2aa5366ef5: jl     0x00007f2aa536744d
  0x00007f2aa5366efb: mov    r10d,DWORD PTR [rsp+0x30]
  0x00007f2aa5366f00: lea    rdi,[r12+r10*8+0x10]
  0x00007f2aa5366f05: mov    r10,0x7f2aa50524c0
  0x00007f2aa5366f0f: call   r10                ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366f12: mov    r10,QWORD PTR [rsp+0x70]
  0x00007f2aa5366f17: mov    r10d,DWORD PTR [r10+0x10]
                                                ;*getfield size
                                                ; - java.util.ArrayList::add@16 (line 459)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366f1b: mov    r11,rbx
  0x00007f2aa5366f1e: shr    r11,0x3
  0x00007f2aa5366f22: mov    r8,QWORD PTR [rsp+0x70]
  0x00007f2aa5366f27: mov    DWORD PTR [r8+0x14],r11d  ;*putfield elementData
                                                ; - java.util.ArrayList::grow@41 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366f2b: mov    r11d,r10d
  0x00007f2aa5366f2e: inc    r11d
  0x00007f2aa5366f31: mov    DWORD PTR [r8+0x10],r11d  ;*putfield size
                                                ; - java.util.ArrayList::add@22 (line 459)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366f35: mov    r11,r8
  0x00007f2aa5366f38: shr    r11,0x9
  0x00007f2aa5366f3c: mov    r8,0x7f2ab6fa4000
  0x00007f2aa5366f46: mov    BYTE PTR [r8+r11*1],r12b  ;*putfield elementData
                                                ; - java.util.ArrayList::grow@41 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5366f4a: jmp    0x00007f2aa5366508  ;*synchronization entry
                                                ; - java.util.ArrayList$Itr::<init>@-1 (line 840)
                                                ; - java.util.ArrayList::iterator@6 (line 834)
                                                ; - Hash_LongPoint::step@166 (line 109)

  0x00007f2aa5366f4f: mov    r8,QWORD PTR [rsp+0x70]
  0x00007f2aa5366f54: mov    ecx,DWORD PTR [r8+0x10]  ;*getfield size
                                                ; - java.util.ArrayList::access$100@1 (line 106)
                                                ; - java.util.ArrayList$Itr::hasNext@8 (line 846)
                                                ; - Hash_LongPoint::step@171 (line 109)

  0x00007f2aa5366f58: test   ecx,ecx
  0x00007f2aa5366f5a: je     0x00007f2aa536737d  ;*if_icmpeq
                                                ; - java.util.ArrayList$Itr::hasNext@11 (line 846)
                                                ; - Hash_LongPoint::step@171 (line 109)

  0x00007f2aa5366f60: mov    r9d,0xffffffff
  0x00007f2aa5366f66: mov    r10d,0xffffffff
  0x00007f2aa5366f6c: xor    r11d,r11d
  0x00007f2aa5366f6f: jmp    0x00007f2aa5366f7e
  0x00007f2aa5366f71: mov    r9d,DWORD PTR [rsp+0xc]
  0x00007f2aa5366f76: mov    r10d,DWORD PTR [rsp+0x8]
  0x00007f2aa5366f7b: mov    r11d,ebp           ;*getfield size
                                                ; - java.util.ArrayList::access$100@1 (line 106)
                                                ; - java.util.ArrayList$Itr::next@14 (line 853)
                                                ; - Hash_LongPoint::step@180 (line 109)

  0x00007f2aa5366f7e: mov    edi,DWORD PTR [r8+0xc]  ;*getfield modCount
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 900)
                                                ; - java.util.ArrayList$Itr::next@1 (line 851)
                                                ; - Hash_LongPoint::step@180 (line 109)

  0x00007f2aa5366f82: cmp    edi,DWORD PTR [rsp+0x20]
  0x00007f2aa5366f86: jne    0x00007f2aa5367769  ;*if_icmpeq
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 900)
                                                ; - java.util.ArrayList$Itr::next@1 (line 851)
                                                ; - Hash_LongPoint::step@180 (line 109)

  0x00007f2aa5366f8c: cmp    r11d,ecx
  0x00007f2aa5366f8f: jge    0x00007f2aa536779d  ;*if_icmplt
                                                ; - java.util.ArrayList$Itr::next@17 (line 853)
                                                ; - Hash_LongPoint::step@180 (line 109)

  0x00007f2aa5366f95: mov    ecx,DWORD PTR [r8+0x14]  ;*getfield elementData
                                                ; - java.util.ArrayList$Itr::next@32 (line 855)
                                                ; - Hash_LongPoint::step@180 (line 109)

  0x00007f2aa5366f99: mov    edi,DWORD PTR [r12+rcx*8+0xc]
                                                ;*arraylength
                                                ; - java.util.ArrayList$Itr::next@38 (line 856)
                                                ; - Hash_LongPoint::step@180 (line 109)
                                                ; implicit exception: dispatches to 0x00007f2aa5368115
  0x00007f2aa5366f9e: cmp    r11d,edi
  0x00007f2aa5366fa1: jge    0x00007f2aa53677d9  ;*if_icmplt
                                                ; - java.util.ArrayList$Itr::next@39 (line 856)
                                                ; - Hash_LongPoint::step@180 (line 109)

  0x00007f2aa5366fa7: mov    ebp,r11d
  0x00007f2aa5366faa: inc    ebp                ;*iadd
                                                ; - java.util.ArrayList$Itr::next@53 (line 858)
                                                ; - Hash_LongPoint::step@180 (line 109)

  0x00007f2aa5366fac: cmp    r11d,edi
  0x00007f2aa5366faf: jae    0x00007f2aa53675b9
  0x00007f2aa5366fb5: lea    r9,[r12+rcx*8]
  0x00007f2aa5366fb9: mov    r9d,DWORD PTR [r9+r11*4+0x10]
                                                ;*aaload
                                                ; - java.util.ArrayList$Itr::next@64 (line 859)
                                                ; - Hash_LongPoint::step@180 (line 109)

  0x00007f2aa5366fbe: mov    ecx,DWORD PTR [r12+r9*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa5368125
  0x00007f2aa5366fc3: cmp    ecx,0xf800c188     ;   {metadata('LongPoint6')}
  0x00007f2aa5366fc9: jne    0x00007f2aa5367cf1  ;*checkcast
                                                ; - Hash_LongPoint::step@185 (line 109)

  0x00007f2aa5366fcf: mov    DWORD PTR [rsp+0xc],r11d
  0x00007f2aa5366fd4: mov    DWORD PTR [rsp+0x8],r10d
  0x00007f2aa5366fd9: mov    QWORD PTR [rsp],r8  ;*invokeinterface next
                                                ; - Hash_LongPoint::step@180 (line 109)

  0x00007f2aa5366fdd: lea    rdx,[r12+r9*8]     ;*checkcast
                                                ; - Hash_LongPoint::step@185 (line 109)

  0x00007f2aa5366fe1: mov    rsi,QWORD PTR [rsp+0x80]
  0x00007f2aa5366fe9: xchg   ax,ax
  0x00007f2aa5366feb: call   0x00007f2aa5046020  ; OopMap{[0]=Oop [128]=Oop [136]=Oop off=6064}
                                                ;*invokevirtual set
                                                ; - Hash_LongPoint::step@193 (line 110)
                                                ;   {optimized virtual_call}
  0x00007f2aa5366ff0: mov    r8,QWORD PTR [rsp]
  0x00007f2aa5366ff4: mov    ecx,DWORD PTR [r8+0x10]  ;*getfield size
                                                ; - java.util.ArrayList::access$100@1 (line 106)
                                                ; - java.util.ArrayList$Itr::hasNext@8 (line 846)
                                                ; - Hash_LongPoint::step@171 (line 109)

  0x00007f2aa5366ff8: cmp    ebp,ecx
  0x00007f2aa5366ffa: jne    0x00007f2aa5366f71  ;*if_icmpeq
                                                ; - java.util.ArrayList$Itr::hasNext@11 (line 846)
                                                ; - Hash_LongPoint::step@171 (line 109)

  0x00007f2aa5367000: mov    r8d,DWORD PTR [rsp+0x8]  ;*invokespecial <init>
                                                ; - java.util.ArrayList$Itr::<init>@2 (line 840)
                                                ; - java.util.ArrayList::iterator@6 (line 834)
                                                ; - Hash_LongPoint::step@200 (line 112)

  0x00007f2aa5367005: mov    r11,QWORD PTR [rsp+0x88]
  0x00007f2aa536700d: mov    r10d,DWORD PTR [r11+0xc]  ;*synchronization entry
                                                ; - java.util.ArrayList$Itr::<init>@-1 (line 840)
                                                ; - java.util.ArrayList::iterator@6 (line 834)
                                                ; - Hash_LongPoint::step@200 (line 112)

  0x00007f2aa5367011: mov    r9d,DWORD PTR [r11+0x10]  ;*getfield size
                                                ; - java.util.ArrayList::access$100@1 (line 106)
                                                ; - java.util.ArrayList$Itr::hasNext@8 (line 846)
                                                ; - Hash_LongPoint::step@205 (line 112)

  0x00007f2aa5367015: test   r9d,r9d
  0x00007f2aa5367018: je     0x00007f2aa536724e  ;*if_icmpeq
                                                ; - java.util.ArrayList$Itr::hasNext@11 (line 846)
                                                ; - Hash_LongPoint::step@205 (line 112)

  0x00007f2aa536701e: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367023: mov    r10d,r8d
  0x00007f2aa5367026: rex.W push   QWORD PTR [rsp+0x88]
  0x00007f2aa536702e: rex.W pop    QWORD PTR [rsp+0x20]
  0x00007f2aa5367033: xor    r8d,r8d
  0x00007f2aa5367036: mov    DWORD PTR [rsp+0x14],r8d
  0x00007f2aa536703b: jmp    0x00007f2aa5367057
  0x00007f2aa536703d: xchg   ax,ax
  0x00007f2aa5367040: mov    r10d,DWORD PTR [rsp+0x14]
  0x00007f2aa5367045: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536704a: mov    eax,DWORD PTR [rsp+0x10]
  0x00007f2aa536704e: mov    DWORD PTR [rsp+0x14],eax
  0x00007f2aa5367052: mov    rax,QWORD PTR [rsp-0x8]  ;*getfield size
                                                ; - java.util.ArrayList::access$100@1 (line 106)
                                                ; - java.util.ArrayList$Itr::next@14 (line 853)
                                                ; - Hash_LongPoint::step@214 (line 112)

  0x00007f2aa5367057: mov    r11,QWORD PTR [rsp+0x20]
  0x00007f2aa536705c: mov    r11d,DWORD PTR [r11+0xc]  ;*getfield modCount
                                                ; - java.util.ArrayList$Itr::checkForComodification@4 (line 900)
                                                ; - java.util.ArrayList$Itr::next@1 (line 851)
                                                ; - Hash_LongPoint::step@214 (line 112)

  0x00007f2aa5367060: cmp    r11d,DWORD PTR [rsp+0x18]
  0x00007f2aa5367065: jne    0x00007f2aa5367805  ;*if_icmpeq
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 900)
                                                ; - java.util.ArrayList$Itr::next@1 (line 851)
                                                ; - Hash_LongPoint::step@214 (line 112)

  0x00007f2aa536706b: mov    r11d,DWORD PTR [rsp+0x14]
  0x00007f2aa5367070: cmp    r11d,r9d
  0x00007f2aa5367073: jge    0x00007f2aa5367831  ;*if_icmplt
                                                ; - java.util.ArrayList$Itr::next@17 (line 853)
                                                ; - Hash_LongPoint::step@214 (line 112)

  0x00007f2aa5367079: mov    r11,QWORD PTR [rsp+0x20]
  0x00007f2aa536707e: mov    r11d,DWORD PTR [r11+0x14]
                                                ;*getfield elementData
                                                ; - java.util.ArrayList$Itr::next@32 (line 855)
                                                ; - Hash_LongPoint::step@214 (line 112)

  0x00007f2aa5367082: mov    r9d,DWORD PTR [r12+r11*8+0xc]
                                                ;*arraylength
                                                ; - java.util.ArrayList$Itr::next@38 (line 856)
                                                ; - Hash_LongPoint::step@214 (line 112)
                                                ; implicit exception: dispatches to 0x00007f2aa5368141
  0x00007f2aa5367087: mov    ecx,DWORD PTR [rsp+0x14]
  0x00007f2aa536708b: cmp    ecx,r9d
  0x00007f2aa536708e: jge    0x00007f2aa5367881  ;*if_icmplt
                                                ; - java.util.ArrayList$Itr::next@39 (line 856)
                                                ; - Hash_LongPoint::step@214 (line 112)

  0x00007f2aa5367094: mov    r10d,DWORD PTR [rsp+0x14]
  0x00007f2aa5367099: inc    r10d               ;*iadd
                                                ; - java.util.ArrayList$Itr::next@53 (line 858)
                                                ; - Hash_LongPoint::step@214 (line 112)

  0x00007f2aa536709c: mov    DWORD PTR [rsp+0x10],r10d
  0x00007f2aa53670a1: cmp    ecx,r9d
  0x00007f2aa53670a4: jae    0x00007f2aa53675e9
  0x00007f2aa53670aa: lea    r10,[r12+r11*8]
  0x00007f2aa53670ae: mov    r11d,DWORD PTR [r10+rcx*4+0x10]
                                                ;*aaload
                                                ; - java.util.ArrayList$Itr::next@64 (line 859)
                                                ; - Hash_LongPoint::step@214 (line 112)

  0x00007f2aa53670b3: mov    r10d,DWORD PTR [r12+r11*8+0x8]
                                                ; implicit exception: dispatches to 0x00007f2aa5368151
  0x00007f2aa53670b8: cmp    r10d,0xf800c188    ;   {metadata('LongPoint6')}
  0x00007f2aa53670bf: jne    0x00007f2aa5367cb9  ;*synchronization entry
                                                ; - Hash_LongPoint::reset@-1 (line 79)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa53670c5: lea    r10,[r12+r11*8]    ;*checkcast
                                                ; - Hash_LongPoint::step@219 (line 112)

  0x00007f2aa53670c9: mov    QWORD PTR [rsp],r10
  0x00007f2aa53670cd: mov    rbp,QWORD PTR [r10+0x10]  ;*getfield v
                                                ; - Hash_LongPoint::reset@1 (line 79)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa53670d1: mov    rdx,rbp
  0x00007f2aa53670d4: mov    r10,0xfffffffeffffffff
  0x00007f2aa53670de: add    rdx,r10            ;*lsub
                                                ; - Hash_LongPoint::reset@12 (line 80)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa53670e1: mov    rsi,QWORD PTR [rsp+0x80]
  0x00007f2aa53670e9: xchg   ax,ax
  0x00007f2aa53670eb: call   0x00007f2aa5046020  ; OopMap{[0]=Oop [32]=Oop [128]=Oop off=6320}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@13 (line 80)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {optimized virtual_call}
  0x00007f2aa53670f0: mov    rdx,rbp
  0x00007f2aa53670f3: mov    r10,0xffffffff00000000
  0x00007f2aa53670fd: add    rdx,r10            ;*lsub
                                                ; - Hash_LongPoint::reset@10 (line 80)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa5367100: mov    rsi,QWORD PTR [rsp+0x80]
  0x00007f2aa5367108: xchg   ax,ax
  0x00007f2aa536710b: call   0x00007f2aa5046020  ; OopMap{[0]=Oop [32]=Oop [128]=Oop off=6352}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@22 (line 81)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {optimized virtual_call}
  0x00007f2aa5367110: mov    rdx,rbp
  0x00007f2aa5367113: mov    r10,0xffffffff00000001
  0x00007f2aa536711d: add    rdx,r10            ;*ladd
                                                ; - Hash_LongPoint::reset@32 (line 82)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa5367120: mov    rsi,QWORD PTR [rsp+0x80]
  0x00007f2aa5367128: xchg   ax,ax
  0x00007f2aa536712b: call   0x00007f2aa5046020  ; OopMap{[0]=Oop [32]=Oop [128]=Oop off=6384}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@33 (line 82)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {optimized virtual_call}
  0x00007f2aa5367130: mov    rdx,rbp
  0x00007f2aa5367133: dec    rdx                ;*lsub
                                                ; - Hash_LongPoint::reset@39 (line 83)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa5367136: mov    rsi,QWORD PTR [rsp+0x80]
  0x00007f2aa536713e: nop    
  0x00007f2aa536713f: call   0x00007f2aa5046020  ; OopMap{[0]=Oop [32]=Oop [128]=Oop off=6404}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@40 (line 83)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {optimized virtual_call}
  0x00007f2aa5367144: mov    rdx,rbp
  0x00007f2aa5367147: add    rdx,0x1            ;*ladd
                                                ; - Hash_LongPoint::reset@46 (line 84)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa536714b: mov    rsi,QWORD PTR [rsp+0x80]
  0x00007f2aa5367153: call   0x00007f2aa5046020  ; OopMap{[0]=Oop [32]=Oop [128]=Oop off=6424}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@47 (line 84)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {optimized virtual_call}
  0x00007f2aa5367158: mov    rdx,rbp
  0x00007f2aa536715b: mov    r10d,0xffffffff
  0x00007f2aa5367161: add    rdx,r10            ;*lsub
                                                ; - Hash_LongPoint::reset@57 (line 85)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa5367164: mov    rsi,QWORD PTR [rsp+0x80]
  0x00007f2aa536716c: xchg   ax,ax
  0x00007f2aa536716f: call   0x00007f2aa5046020  ; OopMap{[0]=Oop [32]=Oop [128]=Oop off=6452}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@58 (line 85)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {optimized virtual_call}
  0x00007f2aa5367174: mov    rdx,rbp
  0x00007f2aa5367177: mov    r10,0x100000000
  0x00007f2aa5367181: add    rdx,r10            ;*ladd
                                                ; - Hash_LongPoint::reset@55 (line 85)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa5367184: mov    rsi,QWORD PTR [rsp+0x80]
  0x00007f2aa536718c: xchg   ax,ax
  0x00007f2aa536718f: call   0x00007f2aa5046020  ; OopMap{[0]=Oop [32]=Oop [128]=Oop off=6484}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@67 (line 86)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {optimized virtual_call}
  0x00007f2aa5367194: mov    rdx,rbp
  0x00007f2aa5367197: mov    r10,0x100000001
  0x00007f2aa53671a1: add    rdx,r10            ;*ladd
                                                ; - Hash_LongPoint::reset@77 (line 87)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa53671a4: mov    rsi,QWORD PTR [rsp+0x80]
  0x00007f2aa53671ac: xchg   ax,ax
  0x00007f2aa53671af: call   0x00007f2aa5046020  ; OopMap{[0]=Oop [32]=Oop [128]=Oop off=6516}
                                                ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@78 (line 87)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {optimized virtual_call}
  0x00007f2aa53671b4: mov    r10,QWORD PTR [rsp+0x80]
  0x00007f2aa53671bc: mov    r11d,DWORD PTR [r10+0x10]
                                                ;*getfield field
                                                ; - Hash_LongPoint::reset@82 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa53671c0: mov    r10d,DWORD PTR [r12+r11*8+0xc]
                                                ;*getfield map
                                                ; - java.util.HashSet::remove@1 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ; implicit exception: dispatches to 0x00007f2aa5368185
  0x00007f2aa53671c5: test   r10d,r10d
  0x00007f2aa53671c8: je     0x00007f2aa5367615  ;*invokevirtual remove
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa53671ce: mov    r11,QWORD PTR [rsp]
  0x00007f2aa53671d2: mov    r11,QWORD PTR [r11+0x10]  ;*getfield v
                                                ; - LongPoint6::hashCode@1 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::remove@2 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa53671d6: mov    rax,0x2449f0232c624b0b
  0x00007f2aa53671e0: imul   r11
  0x00007f2aa53671e3: lea    rsi,[r12+r10*8]    ;*getfield map
                                                ; - java.util.HashSet::remove@1 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa53671e7: sar    rdx,0x1b
  0x00007f2aa53671eb: mov    r10,r11
  0x00007f2aa53671ee: sar    r10,0x3f
  0x00007f2aa53671f2: sub    rdx,r10
  0x00007f2aa53671f5: imul   r10,rdx,0x386fa527
  0x00007f2aa53671fc: sub    r11,r10
  0x00007f2aa53671ff: mov    r11d,r11d          ;*l2i  ; - LongPoint6::hashCode@8 (line 21)
                                                ; - java.util.HashMap::hash@9 (line 338)
                                                ; - java.util.HashMap::remove@2 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa5367202: mov    edx,r11d
  0x00007f2aa5367205: shr    edx,0x10
  0x00007f2aa5367208: xor    edx,r11d           ;*ixor
                                                ; - java.util.HashMap::hash@18 (line 338)
                                                ; - java.util.HashMap::remove@2 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa536720b: mov    rcx,QWORD PTR [rsp]
  0x00007f2aa536720f: xor    r8d,r8d
  0x00007f2aa5367212: xor    r9d,r9d
  0x00007f2aa5367215: mov    edi,0x1
  0x00007f2aa536721a: nop    
  0x00007f2aa536721b: call   0x00007f2aa5046020  ; OopMap{[32]=Oop [128]=Oop off=6624}
                                                ;*invokevirtual removeNode
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {optimized virtual_call}
  0x00007f2aa5367220: mov    r10d,DWORD PTR [rax+0x14]
                                                ;*getfield value
                                                ; - java.util.HashMap::remove@22 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ; implicit exception: dispatches to 0x00007f2aa5368281
  0x00007f2aa5367224: cmp    r10d,0xd00a0320    ;   {oop(a 'java/lang/Object')}
  0x00007f2aa536722b: jne    0x00007f2aa536772f  ; OopMap{[32]=Oop [128]=Oop off=6641}
                                                ;*goto
                                                ; - Hash_LongPoint::step@230 (line 114)

  0x00007f2aa5367231: test   DWORD PTR [rip+0x17980dc9],eax        # 0x00007f2abcce8000
                                                ;*goto
                                                ; - Hash_LongPoint::step@230 (line 114)
                                                ;   {poll}
  0x00007f2aa5367237: mov    r10,QWORD PTR [rsp+0x20]
  0x00007f2aa536723c: mov    r9d,DWORD PTR [r10+0x10]  ;*getfield size
                                                ; - java.util.ArrayList::access$100@1 (line 106)
                                                ; - java.util.ArrayList$Itr::hasNext@8 (line 846)
                                                ; - Hash_LongPoint::step@205 (line 112)

  0x00007f2aa5367240: mov    r10d,DWORD PTR [rsp+0x10]
  0x00007f2aa5367245: cmp    r10d,r9d
  0x00007f2aa5367248: jne    0x00007f2aa5367040  ;*ifeq
                                                ; - Hash_LongPoint::step@210 (line 112)

  0x00007f2aa536724e: add    rsp,0xb0
  0x00007f2aa5367255: pop    rbp
  0x00007f2aa5367256: test   DWORD PTR [rip+0x17980da4],eax        # 0x00007f2abcce8000
                                                ;   {poll_return}
  0x00007f2aa536725c: ret    
  0x00007f2aa536725d: mov    DWORD PTR [rsp+0x58],r8d
  0x00007f2aa5367262: jmp    0x00007f2aa5366e04
  0x00007f2aa5367267: cmp    ecx,0xa
  0x00007f2aa536726a: mov    r8d,ecx
  0x00007f2aa536726d: mov    r9d,0xa
  0x00007f2aa5367273: cmovle r8d,r9d            ;*invokestatic max
                                                ; - java.util.ArrayList::ensureCapacityInternal@13 (line 224)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5367277: jmp    0x00007f2aa53664ba
  0x00007f2aa536727c: add    esi,0x4            ;*iadd
                                                ; - java.util.HashMap$HashIterator::<init>@66 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa536727f: jmp    0x00007f2aa5365aca
  0x00007f2aa5367284: add    edi,0x4            ;*iadd
                                                ; - java.util.HashMap$HashIterator::<init>@66 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)

  0x00007f2aa5367287: jmp    0x00007f2aa536647d
  0x00007f2aa536728c: mov    rax,QWORD PTR [r15+0x60]
  0x00007f2aa5367290: mov    r10,rax
  0x00007f2aa5367293: add    r10,0x10
  0x00007f2aa5367297: cmp    r10,QWORD PTR [r15+0x70]
  0x00007f2aa536729b: jae    0x00007f2aa53679ed
  0x00007f2aa53672a1: mov    QWORD PTR [r15+0x60],r10
  0x00007f2aa53672a5: prefetchnta BYTE PTR [r10+0xc0]
  0x00007f2aa53672ad: mov    r10,QWORD PTR [rdx+0xa8]
  0x00007f2aa53672b4: mov    QWORD PTR [rax],r10
  0x00007f2aa53672b7: mov    DWORD PTR [rax+0x8],0xf8008302
                                                ;   {metadata('java/util/HashMap$KeySet')}
  0x00007f2aa53672be: mov    r10,rcx
  0x00007f2aa53672c1: shr    r10,0x3
  0x00007f2aa53672c5: mov    DWORD PTR [rax+0xc],r10d  ;*new
                                                ; - java.util.HashMap::keySet@10 (line 906)
                                                ; - java.util.HashSet::iterator@4 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa53672c9: mov    rbp,rax
  0x00007f2aa53672cc: mov    r10,rax
  0x00007f2aa53672cf: shr    r10,0x3
  0x00007f2aa53672d3: mov    DWORD PTR [rcx+0xc],r10d
  0x00007f2aa53672d7: mov    r10,rcx
  0x00007f2aa53672da: shr    r10,0x9
  0x00007f2aa53672de: mov    r9,0x7f2ab6fa4000
  0x00007f2aa53672e8: mov    BYTE PTR [r9+r10*1],r12b
  0x00007f2aa53672ec: lock add DWORD PTR [rsp],0x0  ;*putfield keySet
                                                ; - java.util.HashMap::keySet@19 (line 906)
                                                ; - java.util.HashSet::iterator@4 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa53672f1: jmp    0x00007f2aa5365980
  0x00007f2aa53672f6: mov    rax,QWORD PTR [r15+0x60]
  0x00007f2aa53672fa: mov    r10,rax
  0x00007f2aa53672fd: add    r10,0x10
  0x00007f2aa5367301: cmp    r10,QWORD PTR [r15+0x70]
  0x00007f2aa5367305: jae    0x00007f2aa5367a2f
  0x00007f2aa536730b: mov    QWORD PTR [r15+0x60],r10
  0x00007f2aa536730f: prefetchnta BYTE PTR [r10+0xc0]
  0x00007f2aa5367317: mov    r10,QWORD PTR [rsp+0x78]
  0x00007f2aa536731c: mov    r10,QWORD PTR [r10+0xa8]
  0x00007f2aa5367323: mov    QWORD PTR [rax],r10
  0x00007f2aa5367326: mov    DWORD PTR [rax+0x8],0xf8008302
                                                ;   {metadata('java/util/HashMap$KeySet')}
  0x00007f2aa536732d: mov    DWORD PTR [rax+0xc],r12d  ;*new
                                                ; - java.util.HashMap::keySet@10 (line 906)
                                                ; - Hash_LongPoint::step@95 (line 106)

  0x00007f2aa5367331: mov    rbp,rax            ;*areturn
                                                ; - java.util.HashMap::keySet@26 (line 906)
                                                ; - Hash_LongPoint::step@95 (line 106)

  0x00007f2aa5367334: mov    r10,r8
  0x00007f2aa5367337: shr    r10,0x3
  0x00007f2aa536733b: mov    DWORD PTR [rax+0xc],r10d
  0x00007f2aa536733f: mov    r10,rax
  0x00007f2aa5367342: shr    r10,0x3
  0x00007f2aa5367346: mov    DWORD PTR [r8+0xc],r10d
  0x00007f2aa536734a: mov    r10,r8
  0x00007f2aa536734d: shr    r10,0x9
  0x00007f2aa5367351: mov    r11,0x7f2ab6fa4000
  0x00007f2aa536735b: mov    BYTE PTR [r11+r10*1],r12b
  0x00007f2aa536735f: lock add DWORD PTR [rsp],0x0  ;*putfield keySet
                                                ; - java.util.HashMap::keySet@19 (line 906)
                                                ; - Hash_LongPoint::step@95 (line 106)

  0x00007f2aa5367364: jmp    0x00007f2aa53662bc
  0x00007f2aa5367369: mov    esi,0x1
  0x00007f2aa536736e: jmp    0x00007f2aa5365acd
  0x00007f2aa5367373: mov    edi,0x1
  0x00007f2aa5367378: jmp    0x00007f2aa536647d
  0x00007f2aa536737d: mov    r8d,0xffffffff
  0x00007f2aa5367383: jmp    0x00007f2aa5367005
  0x00007f2aa5367388: mov    r10,rdx
  0x00007f2aa536738b: shl    r10,0x2
  0x00007f2aa536738f: add    r10,0x10
  0x00007f2aa5367393: mov    r11,r10
  0x00007f2aa5367396: and    r11,0xfffffffffffffffb
  0x00007f2aa536739a: mov    rdi,rbx
  0x00007f2aa536739d: add    rdi,r11
  0x00007f2aa53673a0: shr    r10,0x3
  0x00007f2aa53673a4: mov    r11,r8
  0x00007f2aa53673a7: sub    r11,r10
  0x00007f2aa53673aa: mov    rcx,r11
  0x00007f2aa53673ad: xor    rax,rax
  0x00007f2aa53673b0: rep stos QWORD PTR es:[rdi],rax  ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa53673b3: jmp    0x00007f2aa536622f
  0x00007f2aa53673b8: mov    esi,0xffffffe4
  0x00007f2aa53673bd: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53673c2: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa53673c7: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53673cc: mov    DWORD PTR [rsp+0x1c],r9d
  0x00007f2aa53673d1: mov    DWORD PTR [rsp+0x28],r8d
  0x00007f2aa53673d6: nop    
  0x00007f2aa53673d7: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7068}
                                                ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa53673dc: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa53673e1: mov    esi,0xffffffde
  0x00007f2aa53673e6: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53673eb: mov    QWORD PTR [rsp+0x20],r11
  0x00007f2aa53673f0: xchg   ax,ax
  0x00007f2aa53673f3: call   0x00007f2aa50051a0  ; OopMap{[24]=NarrowOop [32]=Oop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7096}
                                                ;*invokevirtual get
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa53673f8: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa53673fd: mov    esi,0xffffff86
  0x00007f2aa5367402: mov    DWORD PTR [rsp+0x10],r10d
  0x00007f2aa5367407: call   0x00007f2aa50051a0  ; OopMap{[16]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7116}
                                                ;*aload_0
                                                ; - java.util.HashMap$HashIterator::nextNode@77 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa536740c: call   0x00007f2abc3f1320  ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367411: mov    esi,0xffffff65
  0x00007f2aa5367416: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa536741b: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5367420: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367425: mov    DWORD PTR [rsp+0x1c],r9d
  0x00007f2aa536742a: mov    DWORD PTR [rsp+0x2c],ebx
  0x00007f2aa536742e: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367433: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5367437: mov    DWORD PTR [rsp+0x30],eax
  0x00007f2aa536743b: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367440: xchg   ax,ax
  0x00007f2aa5367443: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7176}
                                                ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367448: call   0x00007f2abc3f1320  ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa536744d: mov    r10,rdx
  0x00007f2aa5367450: shl    r10,0x2
  0x00007f2aa5367454: add    r10,0x10
  0x00007f2aa5367458: mov    r11,r10
  0x00007f2aa536745b: and    r11,0xfffffffffffffffb
  0x00007f2aa536745f: mov    rdi,rbx
  0x00007f2aa5367462: add    rdi,r11
  0x00007f2aa5367465: shr    r10,0x3
  0x00007f2aa5367469: mov    r11,r8
  0x00007f2aa536746c: sub    r11,r10
  0x00007f2aa536746f: mov    rcx,r11
  0x00007f2aa5367472: xor    rax,rax
  0x00007f2aa5367475: rep stos QWORD PTR es:[rdi],rax  ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5367478: jmp    0x00007f2aa5366efb
  0x00007f2aa536747d: mov    esi,0xffffff65
  0x00007f2aa5367482: mov    DWORD PTR [rsp+0x14],r10d
  0x00007f2aa5367487: call   0x00007f2aa50051a0  ; OopMap{[40]=Oop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7244}
                                                ;*if_icmpeq
                                                ; - java.util.HashMap$HashIterator::nextNode@16 (line 1428)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa536748c: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367491: mov    esi,0xfffffff4
  0x00007f2aa5367496: nop    
  0x00007f2aa5367497: call   0x00007f2aa50051a0  ; OopMap{[56]=Oop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7260}
                                                ;*checkcast
                                                ; - Hash_LongPoint::step@133 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa536749c: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa53674a1: mov    esi,0xffffffe4
  0x00007f2aa53674a6: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53674ab: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa53674b0: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53674b5: mov    DWORD PTR [rsp+0x1c],edi
  0x00007f2aa53674b9: mov    DWORD PTR [rsp+0x28],ecx
  0x00007f2aa53674bd: xchg   ax,ax
  0x00007f2aa53674bf: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7300}
                                                ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa53674c4: call   0x00007f2abc3f1320  ;*synchronization entry
                                                ; - java.util.Arrays::copyOf@-1 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ;   {runtime_call}
  0x00007f2aa53674c9: mov    edx,DWORD PTR [rsp+0x50]
  0x00007f2aa53674cd: mov    QWORD PTR [rsp+0x60],r9
  0x00007f2aa53674d2: nop    
  0x00007f2aa53674d3: call   0x00007f2aa518a720  ; OopMap{rbp=Oop [40]=Oop [48]=NarrowOop [56]=Oop [76]=NarrowOop [84]=NarrowOop [96]=Oop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7320}
                                                ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ;   {runtime_call}
  0x00007f2aa53674d8: mov    rbx,rax
  0x00007f2aa53674db: jmp    0x00007f2aa53661f5
  0x00007f2aa53674e0: mov    esi,0xffffffde
  0x00007f2aa53674e5: mov    DWORD PTR [rsp+0x18],r8d
  0x00007f2aa53674ea: mov    QWORD PTR [rsp+0x20],r10
  0x00007f2aa53674ef: call   0x00007f2aa50051a0  ; OopMap{[24]=NarrowOop [32]=Oop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7348}
                                                ;*invokevirtual get
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa53674f4: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa53674f9: mov    esi,0xffffff86
  0x00007f2aa53674fe: mov    DWORD PTR [rsp+0x10],r10d
  0x00007f2aa5367503: call   0x00007f2aa50051a0  ; OopMap{[16]=NarrowOop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7368}
                                                ;*aload_0
                                                ; - java.util.HashMap$HashIterator::nextNode@77 (line 1433)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5367508: call   0x00007f2abc3f1320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa536750d: cmp    r9,rcx
  0x00007f2aa5367510: mov    ebp,0xffffffff
  0x00007f2aa5367515: jl     0x00007f2aa536751f
  0x00007f2aa5367517: setne  bpl
  0x00007f2aa536751b: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)

  0x00007f2aa536751f: mov    esi,0xffffff65
  0x00007f2aa5367524: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367529: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa536752e: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5367533: mov    DWORD PTR [rsp+0x24],r11d
  0x00007f2aa5367538: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536753d: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5367541: mov    DWORD PTR [rsp+0x30],eax
  0x00007f2aa5367545: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536754a: nop    
  0x00007f2aa536754b: call   0x00007f2aa50051a0  ; OopMap{[24]=Oop [36]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7440}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367550: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367555: mov    esi,0xffffffe4
  0x00007f2aa536755a: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa536755f: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5367564: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367569: mov    DWORD PTR [rsp+0x1c],r8d
  0x00007f2aa536756e: mov    DWORD PTR [rsp+0x28],r11d
  0x00007f2aa5367573: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7480}
                                                ;*aaload
                                                ; - java.util.HashMap::getNode@24 (line 568)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367578: call   0x00007f2abc3f1320  ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa536757d: mov    esi,0xffffff65
  0x00007f2aa5367582: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367587: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa536758c: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367591: mov    DWORD PTR [rsp+0x1c],edi
  0x00007f2aa5367595: mov    DWORD PTR [rsp+0x2c],r11d
  0x00007f2aa536759a: nop    
  0x00007f2aa536759b: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7520}
                                                ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa53675a0: call   0x00007f2abc3f1320  ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa53675a5: mov    esi,0xffffff65
  0x00007f2aa53675aa: mov    DWORD PTR [rsp+0x14],r10d
  0x00007f2aa53675af: call   0x00007f2aa50051a0  ; OopMap{[40]=Oop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7540}
                                                ;*if_icmpeq
                                                ; - java.util.HashMap$HashIterator::nextNode@16 (line 1428)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa53675b4: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa53675b9: mov    esi,0xffffffe4
  0x00007f2aa53675be: mov    DWORD PTR [rsp+0x10],ecx
  0x00007f2aa53675c2: mov    DWORD PTR [rsp+0x18],r11d
  0x00007f2aa53675c7: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53675cc: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f2aa53675d0: mov    DWORD PTR [rsp+0x1c],eax
  0x00007f2aa53675d4: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53675d9: mov    QWORD PTR [rsp+0x20],r8
  0x00007f2aa53675de: nop    
  0x00007f2aa53675df: call   0x00007f2aa50051a0  ; OopMap{[16]=NarrowOop [32]=Oop [128]=Oop [136]=Oop off=7588}
                                                ;*aaload
                                                ; - java.util.ArrayList$Itr::next@64 (line 859)
                                                ; - Hash_LongPoint::step@180 (line 109)
                                                ;   {runtime_call}
  0x00007f2aa53675e4: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa53675e9: mov    esi,0xffffffe4
  0x00007f2aa53675ee: mov    DWORD PTR [rsp],r11d
  0x00007f2aa53675f2: mov    DWORD PTR [rsp+0x8],r10d
  0x00007f2aa53675f7: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53675fc: mov    eax,DWORD PTR [rsp+0x18]
  0x00007f2aa5367600: mov    DWORD PTR [rsp+0x10],eax
  0x00007f2aa5367604: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367609: xchg   ax,ax
  0x00007f2aa536760b: call   0x00007f2aa50051a0  ; OopMap{[0]=NarrowOop [32]=Oop [128]=Oop off=7632}
                                                ;*aaload
                                                ; - java.util.ArrayList$Itr::next@64 (line 859)
                                                ; - Hash_LongPoint::step@214 (line 112)
                                                ;   {runtime_call}
  0x00007f2aa5367610: call   0x00007f2abc3f1320  ;*aaload
                                                ; - java.util.ArrayList$Itr::next@64 (line 859)
                                                ; - Hash_LongPoint::step@214 (line 112)
                                                ;   {runtime_call}
  0x00007f2aa5367615: mov    esi,0xfffffff6
  0x00007f2aa536761a: mov    rbp,QWORD PTR [rsp]
  0x00007f2aa536761e: nop    
  0x00007f2aa536761f: call   0x00007f2aa50051a0  ; OopMap{rbp=Oop off=7652}
                                                ;*invokevirtual remove
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {runtime_call}
  0x00007f2aa5367624: call   0x00007f2abc3f1320  ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367629: mov    esi,0xffffff65
  0x00007f2aa536762e: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367633: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5367638: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa536763d: mov    DWORD PTR [rsp+0x1c],r8d
  0x00007f2aa5367642: mov    DWORD PTR [rsp+0x2c],r9d
  0x00007f2aa5367647: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536764c: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5367650: mov    DWORD PTR [rsp+0x30],eax
  0x00007f2aa5367654: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367659: xchg   ax,ax
  0x00007f2aa536765b: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7712}
                                                ;*ifle
                                                ; - java.util.HashMap::getNode@14 (line 568)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367660: call   0x00007f2abc3f1320  ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa5367665: cmp    r11,rbx
  0x00007f2aa5367668: mov    ebp,0xffffffff
  0x00007f2aa536766d: jl     0x00007f2aa5367677
  0x00007f2aa536766f: setne  bpl
  0x00007f2aa5367673: movzx  ebp,bpl            ;*lcmp
                                                ; - LongPoint::equals@11 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)

  0x00007f2aa5367677: mov    esi,0xffffff65
  0x00007f2aa536767c: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367681: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa5367686: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa536768b: mov    DWORD PTR [rsp+0x24],edx
  0x00007f2aa536768f: call   0x00007f2aa50051a0  ; OopMap{[24]=Oop [36]=NarrowOop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7764}
                                                ;*ifne
                                                ; - LongPoint::equals@12 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa5367694: call   0x00007f2abc3f1320  ;*aastore
                                                ; - java.util.ArrayList::add@26 (line 459)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ;   {runtime_call}
  0x00007f2aa5367699: mov    esi,0xffffffe4
  0x00007f2aa536769e: mov    QWORD PTR [rsp+0x10],rbx
  0x00007f2aa53676a3: mov    DWORD PTR [rsp+0x18],ecx
  0x00007f2aa53676a7: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53676ac: rex.W pop    QWORD PTR [rsp+0x20]
  0x00007f2aa53676b1: xchg   ax,ax
  0x00007f2aa53676b3: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [32]=Oop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7800}
                                                ;*aastore
                                                ; - java.util.ArrayList::add@26 (line 459)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ;   {runtime_call}
  0x00007f2aa53676b8: call   0x00007f2abc3f1320  ;*aastore
                                                ; - java.util.ArrayList::add@26 (line 459)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ;   {runtime_call}
  0x00007f2aa53676bd: mov    esi,0xffffffd6
  0x00007f2aa53676c2: mov    QWORD PTR [rsp+0x10],rbx
  0x00007f2aa53676c7: mov    DWORD PTR [rsp+0x18],ecx
  0x00007f2aa53676cb: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53676d0: rex.W pop    QWORD PTR [rsp+0x20]
  0x00007f2aa53676d5: xchg   ax,ax
  0x00007f2aa53676d7: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [32]=Oop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=7836}
                                                ;*aastore
                                                ; - java.util.ArrayList::add@26 (line 459)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ;   {runtime_call}
  0x00007f2aa53676dc: call   0x00007f2abc3f1320  ;*synchronization entry
                                                ; - java.util.Arrays::copyOf@-1 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa53676e1: mov    edx,DWORD PTR [rsp+0x58]
  0x00007f2aa53676e5: mov    QWORD PTR [rsp+0x78],r9
  0x00007f2aa53676ea: nop    
  0x00007f2aa53676eb: call   0x00007f2aa518a720  ; OopMap{rbp=Oop [40]=Oop [48]=NarrowOop [56]=Oop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [120]=Oop [128]=Oop [136]=Oop off=7856}
                                                ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa53676f0: mov    rbx,rax
  0x00007f2aa53676f3: jmp    0x00007f2aa5366ec2
  0x00007f2aa53676f8: mov    rsi,0x7c001b6c0    ;   {metadata('java/util/ArrayList')}
  0x00007f2aa5367702: nop    
  0x00007f2aa5367703: call   0x00007f2aa518b960  ; OopMap{[0]=Oop off=7880}
                                                ;*new  ; - Hash_LongPoint::step@0 (line 100)
                                                ;   {runtime_call}
  0x00007f2aa5367708: mov    r11,rax
  0x00007f2aa536770b: jmp    0x00007f2aa53658c3
  0x00007f2aa5367710: mov    rbp,r11            ;*invokespecial <init>
                                                ; - Hash_LongPoint::step@4 (line 100)

  0x00007f2aa5367713: mov    rsi,0x7c001b6c0    ;   {metadata('java/util/ArrayList')}
  0x00007f2aa536771d: xchg   ax,ax
  0x00007f2aa536771f: call   0x00007f2aa518b960  ; OopMap{rbp=Oop [0]=Oop off=7908}
                                                ;*new  ; - Hash_LongPoint::step@8 (line 101)
                                                ;   {runtime_call}
  0x00007f2aa5367724: mov    r11,rbp
  0x00007f2aa5367727: mov    r8,rax
  0x00007f2aa536772a: jmp    0x00007f2aa536591b
  0x00007f2aa536772f: mov    esi,0xffffff65
  0x00007f2aa5367734: mov    DWORD PTR [rsp],r10d
  0x00007f2aa5367738: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536773d: mov    eax,DWORD PTR [rsp+0x10]
  0x00007f2aa5367741: mov    DWORD PTR [rsp+0x4],eax
  0x00007f2aa5367745: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536774a: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536774f: mov    eax,DWORD PTR [rsp+0x14]
  0x00007f2aa5367753: mov    DWORD PTR [rsp+0x8],eax
  0x00007f2aa5367757: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536775c: xchg   ax,ax
  0x00007f2aa536775f: call   0x00007f2aa50051a0  ; OopMap{[0]=NarrowOop [32]=Oop [128]=Oop off=7972}
                                                ;*if_acmpne
                                                ; - java.util.HashSet::remove@11 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {runtime_call}
  0x00007f2aa5367764: call   0x00007f2abc3f1320  ;*if_acmpne
                                                ; - java.util.HashSet::remove@11 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {runtime_call}
  0x00007f2aa5367769: mov    esi,0xffffff65
  0x00007f2aa536776e: mov    DWORD PTR [rsp+0x8],edi
  0x00007f2aa5367772: mov    DWORD PTR [rsp+0x10],r11d
  0x00007f2aa5367777: mov    DWORD PTR [rsp+0x14],r9d
  0x00007f2aa536777c: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367781: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f2aa5367785: mov    DWORD PTR [rsp+0x18],eax
  0x00007f2aa5367789: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536778e: mov    QWORD PTR [rsp+0x20],r8
  0x00007f2aa5367793: call   0x00007f2aa50051a0  ; OopMap{[32]=Oop [128]=Oop [136]=Oop off=8024}
                                                ;*if_icmpeq
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 900)
                                                ; - java.util.ArrayList$Itr::next@1 (line 851)
                                                ; - Hash_LongPoint::step@180 (line 109)
                                                ;   {runtime_call}
  0x00007f2aa5367798: call   0x00007f2abc3f1320  ;*if_icmpeq
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 900)
                                                ; - java.util.ArrayList$Itr::next@1 (line 851)
                                                ; - Hash_LongPoint::step@180 (line 109)
                                                ;   {runtime_call}
  0x00007f2aa536779d: mov    esi,0xffffff65
  0x00007f2aa53677a2: mov    DWORD PTR [rsp+0xc],r11d
  0x00007f2aa53677a7: mov    DWORD PTR [rsp+0x10],ecx
  0x00007f2aa53677ab: mov    DWORD PTR [rsp+0x14],r11d
  0x00007f2aa53677b0: mov    DWORD PTR [rsp+0x18],r9d
  0x00007f2aa53677b5: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53677ba: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f2aa53677be: mov    DWORD PTR [rsp+0x1c],eax
  0x00007f2aa53677c2: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53677c7: mov    QWORD PTR [rsp+0x20],r8
  0x00007f2aa53677cc: xchg   ax,ax
  0x00007f2aa53677cf: call   0x00007f2aa50051a0  ; OopMap{[32]=Oop [128]=Oop [136]=Oop off=8084}
                                                ;*if_icmplt
                                                ; - java.util.ArrayList$Itr::next@17 (line 853)
                                                ; - Hash_LongPoint::step@180 (line 109)
                                                ;   {runtime_call}
  0x00007f2aa53677d4: call   0x00007f2abc3f1320  ;*if_icmplt
                                                ; - java.util.ArrayList$Itr::next@17 (line 853)
                                                ; - Hash_LongPoint::step@180 (line 109)
                                                ;   {runtime_call}
  0x00007f2aa53677d9: mov    esi,0xffffff65
  0x00007f2aa53677de: mov    DWORD PTR [rsp+0xc],ecx
  0x00007f2aa53677e2: mov    DWORD PTR [rsp+0x10],r11d
  0x00007f2aa53677e7: mov    DWORD PTR [rsp+0x14],edi
  0x00007f2aa53677eb: mov    DWORD PTR [rsp+0x18],r11d
  0x00007f2aa53677f0: mov    DWORD PTR [rsp+0x1c],r9d
  0x00007f2aa53677f5: mov    QWORD PTR [rsp+0x28],r8
  0x00007f2aa53677fa: nop    
  0x00007f2aa53677fb: call   0x00007f2aa50051a0  ; OopMap{[12]=NarrowOop [40]=Oop [128]=Oop [136]=Oop off=8128}
                                                ;*if_icmplt
                                                ; - java.util.ArrayList$Itr::next@39 (line 856)
                                                ; - Hash_LongPoint::step@180 (line 109)
                                                ;   {runtime_call}
  0x00007f2aa5367800: call   0x00007f2abc3f1320  ;*if_icmplt
                                                ; - java.util.ArrayList$Itr::next@39 (line 856)
                                                ; - Hash_LongPoint::step@180 (line 109)
                                                ;   {runtime_call}
  0x00007f2aa5367805: mov    esi,0xffffff65
  0x00007f2aa536780a: mov    DWORD PTR [rsp],r11d
  0x00007f2aa536780e: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367813: mov    eax,DWORD PTR [rsp+0x18]
  0x00007f2aa5367817: mov    DWORD PTR [rsp+0x4],eax
  0x00007f2aa536781b: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367820: mov    DWORD PTR [rsp+0xc],r10d
  0x00007f2aa5367825: xchg   ax,ax
  0x00007f2aa5367827: call   0x00007f2aa50051a0  ; OopMap{[32]=Oop [128]=Oop off=8172}
                                                ;*if_icmpeq
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 900)
                                                ; - java.util.ArrayList$Itr::next@1 (line 851)
                                                ; - Hash_LongPoint::step@214 (line 112)
                                                ;   {runtime_call}
  0x00007f2aa536782c: call   0x00007f2abc3f1320  ;*if_icmpeq
                                                ; - java.util.ArrayList$Itr::checkForComodification@11 (line 900)
                                                ; - java.util.ArrayList$Itr::next@1 (line 851)
                                                ; - Hash_LongPoint::step@214 (line 112)
                                                ;   {runtime_call}
  0x00007f2aa5367831: mov    esi,0xffffff65
  0x00007f2aa5367836: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536783b: mov    eax,DWORD PTR [rsp+0x14]
  0x00007f2aa536783f: mov    DWORD PTR [rsp+0x4],eax
  0x00007f2aa5367843: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367848: mov    DWORD PTR [rsp+0x8],r9d
  0x00007f2aa536784d: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367852: mov    eax,DWORD PTR [rsp+0x14]
  0x00007f2aa5367856: mov    DWORD PTR [rsp+0xc],eax
  0x00007f2aa536785a: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536785f: mov    DWORD PTR [rsp+0x10],r10d
  0x00007f2aa5367864: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367869: mov    eax,DWORD PTR [rsp+0x18]
  0x00007f2aa536786d: mov    DWORD PTR [rsp+0x14],eax
  0x00007f2aa5367871: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367876: nop    
  0x00007f2aa5367877: call   0x00007f2aa50051a0  ; OopMap{[32]=Oop [128]=Oop off=8252}
                                                ;*if_icmplt
                                                ; - java.util.ArrayList$Itr::next@17 (line 853)
                                                ; - Hash_LongPoint::step@214 (line 112)
                                                ;   {runtime_call}
  0x00007f2aa536787c: call   0x00007f2abc3f1320  ;*if_icmplt
                                                ; - java.util.ArrayList$Itr::next@17 (line 853)
                                                ; - Hash_LongPoint::step@214 (line 112)
                                                ;   {runtime_call}
  0x00007f2aa5367881: mov    esi,0xffffff65
  0x00007f2aa5367886: mov    DWORD PTR [rsp+0x4],r11d
  0x00007f2aa536788b: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367890: mov    eax,DWORD PTR [rsp+0x14]
  0x00007f2aa5367894: mov    DWORD PTR [rsp+0x8],eax
  0x00007f2aa5367898: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536789d: mov    DWORD PTR [rsp+0xc],r9d
  0x00007f2aa53678a2: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53678a7: mov    eax,DWORD PTR [rsp+0x14]
  0x00007f2aa53678ab: mov    DWORD PTR [rsp+0x10],eax
  0x00007f2aa53678af: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53678b4: mov    DWORD PTR [rsp+0x14],r10d
  0x00007f2aa53678b9: xchg   ax,ax
  0x00007f2aa53678bb: call   0x00007f2aa50051a0  ; OopMap{[4]=NarrowOop [32]=Oop [128]=Oop off=8320}
                                                ;*if_icmplt
                                                ; - java.util.ArrayList$Itr::next@39 (line 856)
                                                ; - Hash_LongPoint::step@214 (line 112)
                                                ;   {runtime_call}
  0x00007f2aa53678c0: call   0x00007f2abc3f1320  ;*aastore
                                                ; - java.util.ArrayList::add@26 (line 459)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa53678c5: mov    esi,0xffffffe4
  0x00007f2aa53678ca: mov    QWORD PTR [rsp+0x10],rbx
  0x00007f2aa53678cf: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53678d4: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53678d9: rex.W pop    QWORD PTR [rsp+0x20]
  0x00007f2aa53678de: nop    
  0x00007f2aa53678df: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [32]=Oop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=8356}
                                                ;*aastore
                                                ; - java.util.ArrayList::add@26 (line 459)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa53678e4: call   0x00007f2abc3f1320  ;*aastore
                                                ; - java.util.ArrayList::add@26 (line 459)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa53678e9: mov    esi,0xffffffd6
  0x00007f2aa53678ee: mov    QWORD PTR [rsp+0x10],rbx
  0x00007f2aa53678f3: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53678f8: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53678fd: rex.W pop    QWORD PTR [rsp+0x20]
  0x00007f2aa5367902: nop    
  0x00007f2aa5367903: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [32]=Oop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=8392}
                                                ;*aastore
                                                ; - java.util.ArrayList::add@26 (line 459)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367908: call   0x00007f2abc3f1320  ;*aastore
                                                ; - java.util.ArrayList::add@26 (line 459)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa536790d: mov    QWORD PTR [rsp+0x80],r13
  0x00007f2aa5367915: mov    QWORD PTR [rsp+0x88],r11
  0x00007f2aa536791d: mov    QWORD PTR [rsp+0x70],r8
  0x00007f2aa5367922: mov    QWORD PTR [rsp+0x78],rdx
  0x00007f2aa5367927: mov    DWORD PTR [rsp+0x54],r10d
  0x00007f2aa536792c: mov    DWORD PTR [rsp+0x90],ecx
  0x00007f2aa5367933: mov    DWORD PTR [rsp+0x6c],edi
  0x00007f2aa5367937: mov    DWORD PTR [rsp+0x48],ebp
  0x00007f2aa536793b: jmp    0x00007f2aa5365afb
  0x00007f2aa5367940: mov    edi,r10d
  0x00007f2aa5367943: jmp    0x00007f2aa536647d
  0x00007f2aa5367948: mov    r10,r8
  0x00007f2aa536794b: add    r10,0xfffffffffffffffe
  0x00007f2aa536794f: mov    rcx,r10
  0x00007f2aa5367952: mov    rdi,rsi
  0x00007f2aa5367955: xor    rax,rax
  0x00007f2aa5367958: rep stos QWORD PTR es:[rdi],rax
  0x00007f2aa536795b: jmp    0x00007f2aa5366246  ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa5367960: mov    esi,0xffffffce
  0x00007f2aa5367965: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa536796a: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa536796f: mov    DWORD PTR [rsp+0x28],r10d
  0x00007f2aa5367974: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367979: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa536797d: mov    DWORD PTR [rsp+0x30],eax
  0x00007f2aa5367981: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367986: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536798b: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa536798f: mov    DWORD PTR [rsp+0x34],eax
  0x00007f2aa5367993: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367998: mov    QWORD PTR [rsp+0x48],r9
  0x00007f2aa536799d: xchg   ax,ax
  0x00007f2aa536799f: call   0x00007f2aa50051a0  ; OopMap{[24]=Oop [40]=NarrowOop [52]=NarrowOop [72]=Oop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=8548}
                                                ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ;   {runtime_call}
  0x00007f2aa53679a4: call   0x00007f2abc3f1320  ;*ifge
                                                ; - java.util.ArrayList::grow@15 (line 256)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ;   {runtime_call}
  0x00007f2aa53679a9: mov    esi,0xffffff65
  0x00007f2aa53679ae: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53679b3: rex.W pop    QWORD PTR [rsp+0x20]
  0x00007f2aa53679b8: mov    DWORD PTR [rsp+0x30],r9d
  0x00007f2aa53679bd: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53679c2: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa53679c6: mov    DWORD PTR [rsp+0x38],eax
  0x00007f2aa53679ca: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53679cf: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53679d4: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa53679d8: mov    DWORD PTR [rsp+0x3c],eax
  0x00007f2aa53679dc: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53679e1: xchg   ax,ax
  0x00007f2aa53679e3: call   0x00007f2aa50051a0  ; OopMap{[32]=Oop [60]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=8616}
                                                ;*ifle
                                                ; - java.util.ArrayList::grow@24 (line 258)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ;   {runtime_call}
  0x00007f2aa53679e8: call   0x00007f2abc3f1320  ;*ifle
                                                ; - java.util.ArrayList::grow@24 (line 258)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ;   {runtime_call}
  0x00007f2aa53679ed: mov    QWORD PTR [rsp+0x18],rdx
  0x00007f2aa53679f2: mov    QWORD PTR [rsp+0x10],rcx
  0x00007f2aa53679f7: mov    QWORD PTR [rsp+0x8],r8
  0x00007f2aa53679fc: mov    QWORD PTR [rsp],r11
  0x00007f2aa5367a00: mov    rbp,r13
  0x00007f2aa5367a03: mov    rsi,0x7c0041810    ;   {metadata('java/util/HashMap$KeySet')}
  0x00007f2aa5367a0d: xchg   ax,ax
  0x00007f2aa5367a0f: call   0x00007f2aa518b960  ; OopMap{rbp=Oop [0]=Oop [8]=Oop [16]=Oop off=8660}
                                                ;*new  ; - java.util.HashMap::keySet@10 (line 906)
                                                ; - java.util.HashSet::iterator@4 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5367a14: mov    r13,rbp
  0x00007f2aa5367a17: mov    r11,QWORD PTR [rsp]
  0x00007f2aa5367a1b: mov    r8,QWORD PTR [rsp+0x8]
  0x00007f2aa5367a20: mov    rcx,QWORD PTR [rsp+0x10]
  0x00007f2aa5367a25: mov    rdx,QWORD PTR [rsp+0x18]
  0x00007f2aa5367a2a: jmp    0x00007f2aa53672be
  0x00007f2aa5367a2f: mov    rbp,r8
  0x00007f2aa5367a32: mov    rsi,0x7c0041810    ;   {metadata('java/util/HashMap$KeySet')}
  0x00007f2aa5367a3c: xchg   ax,ax
  0x00007f2aa5367a3f: call   0x00007f2aa518b960  ; OopMap{rbp=Oop [112]=Oop [128]=Oop [136]=Oop off=8708}
                                                ;*new  ; - java.util.HashMap::keySet@10 (line 906)
                                                ; - Hash_LongPoint::step@95 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367a44: mov    r8,rbp
  0x00007f2aa5367a47: jmp    0x00007f2aa5367331
  0x00007f2aa5367a4c: mov    r10,r8
  0x00007f2aa5367a4f: add    r10,0xfffffffffffffffe
  0x00007f2aa5367a53: mov    rcx,r10
  0x00007f2aa5367a56: mov    rdi,rsi
  0x00007f2aa5367a59: xor    rax,rax
  0x00007f2aa5367a5c: rep stos QWORD PTR es:[rdi],rax  ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa5367a5f: jmp    0x00007f2aa5366f12
  0x00007f2aa5367a64: mov    esi,0xffffff86
  0x00007f2aa5367a69: mov    rbp,r13
  0x00007f2aa5367a6c: mov    QWORD PTR [rsp],r11
  0x00007f2aa5367a70: mov    QWORD PTR [rsp+0x8],r8
  0x00007f2aa5367a75: mov    DWORD PTR [rsp+0x10],ecx
  0x00007f2aa5367a79: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367a7e: mov    DWORD PTR [rsp+0x1c],r9d
  0x00007f2aa5367a83: call   0x00007f2aa50051a0  ; OopMap{rbp=Oop [0]=Oop [8]=Oop [24]=NarrowOop [28]=NarrowOop off=8776}
                                                ;*aload_0
                                                ; - java.util.HashMap$HashIterator::<init>@57 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5367a88: call   0x00007f2abc3f1320  ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367a8d: mov    esi,0xffffffce
  0x00007f2aa5367a92: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367a97: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa5367a9c: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367aa1: mov    eax,DWORD PTR [rsp+0x30]
  0x00007f2aa5367aa5: mov    DWORD PTR [rsp+0x28],eax
  0x00007f2aa5367aa9: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367aae: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367ab3: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5367ab7: mov    DWORD PTR [rsp+0x2c],eax
  0x00007f2aa5367abb: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367ac0: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367ac5: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5367ac9: mov    DWORD PTR [rsp+0x30],eax
  0x00007f2aa5367acd: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367ad2: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367ad7: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa5367adb: mov    DWORD PTR [rsp+0x34],eax
  0x00007f2aa5367adf: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367ae4: mov    QWORD PTR [rsp+0x48],r9
  0x00007f2aa5367ae9: xchg   ax,ax
  0x00007f2aa5367aeb: call   0x00007f2aa50051a0  ; OopMap{[24]=Oop [40]=NarrowOop [52]=NarrowOop [72]=Oop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=8880}
                                                ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367af0: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367af5: mov    esi,0xffffff86
  0x00007f2aa5367afa: mov    DWORD PTR [rsp+0x10],ecx
  0x00007f2aa5367afe: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367b03: mov    DWORD PTR [rsp+0x1c],r11d
  0x00007f2aa5367b08: xchg   ax,ax
  0x00007f2aa5367b0b: call   0x00007f2aa50051a0  ; OopMap{[24]=NarrowOop [28]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=8912}
                                                ;*aload_0
                                                ; - java.util.HashMap$HashIterator::<init>@57 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367b10: call   0x00007f2abc3f1320  ;*aload_0
                                                ; - java.util.HashMap$HashIterator::<init>@57 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367b15: mov    ebp,0x1
  0x00007f2aa5367b1a: jmp    0x00007f2aa5365a67
  0x00007f2aa5367b1f: mov    r9d,0x1
  0x00007f2aa5367b25: jmp    0x00007f2aa53663ee
  0x00007f2aa5367b2a: mov    esi,0xffffffde
  0x00007f2aa5367b2f: mov    QWORD PTR [rsp+0x8],r11
  0x00007f2aa5367b34: mov    QWORD PTR [rsp+0x10],r8
  0x00007f2aa5367b39: xchg   ax,ax
  0x00007f2aa5367b3b: call   0x00007f2aa50051a0  ; OopMap{rbp=NarrowOop [0]=Oop [8]=Oop [16]=Oop off=8960}
                                                ;*invokevirtual keySet
                                                ; - java.util.HashSet::iterator@4 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5367b40: call   0x00007f2abc3f1320  ;*invokevirtual keySet
                                                ; - java.util.HashSet::iterator@4 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5367b45: mov    esi,0xffffffde
  0x00007f2aa5367b4a: mov    QWORD PTR [rsp],r13
  0x00007f2aa5367b4e: mov    QWORD PTR [rsp+0x8],r11
  0x00007f2aa5367b53: mov    QWORD PTR [rsp+0x10],r8
  0x00007f2aa5367b58: xchg   ax,ax
  0x00007f2aa5367b5b: call   0x00007f2aa50051a0  ; OopMap{rbp=Oop [0]=Oop [8]=Oop [16]=Oop off=8992}
                                                ;*invokeinterface iterator
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5367b60: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367b65: mov    esi,0xffffffde
  0x00007f2aa5367b6a: mov    DWORD PTR [rsp+0x10],r8d
  0x00007f2aa5367b6f: call   0x00007f2aa50051a0  ; OopMap{[16]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9012}
                                                ;*invokevirtual keySet
                                                ; - Hash_LongPoint::step@95 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367b74: call   0x00007f2abc3f1320  ;*invokevirtual keySet
                                                ; - Hash_LongPoint::step@95 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367b79: mov    esi,0xffffffde
  0x00007f2aa5367b7e: nop    
  0x00007f2aa5367b7f: call   0x00007f2aa50051a0  ; OopMap{rbp=Oop [112]=Oop [128]=Oop [136]=Oop off=9028}
                                                ;*invokeinterface iterator
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367b84: call   0x00007f2abc3f1320  ;*ifle
                                                ; - java.util.HashMap$HashIterator::<init>@45 (line 1416)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5367b89: mov    esi,0xffffff65
  0x00007f2aa5367b8e: mov    QWORD PTR [rsp],r13
  0x00007f2aa5367b92: mov    QWORD PTR [rsp+0x8],r11
  0x00007f2aa5367b97: mov    QWORD PTR [rsp+0x10],r8
  0x00007f2aa5367b9c: mov    DWORD PTR [rsp+0x18],ecx
  0x00007f2aa5367ba0: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5367ba5: mov    DWORD PTR [rsp+0x24],r9d
  0x00007f2aa5367baa: nop    
  0x00007f2aa5367bab: call   0x00007f2aa50051a0  ; OopMap{[0]=Oop [8]=Oop [16]=Oop [32]=NarrowOop [36]=NarrowOop off=9072}
                                                ;*ifle
                                                ; - java.util.HashMap$HashIterator::<init>@45 (line 1416)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5367bb0: call   0x00007f2abc3f1320  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5367bb5: mov    esi,0xffffff65
  0x00007f2aa5367bba: mov    rbp,r13
  0x00007f2aa5367bbd: mov    QWORD PTR [rsp],r11
  0x00007f2aa5367bc1: mov    QWORD PTR [rsp+0x8],r8
  0x00007f2aa5367bc6: mov    DWORD PTR [rsp+0x10],ecx
  0x00007f2aa5367bca: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367bcf: mov    DWORD PTR [rsp+0x1c],r9d
  0x00007f2aa5367bd4: mov    DWORD PTR [rsp+0x20],ebx
  0x00007f2aa5367bd8: xchg   ax,ax
  0x00007f2aa5367bdb: call   0x00007f2aa50051a0  ; OopMap{rbp=Oop [0]=Oop [8]=Oop [24]=NarrowOop [28]=NarrowOop off=9120}
                                                ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5367be0: call   0x00007f2abc3f1320  ;*ifle
                                                ; - java.util.HashMap$HashIterator::<init>@45 (line 1416)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367be5: mov    esi,0xffffff65
  0x00007f2aa5367bea: mov    DWORD PTR [rsp+0x18],ecx
  0x00007f2aa5367bee: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5367bf3: mov    DWORD PTR [rsp+0x24],r11d
  0x00007f2aa5367bf8: xchg   ax,ax
  0x00007f2aa5367bfb: call   0x00007f2aa50051a0  ; OopMap{[32]=NarrowOop [36]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9152}
                                                ;*ifle
                                                ; - java.util.HashMap$HashIterator::<init>@45 (line 1416)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367c00: call   0x00007f2abc3f1320  ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367c05: mov    esi,0xffffff65
  0x00007f2aa5367c0a: mov    DWORD PTR [rsp+0x10],ecx
  0x00007f2aa5367c0e: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367c13: mov    DWORD PTR [rsp+0x1c],r11d
  0x00007f2aa5367c18: mov    DWORD PTR [rsp+0x20],r8d
  0x00007f2aa5367c1d: xchg   ax,ax
  0x00007f2aa5367c1f: call   0x00007f2aa50051a0  ; OopMap{[24]=NarrowOop [28]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9188}
                                                ;*if_icmpge
                                                ; - java.util.HashMap$HashIterator::<init>@54 (line 1417)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367c24: call   0x00007f2abc3f1320  ;*ifge
                                                ; - java.util.ArrayList::grow@15 (line 256)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367c29: mov    esi,0xffffff65
  0x00007f2aa5367c2e: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367c33: rex.W pop    QWORD PTR [rsp+0x20]
  0x00007f2aa5367c38: mov    DWORD PTR [rsp+0x30],r8d
  0x00007f2aa5367c3d: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367c42: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5367c46: mov    DWORD PTR [rsp+0x34],eax
  0x00007f2aa5367c4a: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367c4f: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367c54: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5367c58: mov    DWORD PTR [rsp+0x38],eax
  0x00007f2aa5367c5c: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367c61: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367c66: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa5367c6a: mov    DWORD PTR [rsp+0x3c],eax
  0x00007f2aa5367c6e: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367c73: call   0x00007f2aa50051a0  ; OopMap{[32]=Oop [60]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9272}
                                                ;*ifle
                                                ; - java.util.ArrayList::grow@24 (line 258)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367c78: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367c7d: mov    esi,0xffffffde
  0x00007f2aa5367c82: mov    DWORD PTR [rsp+0x10],r10d
  0x00007f2aa5367c87: call   0x00007f2aa50051a0  ; OopMap{[16]=NarrowOop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9292}
                                                ;*checkcast
                                                ; - Hash_LongPoint::step@39 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5367c8c: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367c91: mov    esi,0xffffffde
  0x00007f2aa5367c96: mov    DWORD PTR [rsp+0x10],r11d
  0x00007f2aa5367c9b: call   0x00007f2aa50051a0  ; OopMap{[16]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9312}
                                                ;*checkcast
                                                ; - Hash_LongPoint::step@119 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367ca0: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367ca5: mov    esi,0xffffffde
  0x00007f2aa5367caa: mov    DWORD PTR [rsp+0x18],r9d
  0x00007f2aa5367caf: call   0x00007f2aa50051a0  ; OopMap{[24]=NarrowOop [56]=Oop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9332}
                                                ;*checkcast
                                                ; - Hash_LongPoint::step@133 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367cb4: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367cb9: mov    esi,0xffffffde
  0x00007f2aa5367cbe: mov    DWORD PTR [rsp],r11d
  0x00007f2aa5367cc2: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367cc7: mov    eax,DWORD PTR [rsp+0x10]
  0x00007f2aa5367ccb: mov    DWORD PTR [rsp+0x4],eax
  0x00007f2aa5367ccf: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367cd4: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367cd9: mov    eax,DWORD PTR [rsp+0x14]
  0x00007f2aa5367cdd: mov    DWORD PTR [rsp+0x8],eax
  0x00007f2aa5367ce1: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367ce6: nop    
  0x00007f2aa5367ce7: call   0x00007f2aa50051a0  ; OopMap{[0]=NarrowOop [32]=Oop [128]=Oop off=9388}
                                                ;*checkcast
                                                ; - Hash_LongPoint::step@219 (line 112)
                                                ;   {runtime_call}
  0x00007f2aa5367cec: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367cf1: mov    esi,0xffffffde
  0x00007f2aa5367cf6: mov    DWORD PTR [rsp+0x10],r9d
  0x00007f2aa5367cfb: mov    DWORD PTR [rsp+0x14],r11d
  0x00007f2aa5367d00: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367d05: mov    eax,DWORD PTR [rsp+0x20]
  0x00007f2aa5367d09: mov    DWORD PTR [rsp+0x18],eax
  0x00007f2aa5367d0d: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367d12: mov    QWORD PTR [rsp+0x20],r8
  0x00007f2aa5367d17: call   0x00007f2aa50051a0  ; OopMap{[16]=NarrowOop [32]=Oop [128]=Oop [136]=Oop off=9436}
                                                ;*checkcast
                                                ; - Hash_LongPoint::step@185 (line 109)
                                                ;   {runtime_call}
  0x00007f2aa5367d1c: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367d21: mov    esi,0xffffffde
  0x00007f2aa5367d26: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367d2b: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5367d30: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367d35: mov    QWORD PTR [rsp+0x28],rcx
  0x00007f2aa5367d3a: mov    DWORD PTR [rsp+0x30],r9d
  0x00007f2aa5367d3f: mov    DWORD PTR [rsp+0x34],r11d
  0x00007f2aa5367d44: mov    DWORD PTR [rsp+0x40],edx
  0x00007f2aa5367d48: xchg   ax,ax
  0x00007f2aa5367d4b: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [64]=NarrowOop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9488}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa5367d50: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367d55: mov    esi,0xffffffde
  0x00007f2aa5367d5a: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367d5f: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5367d64: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367d69: mov    QWORD PTR [rsp+0x28],r8
  0x00007f2aa5367d6e: mov    DWORD PTR [rsp+0x30],r9d
  0x00007f2aa5367d73: mov    DWORD PTR [rsp+0x34],r11d
  0x00007f2aa5367d78: mov    DWORD PTR [rsp+0x40],edi
  0x00007f2aa5367d7c: xchg   ax,ax
  0x00007f2aa5367d7f: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [64]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9540}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367d84: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367d89: mov    esi,0xffffffde
  0x00007f2aa5367d8e: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367d93: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5367d98: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367d9d: mov    DWORD PTR [rsp+0x1c],edx
  0x00007f2aa5367da1: mov    DWORD PTR [rsp+0x30],r9d
  0x00007f2aa5367da6: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367dab: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5367daf: mov    DWORD PTR [rsp+0x38],eax
  0x00007f2aa5367db3: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367db8: xchg   ax,ax
  0x00007f2aa5367dbb: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [48]=NarrowOop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9600}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa5367dc0: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367dc5: mov    esi,0xffffffde
  0x00007f2aa5367dca: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367dcf: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa5367dd4: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5367dd9: mov    QWORD PTR [rsp+0x30],rcx
  0x00007f2aa5367dde: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367de3: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5367de7: mov    DWORD PTR [rsp+0x40],eax
  0x00007f2aa5367deb: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367df0: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367df5: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa5367df9: mov    DWORD PTR [rsp+0x44],eax
  0x00007f2aa5367dfd: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367e02: nop    
  0x00007f2aa5367e03: call   0x00007f2aa50051a0  ; OopMap{rbp=NarrowOop [24]=Oop [48]=Oop [68]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9672}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa5367e08: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367e0d: mov    esi,0xffffffde
  0x00007f2aa5367e12: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367e17: call   0x00007f2aa50051a0  ; OopMap{[24]=NarrowOop [56]=Oop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9692}
                                                ;*checkcast
                                                ; - Hash_LongPoint::step@53 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa5367e1c: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367e21: mov    esi,0xffffffde
  0x00007f2aa5367e26: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367e2b: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5367e30: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367e35: mov    DWORD PTR [rsp+0x1c],r11d
  0x00007f2aa5367e3a: mov    DWORD PTR [rsp+0x30],r9d
  0x00007f2aa5367e3f: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367e44: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5367e48: mov    DWORD PTR [rsp+0x34],eax
  0x00007f2aa5367e4c: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367e51: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367e56: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5367e5a: mov    DWORD PTR [rsp+0x38],eax
  0x00007f2aa5367e5e: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367e63: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [48]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9768}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367e68: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367e6d: mov    esi,0xffffffde
  0x00007f2aa5367e72: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367e77: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5367e7c: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367e81: mov    QWORD PTR [rsp+0x28],r8
  0x00007f2aa5367e86: mov    DWORD PTR [rsp+0x1c],r11d
  0x00007f2aa5367e8b: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367e90: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5367e94: mov    DWORD PTR [rsp+0x38],eax
  0x00007f2aa5367e98: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367e9d: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367ea2: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5367ea6: mov    DWORD PTR [rsp+0x3c],eax
  0x00007f2aa5367eaa: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367eaf: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367eb4: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa5367eb8: mov    DWORD PTR [rsp+0x40],eax
  0x00007f2aa5367ebc: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367ec1: xchg   ax,ax
  0x00007f2aa5367ec3: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [40]=Oop [64]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9864}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367ec8: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367ecd: mov    esi,0xffffffde
  0x00007f2aa5367ed2: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367ed7: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5367edc: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367ee1: mov    DWORD PTR [rsp+0x1c],r8d
  0x00007f2aa5367ee6: mov    DWORD PTR [rsp+0x30],r9d
  0x00007f2aa5367eeb: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367ef0: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5367ef4: mov    DWORD PTR [rsp+0x34],eax
  0x00007f2aa5367ef8: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367efd: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367f02: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5367f06: mov    DWORD PTR [rsp+0x38],eax
  0x00007f2aa5367f0a: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367f0f: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [48]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9940}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367f14: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367f19: mov    esi,0xffffffde
  0x00007f2aa5367f1e: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367f23: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5367f28: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5367f2d: mov    QWORD PTR [rsp+0x28],rbx
  0x00007f2aa5367f32: mov    DWORD PTR [rsp+0x30],r11d
  0x00007f2aa5367f37: mov    DWORD PTR [rsp+0x34],r9d
  0x00007f2aa5367f3c: mov    DWORD PTR [rsp+0x40],r8d
  0x00007f2aa5367f41: xchg   ax,ax
  0x00007f2aa5367f43: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [64]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=9992}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367f48: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367f4d: mov    esi,0xffffffde
  0x00007f2aa5367f52: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367f57: rex.W pop    QWORD PTR [rsp+0x18]
  0x00007f2aa5367f5c: mov    DWORD PTR [rsp+0x20],r10d
  0x00007f2aa5367f61: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367f66: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5367f6a: mov    DWORD PTR [rsp+0x24],eax
  0x00007f2aa5367f6e: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367f73: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367f78: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5367f7c: mov    DWORD PTR [rsp+0x38],eax
  0x00007f2aa5367f80: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367f85: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367f8a: mov    eax,DWORD PTR [rsp+0x50]
  0x00007f2aa5367f8e: mov    DWORD PTR [rsp+0x40],eax
  0x00007f2aa5367f92: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367f97: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5367f9c: mov    eax,DWORD PTR [rsp+0x54]
  0x00007f2aa5367fa0: mov    DWORD PTR [rsp+0x48],eax
  0x00007f2aa5367fa4: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5367fa9: mov    QWORD PTR [rsp+0x50],r9
  0x00007f2aa5367fae: nop    
  0x00007f2aa5367faf: call   0x00007f2aa50051a0  ; OopMap{rbp=NarrowOop [24]=Oop [64]=NarrowOop [72]=NarrowOop [76]=NarrowOop [80]=Oop [112]=Oop [128]=Oop [136]=Oop off=10100}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367fb4: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367fb9: mov    esi,0xfffffff4
  0x00007f2aa5367fbe: nop    
  0x00007f2aa5367fbf: call   0x00007f2aa50051a0  ; OopMap{[76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10116}
                                                ;*checkcast
                                                ; - Hash_LongPoint::step@119 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367fc4: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5367fc9: mov    esi,0xfffffff6
  0x00007f2aa5367fce: mov    rbp,r11
  0x00007f2aa5367fd1: xchg   ax,ax
  0x00007f2aa5367fd3: call   0x00007f2aa50051a0  ; OopMap{rbp=Oop off=10136}
                                                ;*invokevirtual get
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367fd8: call   0x00007f2abc3f1320  ;*invokevirtual get
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367fdd: mov    esi,0xffffff65
  0x00007f2aa5367fe2: nop    
  0x00007f2aa5367fe3: call   0x00007f2aa50051a0  ; OopMap{[40]=Oop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10152}
                                                ;*ifnonnull
                                                ; - java.util.HashMap$HashIterator::nextNode@28 (line 1430)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5367fe8: call   0x00007f2abc3f1320  ;*ifnull
                                                ; - java.util.HashMap::getNode@6 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5367fed: mov    esi,0xffffff65
  0x00007f2aa5367ff2: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5367ff7: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5367ffc: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5368001: mov    DWORD PTR [rsp+0x28],r9d
  0x00007f2aa5368006: nop    
  0x00007f2aa5368007: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [40]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10188}
                                                ;*ifnull
                                                ; - java.util.HashMap::getNode@6 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa536800c: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5368011: mov    esi,0xfffffff4
  0x00007f2aa5368016: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa536801b: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5368020: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5368025: mov    DWORD PTR [rsp+0x1c],r11d
  0x00007f2aa536802a: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536802f: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5368033: mov    DWORD PTR [rsp+0x30],eax
  0x00007f2aa5368037: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536803c: xchg   ax,ax
  0x00007f2aa536803f: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10244}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5368044: call   0x00007f2abc3f1320  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@65 (line 1432)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5368049: mov    esi,0xffffff65
  0x00007f2aa536804e: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5368053: call   0x00007f2aa50051a0  ; OopMap{[24]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10264}
                                                ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@65 (line 1432)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@114 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5368058: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa536805d: mov    esi,0xfffffff4
  0x00007f2aa5368062: nop    
  0x00007f2aa5368063: call   0x00007f2aa50051a0  ; OopMap{[76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10280}
                                                ;*checkcast
                                                ; - Hash_LongPoint::step@39 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5368068: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa536806d: mov    esi,0xfffffff6
  0x00007f2aa5368072: mov    rbp,r10
  0x00007f2aa5368075: xchg   ax,ax
  0x00007f2aa5368077: call   0x00007f2aa50051a0  ; OopMap{rbp=Oop off=10300}
                                                ;*invokevirtual get
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa536807c: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5368081: mov    esi,0xfffffff6
  0x00007f2aa5368086: mov    rbp,QWORD PTR [rsp+0x38]
  0x00007f2aa536808b: call   0x00007f2aa50051a0  ; OopMap{rbp=Oop off=10320}
                                                ;*invokevirtual contains
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5368090: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5368095: mov    esi,0xfffffff6
  0x00007f2aa536809a: mov    rbp,QWORD PTR [rsp+0x38]
  0x00007f2aa536809f: call   0x00007f2aa50051a0  ; OopMap{rbp=Oop off=10340}
                                                ;*invokevirtual containsKey
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa53680a4: call   0x00007f2abc3f1320  ;*invokevirtual containsKey
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa53680a9: mov    esi,0xffffff65
  0x00007f2aa53680ae: nop    
  0x00007f2aa53680af: call   0x00007f2aa50051a0  ; OopMap{[40]=Oop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10356}
                                                ;*ifnonnull
                                                ; - java.util.HashMap$HashIterator::nextNode@28 (line 1430)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa53680b4: call   0x00007f2abc3f1320  ;*ifnull
                                                ; - java.util.HashMap::getNode@6 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa53680b9: mov    esi,0xffffff65
  0x00007f2aa53680be: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53680c3: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa53680c8: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53680cd: mov    DWORD PTR [rsp+0x28],edi
  0x00007f2aa53680d1: xchg   ax,ax
  0x00007f2aa53680d3: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [40]=NarrowOop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10392}
                                                ;*ifnull
                                                ; - java.util.HashMap::getNode@6 (line 568)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa53680d8: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa53680dd: mov    esi,0xfffffff4
  0x00007f2aa53680e2: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53680e7: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa53680ec: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53680f1: mov    DWORD PTR [rsp+0x1c],edx
  0x00007f2aa53680f5: xchg   ax,ax
  0x00007f2aa53680f7: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10428}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa53680fc: call   0x00007f2abc3f1320  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@65 (line 1432)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5368101: mov    esi,0xffffff65
  0x00007f2aa5368106: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa536810b: call   0x00007f2aa50051a0  ; OopMap{[24]=NarrowOop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10448}
                                                ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@65 (line 1432)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5368110: call   0x00007f2abc3f1320  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::nextNode@65 (line 1432)
                                                ; - java.util.HashMap$KeyIterator::next@1 (line 1453)
                                                ; - Hash_LongPoint::step@34 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5368115: mov    esi,0xfffffff6
  0x00007f2aa536811a: nop    
  0x00007f2aa536811b: call   0x00007f2aa50051a0  ; OopMap{off=10464}
                                                ;*arraylength
                                                ; - java.util.ArrayList$Itr::next@38 (line 856)
                                                ; - Hash_LongPoint::step@180 (line 109)
                                                ;   {runtime_call}
  0x00007f2aa5368120: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5368125: mov    esi,0xfffffff4
  0x00007f2aa536812a: mov    DWORD PTR [rsp+0x10],r11d
  0x00007f2aa536812f: mov    QWORD PTR [rsp+0x18],r8
  0x00007f2aa5368134: xchg   ax,ax
  0x00007f2aa5368137: call   0x00007f2aa50051a0  ; OopMap{[24]=Oop [128]=Oop [136]=Oop off=10492}
                                                ;*checkcast
                                                ; - Hash_LongPoint::step@185 (line 109)
                                                ;   {runtime_call}
  0x00007f2aa536813c: call   0x00007f2abc3f1320  ;*checkcast
                                                ; - Hash_LongPoint::step@185 (line 109)
                                                ;   {runtime_call}
  0x00007f2aa5368141: mov    esi,0xfffffff6
  0x00007f2aa5368146: nop    
  0x00007f2aa5368147: call   0x00007f2aa50051a0  ; OopMap{off=10508}
                                                ;*arraylength
                                                ; - java.util.ArrayList$Itr::next@38 (line 856)
                                                ; - Hash_LongPoint::step@214 (line 112)
                                                ;   {runtime_call}
  0x00007f2aa536814c: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5368151: mov    esi,0xfffffff4
  0x00007f2aa5368156: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536815b: mov    eax,DWORD PTR [rsp+0x10]
  0x00007f2aa536815f: mov    DWORD PTR [rsp],eax
  0x00007f2aa5368162: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5368167: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536816c: mov    eax,DWORD PTR [rsp+0x14]
  0x00007f2aa5368170: mov    DWORD PTR [rsp+0x4],eax
  0x00007f2aa5368174: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5368179: xchg   ax,ax
  0x00007f2aa536817b: call   0x00007f2aa50051a0  ; OopMap{[32]=Oop [128]=Oop off=10560}
                                                ;*checkcast
                                                ; - Hash_LongPoint::step@219 (line 112)
                                                ;   {runtime_call}
  0x00007f2aa5368180: call   0x00007f2abc3f1320  ;*checkcast
                                                ; - Hash_LongPoint::step@219 (line 112)
                                                ;   {runtime_call}
  0x00007f2aa5368185: mov    esi,0xfffffff6
  0x00007f2aa536818a: mov    rbp,QWORD PTR [rsp]
  0x00007f2aa536818e: nop    
  0x00007f2aa536818f: call   0x00007f2aa50051a0  ; OopMap{rbp=Oop off=10580}
                                                ;*invokevirtual remove
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {runtime_call}
  0x00007f2aa5368194: call   0x00007f2abc3f1320  ;*ifnull
                                                ; - java.util.HashMap::getNode@6 (line 568)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5368199: mov    esi,0xffffff65
  0x00007f2aa536819e: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53681a3: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa53681a8: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53681ad: mov    DWORD PTR [rsp+0x28],r8d
  0x00007f2aa53681b2: nop    
  0x00007f2aa53681b3: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [40]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10616}
                                                ;*ifnull
                                                ; - java.util.HashMap::getNode@6 (line 568)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa53681b8: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa53681bd: mov    esi,0xfffffff4
  0x00007f2aa53681c2: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53681c7: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa53681cc: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53681d1: mov    DWORD PTR [rsp+0x1c],r8d
  0x00007f2aa53681d6: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53681db: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa53681df: mov    DWORD PTR [rsp+0x30],eax
  0x00007f2aa53681e3: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53681e8: xchg   ax,ax
  0x00007f2aa53681eb: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10672}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@59 (line 571)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa53681f0: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa53681f5: mov    esi,0xfffffff4
  0x00007f2aa53681fa: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53681ff: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5368204: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5368209: mov    QWORD PTR [rsp+0x28],r8
  0x00007f2aa536820e: mov    DWORD PTR [rsp+0x1c],edi
  0x00007f2aa5368212: mov    DWORD PTR [rsp+0x30],r9d
  0x00007f2aa5368217: mov    DWORD PTR [rsp+0x34],r11d
  0x00007f2aa536821c: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5368221: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5368225: mov    DWORD PTR [rsp+0x40],eax
  0x00007f2aa5368229: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536822e: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5368233: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5368237: mov    DWORD PTR [rsp+0x44],eax
  0x00007f2aa536823b: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5368240: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5368245: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa5368249: mov    DWORD PTR [rsp+0x48],eax
  0x00007f2aa536824d: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5368252: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5368257: mov    eax,DWORD PTR [rsp+0x50]
  0x00007f2aa536825b: mov    DWORD PTR [rsp+0x4c],eax
  0x00007f2aa536825f: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5368264: xchg   ax,ax
  0x00007f2aa5368267: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [40]=Oop [48]=NarrowOop [52]=NarrowOop [72]=NarrowOop [76]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10796}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa536826c: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5368271: mov    esi,0xfffffff6
  0x00007f2aa5368276: nop    
  0x00007f2aa5368277: call   0x00007f2aa50051a0  ; OopMap{off=10812}
                                                ;*arraylength
                                                ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ;   {runtime_call}
  0x00007f2aa536827c: call   0x00007f2abc3f1320  ;*arraylength
                                                ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)
                                                ;   {runtime_call}
  0x00007f2aa5368281: mov    esi,0xffffff65
  0x00007f2aa5368286: mov    QWORD PTR [rsp+0x8],rax
  0x00007f2aa536828b: call   0x00007f2aa50051a0  ; OopMap{[8]=Oop [32]=Oop [128]=Oop off=10832}
                                                ;*ifnonnull
                                                ; - java.util.HashMap::remove@14 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)
                                                ;   {runtime_call}
  0x00007f2aa5368290: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5368295: mov    esi,0xfffffff4
  0x00007f2aa536829a: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa536829f: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa53682a4: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53682a9: mov    QWORD PTR [rsp+0x28],rcx
  0x00007f2aa53682ae: mov    DWORD PTR [rsp+0x1c],edx
  0x00007f2aa53682b2: mov    DWORD PTR [rsp+0x30],r9d
  0x00007f2aa53682b7: mov    DWORD PTR [rsp+0x34],r11d
  0x00007f2aa53682bc: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53682c1: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa53682c5: mov    DWORD PTR [rsp+0x44],eax
  0x00007f2aa53682c9: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53682ce: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53682d3: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa53682d7: mov    DWORD PTR [rsp+0x48],eax
  0x00007f2aa53682db: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53682e0: xchg   ax,ax
  0x00007f2aa53682e3: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [40]=Oop [48]=NarrowOop [52]=NarrowOop [72]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10920}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa53682e8: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa53682ed: mov    esi,0xfffffff4
  0x00007f2aa53682f2: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53682f7: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa53682fc: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5368301: mov    QWORD PTR [rsp+0x28],r8
  0x00007f2aa5368306: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536830b: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa536830f: mov    DWORD PTR [rsp+0x1c],eax
  0x00007f2aa5368313: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5368318: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa536831d: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5368321: mov    DWORD PTR [rsp+0x38],eax
  0x00007f2aa5368325: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536832a: nop    
  0x00007f2aa536832b: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [40]=Oop [76]=NarrowOop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=10992}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@130 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5368330: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5368335: mov    esi,0xfffffff6
  0x00007f2aa536833a: nop    
  0x00007f2aa536833b: call   0x00007f2aa50051a0  ; OopMap{off=11008}
                                                ;*arraylength
                                                ; - java.util.ArrayList::ensureExplicitCapacity@15 (line 234)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5368340: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5368345: mov    esi,0xfffffff4
  0x00007f2aa536834a: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa536834f: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5368354: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa5368359: mov    QWORD PTR [rsp+0x28],rbx
  0x00007f2aa536835e: mov    DWORD PTR [rsp+0x1c],r8d
  0x00007f2aa5368363: mov    DWORD PTR [rsp+0x30],r11d
  0x00007f2aa5368368: mov    DWORD PTR [rsp+0x34],r9d
  0x00007f2aa536836d: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5368372: mov    eax,DWORD PTR [rsp+0x44]
  0x00007f2aa5368376: mov    DWORD PTR [rsp+0x40],eax
  0x00007f2aa536837a: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536837f: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5368384: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5368388: mov    DWORD PTR [rsp+0x44],eax
  0x00007f2aa536838c: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5368391: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5368396: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa536839a: mov    DWORD PTR [rsp+0x48],eax
  0x00007f2aa536839e: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53683a3: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53683a8: mov    eax,DWORD PTR [rsp+0x50]
  0x00007f2aa53683ac: mov    DWORD PTR [rsp+0x4c],eax
  0x00007f2aa53683b0: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53683b5: xchg   ax,ax
  0x00007f2aa53683b7: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [28]=NarrowOop [40]=Oop [48]=NarrowOop [52]=NarrowOop [72]=NarrowOop [76]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=11132}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap$TreeNode::find@68 (line 1851)
                                                ; - java.util.HashMap$TreeNode::getTreeNode@18 (line 1873)
                                                ; - java.util.HashMap::getNode@94 (line 575)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa53683bc: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa53683c1: mov    esi,0xfffffff4
  0x00007f2aa53683c6: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa53683cb: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa53683d0: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53683d5: mov    QWORD PTR [rsp+0x28],rcx
  0x00007f2aa53683da: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa53683df: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa53683e3: mov    DWORD PTR [rsp+0x38],eax
  0x00007f2aa53683e7: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa53683ec: xchg   ax,ax
  0x00007f2aa53683ef: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [40]=Oop [76]=NarrowOop [84]=NarrowOop [108]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=11188}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::get@6 (line 556)
                                                ; - Hash_LongPoint::step@50 (line 103)
                                                ;   {runtime_call}
  0x00007f2aa53683f4: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa53683f9: mov    esi,0xfffffff4
  0x00007f2aa53683fe: rex.W push   QWORD PTR [rsp+0x38]
  0x00007f2aa5368403: rex.W pop    QWORD PTR [rsp+0x10]
  0x00007f2aa5368408: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa536840d: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5368412: mov    eax,DWORD PTR [rsp+0x48]
  0x00007f2aa5368416: mov    DWORD PTR [rsp+0x30],eax
  0x00007f2aa536841a: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa536841f: mov    QWORD PTR [rsp-0x8],rax
  0x00007f2aa5368424: mov    eax,DWORD PTR [rsp+0x4c]
  0x00007f2aa5368428: mov    DWORD PTR [rsp+0x34],eax
  0x00007f2aa536842c: mov    rax,QWORD PTR [rsp-0x8]
  0x00007f2aa5368431: mov    QWORD PTR [rsp+0x48],r9
  0x00007f2aa5368436: nop    
  0x00007f2aa5368437: call   0x00007f2aa50051a0  ; OopMap{[16]=Oop [52]=NarrowOop [72]=Oop [80]=NarrowOop [84]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=11260}
                                                ;*checkcast
                                                ; - LongPoint::equals@1 (line 37)
                                                ; - java.util.HashMap::getNode@126 (line 578)
                                                ; - java.util.HashMap::containsKey@6 (line 595)
                                                ; - java.util.HashSet::contains@5 (line 203)
                                                ; - Hash_LongPoint::step@149 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa536843c: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5368441: mov    esi,0xfffffff6
  0x00007f2aa5368446: nop    
  0x00007f2aa5368447: call   0x00007f2aa50051a0  ; OopMap{off=11276}
                                                ;*invokevirtual iterator
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa536844c: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5368451: mov    esi,0xfffffff6
  0x00007f2aa5368456: nop    
  0x00007f2aa5368457: call   0x00007f2aa50051a0  ; OopMap{off=11292}
                                                ;*invokevirtual keySet
                                                ; - java.util.HashSet::iterator@4 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa536845c: call   0x00007f2abc3f1320  ;*getfield modCount
                                                ; - java.util.HashMap$HashIterator::<init>@11 (line 1412)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5368461: mov    esi,0xfffffff6
  0x00007f2aa5368466: nop    
  0x00007f2aa5368467: call   0x00007f2aa50051a0  ; OopMap{off=11308}
                                                ;*getfield modCount
                                                ; - java.util.HashMap$HashIterator::<init>@11 (line 1412)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa536846c: call   0x00007f2abc3f1320  ;   {runtime_call}
  0x00007f2aa5368471: mov    esi,0xfffffff6
  0x00007f2aa5368476: nop    
  0x00007f2aa5368477: call   0x00007f2aa50051a0  ; OopMap{off=11324}
                                                ;*invokevirtual keySet
                                                ; - Hash_LongPoint::step@95 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa536847c: call   0x00007f2abc3f1320  ;*getfield modCount
                                                ; - java.util.HashMap$HashIterator::<init>@11 (line 1412)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa5368481: mov    esi,0xfffffff6
  0x00007f2aa5368486: nop    
  0x00007f2aa5368487: call   0x00007f2aa50051a0  ; OopMap{off=11340}
                                                ;*getfield modCount
                                                ; - java.util.HashMap$HashIterator::<init>@11 (line 1412)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa536848c: call   0x00007f2abc3f1320  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@38 (line 1416)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa5368491: mov    esi,0xffffff65
  0x00007f2aa5368496: mov    rbp,r13
  0x00007f2aa5368499: mov    QWORD PTR [rsp],r11
  0x00007f2aa536849d: mov    QWORD PTR [rsp+0x8],r8
  0x00007f2aa53684a2: mov    DWORD PTR [rsp+0x14],ecx
  0x00007f2aa53684a6: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53684ab: mov    DWORD PTR [rsp+0x1c],r10d
  0x00007f2aa53684b0: mov    DWORD PTR [rsp+0x24],r9d
  0x00007f2aa53684b5: xchg   ax,ax
  0x00007f2aa53684b7: call   0x00007f2aa50051a0  ; OopMap{rbp=Oop [0]=Oop [8]=Oop [24]=NarrowOop [28]=NarrowOop [36]=NarrowOop off=11388}
                                                ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@38 (line 1416)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - java.util.HashSet::iterator@7 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)
                                                ;   {runtime_call}
  0x00007f2aa53684bc: call   0x00007f2abc3f1320  ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@38 (line 1416)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa53684c1: mov    esi,0xffffff65
  0x00007f2aa53684c6: mov    DWORD PTR [rsp+0x14],ecx
  0x00007f2aa53684ca: mov    DWORD PTR [rsp+0x18],r10d
  0x00007f2aa53684cf: mov    DWORD PTR [rsp+0x1c],r10d
  0x00007f2aa53684d4: mov    DWORD PTR [rsp+0x24],r11d
  0x00007f2aa53684d9: xchg   ax,ax
  0x00007f2aa53684db: call   0x00007f2aa50051a0  ; OopMap{[24]=NarrowOop [28]=NarrowOop [36]=NarrowOop [112]=Oop [128]=Oop [136]=Oop off=11424}
                                                ;*ifnull
                                                ; - java.util.HashMap$HashIterator::<init>@38 (line 1416)
                                                ; - java.util.HashMap$KeyIterator::<init>@7 (line 1451)
                                                ; - java.util.HashMap$KeySet::iterator@8 (line 912)
                                                ; - Hash_LongPoint::step@98 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa53684e0: call   0x00007f2abc3f1320  ;*new
                                                ; - java.util.HashMap::keySet@10 (line 906)
                                                ; - Hash_LongPoint::step@95 (line 106)
                                                ;   {runtime_call}
  0x00007f2aa53684e5: mov    rsi,rax
  0x00007f2aa53684e8: jmp    0x00007f2aa536851b  ;*new
                                                ; - java.util.HashMap::keySet@10 (line 906)
                                                ; - java.util.HashSet::iterator@4 (line 172)
                                                ; - Hash_LongPoint::step@20 (line 102)

  0x00007f2aa53684ea: mov    rsi,rax
  0x00007f2aa53684ed: jmp    0x00007f2aa536851b  ;*new
                                                ; - Hash_LongPoint::step@0 (line 100)

  0x00007f2aa53684ef: mov    rsi,rax
  0x00007f2aa53684f2: jmp    0x00007f2aa536851b  ;*new
                                                ; - Hash_LongPoint::step@8 (line 101)

  0x00007f2aa53684f4: mov    rsi,rax
  0x00007f2aa53684f7: jmp    0x00007f2aa536851b  ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@158 (line 107)

  0x00007f2aa53684f9: mov    rsi,rax
  0x00007f2aa53684fc: jmp    0x00007f2aa536851b  ;*invokestatic copyOf
                                                ; - java.util.Arrays::copyOf@6 (line 3181)
                                                ; - java.util.ArrayList::grow@38 (line 261)
                                                ; - java.util.ArrayList::ensureExplicitCapacity@22 (line 235)
                                                ; - java.util.ArrayList::ensureCapacityInternal@19 (line 227)
                                                ; - java.util.ArrayList::add@7 (line 458)
                                                ; - Hash_LongPoint::step@84 (line 104)

  0x00007f2aa53684fe: mov    rsi,rax
  0x00007f2aa5368501: jmp    0x00007f2aa536851b  ;*invokevirtual removeNode
                                                ; - java.util.HashMap::remove@9 (line 798)
                                                ; - java.util.HashSet::remove@5 (line 235)
                                                ; - Hash_LongPoint::reset@86 (line 88)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa5368503: jmp    0x00007f2aa5368518  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@78 (line 87)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa5368505: jmp    0x00007f2aa5368518  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@67 (line 86)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa5368507: jmp    0x00007f2aa5368518  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@58 (line 85)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa5368509: jmp    0x00007f2aa5368518  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@47 (line 84)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa536850b: jmp    0x00007f2aa5368518  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@40 (line 83)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa536850d: jmp    0x00007f2aa5368518  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@33 (line 82)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa536850f: jmp    0x00007f2aa5368518  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@22 (line 81)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa5368511: jmp    0x00007f2aa5368518  ;*invokevirtual set
                                                ; - Hash_LongPoint::step@193 (line 110)

  0x00007f2aa5368513: mov    rsi,rax
  0x00007f2aa5368516: jmp    0x00007f2aa536851b  ;*invokespecial dec
                                                ; - Hash_LongPoint::reset@22 (line 81)
                                                ; - Hash_LongPoint::step@227 (line 113)

  0x00007f2aa5368518: mov    rsi,rax            ;*new  ; - Hash_LongPoint::step@8 (line 101)

  0x00007f2aa536851b: add    rsp,0xb0
  0x00007f2aa5368522: pop    rbp
  0x00007f2aa5368523: jmp    0x00007f2aa52196a0  ;*ifne
                                                ; - Hash_LongPoint::step@152 (line 107)
                                                ;   {runtime_call}
  0x00007f2aa5368528: hlt    
  0x00007f2aa5368529: hlt    
  0x00007f2aa536852a: hlt    
  0x00007f2aa536852b: hlt    
  0x00007f2aa536852c: hlt    
  0x00007f2aa536852d: hlt    
  0x00007f2aa536852e: hlt    
  0x00007f2aa536852f: hlt    
  0x00007f2aa5368530: hlt    
  0x00007f2aa5368531: hlt    
  0x00007f2aa5368532: hlt    
  0x00007f2aa5368533: hlt    
  0x00007f2aa5368534: hlt    
  0x00007f2aa5368535: hlt    
  0x00007f2aa5368536: hlt    
  0x00007f2aa5368537: hlt    
  0x00007f2aa5368538: hlt    
  0x00007f2aa5368539: hlt    
  0x00007f2aa536853a: hlt    
  0x00007f2aa536853b: hlt    
  0x00007f2aa536853c: hlt    
  0x00007f2aa536853d: hlt    
  0x00007f2aa536853e: hlt    
  0x00007f2aa536853f: hlt    
[Stub Code]
  0x00007f2aa5368540: mov    rbx,0x0            ;   {no_reloc}
  0x00007f2aa536854a: jmp    0x00007f2aa536854a  ;   {runtime_call}
  0x00007f2aa536854f: mov    rbx,0x0            ;   {static_stub}
  0x00007f2aa5368559: jmp    0x00007f2aa5368559  ;   {runtime_call}
  0x00007f2aa536855e: mov    rbx,0x0            ;   {static_stub}
  0x00007f2aa5368568: jmp    0x00007f2aa5368568  ;   {runtime_call}
  0x00007f2aa536856d: mov    rbx,0x0            ;   {static_stub}
  0x00007f2aa5368577: jmp    0x00007f2aa5368577  ;   {runtime_call}
  0x00007f2aa536857c: mov    rbx,0x0            ;   {static_stub}
  0x00007f2aa5368586: jmp    0x00007f2aa5368586  ;   {runtime_call}
  0x00007f2aa536858b: mov    rbx,0x0            ;   {static_stub}
  0x00007f2aa5368595: jmp    0x00007f2aa5368595  ;   {runtime_call}
  0x00007f2aa536859a: mov    rbx,0x0            ;   {static_stub}
  0x00007f2aa53685a4: jmp    0x00007f2aa53685a4  ;   {runtime_call}
  0x00007f2aa53685a9: mov    rbx,0x0            ;   {static_stub}
  0x00007f2aa53685b3: jmp    0x00007f2aa53685b3  ;   {runtime_call}
  0x00007f2aa53685b8: mov    rbx,0x0            ;   {static_stub}
  0x00007f2aa53685c2: jmp    0x00007f2aa53685c2  ;   {runtime_call}
  0x00007f2aa53685c7: mov    rbx,0x0            ;   {static_stub}
  0x00007f2aa53685d1: jmp    0x00007f2aa53685d1  ;   {runtime_call}
[Exception Handler]
  0x00007f2aa53685d6: jmp    0x00007f2aa506c3a0  ;   {runtime_call}
[Deopt Handler Code]
  0x00007f2aa53685db: call   0x00007f2aa53685e0
  0x00007f2aa53685e0: sub    QWORD PTR [rsp],0x5
  0x00007f2aa53685e5: jmp    0x00007f2aa50473c0  ;   {runtime_call}

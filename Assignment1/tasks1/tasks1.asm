
tasks1.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 25 34 00 00 	mov    0x3425(%rip),%rax        # 140004440 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 26 34 00 00 	mov    0x3426(%rip),%rax        # 140004450 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 29 34 00 00 	mov    0x3429(%rip),%rax        # 140004460 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 bc 33 00 00 	mov    0x33bc(%rip),%rax        # 140004400 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 cf 33 00 00 	mov    0x33cf(%rip),%rax        # 140004430 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 5f 00 00    	mov    %ecx,0x5fa5(%rip)        # 14000700c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 89 18 00 00       	call   140002900 <__set_app_type>
   140001077:	e8 04 18 00 00       	call   140002880 <__p__fmode>
   14000107c:	48 8b 15 8d 34 00 00 	mov    0x348d(%rip),%rdx        # 140004510 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 ec 17 00 00       	call   140002878 <__p__commode>
   14000108c:	48 8b 15 5d 34 00 00 	mov    0x345d(%rip),%rdx        # 1400044f0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 54 05 00 00       	call   1400015f0 <_setargv>
   14000109c:	48 8b 05 ed 32 00 00 	mov    0x32ed(%rip),%rax        # 140004390 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 46 18 00 00       	call   140002900 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d 31 34 00 00 	mov    0x3431(%rip),%rcx        # 140004530 <.refptr._matherr>
   1400010ff:	e8 5c 0c 00 00       	call   140001d60 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 05 34 00 00 	mov    0x3405(%rip),%rax        # 140004540 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 140007018 <envp>
   140001142:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 140007020 <argv>
   140001149:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 140007028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac 5e 00 00    	mov    %eax,0x5eac(%rip)        # 140007004 <startinfo>
   140001158:	48 8b 05 a1 33 00 00 	mov    0x33a1(%rip),%rax        # 140004500 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b 5e 00 00 	lea    0x5e9b(%rip),%rax        # 140007004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 bd 14 00 00       	call   140002630 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 54                	push   %r12
   140001182:	55                   	push   %rbp
   140001183:	57                   	push   %rdi
   140001184:	56                   	push   %rsi
   140001185:	53                   	push   %rbx
   140001186:	48 83 ec 20          	sub    $0x20,%rsp
   14000118a:	48 8b 1d ff 32 00 00 	mov    0x32ff(%rip),%rbx        # 140004490 <.refptr.__native_startup_lock>
   140001191:	48 8b 2d 70 71 00 00 	mov    0x7170(%rip),%rbp        # 140008308 <__imp_Sleep>
   140001198:	31 ff                	xor    %edi,%edi
   14000119a:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011a1:	00 00 
   1400011a3:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011a7:	eb 17                	jmp    1400011c0 <__tmainCRTStartup+0x40>
   1400011a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400011b0:	48 39 c6             	cmp    %rax,%rsi
   1400011b3:	0f 84 67 01 00 00    	je     140001320 <__tmainCRTStartup+0x1a0>
   1400011b9:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011be:	ff d5                	call   *%rbp
   1400011c0:	48 89 f8             	mov    %rdi,%rax
   1400011c3:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011c8:	48 85 c0             	test   %rax,%rax
   1400011cb:	75 e3                	jne    1400011b0 <__tmainCRTStartup+0x30>
   1400011cd:	48 8b 35 cc 32 00 00 	mov    0x32cc(%rip),%rsi        # 1400044a0 <.refptr.__native_startup_state>
   1400011d4:	31 ff                	xor    %edi,%edi
   1400011d6:	8b 06                	mov    (%rsi),%eax
   1400011d8:	83 f8 01             	cmp    $0x1,%eax
   1400011db:	0f 84 56 01 00 00    	je     140001337 <__tmainCRTStartup+0x1b7>
   1400011e1:	8b 06                	mov    (%rsi),%eax
   1400011e3:	85 c0                	test   %eax,%eax
   1400011e5:	0f 84 b5 01 00 00    	je     1400013a0 <__tmainCRTStartup+0x220>
   1400011eb:	c7 05 13 5e 00 00 01 	movl   $0x1,0x5e13(%rip)        # 140007008 <has_cctor>
   1400011f2:	00 00 00 
   1400011f5:	8b 06                	mov    (%rsi),%eax
   1400011f7:	83 f8 01             	cmp    $0x1,%eax
   1400011fa:	0f 84 4c 01 00 00    	je     14000134c <__tmainCRTStartup+0x1cc>
   140001200:	85 ff                	test   %edi,%edi
   140001202:	0f 84 65 01 00 00    	je     14000136d <__tmainCRTStartup+0x1ed>
   140001208:	48 8b 05 e1 31 00 00 	mov    0x31e1(%rip),%rax        # 1400043f0 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 98 07 00 00       	call   1400019c0 <_pei386_runtime_relocator>
   140001228:	48 8b 0d f1 32 00 00 	mov    0x32f1(%rip),%rcx        # 140004520 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 cb 70 00 00    	call   *0x70cb(%rip)        # 140008300 <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 44 32 00 00 	mov    0x3244(%rip),%rdx        # 140004480 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 bd 16 00 00       	call   140002908 <_set_invalid_parameter_handler>
   14000124b:	e8 80 05 00 00       	call   1400017d0 <_fpreset>
   140001250:	8b 1d d2 5d 00 00    	mov    0x5dd2(%rip),%ebx        # 140007028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 00 17 00 00       	call   140002968 <malloc>
   140001268:	4c 8b 25 b1 5d 00 00 	mov    0x5db1(%rip),%r12        # 140007020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 d7 15 00 00       	call   140002860 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 d3 16 00 00       	call   140002968 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 8b 16 00 00       	call   140002938 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d 5d 00 00 	mov    %rbp,0x5d5d(%rip)        # 140007020 <argv>
   1400012c3:	e8 08 03 00 00       	call   1400015d0 <__main>
   1400012c8:	48 8b 05 41 31 00 00 	mov    0x3141(%rip),%rax        # 140004410 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 5d 00 00 	mov    0x5d42(%rip),%r8        # 140007018 <envp>
   1400012d6:	8b 0d 4c 5d 00 00    	mov    0x5d4c(%rip),%ecx        # 140007028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 5d 00 00 	mov    0x5d37(%rip),%rdx        # 140007020 <argv>
   1400012e9:	e8 62 01 00 00       	call   140001450 <main>
   1400012ee:	8b 0d 18 5d 00 00    	mov    0x5d18(%rip),%ecx        # 14000700c <managedapp>
   1400012f4:	89 05 16 5d 00 00    	mov    %eax,0x5d16(%rip)        # 140007010 <mainret>
   1400012fa:	85 c9                	test   %ecx,%ecx
   1400012fc:	0f 84 c6 00 00 00    	je     1400013c8 <__tmainCRTStartup+0x248>
   140001302:	8b 15 00 5d 00 00    	mov    0x5d00(%rip),%edx        # 140007008 <has_cctor>
   140001308:	85 d2                	test   %edx,%edx
   14000130a:	74 74                	je     140001380 <__tmainCRTStartup+0x200>
   14000130c:	48 83 c4 20          	add    $0x20,%rsp
   140001310:	5b                   	pop    %rbx
   140001311:	5e                   	pop    %rsi
   140001312:	5f                   	pop    %rdi
   140001313:	5d                   	pop    %rbp
   140001314:	41 5c                	pop    %r12
   140001316:	c3                   	ret
   140001317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000131e:	00 00 
   140001320:	48 8b 35 79 31 00 00 	mov    0x3179(%rip),%rsi        # 1400044a0 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 0f 14 00 00       	call   140002750 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 6d 31 00 00 	mov    0x316d(%rip),%rdx        # 1400044c0 <.refptr.__xc_z>
   140001353:	48 8b 0d 56 31 00 00 	mov    0x3156(%rip),%rcx        # 1400044b0 <.refptr.__xc_a>
   14000135a:	e8 99 15 00 00       	call   1400028f8 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 33 15 00 00       	call   1400028b8 <_cexit>
   140001385:	8b 05 85 5c 00 00    	mov    0x5c85(%rip),%eax        # 140007010 <mainret>
   14000138b:	48 83 c4 20          	add    $0x20,%rsp
   14000138f:	5b                   	pop    %rbx
   140001390:	5e                   	pop    %rsi
   140001391:	5f                   	pop    %rdi
   140001392:	5d                   	pop    %rbp
   140001393:	41 5c                	pop    %r12
   140001395:	c3                   	ret
   140001396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000139d:	00 00 00 
   1400013a0:	48 8b 15 39 31 00 00 	mov    0x3139(%rip),%rdx        # 1400044e0 <.refptr.__xi_z>
   1400013a7:	48 8b 0d 22 31 00 00 	mov    0x3122(%rip),%rcx        # 1400044d0 <.refptr.__xi_a>
   1400013ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013b4:	e8 3f 15 00 00       	call   1400028f8 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 49 15 00 00       	call   140002918 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 55 30 00 00 	mov    0x3055(%rip),%rax        # 140004430 <.refptr.__mingw_app_type>
   1400013db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400013e1:	e8 9a fd ff ff       	call   140001180 <__tmainCRTStartup>
   1400013e6:	90                   	nop

00000001400013e7 <.l_endw>:
   1400013e7:	90                   	nop
   1400013e8:	48 83 c4 28          	add    $0x28,%rsp
   1400013ec:	c3                   	ret
   1400013ed:	0f 1f 00             	nopl   (%rax)

00000001400013f0 <mainCRTStartup>:
   1400013f0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013f4 <.l_start>:
   1400013f4:	48 8b 05 35 30 00 00 	mov    0x3035(%rip),%rax        # 140004430 <.refptr.__mingw_app_type>
   1400013fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001401:	e8 7a fd ff ff       	call   140001180 <__tmainCRTStartup>
   140001406:	90                   	nop

0000000140001407 <.l_end>:
   140001407:	90                   	nop
   140001408:	48 83 c4 28          	add    $0x28,%rsp
   14000140c:	c3                   	ret
   14000140d:	0f 1f 00             	nopl   (%rax)

0000000140001410 <atexit>:
   140001410:	48 83 ec 28          	sub    $0x28,%rsp
   140001414:	e8 f7 12 00 00       	call   140002710 <_onexit>
   140001419:	48 83 f8 01          	cmp    $0x1,%rax
   14000141d:	19 c0                	sbb    %eax,%eax
   14000141f:	48 83 c4 28          	add    $0x28,%rsp
   140001423:	c3                   	ret
   140001424:	90                   	nop
   140001425:	90                   	nop
   140001426:	90                   	nop
   140001427:	90                   	nop
   140001428:	90                   	nop
   140001429:	90                   	nop
   14000142a:	90                   	nop
   14000142b:	90                   	nop
   14000142c:	90                   	nop
   14000142d:	90                   	nop
   14000142e:	90                   	nop
   14000142f:	90                   	nop

0000000140001430 <__gcc_register_frame>:
   140001430:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001440 <__gcc_deregister_frame>
   140001437:	e9 d4 ff ff ff       	jmp    140001410 <atexit>
   14000143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001440 <__gcc_deregister_frame>:
   140001440:	c3                   	ret
   140001441:	90                   	nop
   140001442:	90                   	nop
   140001443:	90                   	nop
   140001444:	90                   	nop
   140001445:	90                   	nop
   140001446:	90                   	nop
   140001447:	90                   	nop
   140001448:	90                   	nop
   140001449:	90                   	nop
   14000144a:	90                   	nop
   14000144b:	90                   	nop
   14000144c:	90                   	nop
   14000144d:	90                   	nop
   14000144e:	90                   	nop
   14000144f:	90                   	nop

0000000140001450 <main>:
   140001450:	55                   	push   %rbp
   140001451:	48 89 e5             	mov    %rsp,%rbp
   140001454:	48 83 ec 30          	sub    $0x30,%rsp
   140001458:	e8 73 01 00 00       	call   1400015d0 <__main>
   14000145d:	c7 45 fc 0a 00 00 00 	movl   $0xa,-0x4(%rbp)
   140001464:	c7 45 f8 14 00 00 00 	movl   $0x14,-0x8(%rbp)
   14000146b:	8b 55 fc             	mov    -0x4(%rbp),%edx
   14000146e:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140001471:	01 d0                	add    %edx,%eax
   140001473:	89 45 f4             	mov    %eax,-0xc(%rbp)
   140001476:	48 8d 05 83 2b 00 00 	lea    0x2b83(%rip),%rax        # 140004000 <.rdata>
   14000147d:	48 89 c2             	mov    %rax,%rdx
   140001480:	48 8b 05 19 2f 00 00 	mov    0x2f19(%rip),%rax        # 1400043a0 <__fu0__ZSt4cout>
   140001487:	48 89 c1             	mov    %rax,%rcx
   14000148a:	e8 71 00 00 00       	call   140001500 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000148f:	48 89 c1             	mov    %rax,%rcx
   140001492:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001495:	89 c2                	mov    %eax,%edx
   140001497:	e8 74 00 00 00       	call   140001510 <_ZNSolsEi>
   14000149c:	48 89 c1             	mov    %rax,%rcx
   14000149f:	48 8d 05 67 2b 00 00 	lea    0x2b67(%rip),%rax        # 14000400d <.rdata+0xd>
   1400014a6:	48 89 c2             	mov    %rax,%rdx
   1400014a9:	e8 52 00 00 00       	call   140001500 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400014ae:	48 89 c1             	mov    %rax,%rcx
   1400014b1:	8b 45 f8             	mov    -0x8(%rbp),%eax
   1400014b4:	89 c2                	mov    %eax,%edx
   1400014b6:	e8 55 00 00 00       	call   140001510 <_ZNSolsEi>
   1400014bb:	48 89 c1             	mov    %rax,%rcx
   1400014be:	48 8d 05 4e 2b 00 00 	lea    0x2b4e(%rip),%rax        # 140004013 <.rdata+0x13>
   1400014c5:	48 89 c2             	mov    %rax,%rdx
   1400014c8:	e8 33 00 00 00       	call   140001500 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400014cd:	48 89 c1             	mov    %rax,%rcx
   1400014d0:	8b 45 f4             	mov    -0xc(%rbp),%eax
   1400014d3:	89 c2                	mov    %eax,%edx
   1400014d5:	e8 36 00 00 00       	call   140001510 <_ZNSolsEi>
   1400014da:	48 89 c1             	mov    %rax,%rcx
   1400014dd:	48 8b 05 cc 2e 00 00 	mov    0x2ecc(%rip),%rax        # 1400043b0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400014e4:	48 89 c2             	mov    %rax,%rdx
   1400014e7:	e8 2c 00 00 00       	call   140001518 <_ZNSolsEPFRSoS_E>
   1400014ec:	b8 00 00 00 00       	mov    $0x0,%eax
   1400014f1:	48 83 c4 30          	add    $0x30,%rsp
   1400014f5:	5d                   	pop    %rbp
   1400014f6:	c3                   	ret
   1400014f7:	90                   	nop
   1400014f8:	90                   	nop
   1400014f9:	90                   	nop
   1400014fa:	90                   	nop
   1400014fb:	90                   	nop
   1400014fc:	90                   	nop
   1400014fd:	90                   	nop
   1400014fe:	90                   	nop
   1400014ff:	90                   	nop

0000000140001500 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   140001500:	ff 25 ba 6f 00 00    	jmp    *0x6fba(%rip)        # 1400084c0 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001506:	90                   	nop
   140001507:	90                   	nop

0000000140001508 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
   140001508:	ff 25 aa 6f 00 00    	jmp    *0x6faa(%rip)        # 1400084b8 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000150e:	90                   	nop
   14000150f:	90                   	nop

0000000140001510 <_ZNSolsEi>:
   140001510:	ff 25 92 6f 00 00    	jmp    *0x6f92(%rip)        # 1400084a8 <__imp__ZNSolsEi>
   140001516:	90                   	nop
   140001517:	90                   	nop

0000000140001518 <_ZNSolsEPFRSoS_E>:
   140001518:	ff 25 82 6f 00 00    	jmp    *0x6f82(%rip)        # 1400084a0 <__imp__ZNSolsEPFRSoS_E>
   14000151e:	90                   	nop
   14000151f:	90                   	nop

0000000140001520 <__do_global_dtors>:
   140001520:	48 83 ec 28          	sub    $0x28,%rsp
   140001524:	48 8b 05 d5 1a 00 00 	mov    0x1ad5(%rip),%rax        # 140003000 <__data_start__>
   14000152b:	48 8b 00             	mov    (%rax),%rax
   14000152e:	48 85 c0             	test   %rax,%rax
   140001531:	74 22                	je     140001555 <__do_global_dtors+0x35>
   140001533:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001538:	ff d0                	call   *%rax
   14000153a:	48 8b 05 bf 1a 00 00 	mov    0x1abf(%rip),%rax        # 140003000 <__data_start__>
   140001541:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140001545:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001549:	48 89 15 b0 1a 00 00 	mov    %rdx,0x1ab0(%rip)        # 140003000 <__data_start__>
   140001550:	48 85 c0             	test   %rax,%rax
   140001553:	75 e3                	jne    140001538 <__do_global_dtors+0x18>
   140001555:	48 83 c4 28          	add    $0x28,%rsp
   140001559:	c3                   	ret
   14000155a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001560 <__do_global_ctors>:
   140001560:	56                   	push   %rsi
   140001561:	53                   	push   %rbx
   140001562:	48 83 ec 28          	sub    $0x28,%rsp
   140001566:	48 8b 15 53 2e 00 00 	mov    0x2e53(%rip),%rdx        # 1400043c0 <.refptr.__CTOR_LIST__>
   14000156d:	48 8b 02             	mov    (%rdx),%rax
   140001570:	89 c1                	mov    %eax,%ecx
   140001572:	83 f8 ff             	cmp    $0xffffffff,%eax
   140001575:	74 39                	je     1400015b0 <__do_global_ctors+0x50>
   140001577:	85 c9                	test   %ecx,%ecx
   140001579:	74 20                	je     14000159b <__do_global_ctors+0x3b>
   14000157b:	89 c8                	mov    %ecx,%eax
   14000157d:	83 e9 01             	sub    $0x1,%ecx
   140001580:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001584:	48 29 c8             	sub    %rcx,%rax
   140001587:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000158c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001590:	ff 13                	call   *(%rbx)
   140001592:	48 83 eb 08          	sub    $0x8,%rbx
   140001596:	48 39 f3             	cmp    %rsi,%rbx
   140001599:	75 f5                	jne    140001590 <__do_global_ctors+0x30>
   14000159b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001520 <__do_global_dtors>
   1400015a2:	48 83 c4 28          	add    $0x28,%rsp
   1400015a6:	5b                   	pop    %rbx
   1400015a7:	5e                   	pop    %rsi
   1400015a8:	e9 63 fe ff ff       	jmp    140001410 <atexit>
   1400015ad:	0f 1f 00             	nopl   (%rax)
   1400015b0:	31 c0                	xor    %eax,%eax
   1400015b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400015b8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   1400015bc:	89 c1                	mov    %eax,%ecx
   1400015be:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   1400015c3:	4c 89 c0             	mov    %r8,%rax
   1400015c6:	75 f0                	jne    1400015b8 <__do_global_ctors+0x58>
   1400015c8:	eb ad                	jmp    140001577 <__do_global_ctors+0x17>
   1400015ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400015d0 <__main>:
   1400015d0:	8b 05 5a 5a 00 00    	mov    0x5a5a(%rip),%eax        # 140007030 <initialized>
   1400015d6:	85 c0                	test   %eax,%eax
   1400015d8:	74 06                	je     1400015e0 <__main+0x10>
   1400015da:	c3                   	ret
   1400015db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400015e0:	c7 05 46 5a 00 00 01 	movl   $0x1,0x5a46(%rip)        # 140007030 <initialized>
   1400015e7:	00 00 00 
   1400015ea:	e9 71 ff ff ff       	jmp    140001560 <__do_global_ctors>
   1400015ef:	90                   	nop

00000001400015f0 <_setargv>:
   1400015f0:	31 c0                	xor    %eax,%eax
   1400015f2:	c3                   	ret
   1400015f3:	90                   	nop
   1400015f4:	90                   	nop
   1400015f5:	90                   	nop
   1400015f6:	90                   	nop
   1400015f7:	90                   	nop
   1400015f8:	90                   	nop
   1400015f9:	90                   	nop
   1400015fa:	90                   	nop
   1400015fb:	90                   	nop
   1400015fc:	90                   	nop
   1400015fd:	90                   	nop
   1400015fe:	90                   	nop
   1400015ff:	90                   	nop

0000000140001600 <__dyn_tls_dtor>:
   140001600:	48 83 ec 28          	sub    $0x28,%rsp
   140001604:	83 fa 03             	cmp    $0x3,%edx
   140001607:	74 17                	je     140001620 <__dyn_tls_dtor+0x20>
   140001609:	85 d2                	test   %edx,%edx
   14000160b:	74 13                	je     140001620 <__dyn_tls_dtor+0x20>
   14000160d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001612:	48 83 c4 28          	add    $0x28,%rsp
   140001616:	c3                   	ret
   140001617:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000161e:	00 00 
   140001620:	e8 5b 0a 00 00       	call   140002080 <__mingw_TLScallback>
   140001625:	b8 01 00 00 00       	mov    $0x1,%eax
   14000162a:	48 83 c4 28          	add    $0x28,%rsp
   14000162e:	c3                   	ret
   14000162f:	90                   	nop

0000000140001630 <__dyn_tls_init>:
   140001630:	56                   	push   %rsi
   140001631:	53                   	push   %rbx
   140001632:	48 83 ec 28          	sub    $0x28,%rsp
   140001636:	48 8b 05 43 2d 00 00 	mov    0x2d43(%rip),%rax        # 140004380 <.refptr._CRT_MT>
   14000163d:	83 38 02             	cmpl   $0x2,(%rax)
   140001640:	74 06                	je     140001648 <__dyn_tls_init+0x18>
   140001642:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001648:	83 fa 02             	cmp    $0x2,%edx
   14000164b:	74 13                	je     140001660 <__dyn_tls_init+0x30>
   14000164d:	83 fa 01             	cmp    $0x1,%edx
   140001650:	74 4e                	je     1400016a0 <__dyn_tls_init+0x70>
   140001652:	b8 01 00 00 00       	mov    $0x1,%eax
   140001657:	48 83 c4 28          	add    $0x28,%rsp
   14000165b:	5b                   	pop    %rbx
   14000165c:	5e                   	pop    %rsi
   14000165d:	c3                   	ret
   14000165e:	66 90                	xchg   %ax,%ax
   140001660:	48 8d 1d f1 79 00 00 	lea    0x79f1(%rip),%rbx        # 140009058 <__xd_z>
   140001667:	48 8d 35 ea 79 00 00 	lea    0x79ea(%rip),%rsi        # 140009058 <__xd_z>
   14000166e:	48 39 de             	cmp    %rbx,%rsi
   140001671:	74 df                	je     140001652 <__dyn_tls_init+0x22>
   140001673:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001678:	48 8b 03             	mov    (%rbx),%rax
   14000167b:	48 85 c0             	test   %rax,%rax
   14000167e:	74 02                	je     140001682 <__dyn_tls_init+0x52>
   140001680:	ff d0                	call   *%rax
   140001682:	48 83 c3 08          	add    $0x8,%rbx
   140001686:	48 39 de             	cmp    %rbx,%rsi
   140001689:	75 ed                	jne    140001678 <__dyn_tls_init+0x48>
   14000168b:	b8 01 00 00 00       	mov    $0x1,%eax
   140001690:	48 83 c4 28          	add    $0x28,%rsp
   140001694:	5b                   	pop    %rbx
   140001695:	5e                   	pop    %rsi
   140001696:	c3                   	ret
   140001697:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000169e:	00 00 
   1400016a0:	e8 db 09 00 00       	call   140002080 <__mingw_TLScallback>
   1400016a5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016aa:	48 83 c4 28          	add    $0x28,%rsp
   1400016ae:	5b                   	pop    %rbx
   1400016af:	5e                   	pop    %rsi
   1400016b0:	c3                   	ret
   1400016b1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400016b8:	00 00 00 00 
   1400016bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400016c0 <__tlregdtor>:
   1400016c0:	31 c0                	xor    %eax,%eax
   1400016c2:	c3                   	ret
   1400016c3:	90                   	nop
   1400016c4:	90                   	nop
   1400016c5:	90                   	nop
   1400016c6:	90                   	nop
   1400016c7:	90                   	nop
   1400016c8:	90                   	nop
   1400016c9:	90                   	nop
   1400016ca:	90                   	nop
   1400016cb:	90                   	nop
   1400016cc:	90                   	nop
   1400016cd:	90                   	nop
   1400016ce:	90                   	nop
   1400016cf:	90                   	nop

00000001400016d0 <_matherr>:
   1400016d0:	56                   	push   %rsi
   1400016d1:	53                   	push   %rbx
   1400016d2:	48 83 ec 78          	sub    $0x78,%rsp
   1400016d6:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   1400016db:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   1400016e0:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   1400016e6:	83 39 06             	cmpl   $0x6,(%rcx)
   1400016e9:	0f 87 cd 00 00 00    	ja     1400017bc <_matherr+0xec>
   1400016ef:	8b 01                	mov    (%rcx),%eax
   1400016f1:	48 8d 15 ac 2a 00 00 	lea    0x2aac(%rip),%rdx        # 1400041a4 <.rdata+0x124>
   1400016f8:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400016fc:	48 01 d0             	add    %rdx,%rax
   1400016ff:	ff e0                	jmp    *%rax
   140001701:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001708:	48 8d 1d 90 29 00 00 	lea    0x2990(%rip),%rbx        # 14000409f <.rdata+0x1f>
   14000170f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001715:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000171a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000171f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001723:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001728:	e8 43 11 00 00       	call   140002870 <__acrt_iob_func>
   14000172d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140001734:	49 89 d8             	mov    %rbx,%r8
   140001737:	48 8d 15 3a 2a 00 00 	lea    0x2a3a(%rip),%rdx        # 140004178 <.rdata+0xf8>
   14000173e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140001744:	48 89 c1             	mov    %rax,%rcx
   140001747:	49 89 f1             	mov    %rsi,%r9
   14000174a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140001750:	e8 8b 0e 00 00       	call   1400025e0 <fprintf>
   140001755:	90                   	nop
   140001756:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   14000175b:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   140001760:	31 c0                	xor    %eax,%eax
   140001762:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   140001768:	48 83 c4 78          	add    $0x78,%rsp
   14000176c:	5b                   	pop    %rbx
   14000176d:	5e                   	pop    %rsi
   14000176e:	c3                   	ret
   14000176f:	90                   	nop
   140001770:	48 8d 1d 09 29 00 00 	lea    0x2909(%rip),%rbx        # 140004080 <.rdata>
   140001777:	eb 96                	jmp    14000170f <_matherr+0x3f>
   140001779:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001780:	48 8d 1d 59 29 00 00 	lea    0x2959(%rip),%rbx        # 1400040e0 <.rdata+0x60>
   140001787:	eb 86                	jmp    14000170f <_matherr+0x3f>
   140001789:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001790:	48 8d 1d 29 29 00 00 	lea    0x2929(%rip),%rbx        # 1400040c0 <.rdata+0x40>
   140001797:	e9 73 ff ff ff       	jmp    14000170f <_matherr+0x3f>
   14000179c:	0f 1f 40 00          	nopl   0x0(%rax)
   1400017a0:	48 8d 1d 89 29 00 00 	lea    0x2989(%rip),%rbx        # 140004130 <.rdata+0xb0>
   1400017a7:	e9 63 ff ff ff       	jmp    14000170f <_matherr+0x3f>
   1400017ac:	0f 1f 40 00          	nopl   0x0(%rax)
   1400017b0:	48 8d 1d 51 29 00 00 	lea    0x2951(%rip),%rbx        # 140004108 <.rdata+0x88>
   1400017b7:	e9 53 ff ff ff       	jmp    14000170f <_matherr+0x3f>
   1400017bc:	48 8d 1d a3 29 00 00 	lea    0x29a3(%rip),%rbx        # 140004166 <.rdata+0xe6>
   1400017c3:	e9 47 ff ff ff       	jmp    14000170f <_matherr+0x3f>
   1400017c8:	90                   	nop
   1400017c9:	90                   	nop
   1400017ca:	90                   	nop
   1400017cb:	90                   	nop
   1400017cc:	90                   	nop
   1400017cd:	90                   	nop
   1400017ce:	90                   	nop
   1400017cf:	90                   	nop

00000001400017d0 <_fpreset>:
   1400017d0:	db e3                	fninit
   1400017d2:	c3                   	ret
   1400017d3:	90                   	nop
   1400017d4:	90                   	nop
   1400017d5:	90                   	nop
   1400017d6:	90                   	nop
   1400017d7:	90                   	nop
   1400017d8:	90                   	nop
   1400017d9:	90                   	nop
   1400017da:	90                   	nop
   1400017db:	90                   	nop
   1400017dc:	90                   	nop
   1400017dd:	90                   	nop
   1400017de:	90                   	nop
   1400017df:	90                   	nop

00000001400017e0 <__report_error>:
   1400017e0:	56                   	push   %rsi
   1400017e1:	53                   	push   %rbx
   1400017e2:	48 83 ec 38          	sub    $0x38,%rsp
   1400017e6:	48 89 cb             	mov    %rcx,%rbx
   1400017e9:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   1400017ee:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400017f3:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   1400017f8:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400017fd:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001802:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001807:	e8 64 10 00 00       	call   140002870 <__acrt_iob_func>
   14000180c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001812:	ba 01 00 00 00       	mov    $0x1,%edx
   140001817:	48 8d 0d a2 29 00 00 	lea    0x29a2(%rip),%rcx        # 1400041c0 <.rdata>
   14000181e:	49 89 c1             	mov    %rax,%r9
   140001821:	e8 72 10 00 00       	call   140002898 <fwrite>
   140001826:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   14000182b:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001830:	e8 3b 10 00 00       	call   140002870 <__acrt_iob_func>
   140001835:	48 89 da             	mov    %rbx,%rdx
   140001838:	48 89 c1             	mov    %rax,%rcx
   14000183b:	49 89 f0             	mov    %rsi,%r8
   14000183e:	e8 7d 0d 00 00       	call   1400025c0 <vfprintf>
   140001843:	e8 c8 10 00 00       	call   140002910 <abort>
   140001848:	90                   	nop
   140001849:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001850 <mark_section_writable>:
   140001850:	57                   	push   %rdi
   140001851:	56                   	push   %rsi
   140001852:	53                   	push   %rbx
   140001853:	48 83 ec 50          	sub    $0x50,%rsp
   140001857:	48 63 35 36 58 00 00 	movslq 0x5836(%rip),%rsi        # 140007094 <maxSections>
   14000185e:	48 89 cb             	mov    %rcx,%rbx
   140001861:	85 f6                	test   %esi,%esi
   140001863:	0f 8e 17 01 00 00    	jle    140001980 <mark_section_writable+0x130>
   140001869:	48 8b 05 28 58 00 00 	mov    0x5828(%rip),%rax        # 140007098 <the_secs>
   140001870:	45 31 c9             	xor    %r9d,%r9d
   140001873:	48 83 c0 18          	add    $0x18,%rax
   140001877:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000187e:	00 00 
   140001880:	4c 8b 00             	mov    (%rax),%r8
   140001883:	4c 39 c3             	cmp    %r8,%rbx
   140001886:	72 13                	jb     14000189b <mark_section_writable+0x4b>
   140001888:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000188c:	8b 52 08             	mov    0x8(%rdx),%edx
   14000188f:	49 01 d0             	add    %rdx,%r8
   140001892:	4c 39 c3             	cmp    %r8,%rbx
   140001895:	0f 82 8a 00 00 00    	jb     140001925 <mark_section_writable+0xd5>
   14000189b:	41 83 c1 01          	add    $0x1,%r9d
   14000189f:	48 83 c0 28          	add    $0x28,%rax
   1400018a3:	41 39 f1             	cmp    %esi,%r9d
   1400018a6:	75 d8                	jne    140001880 <mark_section_writable+0x30>
   1400018a8:	48 89 d9             	mov    %rbx,%rcx
   1400018ab:	e8 f0 09 00 00       	call   1400022a0 <__mingw_GetSectionForAddress>
   1400018b0:	48 89 c7             	mov    %rax,%rdi
   1400018b3:	48 85 c0             	test   %rax,%rax
   1400018b6:	0f 84 e6 00 00 00    	je     1400019a2 <mark_section_writable+0x152>
   1400018bc:	48 8b 05 d5 57 00 00 	mov    0x57d5(%rip),%rax        # 140007098 <the_secs>
   1400018c3:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   1400018c7:	48 c1 e3 03          	shl    $0x3,%rbx
   1400018cb:	48 01 d8             	add    %rbx,%rax
   1400018ce:	48 89 78 20          	mov    %rdi,0x20(%rax)
   1400018d2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400018d8:	e8 03 0b 00 00       	call   1400023e0 <_GetPEImageBase>
   1400018dd:	8b 57 0c             	mov    0xc(%rdi),%edx
   1400018e0:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   1400018e6:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   1400018ea:	48 8b 05 a7 57 00 00 	mov    0x57a7(%rip),%rax        # 140007098 <the_secs>
   1400018f1:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   1400018f6:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   1400018fb:	ff 15 1f 6a 00 00    	call   *0x6a1f(%rip)        # 140008320 <__imp_VirtualQuery>
   140001901:	48 85 c0             	test   %rax,%rax
   140001904:	0f 84 7d 00 00 00    	je     140001987 <mark_section_writable+0x137>
   14000190a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000190e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001911:	83 e2 bf             	and    $0xffffffbf,%edx
   140001914:	74 08                	je     14000191e <mark_section_writable+0xce>
   140001916:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001919:	83 e2 fb             	and    $0xfffffffb,%edx
   14000191c:	75 12                	jne    140001930 <mark_section_writable+0xe0>
   14000191e:	83 05 6f 57 00 00 01 	addl   $0x1,0x576f(%rip)        # 140007094 <maxSections>
   140001925:	48 83 c4 50          	add    $0x50,%rsp
   140001929:	5b                   	pop    %rbx
   14000192a:	5e                   	pop    %rsi
   14000192b:	5f                   	pop    %rdi
   14000192c:	c3                   	ret
   14000192d:	0f 1f 00             	nopl   (%rax)
   140001930:	83 f8 02             	cmp    $0x2,%eax
   140001933:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001938:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000193d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   140001943:	b8 04 00 00 00       	mov    $0x4,%eax
   140001948:	44 0f 44 c0          	cmove  %eax,%r8d
   14000194c:	48 03 1d 45 57 00 00 	add    0x5745(%rip),%rbx        # 140007098 <the_secs>
   140001953:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140001957:	49 89 d9             	mov    %rbx,%r9
   14000195a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   14000195e:	ff 15 b4 69 00 00    	call   *0x69b4(%rip)        # 140008318 <__imp_VirtualProtect>
   140001964:	85 c0                	test   %eax,%eax
   140001966:	75 b6                	jne    14000191e <mark_section_writable+0xce>
   140001968:	ff 15 7a 69 00 00    	call   *0x697a(%rip)        # 1400082e8 <__imp_GetLastError>
   14000196e:	48 8d 0d c3 28 00 00 	lea    0x28c3(%rip),%rcx        # 140004238 <.rdata+0x78>
   140001975:	89 c2                	mov    %eax,%edx
   140001977:	e8 64 fe ff ff       	call   1400017e0 <__report_error>
   14000197c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001980:	31 f6                	xor    %esi,%esi
   140001982:	e9 21 ff ff ff       	jmp    1400018a8 <mark_section_writable+0x58>
   140001987:	48 8b 05 0a 57 00 00 	mov    0x570a(%rip),%rax        # 140007098 <the_secs>
   14000198e:	8b 57 08             	mov    0x8(%rdi),%edx
   140001991:	48 8d 0d 68 28 00 00 	lea    0x2868(%rip),%rcx        # 140004200 <.rdata+0x40>
   140001998:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   14000199d:	e8 3e fe ff ff       	call   1400017e0 <__report_error>
   1400019a2:	48 89 da             	mov    %rbx,%rdx
   1400019a5:	48 8d 0d 34 28 00 00 	lea    0x2834(%rip),%rcx        # 1400041e0 <.rdata+0x20>
   1400019ac:	e8 2f fe ff ff       	call   1400017e0 <__report_error>
   1400019b1:	90                   	nop
   1400019b2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400019b9:	00 00 00 00 
   1400019bd:	0f 1f 00             	nopl   (%rax)

00000001400019c0 <_pei386_runtime_relocator>:
   1400019c0:	55                   	push   %rbp
   1400019c1:	41 57                	push   %r15
   1400019c3:	41 56                	push   %r14
   1400019c5:	41 55                	push   %r13
   1400019c7:	41 54                	push   %r12
   1400019c9:	57                   	push   %rdi
   1400019ca:	56                   	push   %rsi
   1400019cb:	53                   	push   %rbx
   1400019cc:	48 83 ec 48          	sub    $0x48,%rsp
   1400019d0:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   1400019d5:	44 8b 25 b4 56 00 00 	mov    0x56b4(%rip),%r12d        # 140007090 <was_init.0>
   1400019dc:	45 85 e4             	test   %r12d,%r12d
   1400019df:	74 17                	je     1400019f8 <_pei386_runtime_relocator+0x38>
   1400019e1:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   1400019e5:	5b                   	pop    %rbx
   1400019e6:	5e                   	pop    %rsi
   1400019e7:	5f                   	pop    %rdi
   1400019e8:	41 5c                	pop    %r12
   1400019ea:	41 5d                	pop    %r13
   1400019ec:	41 5e                	pop    %r14
   1400019ee:	41 5f                	pop    %r15
   1400019f0:	5d                   	pop    %rbp
   1400019f1:	c3                   	ret
   1400019f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400019f8:	c7 05 8e 56 00 00 01 	movl   $0x1,0x568e(%rip)        # 140007090 <was_init.0>
   1400019ff:	00 00 00 
   140001a02:	e8 19 09 00 00       	call   140002320 <__mingw_GetSectionCount>
   140001a07:	48 98                	cltq
   140001a09:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001a0d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001a14:	00 
   140001a15:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001a19:	e8 62 0b 00 00       	call   140002580 <___chkstk_ms>
   140001a1e:	4c 8b 2d ab 29 00 00 	mov    0x29ab(%rip),%r13        # 1400043d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001a25:	48 8b 1d b4 29 00 00 	mov    0x29b4(%rip),%rbx        # 1400043e0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001a2c:	c7 05 5e 56 00 00 00 	movl   $0x0,0x565e(%rip)        # 140007094 <maxSections>
   140001a33:	00 00 00 
   140001a36:	48 29 c4             	sub    %rax,%rsp
   140001a39:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140001a3e:	48 89 05 53 56 00 00 	mov    %rax,0x5653(%rip)        # 140007098 <the_secs>
   140001a45:	4c 89 e8             	mov    %r13,%rax
   140001a48:	48 29 d8             	sub    %rbx,%rax
   140001a4b:	48 83 f8 07          	cmp    $0x7,%rax
   140001a4f:	7e 90                	jle    1400019e1 <_pei386_runtime_relocator+0x21>
   140001a51:	8b 13                	mov    (%rbx),%edx
   140001a53:	48 83 f8 0b          	cmp    $0xb,%rax
   140001a57:	0f 8f 7b 01 00 00    	jg     140001bd8 <_pei386_runtime_relocator+0x218>
   140001a5d:	8b 03                	mov    (%rbx),%eax
   140001a5f:	85 c0                	test   %eax,%eax
   140001a61:	0f 85 69 02 00 00    	jne    140001cd0 <_pei386_runtime_relocator+0x310>
   140001a67:	8b 43 04             	mov    0x4(%rbx),%eax
   140001a6a:	85 c0                	test   %eax,%eax
   140001a6c:	0f 85 5e 02 00 00    	jne    140001cd0 <_pei386_runtime_relocator+0x310>
   140001a72:	8b 53 08             	mov    0x8(%rbx),%edx
   140001a75:	83 fa 01             	cmp    $0x1,%edx
   140001a78:	0f 85 90 02 00 00    	jne    140001d0e <_pei386_runtime_relocator+0x34e>
   140001a7e:	48 83 c3 0c          	add    $0xc,%rbx
   140001a82:	4c 39 eb             	cmp    %r13,%rbx
   140001a85:	0f 83 56 ff ff ff    	jae    1400019e1 <_pei386_runtime_relocator+0x21>
   140001a8b:	4c 8b 35 6e 29 00 00 	mov    0x296e(%rip),%r14        # 140004400 <.refptr.__image_base__>
   140001a92:	49 bf ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r15
   140001a99:	ff ff ff 
   140001a9c:	eb 54                	jmp    140001af2 <_pei386_runtime_relocator+0x132>
   140001a9e:	66 90                	xchg   %ax,%ax
   140001aa0:	0f b6 37             	movzbl (%rdi),%esi
   140001aa3:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001aa9:	40 84 f6             	test   %sil,%sil
   140001aac:	0f 89 06 02 00 00    	jns    140001cb8 <_pei386_runtime_relocator+0x2f8>
   140001ab2:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140001ab9:	48 29 c6             	sub    %rax,%rsi
   140001abc:	4c 01 ce             	add    %r9,%rsi
   140001abf:	85 c9                	test   %ecx,%ecx
   140001ac1:	75 17                	jne    140001ada <_pei386_runtime_relocator+0x11a>
   140001ac3:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   140001aca:	0f 8f 4f 01 00 00    	jg     140001c1f <_pei386_runtime_relocator+0x25f>
   140001ad0:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140001ad4:	0f 8c 45 01 00 00    	jl     140001c1f <_pei386_runtime_relocator+0x25f>
   140001ada:	48 89 f9             	mov    %rdi,%rcx
   140001add:	e8 6e fd ff ff       	call   140001850 <mark_section_writable>
   140001ae2:	40 88 37             	mov    %sil,(%rdi)
   140001ae5:	48 83 c3 0c          	add    $0xc,%rbx
   140001ae9:	4c 39 eb             	cmp    %r13,%rbx
   140001aec:	0f 83 8e 00 00 00    	jae    140001b80 <_pei386_runtime_relocator+0x1c0>
   140001af2:	8b 03                	mov    (%rbx),%eax
   140001af4:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140001af7:	8b 7b 04             	mov    0x4(%rbx),%edi
   140001afa:	4c 01 f0             	add    %r14,%rax
   140001afd:	0f b6 d1             	movzbl %cl,%edx
   140001b00:	4c 8b 08             	mov    (%rax),%r9
   140001b03:	4c 01 f7             	add    %r14,%rdi
   140001b06:	83 fa 20             	cmp    $0x20,%edx
   140001b09:	0f 84 29 01 00 00    	je     140001c38 <_pei386_runtime_relocator+0x278>
   140001b0f:	0f 87 eb 00 00 00    	ja     140001c00 <_pei386_runtime_relocator+0x240>
   140001b15:	83 fa 08             	cmp    $0x8,%edx
   140001b18:	74 86                	je     140001aa0 <_pei386_runtime_relocator+0xe0>
   140001b1a:	83 fa 10             	cmp    $0x10,%edx
   140001b1d:	0f 85 df 01 00 00    	jne    140001d02 <_pei386_runtime_relocator+0x342>
   140001b23:	0f b7 37             	movzwl (%rdi),%esi
   140001b26:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001b2c:	66 85 f6             	test   %si,%si
   140001b2f:	0f 89 6b 01 00 00    	jns    140001ca0 <_pei386_runtime_relocator+0x2e0>
   140001b35:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   140001b3c:	48 29 c6             	sub    %rax,%rsi
   140001b3f:	4c 01 ce             	add    %r9,%rsi
   140001b42:	85 c9                	test   %ecx,%ecx
   140001b44:	75 1a                	jne    140001b60 <_pei386_runtime_relocator+0x1a0>
   140001b46:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   140001b4d:	0f 8c cc 00 00 00    	jl     140001c1f <_pei386_runtime_relocator+0x25f>
   140001b53:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   140001b5a:	0f 8f bf 00 00 00    	jg     140001c1f <_pei386_runtime_relocator+0x25f>
   140001b60:	48 89 f9             	mov    %rdi,%rcx
   140001b63:	48 83 c3 0c          	add    $0xc,%rbx
   140001b67:	e8 e4 fc ff ff       	call   140001850 <mark_section_writable>
   140001b6c:	66 89 37             	mov    %si,(%rdi)
   140001b6f:	4c 39 eb             	cmp    %r13,%rbx
   140001b72:	0f 82 7a ff ff ff    	jb     140001af2 <_pei386_runtime_relocator+0x132>
   140001b78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001b7f:	00 
   140001b80:	8b 15 0e 55 00 00    	mov    0x550e(%rip),%edx        # 140007094 <maxSections>
   140001b86:	85 d2                	test   %edx,%edx
   140001b88:	0f 8e 53 fe ff ff    	jle    1400019e1 <_pei386_runtime_relocator+0x21>
   140001b8e:	48 8b 35 83 67 00 00 	mov    0x6783(%rip),%rsi        # 140008318 <__imp_VirtualProtect>
   140001b95:	31 db                	xor    %ebx,%ebx
   140001b97:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   140001b9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001ba0:	48 8b 05 f1 54 00 00 	mov    0x54f1(%rip),%rax        # 140007098 <the_secs>
   140001ba7:	48 01 d8             	add    %rbx,%rax
   140001baa:	44 8b 00             	mov    (%rax),%r8d
   140001bad:	45 85 c0             	test   %r8d,%r8d
   140001bb0:	74 0d                	je     140001bbf <_pei386_runtime_relocator+0x1ff>
   140001bb2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001bb6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001bba:	49 89 f9             	mov    %rdi,%r9
   140001bbd:	ff d6                	call   *%rsi
   140001bbf:	41 83 c4 01          	add    $0x1,%r12d
   140001bc3:	48 83 c3 28          	add    $0x28,%rbx
   140001bc7:	44 3b 25 c6 54 00 00 	cmp    0x54c6(%rip),%r12d        # 140007094 <maxSections>
   140001bce:	7c d0                	jl     140001ba0 <_pei386_runtime_relocator+0x1e0>
   140001bd0:	e9 0c fe ff ff       	jmp    1400019e1 <_pei386_runtime_relocator+0x21>
   140001bd5:	0f 1f 00             	nopl   (%rax)
   140001bd8:	85 d2                	test   %edx,%edx
   140001bda:	0f 85 f0 00 00 00    	jne    140001cd0 <_pei386_runtime_relocator+0x310>
   140001be0:	8b 43 04             	mov    0x4(%rbx),%eax
   140001be3:	89 c2                	mov    %eax,%edx
   140001be5:	0b 53 08             	or     0x8(%rbx),%edx
   140001be8:	0f 85 7c fe ff ff    	jne    140001a6a <_pei386_runtime_relocator+0xaa>
   140001bee:	48 83 c3 0c          	add    $0xc,%rbx
   140001bf2:	e9 66 fe ff ff       	jmp    140001a5d <_pei386_runtime_relocator+0x9d>
   140001bf7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001bfe:	00 00 
   140001c00:	83 fa 40             	cmp    $0x40,%edx
   140001c03:	0f 85 f9 00 00 00    	jne    140001d02 <_pei386_runtime_relocator+0x342>
   140001c09:	48 8b 37             	mov    (%rdi),%rsi
   140001c0c:	48 29 c6             	sub    %rax,%rsi
   140001c0f:	4c 01 ce             	add    %r9,%rsi
   140001c12:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001c18:	75 66                	jne    140001c80 <_pei386_runtime_relocator+0x2c0>
   140001c1a:	48 85 f6             	test   %rsi,%rsi
   140001c1d:	78 61                	js     140001c80 <_pei386_runtime_relocator+0x2c0>
   140001c1f:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140001c24:	49 89 f8             	mov    %rdi,%r8
   140001c27:	48 8d 0d 9a 26 00 00 	lea    0x269a(%rip),%rcx        # 1400042c8 <.rdata+0x108>
   140001c2e:	e8 ad fb ff ff       	call   1400017e0 <__report_error>
   140001c33:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c38:	8b 37                	mov    (%rdi),%esi
   140001c3a:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001c40:	85 f6                	test   %esi,%esi
   140001c42:	79 4c                	jns    140001c90 <_pei386_runtime_relocator+0x2d0>
   140001c44:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140001c4b:	ff ff ff 
   140001c4e:	4c 09 de             	or     %r11,%rsi
   140001c51:	48 29 c6             	sub    %rax,%rsi
   140001c54:	4c 01 ce             	add    %r9,%rsi
   140001c57:	85 c9                	test   %ecx,%ecx
   140001c59:	75 0f                	jne    140001c6a <_pei386_runtime_relocator+0x2aa>
   140001c5b:	4c 39 fe             	cmp    %r15,%rsi
   140001c5e:	7e bf                	jle    140001c1f <_pei386_runtime_relocator+0x25f>
   140001c60:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001c65:	48 39 c6             	cmp    %rax,%rsi
   140001c68:	7f b5                	jg     140001c1f <_pei386_runtime_relocator+0x25f>
   140001c6a:	48 89 f9             	mov    %rdi,%rcx
   140001c6d:	e8 de fb ff ff       	call   140001850 <mark_section_writable>
   140001c72:	89 37                	mov    %esi,(%rdi)
   140001c74:	e9 6c fe ff ff       	jmp    140001ae5 <_pei386_runtime_relocator+0x125>
   140001c79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001c80:	48 89 f9             	mov    %rdi,%rcx
   140001c83:	e8 c8 fb ff ff       	call   140001850 <mark_section_writable>
   140001c88:	48 89 37             	mov    %rsi,(%rdi)
   140001c8b:	e9 55 fe ff ff       	jmp    140001ae5 <_pei386_runtime_relocator+0x125>
   140001c90:	48 29 c6             	sub    %rax,%rsi
   140001c93:	4c 01 ce             	add    %r9,%rsi
   140001c96:	85 c9                	test   %ecx,%ecx
   140001c98:	74 c1                	je     140001c5b <_pei386_runtime_relocator+0x29b>
   140001c9a:	eb ce                	jmp    140001c6a <_pei386_runtime_relocator+0x2aa>
   140001c9c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ca0:	48 29 c6             	sub    %rax,%rsi
   140001ca3:	4c 01 ce             	add    %r9,%rsi
   140001ca6:	85 c9                	test   %ecx,%ecx
   140001ca8:	0f 84 98 fe ff ff    	je     140001b46 <_pei386_runtime_relocator+0x186>
   140001cae:	e9 ad fe ff ff       	jmp    140001b60 <_pei386_runtime_relocator+0x1a0>
   140001cb3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001cb8:	48 29 c6             	sub    %rax,%rsi
   140001cbb:	4c 01 ce             	add    %r9,%rsi
   140001cbe:	85 c9                	test   %ecx,%ecx
   140001cc0:	0f 84 fd fd ff ff    	je     140001ac3 <_pei386_runtime_relocator+0x103>
   140001cc6:	e9 0f fe ff ff       	jmp    140001ada <_pei386_runtime_relocator+0x11a>
   140001ccb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001cd0:	4c 39 eb             	cmp    %r13,%rbx
   140001cd3:	0f 83 08 fd ff ff    	jae    1400019e1 <_pei386_runtime_relocator+0x21>
   140001cd9:	4c 8b 35 20 27 00 00 	mov    0x2720(%rip),%r14        # 140004400 <.refptr.__image_base__>
   140001ce0:	8b 73 04             	mov    0x4(%rbx),%esi
   140001ce3:	8b 3b                	mov    (%rbx),%edi
   140001ce5:	48 83 c3 08          	add    $0x8,%rbx
   140001ce9:	4c 01 f6             	add    %r14,%rsi
   140001cec:	03 3e                	add    (%rsi),%edi
   140001cee:	48 89 f1             	mov    %rsi,%rcx
   140001cf1:	e8 5a fb ff ff       	call   140001850 <mark_section_writable>
   140001cf6:	89 3e                	mov    %edi,(%rsi)
   140001cf8:	4c 39 eb             	cmp    %r13,%rbx
   140001cfb:	72 e3                	jb     140001ce0 <_pei386_runtime_relocator+0x320>
   140001cfd:	e9 7e fe ff ff       	jmp    140001b80 <_pei386_runtime_relocator+0x1c0>
   140001d02:	48 8d 0d 8f 25 00 00 	lea    0x258f(%rip),%rcx        # 140004298 <.rdata+0xd8>
   140001d09:	e8 d2 fa ff ff       	call   1400017e0 <__report_error>
   140001d0e:	48 8d 0d 4b 25 00 00 	lea    0x254b(%rip),%rcx        # 140004260 <.rdata+0xa0>
   140001d15:	e8 c6 fa ff ff       	call   1400017e0 <__report_error>
   140001d1a:	90                   	nop
   140001d1b:	90                   	nop
   140001d1c:	90                   	nop
   140001d1d:	90                   	nop
   140001d1e:	90                   	nop
   140001d1f:	90                   	nop

0000000140001d20 <__mingw_raise_matherr>:
   140001d20:	48 83 ec 58          	sub    $0x58,%rsp
   140001d24:	48 8b 05 75 53 00 00 	mov    0x5375(%rip),%rax        # 1400070a0 <stUserMathErr>
   140001d2b:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140001d2f:	48 85 c0             	test   %rax,%rax
   140001d32:	74 25                	je     140001d59 <__mingw_raise_matherr+0x39>
   140001d34:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001d3b:	00 00 
   140001d3d:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001d41:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001d46:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001d4b:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140001d50:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001d56:	ff d0                	call   *%rax
   140001d58:	90                   	nop
   140001d59:	48 83 c4 58          	add    $0x58,%rsp
   140001d5d:	c3                   	ret
   140001d5e:	66 90                	xchg   %ax,%ax

0000000140001d60 <__mingw_setusermatherr>:
   140001d60:	48 89 0d 39 53 00 00 	mov    %rcx,0x5339(%rip)        # 1400070a0 <stUserMathErr>
   140001d67:	e9 d4 0b 00 00       	jmp    140002940 <__setusermatherr>
   140001d6c:	90                   	nop
   140001d6d:	90                   	nop
   140001d6e:	90                   	nop
   140001d6f:	90                   	nop

0000000140001d70 <_gnu_exception_handler>:
   140001d70:	53                   	push   %rbx
   140001d71:	48 83 ec 20          	sub    $0x20,%rsp
   140001d75:	48 8b 11             	mov    (%rcx),%rdx
   140001d78:	8b 02                	mov    (%rdx),%eax
   140001d7a:	48 89 cb             	mov    %rcx,%rbx
   140001d7d:	89 c1                	mov    %eax,%ecx
   140001d7f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001d85:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001d8b:	0f 84 9f 00 00 00    	je     140001e30 <_gnu_exception_handler+0xc0>
   140001d91:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001d96:	77 77                	ja     140001e0f <_gnu_exception_handler+0x9f>
   140001d98:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001d9d:	76 21                	jbe    140001dc0 <_gnu_exception_handler+0x50>
   140001d9f:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001da4:	83 f8 09             	cmp    $0x9,%eax
   140001da7:	77 54                	ja     140001dfd <_gnu_exception_handler+0x8d>
   140001da9:	48 8d 15 70 25 00 00 	lea    0x2570(%rip),%rdx        # 140004320 <.rdata>
   140001db0:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001db4:	48 01 d0             	add    %rdx,%rax
   140001db7:	ff e0                	jmp    *%rax
   140001db9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001dc0:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001dc5:	0f 84 d5 00 00 00    	je     140001ea0 <_gnu_exception_handler+0x130>
   140001dcb:	76 3b                	jbe    140001e08 <_gnu_exception_handler+0x98>
   140001dcd:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001dd2:	74 29                	je     140001dfd <_gnu_exception_handler+0x8d>
   140001dd4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001dd9:	75 34                	jne    140001e0f <_gnu_exception_handler+0x9f>
   140001ddb:	31 d2                	xor    %edx,%edx
   140001ddd:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001de2:	e8 39 0b 00 00       	call   140002920 <signal>
   140001de7:	48 83 f8 01          	cmp    $0x1,%rax
   140001deb:	0f 84 d6 00 00 00    	je     140001ec7 <_gnu_exception_handler+0x157>
   140001df1:	48 85 c0             	test   %rax,%rax
   140001df4:	74 19                	je     140001e0f <_gnu_exception_handler+0x9f>
   140001df6:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001dfb:	ff d0                	call   *%rax
   140001dfd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001e02:	48 83 c4 20          	add    $0x20,%rsp
   140001e06:	5b                   	pop    %rbx
   140001e07:	c3                   	ret
   140001e08:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001e0d:	74 ee                	je     140001dfd <_gnu_exception_handler+0x8d>
   140001e0f:	48 8b 05 aa 52 00 00 	mov    0x52aa(%rip),%rax        # 1400070c0 <__mingw_oldexcpt_handler>
   140001e16:	48 85 c0             	test   %rax,%rax
   140001e19:	74 25                	je     140001e40 <_gnu_exception_handler+0xd0>
   140001e1b:	48 89 d9             	mov    %rbx,%rcx
   140001e1e:	48 83 c4 20          	add    $0x20,%rsp
   140001e22:	5b                   	pop    %rbx
   140001e23:	48 ff e0             	rex.W jmp *%rax
   140001e26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001e2d:	00 00 00 
   140001e30:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001e34:	0f 85 57 ff ff ff    	jne    140001d91 <_gnu_exception_handler+0x21>
   140001e3a:	eb c1                	jmp    140001dfd <_gnu_exception_handler+0x8d>
   140001e3c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e40:	31 c0                	xor    %eax,%eax
   140001e42:	48 83 c4 20          	add    $0x20,%rsp
   140001e46:	5b                   	pop    %rbx
   140001e47:	c3                   	ret
   140001e48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001e4f:	00 
   140001e50:	31 d2                	xor    %edx,%edx
   140001e52:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e57:	e8 c4 0a 00 00       	call   140002920 <signal>
   140001e5c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e60:	0f 84 89 00 00 00    	je     140001eef <_gnu_exception_handler+0x17f>
   140001e66:	48 85 c0             	test   %rax,%rax
   140001e69:	74 a4                	je     140001e0f <_gnu_exception_handler+0x9f>
   140001e6b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e70:	ff d0                	call   *%rax
   140001e72:	eb 89                	jmp    140001dfd <_gnu_exception_handler+0x8d>
   140001e74:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e78:	31 d2                	xor    %edx,%edx
   140001e7a:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e7f:	e8 9c 0a 00 00       	call   140002920 <signal>
   140001e84:	48 83 f8 01          	cmp    $0x1,%rax
   140001e88:	75 dc                	jne    140001e66 <_gnu_exception_handler+0xf6>
   140001e8a:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e8f:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e94:	e8 87 0a 00 00       	call   140002920 <signal>
   140001e99:	e9 5f ff ff ff       	jmp    140001dfd <_gnu_exception_handler+0x8d>
   140001e9e:	66 90                	xchg   %ax,%ax
   140001ea0:	31 d2                	xor    %edx,%edx
   140001ea2:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001ea7:	e8 74 0a 00 00       	call   140002920 <signal>
   140001eac:	48 83 f8 01          	cmp    $0x1,%rax
   140001eb0:	74 29                	je     140001edb <_gnu_exception_handler+0x16b>
   140001eb2:	48 85 c0             	test   %rax,%rax
   140001eb5:	0f 84 54 ff ff ff    	je     140001e0f <_gnu_exception_handler+0x9f>
   140001ebb:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001ec0:	ff d0                	call   *%rax
   140001ec2:	e9 36 ff ff ff       	jmp    140001dfd <_gnu_exception_handler+0x8d>
   140001ec7:	ba 01 00 00 00       	mov    $0x1,%edx
   140001ecc:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001ed1:	e8 4a 0a 00 00       	call   140002920 <signal>
   140001ed6:	e9 22 ff ff ff       	jmp    140001dfd <_gnu_exception_handler+0x8d>
   140001edb:	ba 01 00 00 00       	mov    $0x1,%edx
   140001ee0:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001ee5:	e8 36 0a 00 00       	call   140002920 <signal>
   140001eea:	e9 0e ff ff ff       	jmp    140001dfd <_gnu_exception_handler+0x8d>
   140001eef:	ba 01 00 00 00       	mov    $0x1,%edx
   140001ef4:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001ef9:	e8 22 0a 00 00       	call   140002920 <signal>
   140001efe:	e8 cd f8 ff ff       	call   1400017d0 <_fpreset>
   140001f03:	e9 f5 fe ff ff       	jmp    140001dfd <_gnu_exception_handler+0x8d>
   140001f08:	90                   	nop
   140001f09:	90                   	nop
   140001f0a:	90                   	nop
   140001f0b:	90                   	nop
   140001f0c:	90                   	nop
   140001f0d:	90                   	nop
   140001f0e:	90                   	nop
   140001f0f:	90                   	nop

0000000140001f10 <__mingwthr_run_key_dtors.part.0>:
   140001f10:	41 54                	push   %r12
   140001f12:	55                   	push   %rbp
   140001f13:	57                   	push   %rdi
   140001f14:	56                   	push   %rsi
   140001f15:	53                   	push   %rbx
   140001f16:	48 83 ec 20          	sub    $0x20,%rsp
   140001f1a:	4c 8d 25 df 51 00 00 	lea    0x51df(%rip),%r12        # 140007100 <__mingwthr_cs>
   140001f21:	4c 89 e1             	mov    %r12,%rcx
   140001f24:	ff 15 b6 63 00 00    	call   *0x63b6(%rip)        # 1400082e0 <__imp_EnterCriticalSection>
   140001f2a:	48 8b 1d af 51 00 00 	mov    0x51af(%rip),%rbx        # 1400070e0 <key_dtor_list>
   140001f31:	48 85 db             	test   %rbx,%rbx
   140001f34:	74 36                	je     140001f6c <__mingwthr_run_key_dtors.part.0+0x5c>
   140001f36:	48 8b 2d d3 63 00 00 	mov    0x63d3(%rip),%rbp        # 140008310 <__imp_TlsGetValue>
   140001f3d:	48 8b 3d a4 63 00 00 	mov    0x63a4(%rip),%rdi        # 1400082e8 <__imp_GetLastError>
   140001f44:	0f 1f 40 00          	nopl   0x0(%rax)
   140001f48:	8b 0b                	mov    (%rbx),%ecx
   140001f4a:	ff d5                	call   *%rbp
   140001f4c:	48 89 c6             	mov    %rax,%rsi
   140001f4f:	ff d7                	call   *%rdi
   140001f51:	85 c0                	test   %eax,%eax
   140001f53:	75 0e                	jne    140001f63 <__mingwthr_run_key_dtors.part.0+0x53>
   140001f55:	48 85 f6             	test   %rsi,%rsi
   140001f58:	74 09                	je     140001f63 <__mingwthr_run_key_dtors.part.0+0x53>
   140001f5a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001f5e:	48 89 f1             	mov    %rsi,%rcx
   140001f61:	ff d0                	call   *%rax
   140001f63:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001f67:	48 85 db             	test   %rbx,%rbx
   140001f6a:	75 dc                	jne    140001f48 <__mingwthr_run_key_dtors.part.0+0x38>
   140001f6c:	4c 89 e1             	mov    %r12,%rcx
   140001f6f:	48 83 c4 20          	add    $0x20,%rsp
   140001f73:	5b                   	pop    %rbx
   140001f74:	5e                   	pop    %rsi
   140001f75:	5f                   	pop    %rdi
   140001f76:	5d                   	pop    %rbp
   140001f77:	41 5c                	pop    %r12
   140001f79:	48 ff 25 78 63 00 00 	rex.W jmp *0x6378(%rip)        # 1400082f8 <__imp_LeaveCriticalSection>

0000000140001f80 <___w64_mingwthr_add_key_dtor>:
   140001f80:	57                   	push   %rdi
   140001f81:	56                   	push   %rsi
   140001f82:	53                   	push   %rbx
   140001f83:	48 83 ec 20          	sub    $0x20,%rsp
   140001f87:	8b 05 5b 51 00 00    	mov    0x515b(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001f8d:	89 cf                	mov    %ecx,%edi
   140001f8f:	48 89 d6             	mov    %rdx,%rsi
   140001f92:	85 c0                	test   %eax,%eax
   140001f94:	75 0a                	jne    140001fa0 <___w64_mingwthr_add_key_dtor+0x20>
   140001f96:	31 c0                	xor    %eax,%eax
   140001f98:	48 83 c4 20          	add    $0x20,%rsp
   140001f9c:	5b                   	pop    %rbx
   140001f9d:	5e                   	pop    %rsi
   140001f9e:	5f                   	pop    %rdi
   140001f9f:	c3                   	ret
   140001fa0:	ba 18 00 00 00       	mov    $0x18,%edx
   140001fa5:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001faa:	e8 a9 09 00 00       	call   140002958 <calloc>
   140001faf:	48 89 c3             	mov    %rax,%rbx
   140001fb2:	48 85 c0             	test   %rax,%rax
   140001fb5:	74 33                	je     140001fea <___w64_mingwthr_add_key_dtor+0x6a>
   140001fb7:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140001fbb:	48 8d 35 3e 51 00 00 	lea    0x513e(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140001fc2:	89 38                	mov    %edi,(%rax)
   140001fc4:	48 89 f1             	mov    %rsi,%rcx
   140001fc7:	ff 15 13 63 00 00    	call   *0x6313(%rip)        # 1400082e0 <__imp_EnterCriticalSection>
   140001fcd:	48 8b 05 0c 51 00 00 	mov    0x510c(%rip),%rax        # 1400070e0 <key_dtor_list>
   140001fd4:	48 89 f1             	mov    %rsi,%rcx
   140001fd7:	48 89 1d 02 51 00 00 	mov    %rbx,0x5102(%rip)        # 1400070e0 <key_dtor_list>
   140001fde:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140001fe2:	ff 15 10 63 00 00    	call   *0x6310(%rip)        # 1400082f8 <__imp_LeaveCriticalSection>
   140001fe8:	eb ac                	jmp    140001f96 <___w64_mingwthr_add_key_dtor+0x16>
   140001fea:	83 c8 ff             	or     $0xffffffff,%eax
   140001fed:	eb a9                	jmp    140001f98 <___w64_mingwthr_add_key_dtor+0x18>
   140001fef:	90                   	nop

0000000140001ff0 <___w64_mingwthr_remove_key_dtor>:
   140001ff0:	56                   	push   %rsi
   140001ff1:	53                   	push   %rbx
   140001ff2:	48 83 ec 28          	sub    $0x28,%rsp
   140001ff6:	8b 05 ec 50 00 00    	mov    0x50ec(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001ffc:	89 cb                	mov    %ecx,%ebx
   140001ffe:	85 c0                	test   %eax,%eax
   140002000:	75 0e                	jne    140002010 <___w64_mingwthr_remove_key_dtor+0x20>
   140002002:	31 c0                	xor    %eax,%eax
   140002004:	48 83 c4 28          	add    $0x28,%rsp
   140002008:	5b                   	pop    %rbx
   140002009:	5e                   	pop    %rsi
   14000200a:	c3                   	ret
   14000200b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002010:	48 8d 35 e9 50 00 00 	lea    0x50e9(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140002017:	48 89 f1             	mov    %rsi,%rcx
   14000201a:	ff 15 c0 62 00 00    	call   *0x62c0(%rip)        # 1400082e0 <__imp_EnterCriticalSection>
   140002020:	48 8b 0d b9 50 00 00 	mov    0x50b9(%rip),%rcx        # 1400070e0 <key_dtor_list>
   140002027:	48 85 c9             	test   %rcx,%rcx
   14000202a:	74 27                	je     140002053 <___w64_mingwthr_remove_key_dtor+0x63>
   14000202c:	31 d2                	xor    %edx,%edx
   14000202e:	eb 0b                	jmp    14000203b <___w64_mingwthr_remove_key_dtor+0x4b>
   140002030:	48 89 ca             	mov    %rcx,%rdx
   140002033:	48 85 c0             	test   %rax,%rax
   140002036:	74 1b                	je     140002053 <___w64_mingwthr_remove_key_dtor+0x63>
   140002038:	48 89 c1             	mov    %rax,%rcx
   14000203b:	8b 01                	mov    (%rcx),%eax
   14000203d:	39 d8                	cmp    %ebx,%eax
   14000203f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002043:	75 eb                	jne    140002030 <___w64_mingwthr_remove_key_dtor+0x40>
   140002045:	48 85 d2             	test   %rdx,%rdx
   140002048:	74 1e                	je     140002068 <___w64_mingwthr_remove_key_dtor+0x78>
   14000204a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000204e:	e8 0d 09 00 00       	call   140002960 <free>
   140002053:	48 89 f1             	mov    %rsi,%rcx
   140002056:	ff 15 9c 62 00 00    	call   *0x629c(%rip)        # 1400082f8 <__imp_LeaveCriticalSection>
   14000205c:	31 c0                	xor    %eax,%eax
   14000205e:	48 83 c4 28          	add    $0x28,%rsp
   140002062:	5b                   	pop    %rbx
   140002063:	5e                   	pop    %rsi
   140002064:	c3                   	ret
   140002065:	0f 1f 00             	nopl   (%rax)
   140002068:	48 89 05 71 50 00 00 	mov    %rax,0x5071(%rip)        # 1400070e0 <key_dtor_list>
   14000206f:	eb dd                	jmp    14000204e <___w64_mingwthr_remove_key_dtor+0x5e>
   140002071:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002078:	00 00 00 00 
   14000207c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002080 <__mingw_TLScallback>:
   140002080:	53                   	push   %rbx
   140002081:	48 83 ec 20          	sub    $0x20,%rsp
   140002085:	83 fa 02             	cmp    $0x2,%edx
   140002088:	0f 84 b2 00 00 00    	je     140002140 <__mingw_TLScallback+0xc0>
   14000208e:	77 30                	ja     1400020c0 <__mingw_TLScallback+0x40>
   140002090:	85 d2                	test   %edx,%edx
   140002092:	74 4c                	je     1400020e0 <__mingw_TLScallback+0x60>
   140002094:	8b 05 4e 50 00 00    	mov    0x504e(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000209a:	85 c0                	test   %eax,%eax
   14000209c:	0f 84 be 00 00 00    	je     140002160 <__mingw_TLScallback+0xe0>
   1400020a2:	c7 05 3c 50 00 00 01 	movl   $0x1,0x503c(%rip)        # 1400070e8 <__mingwthr_cs_init>
   1400020a9:	00 00 00 
   1400020ac:	b8 01 00 00 00       	mov    $0x1,%eax
   1400020b1:	48 83 c4 20          	add    $0x20,%rsp
   1400020b5:	5b                   	pop    %rbx
   1400020b6:	c3                   	ret
   1400020b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400020be:	00 00 
   1400020c0:	83 fa 03             	cmp    $0x3,%edx
   1400020c3:	75 e7                	jne    1400020ac <__mingw_TLScallback+0x2c>
   1400020c5:	8b 05 1d 50 00 00    	mov    0x501d(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   1400020cb:	85 c0                	test   %eax,%eax
   1400020cd:	74 dd                	je     1400020ac <__mingw_TLScallback+0x2c>
   1400020cf:	e8 3c fe ff ff       	call   140001f10 <__mingwthr_run_key_dtors.part.0>
   1400020d4:	eb d6                	jmp    1400020ac <__mingw_TLScallback+0x2c>
   1400020d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400020dd:	00 00 00 
   1400020e0:	8b 05 02 50 00 00    	mov    0x5002(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   1400020e6:	85 c0                	test   %eax,%eax
   1400020e8:	75 66                	jne    140002150 <__mingw_TLScallback+0xd0>
   1400020ea:	8b 05 f8 4f 00 00    	mov    0x4ff8(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   1400020f0:	83 f8 01             	cmp    $0x1,%eax
   1400020f3:	75 b7                	jne    1400020ac <__mingw_TLScallback+0x2c>
   1400020f5:	48 8b 1d e4 4f 00 00 	mov    0x4fe4(%rip),%rbx        # 1400070e0 <key_dtor_list>
   1400020fc:	48 85 db             	test   %rbx,%rbx
   1400020ff:	74 18                	je     140002119 <__mingw_TLScallback+0x99>
   140002101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002108:	48 89 d9             	mov    %rbx,%rcx
   14000210b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000210f:	e8 4c 08 00 00       	call   140002960 <free>
   140002114:	48 85 db             	test   %rbx,%rbx
   140002117:	75 ef                	jne    140002108 <__mingw_TLScallback+0x88>
   140002119:	48 8d 0d e0 4f 00 00 	lea    0x4fe0(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140002120:	48 c7 05 b5 4f 00 00 	movq   $0x0,0x4fb5(%rip)        # 1400070e0 <key_dtor_list>
   140002127:	00 00 00 00 
   14000212b:	c7 05 b3 4f 00 00 00 	movl   $0x0,0x4fb3(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002132:	00 00 00 
   140002135:	ff 15 9d 61 00 00    	call   *0x619d(%rip)        # 1400082d8 <__IAT_start__>
   14000213b:	e9 6c ff ff ff       	jmp    1400020ac <__mingw_TLScallback+0x2c>
   140002140:	e8 8b f6 ff ff       	call   1400017d0 <_fpreset>
   140002145:	b8 01 00 00 00       	mov    $0x1,%eax
   14000214a:	48 83 c4 20          	add    $0x20,%rsp
   14000214e:	5b                   	pop    %rbx
   14000214f:	c3                   	ret
   140002150:	e8 bb fd ff ff       	call   140001f10 <__mingwthr_run_key_dtors.part.0>
   140002155:	eb 93                	jmp    1400020ea <__mingw_TLScallback+0x6a>
   140002157:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000215e:	00 00 
   140002160:	48 8d 0d 99 4f 00 00 	lea    0x4f99(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140002167:	ff 15 83 61 00 00    	call   *0x6183(%rip)        # 1400082f0 <__imp_InitializeCriticalSection>
   14000216d:	e9 30 ff ff ff       	jmp    1400020a2 <__mingw_TLScallback+0x22>
   140002172:	90                   	nop
   140002173:	90                   	nop
   140002174:	90                   	nop
   140002175:	90                   	nop
   140002176:	90                   	nop
   140002177:	90                   	nop
   140002178:	90                   	nop
   140002179:	90                   	nop
   14000217a:	90                   	nop
   14000217b:	90                   	nop
   14000217c:	90                   	nop
   14000217d:	90                   	nop
   14000217e:	90                   	nop
   14000217f:	90                   	nop

0000000140002180 <_ValidateImageBase>:
   140002180:	31 c0                	xor    %eax,%eax
   140002182:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002187:	75 0f                	jne    140002198 <_ValidateImageBase+0x18>
   140002189:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000218d:	48 01 d1             	add    %rdx,%rcx
   140002190:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002196:	74 08                	je     1400021a0 <_ValidateImageBase+0x20>
   140002198:	c3                   	ret
   140002199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400021a0:	31 c0                	xor    %eax,%eax
   1400021a2:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   1400021a8:	0f 94 c0             	sete   %al
   1400021ab:	c3                   	ret
   1400021ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400021b0 <_FindPESection>:
   1400021b0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   1400021b4:	48 01 c1             	add    %rax,%rcx
   1400021b7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   1400021bb:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   1400021c0:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   1400021c5:	66 45 85 c0          	test   %r8w,%r8w
   1400021c9:	74 32                	je     1400021fd <_FindPESection+0x4d>
   1400021cb:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   1400021cf:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   1400021d3:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   1400021d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400021df:	00 
   1400021e0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400021e4:	4c 89 c1             	mov    %r8,%rcx
   1400021e7:	4c 39 c2             	cmp    %r8,%rdx
   1400021ea:	72 08                	jb     1400021f4 <_FindPESection+0x44>
   1400021ec:	03 48 08             	add    0x8(%rax),%ecx
   1400021ef:	48 39 ca             	cmp    %rcx,%rdx
   1400021f2:	72 0b                	jb     1400021ff <_FindPESection+0x4f>
   1400021f4:	48 83 c0 28          	add    $0x28,%rax
   1400021f8:	4c 39 c8             	cmp    %r9,%rax
   1400021fb:	75 e3                	jne    1400021e0 <_FindPESection+0x30>
   1400021fd:	31 c0                	xor    %eax,%eax
   1400021ff:	c3                   	ret

0000000140002200 <_FindPESectionByName>:
   140002200:	57                   	push   %rdi
   140002201:	56                   	push   %rsi
   140002202:	53                   	push   %rbx
   140002203:	48 83 ec 20          	sub    $0x20,%rsp
   140002207:	48 89 ce             	mov    %rcx,%rsi
   14000220a:	e8 51 06 00 00       	call   140002860 <strlen>
   14000220f:	48 83 f8 08          	cmp    $0x8,%rax
   140002213:	77 7b                	ja     140002290 <_FindPESectionByName+0x90>
   140002215:	48 8b 15 e4 21 00 00 	mov    0x21e4(%rip),%rdx        # 140004400 <.refptr.__image_base__>
   14000221c:	31 db                	xor    %ebx,%ebx
   14000221e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002223:	75 59                	jne    14000227e <_FindPESectionByName+0x7e>
   140002225:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140002229:	48 01 d0             	add    %rdx,%rax
   14000222c:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002232:	75 4a                	jne    14000227e <_FindPESectionByName+0x7e>
   140002234:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000223a:	75 42                	jne    14000227e <_FindPESectionByName+0x7e>
   14000223c:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140002240:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   140002245:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   140002249:	66 85 d2             	test   %dx,%dx
   14000224c:	74 42                	je     140002290 <_FindPESectionByName+0x90>
   14000224e:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140002251:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002255:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   14000225a:	eb 0d                	jmp    140002269 <_FindPESectionByName+0x69>
   14000225c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002260:	48 83 c3 28          	add    $0x28,%rbx
   140002264:	48 39 fb             	cmp    %rdi,%rbx
   140002267:	74 27                	je     140002290 <_FindPESectionByName+0x90>
   140002269:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000226f:	48 89 f2             	mov    %rsi,%rdx
   140002272:	48 89 d9             	mov    %rbx,%rcx
   140002275:	e8 ee 05 00 00       	call   140002868 <strncmp>
   14000227a:	85 c0                	test   %eax,%eax
   14000227c:	75 e2                	jne    140002260 <_FindPESectionByName+0x60>
   14000227e:	48 89 d8             	mov    %rbx,%rax
   140002281:	48 83 c4 20          	add    $0x20,%rsp
   140002285:	5b                   	pop    %rbx
   140002286:	5e                   	pop    %rsi
   140002287:	5f                   	pop    %rdi
   140002288:	c3                   	ret
   140002289:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002290:	31 db                	xor    %ebx,%ebx
   140002292:	48 89 d8             	mov    %rbx,%rax
   140002295:	48 83 c4 20          	add    $0x20,%rsp
   140002299:	5b                   	pop    %rbx
   14000229a:	5e                   	pop    %rsi
   14000229b:	5f                   	pop    %rdi
   14000229c:	c3                   	ret
   14000229d:	0f 1f 00             	nopl   (%rax)

00000001400022a0 <__mingw_GetSectionForAddress>:
   1400022a0:	48 8b 15 59 21 00 00 	mov    0x2159(%rip),%rdx        # 140004400 <.refptr.__image_base__>
   1400022a7:	31 c0                	xor    %eax,%eax
   1400022a9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400022ae:	75 10                	jne    1400022c0 <__mingw_GetSectionForAddress+0x20>
   1400022b0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400022b4:	49 01 d0             	add    %rdx,%r8
   1400022b7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400022be:	74 08                	je     1400022c8 <__mingw_GetSectionForAddress+0x28>
   1400022c0:	c3                   	ret
   1400022c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400022c8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400022cf:	75 ef                	jne    1400022c0 <__mingw_GetSectionForAddress+0x20>
   1400022d1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   1400022d6:	48 29 d1             	sub    %rdx,%rcx
   1400022d9:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   1400022de:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400022e3:	66 45 85 c0          	test   %r8w,%r8w
   1400022e7:	74 34                	je     14000231d <__mingw_GetSectionForAddress+0x7d>
   1400022e9:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   1400022ed:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400022f1:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   1400022f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400022fd:	00 00 00 
   140002300:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002304:	4c 89 c2             	mov    %r8,%rdx
   140002307:	4c 39 c1             	cmp    %r8,%rcx
   14000230a:	72 08                	jb     140002314 <__mingw_GetSectionForAddress+0x74>
   14000230c:	03 50 08             	add    0x8(%rax),%edx
   14000230f:	48 39 d1             	cmp    %rdx,%rcx
   140002312:	72 ac                	jb     1400022c0 <__mingw_GetSectionForAddress+0x20>
   140002314:	48 83 c0 28          	add    $0x28,%rax
   140002318:	4c 39 c8             	cmp    %r9,%rax
   14000231b:	75 e3                	jne    140002300 <__mingw_GetSectionForAddress+0x60>
   14000231d:	31 c0                	xor    %eax,%eax
   14000231f:	c3                   	ret

0000000140002320 <__mingw_GetSectionCount>:
   140002320:	48 8b 05 d9 20 00 00 	mov    0x20d9(%rip),%rax        # 140004400 <.refptr.__image_base__>
   140002327:	31 c9                	xor    %ecx,%ecx
   140002329:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000232e:	75 0f                	jne    14000233f <__mingw_GetSectionCount+0x1f>
   140002330:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002334:	48 01 d0             	add    %rdx,%rax
   140002337:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000233d:	74 09                	je     140002348 <__mingw_GetSectionCount+0x28>
   14000233f:	89 c8                	mov    %ecx,%eax
   140002341:	c3                   	ret
   140002342:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002348:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000234e:	75 ef                	jne    14000233f <__mingw_GetSectionCount+0x1f>
   140002350:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140002354:	89 c8                	mov    %ecx,%eax
   140002356:	c3                   	ret
   140002357:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000235e:	00 00 

0000000140002360 <_FindPESectionExec>:
   140002360:	4c 8b 05 99 20 00 00 	mov    0x2099(%rip),%r8        # 140004400 <.refptr.__image_base__>
   140002367:	31 c0                	xor    %eax,%eax
   140002369:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000236f:	75 0f                	jne    140002380 <_FindPESectionExec+0x20>
   140002371:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002375:	4c 01 c2             	add    %r8,%rdx
   140002378:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000237e:	74 08                	je     140002388 <_FindPESectionExec+0x28>
   140002380:	c3                   	ret
   140002381:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002388:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000238e:	75 f0                	jne    140002380 <_FindPESectionExec+0x20>
   140002390:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002394:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140002399:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   14000239e:	66 45 85 c0          	test   %r8w,%r8w
   1400023a2:	74 2c                	je     1400023d0 <_FindPESectionExec+0x70>
   1400023a4:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   1400023a8:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400023ac:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   1400023b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400023b8:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   1400023bc:	74 09                	je     1400023c7 <_FindPESectionExec+0x67>
   1400023be:	48 85 c9             	test   %rcx,%rcx
   1400023c1:	74 bd                	je     140002380 <_FindPESectionExec+0x20>
   1400023c3:	48 83 e9 01          	sub    $0x1,%rcx
   1400023c7:	48 83 c0 28          	add    $0x28,%rax
   1400023cb:	48 39 d0             	cmp    %rdx,%rax
   1400023ce:	75 e8                	jne    1400023b8 <_FindPESectionExec+0x58>
   1400023d0:	31 c0                	xor    %eax,%eax
   1400023d2:	c3                   	ret
   1400023d3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400023da:	00 00 00 00 
   1400023de:	66 90                	xchg   %ax,%ax

00000001400023e0 <_GetPEImageBase>:
   1400023e0:	48 8b 05 19 20 00 00 	mov    0x2019(%rip),%rax        # 140004400 <.refptr.__image_base__>
   1400023e7:	31 d2                	xor    %edx,%edx
   1400023e9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400023ee:	75 0f                	jne    1400023ff <_GetPEImageBase+0x1f>
   1400023f0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   1400023f4:	48 01 c1             	add    %rax,%rcx
   1400023f7:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400023fd:	74 09                	je     140002408 <_GetPEImageBase+0x28>
   1400023ff:	48 89 d0             	mov    %rdx,%rax
   140002402:	c3                   	ret
   140002403:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002408:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   14000240e:	48 0f 44 d0          	cmove  %rax,%rdx
   140002412:	48 89 d0             	mov    %rdx,%rax
   140002415:	c3                   	ret
   140002416:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000241d:	00 00 00 

0000000140002420 <_IsNonwritableInCurrentImage>:
   140002420:	48 8b 15 d9 1f 00 00 	mov    0x1fd9(%rip),%rdx        # 140004400 <.refptr.__image_base__>
   140002427:	31 c0                	xor    %eax,%eax
   140002429:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000242e:	75 10                	jne    140002440 <_IsNonwritableInCurrentImage+0x20>
   140002430:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002434:	49 01 d0             	add    %rdx,%r8
   140002437:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000243e:	74 08                	je     140002448 <_IsNonwritableInCurrentImage+0x28>
   140002440:	c3                   	ret
   140002441:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002448:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000244f:	75 ef                	jne    140002440 <_IsNonwritableInCurrentImage+0x20>
   140002451:	48 29 d1             	sub    %rdx,%rcx
   140002454:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140002459:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   14000245e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002463:	66 45 85 c9          	test   %r9w,%r9w
   140002467:	74 d7                	je     140002440 <_IsNonwritableInCurrentImage+0x20>
   140002469:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   14000246d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002471:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002476:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000247d:	00 00 00 
   140002480:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002484:	4c 89 c0             	mov    %r8,%rax
   140002487:	4c 39 c1             	cmp    %r8,%rcx
   14000248a:	72 08                	jb     140002494 <_IsNonwritableInCurrentImage+0x74>
   14000248c:	03 42 08             	add    0x8(%rdx),%eax
   14000248f:	48 39 c1             	cmp    %rax,%rcx
   140002492:	72 0c                	jb     1400024a0 <_IsNonwritableInCurrentImage+0x80>
   140002494:	48 83 c2 28          	add    $0x28,%rdx
   140002498:	49 39 d1             	cmp    %rdx,%r9
   14000249b:	75 e3                	jne    140002480 <_IsNonwritableInCurrentImage+0x60>
   14000249d:	31 c0                	xor    %eax,%eax
   14000249f:	c3                   	ret
   1400024a0:	8b 42 24             	mov    0x24(%rdx),%eax
   1400024a3:	f7 d0                	not    %eax
   1400024a5:	c1 e8 1f             	shr    $0x1f,%eax
   1400024a8:	c3                   	ret
   1400024a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400024b0 <__mingw_enum_import_library_names>:
   1400024b0:	4c 8b 1d 49 1f 00 00 	mov    0x1f49(%rip),%r11        # 140004400 <.refptr.__image_base__>
   1400024b7:	45 31 c9             	xor    %r9d,%r9d
   1400024ba:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   1400024c0:	75 10                	jne    1400024d2 <__mingw_enum_import_library_names+0x22>
   1400024c2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   1400024c6:	4d 01 d8             	add    %r11,%r8
   1400024c9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400024d0:	74 0e                	je     1400024e0 <__mingw_enum_import_library_names+0x30>
   1400024d2:	4c 89 c8             	mov    %r9,%rax
   1400024d5:	c3                   	ret
   1400024d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024dd:	00 00 00 
   1400024e0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400024e7:	75 e9                	jne    1400024d2 <__mingw_enum_import_library_names+0x22>
   1400024e9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   1400024f0:	85 c0                	test   %eax,%eax
   1400024f2:	74 de                	je     1400024d2 <__mingw_enum_import_library_names+0x22>
   1400024f4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400024f9:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   1400024fe:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002503:	66 45 85 d2          	test   %r10w,%r10w
   140002507:	74 c9                	je     1400024d2 <__mingw_enum_import_library_names+0x22>
   140002509:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   14000250d:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140002511:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140002516:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000251d:	00 00 00 
   140002520:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140002524:	4d 89 c8             	mov    %r9,%r8
   140002527:	4c 39 c8             	cmp    %r9,%rax
   14000252a:	72 09                	jb     140002535 <__mingw_enum_import_library_names+0x85>
   14000252c:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002530:	4c 39 c0             	cmp    %r8,%rax
   140002533:	72 13                	jb     140002548 <__mingw_enum_import_library_names+0x98>
   140002535:	48 83 c2 28          	add    $0x28,%rdx
   140002539:	4c 39 d2             	cmp    %r10,%rdx
   14000253c:	75 e2                	jne    140002520 <__mingw_enum_import_library_names+0x70>
   14000253e:	45 31 c9             	xor    %r9d,%r9d
   140002541:	4c 89 c8             	mov    %r9,%rax
   140002544:	c3                   	ret
   140002545:	0f 1f 00             	nopl   (%rax)
   140002548:	4c 01 d8             	add    %r11,%rax
   14000254b:	eb 0a                	jmp    140002557 <__mingw_enum_import_library_names+0xa7>
   14000254d:	0f 1f 00             	nopl   (%rax)
   140002550:	83 e9 01             	sub    $0x1,%ecx
   140002553:	48 83 c0 14          	add    $0x14,%rax
   140002557:	44 8b 40 04          	mov    0x4(%rax),%r8d
   14000255b:	45 85 c0             	test   %r8d,%r8d
   14000255e:	75 07                	jne    140002567 <__mingw_enum_import_library_names+0xb7>
   140002560:	8b 50 0c             	mov    0xc(%rax),%edx
   140002563:	85 d2                	test   %edx,%edx
   140002565:	74 d7                	je     14000253e <__mingw_enum_import_library_names+0x8e>
   140002567:	85 c9                	test   %ecx,%ecx
   140002569:	7f e5                	jg     140002550 <__mingw_enum_import_library_names+0xa0>
   14000256b:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   14000256f:	4d 01 d9             	add    %r11,%r9
   140002572:	4c 89 c8             	mov    %r9,%rax
   140002575:	c3                   	ret
   140002576:	90                   	nop
   140002577:	90                   	nop
   140002578:	90                   	nop
   140002579:	90                   	nop
   14000257a:	90                   	nop
   14000257b:	90                   	nop
   14000257c:	90                   	nop
   14000257d:	90                   	nop
   14000257e:	90                   	nop
   14000257f:	90                   	nop

0000000140002580 <___chkstk_ms>:
   140002580:	51                   	push   %rcx
   140002581:	50                   	push   %rax
   140002582:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002588:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000258d:	72 19                	jb     1400025a8 <___chkstk_ms+0x28>
   14000258f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002596:	48 83 09 00          	orq    $0x0,(%rcx)
   14000259a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   1400025a0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400025a6:	77 e7                	ja     14000258f <___chkstk_ms+0xf>
   1400025a8:	48 29 c1             	sub    %rax,%rcx
   1400025ab:	48 83 09 00          	orq    $0x0,(%rcx)
   1400025af:	58                   	pop    %rax
   1400025b0:	59                   	pop    %rcx
   1400025b1:	c3                   	ret
   1400025b2:	90                   	nop
   1400025b3:	90                   	nop
   1400025b4:	90                   	nop
   1400025b5:	90                   	nop
   1400025b6:	90                   	nop
   1400025b7:	90                   	nop
   1400025b8:	90                   	nop
   1400025b9:	90                   	nop
   1400025ba:	90                   	nop
   1400025bb:	90                   	nop
   1400025bc:	90                   	nop
   1400025bd:	90                   	nop
   1400025be:	90                   	nop
   1400025bf:	90                   	nop

00000001400025c0 <vfprintf>:
   1400025c0:	48 83 ec 38          	sub    $0x38,%rsp
   1400025c4:	45 31 c9             	xor    %r9d,%r9d
   1400025c7:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
   1400025cc:	49 89 d0             	mov    %rdx,%r8
   1400025cf:	48 89 ca             	mov    %rcx,%rdx
   1400025d2:	31 c9                	xor    %ecx,%ecx
   1400025d4:	e8 af 02 00 00       	call   140002888 <__stdio_common_vfprintf>
   1400025d9:	48 83 c4 38          	add    $0x38,%rsp
   1400025dd:	c3                   	ret
   1400025de:	90                   	nop
   1400025df:	90                   	nop

00000001400025e0 <fprintf>:
   1400025e0:	48 83 ec 48          	sub    $0x48,%rsp
   1400025e4:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   1400025e9:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400025ee:	49 89 d0             	mov    %rdx,%r8
   1400025f1:	48 89 ca             	mov    %rcx,%rdx
   1400025f4:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400025f9:	31 c9                	xor    %ecx,%ecx
   1400025fb:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140002600:	45 31 c9             	xor    %r9d,%r9d
   140002603:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   140002608:	e8 7b 02 00 00       	call   140002888 <__stdio_common_vfprintf>
   14000260d:	48 83 c4 48          	add    $0x48,%rsp
   140002611:	c3                   	ret
   140002612:	90                   	nop
   140002613:	90                   	nop
   140002614:	90                   	nop
   140002615:	90                   	nop
   140002616:	90                   	nop
   140002617:	90                   	nop
   140002618:	90                   	nop
   140002619:	90                   	nop
   14000261a:	90                   	nop
   14000261b:	90                   	nop
   14000261c:	90                   	nop
   14000261d:	90                   	nop
   14000261e:	90                   	nop
   14000261f:	90                   	nop

0000000140002620 <_get_output_format>:
   140002620:	31 c0                	xor    %eax,%eax
   140002622:	c3                   	ret
   140002623:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000262a:	00 00 00 00 
   14000262e:	66 90                	xchg   %ax,%ax

0000000140002630 <__getmainargs>:
   140002630:	41 54                	push   %r12
   140002632:	55                   	push   %rbp
   140002633:	57                   	push   %rdi
   140002634:	56                   	push   %rsi
   140002635:	53                   	push   %rbx
   140002636:	48 83 ec 20          	sub    $0x20,%rsp
   14000263a:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   14000263f:	44 89 cd             	mov    %r9d,%ebp
   140002642:	48 89 d6             	mov    %rdx,%rsi
   140002645:	4c 89 c3             	mov    %r8,%rbx
   140002648:	48 89 cf             	mov    %rcx,%rdi
   14000264b:	e8 98 02 00 00       	call   1400028e8 <_initialize_narrow_environment>
   140002650:	83 fd 01             	cmp    $0x1,%ebp
   140002653:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002658:	83 d9 ff             	sbb    $0xffffffff,%ecx
   14000265b:	e8 60 02 00 00       	call   1400028c0 <_configure_narrow_argv>
   140002660:	e8 3b 02 00 00       	call   1400028a0 <__p___argc>
   140002665:	8b 00                	mov    (%rax),%eax
   140002667:	89 07                	mov    %eax,(%rdi)
   140002669:	e8 3a 02 00 00       	call   1400028a8 <__p___argv>
   14000266e:	48 8b 00             	mov    (%rax),%rax
   140002671:	48 89 06             	mov    %rax,(%rsi)
   140002674:	e8 f7 02 00 00       	call   140002970 <__p__environ>
   140002679:	48 8b 00             	mov    (%rax),%rax
   14000267c:	48 89 03             	mov    %rax,(%rbx)
   14000267f:	4d 85 e4             	test   %r12,%r12
   140002682:	74 09                	je     14000268d <__getmainargs+0x5d>
   140002684:	41 8b 0c 24          	mov    (%r12),%ecx
   140002688:	e8 c3 02 00 00       	call   140002950 <_set_new_mode>
   14000268d:	31 c0                	xor    %eax,%eax
   14000268f:	48 83 c4 20          	add    $0x20,%rsp
   140002693:	5b                   	pop    %rbx
   140002694:	5e                   	pop    %rsi
   140002695:	5f                   	pop    %rdi
   140002696:	5d                   	pop    %rbp
   140002697:	41 5c                	pop    %r12
   140002699:	c3                   	ret
   14000269a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400026a0 <__wgetmainargs>:
   1400026a0:	41 54                	push   %r12
   1400026a2:	55                   	push   %rbp
   1400026a3:	57                   	push   %rdi
   1400026a4:	56                   	push   %rsi
   1400026a5:	53                   	push   %rbx
   1400026a6:	48 83 ec 20          	sub    $0x20,%rsp
   1400026aa:	4c 8b 64 24 70       	mov    0x70(%rsp),%r12
   1400026af:	44 89 cd             	mov    %r9d,%ebp
   1400026b2:	48 89 d6             	mov    %rdx,%rsi
   1400026b5:	4c 89 c3             	mov    %r8,%rbx
   1400026b8:	48 89 cf             	mov    %rcx,%rdi
   1400026bb:	e8 30 02 00 00       	call   1400028f0 <_initialize_wide_environment>
   1400026c0:	83 fd 01             	cmp    $0x1,%ebp
   1400026c3:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400026c8:	83 d9 ff             	sbb    $0xffffffff,%ecx
   1400026cb:	e8 f8 01 00 00       	call   1400028c8 <_configure_wide_argv>
   1400026d0:	e8 cb 01 00 00       	call   1400028a0 <__p___argc>
   1400026d5:	8b 00                	mov    (%rax),%eax
   1400026d7:	89 07                	mov    %eax,(%rdi)
   1400026d9:	e8 d2 01 00 00       	call   1400028b0 <__p___wargv>
   1400026de:	48 8b 00             	mov    (%rax),%rax
   1400026e1:	48 89 06             	mov    %rax,(%rsi)
   1400026e4:	e8 8f 02 00 00       	call   140002978 <__p__wenviron>
   1400026e9:	48 8b 00             	mov    (%rax),%rax
   1400026ec:	48 89 03             	mov    %rax,(%rbx)
   1400026ef:	4d 85 e4             	test   %r12,%r12
   1400026f2:	74 09                	je     1400026fd <__wgetmainargs+0x5d>
   1400026f4:	41 8b 0c 24          	mov    (%r12),%ecx
   1400026f8:	e8 53 02 00 00       	call   140002950 <_set_new_mode>
   1400026fd:	31 c0                	xor    %eax,%eax
   1400026ff:	48 83 c4 20          	add    $0x20,%rsp
   140002703:	5b                   	pop    %rbx
   140002704:	5e                   	pop    %rsi
   140002705:	5f                   	pop    %rdi
   140002706:	5d                   	pop    %rbp
   140002707:	41 5c                	pop    %r12
   140002709:	c3                   	ret
   14000270a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002710 <_onexit>:
   140002710:	53                   	push   %rbx
   140002711:	48 83 ec 20          	sub    $0x20,%rsp
   140002715:	48 89 cb             	mov    %rcx,%rbx
   140002718:	e8 bb 01 00 00       	call   1400028d8 <_crt_atexit>
   14000271d:	85 c0                	test   %eax,%eax
   14000271f:	b8 00 00 00 00       	mov    $0x0,%eax
   140002724:	48 0f 44 c3          	cmove  %rbx,%rax
   140002728:	48 83 c4 20          	add    $0x20,%rsp
   14000272c:	5b                   	pop    %rbx
   14000272d:	c3                   	ret
   14000272e:	66 90                	xchg   %ax,%ax

0000000140002730 <at_quick_exit>:
   140002730:	48 8b 05 39 1d 00 00 	mov    0x1d39(%rip),%rax        # 140004470 <.refptr.__mingw_module_is_dll>
   140002737:	80 38 00             	cmpb   $0x0,(%rax)
   14000273a:	74 04                	je     140002740 <at_quick_exit+0x10>
   14000273c:	31 c0                	xor    %eax,%eax
   14000273e:	c3                   	ret
   14000273f:	90                   	nop
   140002740:	e9 8b 01 00 00       	jmp    1400028d0 <_crt_at_quick_exit>
   140002745:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   14000274c:	00 00 00 00 

0000000140002750 <_amsg_exit>:
   140002750:	53                   	push   %rbx
   140002751:	48 83 ec 20          	sub    $0x20,%rsp
   140002755:	89 cb                	mov    %ecx,%ebx
   140002757:	b9 02 00 00 00       	mov    $0x2,%ecx
   14000275c:	e8 0f 01 00 00       	call   140002870 <__acrt_iob_func>
   140002761:	41 89 d8             	mov    %ebx,%r8d
   140002764:	48 8d 15 e5 1b 00 00 	lea    0x1be5(%rip),%rdx        # 140004350 <.rdata>
   14000276b:	48 89 c1             	mov    %rax,%rcx
   14000276e:	e8 6d fe ff ff       	call   1400025e0 <fprintf>
   140002773:	b9 ff 00 00 00       	mov    $0xff,%ecx
   140002778:	e8 63 01 00 00       	call   1400028e0 <_exit>
   14000277d:	90                   	nop
   14000277e:	66 90                	xchg   %ax,%ax

0000000140002780 <__ms_fwprintf>:
   140002780:	48 83 ec 48          	sub    $0x48,%rsp
   140002784:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
   140002789:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000278e:	49 89 d0             	mov    %rdx,%r8
   140002791:	48 89 ca             	mov    %rcx,%rdx
   140002794:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140002799:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000279e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400027a3:	45 31 c9             	xor    %r9d,%r9d
   1400027a6:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
   1400027ab:	e8 e0 00 00 00       	call   140002890 <__stdio_common_vfwprintf>
   1400027b0:	48 83 c4 48          	add    $0x48,%rsp
   1400027b4:	c3                   	ret
   1400027b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400027bc:	00 00 00 00 

00000001400027c0 <tzset>:
   1400027c0:	48 83 ec 28          	sub    $0x28,%rsp
   1400027c4:	48 8b 05 55 1c 00 00 	mov    0x1c55(%rip),%rax        # 140004420 <.refptr.__imp__tzset>
   1400027cb:	ff 10                	call   *(%rax)
   1400027cd:	e8 7e 00 00 00       	call   140002850 <__tzname>
   1400027d2:	48 89 05 e7 08 00 00 	mov    %rax,0x8e7(%rip)        # 1400030c0 <__imp_tzname>
   1400027d9:	e8 6a 00 00 00       	call   140002848 <__timezone>
   1400027de:	48 89 05 d3 08 00 00 	mov    %rax,0x8d3(%rip)        # 1400030b8 <__imp_timezone>
   1400027e5:	e8 56 00 00 00       	call   140002840 <__daylight>
   1400027ea:	48 89 05 bf 08 00 00 	mov    %rax,0x8bf(%rip)        # 1400030b0 <__imp_daylight>
   1400027f1:	48 83 c4 28          	add    $0x28,%rsp
   1400027f5:	c3                   	ret
   1400027f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400027fd:	00 00 00 

0000000140002800 <_tzset>:
   140002800:	48 83 ec 28          	sub    $0x28,%rsp
   140002804:	48 8b 05 15 1c 00 00 	mov    0x1c15(%rip),%rax        # 140004420 <.refptr.__imp__tzset>
   14000280b:	ff 10                	call   *(%rax)
   14000280d:	e8 3e 00 00 00       	call   140002850 <__tzname>
   140002812:	48 89 05 a7 08 00 00 	mov    %rax,0x8a7(%rip)        # 1400030c0 <__imp_tzname>
   140002819:	e8 2a 00 00 00       	call   140002848 <__timezone>
   14000281e:	48 89 05 93 08 00 00 	mov    %rax,0x893(%rip)        # 1400030b8 <__imp_timezone>
   140002825:	e8 16 00 00 00       	call   140002840 <__daylight>
   14000282a:	48 89 05 7f 08 00 00 	mov    %rax,0x87f(%rip)        # 1400030b0 <__imp_daylight>
   140002831:	48 83 c4 28          	add    $0x28,%rsp
   140002835:	c3                   	ret
   140002836:	90                   	nop
   140002837:	90                   	nop
   140002838:	90                   	nop
   140002839:	90                   	nop
   14000283a:	90                   	nop
   14000283b:	90                   	nop
   14000283c:	90                   	nop
   14000283d:	90                   	nop
   14000283e:	90                   	nop
   14000283f:	90                   	nop

0000000140002840 <__daylight>:
   140002840:	ff 25 32 5c 00 00    	jmp    *0x5c32(%rip)        # 140008478 <__imp___daylight>
   140002846:	90                   	nop
   140002847:	90                   	nop

0000000140002848 <__timezone>:
   140002848:	ff 25 32 5c 00 00    	jmp    *0x5c32(%rip)        # 140008480 <__imp___timezone>
   14000284e:	90                   	nop
   14000284f:	90                   	nop

0000000140002850 <__tzname>:
   140002850:	ff 25 32 5c 00 00    	jmp    *0x5c32(%rip)        # 140008488 <__imp___tzname>
   140002856:	90                   	nop
   140002857:	90                   	nop

0000000140002858 <.text>:
   140002858:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000285f:	00 

0000000140002860 <strlen>:
   140002860:	ff 25 fa 5b 00 00    	jmp    *0x5bfa(%rip)        # 140008460 <__imp_strlen>
   140002866:	90                   	nop
   140002867:	90                   	nop

0000000140002868 <strncmp>:
   140002868:	ff 25 fa 5b 00 00    	jmp    *0x5bfa(%rip)        # 140008468 <__imp_strncmp>
   14000286e:	90                   	nop
   14000286f:	90                   	nop

0000000140002870 <__acrt_iob_func>:
   140002870:	ff 25 b2 5b 00 00    	jmp    *0x5bb2(%rip)        # 140008428 <__imp___acrt_iob_func>
   140002876:	90                   	nop
   140002877:	90                   	nop

0000000140002878 <__p__commode>:
   140002878:	ff 25 b2 5b 00 00    	jmp    *0x5bb2(%rip)        # 140008430 <__imp___p__commode>
   14000287e:	90                   	nop
   14000287f:	90                   	nop

0000000140002880 <__p__fmode>:
   140002880:	ff 25 b2 5b 00 00    	jmp    *0x5bb2(%rip)        # 140008438 <__imp___p__fmode>
   140002886:	90                   	nop
   140002887:	90                   	nop

0000000140002888 <__stdio_common_vfprintf>:
   140002888:	ff 25 b2 5b 00 00    	jmp    *0x5bb2(%rip)        # 140008440 <__imp___stdio_common_vfprintf>
   14000288e:	90                   	nop
   14000288f:	90                   	nop

0000000140002890 <__stdio_common_vfwprintf>:
   140002890:	ff 25 b2 5b 00 00    	jmp    *0x5bb2(%rip)        # 140008448 <__imp___stdio_common_vfwprintf>
   140002896:	90                   	nop
   140002897:	90                   	nop

0000000140002898 <fwrite>:
   140002898:	ff 25 b2 5b 00 00    	jmp    *0x5bb2(%rip)        # 140008450 <__imp_fwrite>
   14000289e:	90                   	nop
   14000289f:	90                   	nop

00000001400028a0 <__p___argc>:
   1400028a0:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 140008398 <__imp___p___argc>
   1400028a6:	90                   	nop
   1400028a7:	90                   	nop

00000001400028a8 <__p___argv>:
   1400028a8:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400083a0 <__imp___p___argv>
   1400028ae:	90                   	nop
   1400028af:	90                   	nop

00000001400028b0 <__p___wargv>:
   1400028b0:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400083a8 <__imp___p___wargv>
   1400028b6:	90                   	nop
   1400028b7:	90                   	nop

00000001400028b8 <_cexit>:
   1400028b8:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400083b0 <__imp__cexit>
   1400028be:	90                   	nop
   1400028bf:	90                   	nop

00000001400028c0 <_configure_narrow_argv>:
   1400028c0:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400083b8 <__imp__configure_narrow_argv>
   1400028c6:	90                   	nop
   1400028c7:	90                   	nop

00000001400028c8 <_configure_wide_argv>:
   1400028c8:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400083c0 <__imp__configure_wide_argv>
   1400028ce:	90                   	nop
   1400028cf:	90                   	nop

00000001400028d0 <_crt_at_quick_exit>:
   1400028d0:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400083c8 <__imp__crt_at_quick_exit>
   1400028d6:	90                   	nop
   1400028d7:	90                   	nop

00000001400028d8 <_crt_atexit>:
   1400028d8:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400083d0 <__imp__crt_atexit>
   1400028de:	90                   	nop
   1400028df:	90                   	nop

00000001400028e0 <_exit>:
   1400028e0:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400083d8 <__imp__exit>
   1400028e6:	90                   	nop
   1400028e7:	90                   	nop

00000001400028e8 <_initialize_narrow_environment>:
   1400028e8:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400083e0 <__imp__initialize_narrow_environment>
   1400028ee:	90                   	nop
   1400028ef:	90                   	nop

00000001400028f0 <_initialize_wide_environment>:
   1400028f0:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400083e8 <__imp__initialize_wide_environment>
   1400028f6:	90                   	nop
   1400028f7:	90                   	nop

00000001400028f8 <_initterm>:
   1400028f8:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400083f0 <__imp__initterm>
   1400028fe:	90                   	nop
   1400028ff:	90                   	nop

0000000140002900 <__set_app_type>:
   140002900:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400083f8 <__imp___set_app_type>
   140002906:	90                   	nop
   140002907:	90                   	nop

0000000140002908 <_set_invalid_parameter_handler>:
   140002908:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 140008400 <__imp__set_invalid_parameter_handler>
   14000290e:	90                   	nop
   14000290f:	90                   	nop

0000000140002910 <abort>:
   140002910:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 140008408 <__imp_abort>
   140002916:	90                   	nop
   140002917:	90                   	nop

0000000140002918 <exit>:
   140002918:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 140008410 <__imp_exit>
   14000291e:	90                   	nop
   14000291f:	90                   	nop

0000000140002920 <signal>:
   140002920:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 140008418 <__imp_signal>
   140002926:	90                   	nop
   140002927:	90                   	nop
   140002928:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000292f:	00 

0000000140002930 <__C_specific_handler>:
   140002930:	ff 25 4a 5a 00 00    	jmp    *0x5a4a(%rip)        # 140008380 <__imp___C_specific_handler>
   140002936:	90                   	nop
   140002937:	90                   	nop

0000000140002938 <memcpy>:
   140002938:	ff 25 4a 5a 00 00    	jmp    *0x5a4a(%rip)        # 140008388 <__imp_memcpy>
   14000293e:	90                   	nop
   14000293f:	90                   	nop

0000000140002940 <__setusermatherr>:
   140002940:	ff 25 2a 5a 00 00    	jmp    *0x5a2a(%rip)        # 140008370 <__imp___setusermatherr>
   140002946:	90                   	nop
   140002947:	90                   	nop
   140002948:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000294f:	00 

0000000140002950 <_set_new_mode>:
   140002950:	ff 25 f2 59 00 00    	jmp    *0x59f2(%rip)        # 140008348 <__imp__set_new_mode>
   140002956:	90                   	nop
   140002957:	90                   	nop

0000000140002958 <calloc>:
   140002958:	ff 25 f2 59 00 00    	jmp    *0x59f2(%rip)        # 140008350 <__imp_calloc>
   14000295e:	90                   	nop
   14000295f:	90                   	nop

0000000140002960 <free>:
   140002960:	ff 25 f2 59 00 00    	jmp    *0x59f2(%rip)        # 140008358 <__imp_free>
   140002966:	90                   	nop
   140002967:	90                   	nop

0000000140002968 <malloc>:
   140002968:	ff 25 f2 59 00 00    	jmp    *0x59f2(%rip)        # 140008360 <__imp_malloc>
   14000296e:	90                   	nop
   14000296f:	90                   	nop

0000000140002970 <__p__environ>:
   140002970:	ff 25 ba 59 00 00    	jmp    *0x59ba(%rip)        # 140008330 <__imp___p__environ>
   140002976:	90                   	nop
   140002977:	90                   	nop

0000000140002978 <__p__wenviron>:
   140002978:	ff 25 ba 59 00 00    	jmp    *0x59ba(%rip)        # 140008338 <__imp___p__wenviron>
   14000297e:	90                   	nop
   14000297f:	90                   	nop

0000000140002980 <VirtualQuery>:
   140002980:	ff 25 9a 59 00 00    	jmp    *0x599a(%rip)        # 140008320 <__imp_VirtualQuery>
   140002986:	90                   	nop
   140002987:	90                   	nop

0000000140002988 <VirtualProtect>:
   140002988:	ff 25 8a 59 00 00    	jmp    *0x598a(%rip)        # 140008318 <__imp_VirtualProtect>
   14000298e:	90                   	nop
   14000298f:	90                   	nop

0000000140002990 <TlsGetValue>:
   140002990:	ff 25 7a 59 00 00    	jmp    *0x597a(%rip)        # 140008310 <__imp_TlsGetValue>
   140002996:	90                   	nop
   140002997:	90                   	nop

0000000140002998 <Sleep>:
   140002998:	ff 25 6a 59 00 00    	jmp    *0x596a(%rip)        # 140008308 <__imp_Sleep>
   14000299e:	90                   	nop
   14000299f:	90                   	nop

00000001400029a0 <SetUnhandledExceptionFilter>:
   1400029a0:	ff 25 5a 59 00 00    	jmp    *0x595a(%rip)        # 140008300 <__imp_SetUnhandledExceptionFilter>
   1400029a6:	90                   	nop
   1400029a7:	90                   	nop

00000001400029a8 <LeaveCriticalSection>:
   1400029a8:	ff 25 4a 59 00 00    	jmp    *0x594a(%rip)        # 1400082f8 <__imp_LeaveCriticalSection>
   1400029ae:	90                   	nop
   1400029af:	90                   	nop

00000001400029b0 <InitializeCriticalSection>:
   1400029b0:	ff 25 3a 59 00 00    	jmp    *0x593a(%rip)        # 1400082f0 <__imp_InitializeCriticalSection>
   1400029b6:	90                   	nop
   1400029b7:	90                   	nop

00000001400029b8 <GetLastError>:
   1400029b8:	ff 25 2a 59 00 00    	jmp    *0x592a(%rip)        # 1400082e8 <__imp_GetLastError>
   1400029be:	90                   	nop
   1400029bf:	90                   	nop

00000001400029c0 <EnterCriticalSection>:
   1400029c0:	ff 25 1a 59 00 00    	jmp    *0x591a(%rip)        # 1400082e0 <__imp_EnterCriticalSection>
   1400029c6:	90                   	nop
   1400029c7:	90                   	nop

00000001400029c8 <DeleteCriticalSection>:
   1400029c8:	ff 25 0a 59 00 00    	jmp    *0x590a(%rip)        # 1400082d8 <__IAT_start__>
   1400029ce:	90                   	nop
   1400029cf:	90                   	nop

00000001400029d0 <register_frame_ctor>:
   1400029d0:	e9 5b ea ff ff       	jmp    140001430 <__gcc_register_frame>
   1400029d5:	90                   	nop
   1400029d6:	90                   	nop
   1400029d7:	90                   	nop
   1400029d8:	90                   	nop
   1400029d9:	90                   	nop
   1400029da:	90                   	nop
   1400029db:	90                   	nop
   1400029dc:	90                   	nop
   1400029dd:	90                   	nop
   1400029de:	90                   	nop
   1400029df:	90                   	nop

00000001400029e0 <__CTOR_LIST__>:
   1400029e0:	ff                   	(bad)
   1400029e1:	ff                   	(bad)
   1400029e2:	ff                   	(bad)
   1400029e3:	ff                   	(bad)
   1400029e4:	ff                   	(bad)
   1400029e5:	ff                   	(bad)
   1400029e6:	ff                   	(bad)
   1400029e7:	ff                   	.byte 0xff

00000001400029e8 <.ctors.65535>:
   1400029e8:	d0 29                	shrb   (%rcx)
   1400029ea:	00 40 01             	add    %al,0x1(%rax)
	...

00000001400029f8 <__DTOR_LIST__>:
   1400029f8:	ff                   	(bad)
   1400029f9:	ff                   	(bad)
   1400029fa:	ff                   	(bad)
   1400029fb:	ff                   	(bad)
   1400029fc:	ff                   	(bad)
   1400029fd:	ff                   	(bad)
   1400029fe:	ff                   	(bad)
   1400029ff:	ff 00                	incl   (%rax)
   140002a01:	00 00                	add    %al,(%rax)
   140002a03:	00 00                	add    %al,(%rax)
   140002a05:	00 00                	add    %al,(%rax)
	...

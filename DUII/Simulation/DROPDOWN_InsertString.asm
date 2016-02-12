﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\DROPDOWN_InsertString.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_DROPDOWN_InsertString
EXTRN	_LISTBOX_AddString:PROC
EXTRN	_DROPDOWN_AddString:PROC
EXTRN	_LISTBOX_InsertString:PROC
EXTRN	_WM_InvalidateWindow:PROC
EXTRN	_strcpy:PROC
EXTRN	_GUI_ALLOC_LockH:PROC
EXTRN	_GUI_ARRAY_InsertItem:PROC
EXTRN	_strlen:PROC
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_DROPDOWN_LockH:PROC
EXTRN	_DROPDOWN_GetNumItems:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\dropdown_insertstring.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _DROPDOWN_InsertString
_TEXT	SEGMENT
_pBuffer$11666 = -68					; size = 4
_hItem$11664 = -56					; size = 4
_hListWin$11661 = -44					; size = 4
_Handles$11660 = -32					; size = 4
_NumItems$11659 = -20					; size = 4
_pObj$11658 = -8					; size = 4
_hObj$ = 8						; size = 4
_s$ = 12						; size = 4
_Index$ = 16						; size = 4
_DROPDOWN_InsertString PROC				; COMDAT
; Line 41
	push	ebp
	mov	ebp, esp
	sub	esp, 264				; 00000108H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-264]
	mov	ecx, 66					; 00000042H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 42
	cmp	DWORD PTR _hObj$[ebp], 0
	je	$LN7@DROPDOWN_I
	cmp	DWORD PTR _s$[ebp], 0
	je	$LN7@DROPDOWN_I
; Line 48
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_DROPDOWN_GetNumItems
	add	esp, 4
	mov	DWORD PTR _NumItems$11659[ebp], eax
; Line 49
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_DROPDOWN_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$11658[ebp], eax
; Line 50
	mov	eax, DWORD PTR _pObj$11658[ebp]
	mov	ecx, DWORD PTR [eax+64]
	mov	DWORD PTR _Handles$11660[ebp], ecx
; Line 51
	mov	eax, DWORD PTR _pObj$11658[ebp]
	mov	ecx, DWORD PTR [eax+140]
	mov	DWORD PTR _hListWin$11661[ebp], ecx
; Line 52
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$11658[ebp], 0
; Line 53
	mov	eax, DWORD PTR _Index$[ebp]
	cmp	eax, DWORD PTR _NumItems$11659[ebp]
	jae	SHORT $LN5@DROPDOWN_I
; Line 55
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	add	eax, 1
	push	eax
	mov	ecx, DWORD PTR _Index$[ebp]
	push	ecx
	mov	edx, DWORD PTR _Handles$11660[ebp]
	push	edx
	call	_GUI_ARRAY_InsertItem
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _hItem$11664[ebp], eax
; Line 56
	cmp	DWORD PTR _hItem$11664[ebp], 0
	je	SHORT $LN4@DROPDOWN_I
; Line 57
	mov	eax, DWORD PTR _hItem$11664[ebp]
	push	eax
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _pBuffer$11666[ebp], eax
; Line 58
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pBuffer$11666[ebp]
	push	ecx
	call	_strcpy
	add	esp, 8
; Line 59
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _s$[ebp], 0
$LN4@DROPDOWN_I:
; Line 61
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
; Line 62
	cmp	DWORD PTR _hListWin$11661[ebp], 0
	je	SHORT $LN3@DROPDOWN_I
; Line 63
	mov	eax, DWORD PTR _Index$[ebp]
	push	eax
	mov	ecx, DWORD PTR _s$[ebp]
	push	ecx
	mov	edx, DWORD PTR _hListWin$11661[ebp]
	push	edx
	call	_LISTBOX_InsertString
	add	esp, 12					; 0000000cH
$LN3@DROPDOWN_I:
; Line 65
	jmp	SHORT $LN7@DROPDOWN_I
$LN5@DROPDOWN_I:
; Line 66
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hObj$[ebp]
	push	ecx
	call	_DROPDOWN_AddString
	add	esp, 8
; Line 67
	cmp	DWORD PTR _hListWin$11661[ebp], 0
	je	SHORT $LN7@DROPDOWN_I
; Line 68
	mov	eax, DWORD PTR _s$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hListWin$11661[ebp]
	push	ecx
	call	_LISTBOX_AddString
	add	esp, 8
$LN7@DROPDOWN_I:
; Line 73
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 264				; 00000108H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_DROPDOWN_InsertString ENDP
_TEXT	ENDS
END
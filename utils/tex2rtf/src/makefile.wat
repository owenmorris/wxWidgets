# =========================================================================
#     This makefile was generated by
#     Bakefile 0.1.1 (http://bakefile.sourceforge.net)
#     Do not modify, all changes will be overwritten!
# =========================================================================

!include ../../../build/msw/config.wat

# -------------------------------------------------------------------------
# Do not modify the rest of this file!
# -------------------------------------------------------------------------

# Speed up compilation a bit:
!ifdef __LOADDLL__
!  loaddll wcc      wccd
!  loaddll wccaxp   wccdaxp
!  loaddll wcc386   wccd386
!  loaddll wpp      wppdi86
!  loaddll wppaxp   wppdaxp
!  loaddll wpp386   wppd386
!  loaddll wlink    wlink
!  loaddll wlib     wlibd
!endif

# We need these variables in some bakefile-made rules:
WATCOM_CWD = $+ $(%cdrive):$(%cwd) $-

### Conditionally set variables: ###

LIBDIRNAME =
!ifeq SHARED 0
LIBDIRNAME = .\..\..\..\lib\wat_lib$(CFG)
!endif
!ifeq SHARED 1
LIBDIRNAME = .\..\..\..\lib\wat_dll$(CFG)
!endif
PORTNAME =
!ifeq USE_GUI 0
PORTNAME = base
!endif
!ifeq USE_GUI 1
PORTNAME = msw
!endif
WXDEBUGFLAG =
!ifeq BUILD debug
!ifeq DEBUG_FLAG default
WXDEBUGFLAG = d
!endif
!endif
!ifeq DEBUG_FLAG 1
WXDEBUGFLAG = d
!endif
WXDLLFLAG =
!ifeq SHARED 1
WXDLLFLAG = dll
!endif
WXUNICODEFLAG =
!ifeq UNICODE 1
WXUNICODEFLAG = u
!endif
WXUNIVNAME =
!ifeq WXUNIV 1
WXUNIVNAME = univ
!endif
__DEBUGINFO =
!ifeq BUILD debug
!ifeq DEBUG_INFO default
__DEBUGINFO = debug all
!endif
!endif
!ifeq BUILD release
!ifeq DEBUG_INFO default
__DEBUGINFO = 
!endif
!endif
!ifeq DEBUG_INFO 0
__DEBUGINFO = 
!endif
!ifeq DEBUG_INFO 1
__DEBUGINFO = debug all
!endif
__DEBUGINFO_2 =
!ifeq BUILD debug
!ifeq DEBUG_INFO default
__DEBUGINFO_2 = -d2
!endif
!endif
!ifeq BUILD release
!ifeq DEBUG_INFO default
__DEBUGINFO_2 = -d0
!endif
!endif
!ifeq DEBUG_INFO 0
__DEBUGINFO_2 = -d0
!endif
!ifeq DEBUG_INFO 1
__DEBUGINFO_2 = -d2
!endif
__DEBUG_DEFINE_p =
!ifeq BUILD debug
!ifeq DEBUG_FLAG default
__DEBUG_DEFINE_p = -d__WXDEBUG__
!endif
!endif
!ifeq DEBUG_FLAG 1
__DEBUG_DEFINE_p = -d__WXDEBUG__
!endif
__DLLFLAG_p =
!ifeq SHARED 1
__DLLFLAG_p = -dWXUSINGDLL
!endif
__LIB_JPEG_p =
!ifeq USE_GUI 1
__LIB_JPEG_p = wxjpeg$(WXDEBUGFLAG).lib
!endif
__LIB_PNG_p =
!ifeq USE_GUI 1
__LIB_PNG_p = wxpng$(WXDEBUGFLAG).lib
!endif
__LIB_TIFF_p =
!ifeq USE_GUI 1
__LIB_TIFF_p = wxtiff$(WXDEBUGFLAG).lib
!endif
__OPTIMIZEFLAG =
!ifeq BUILD debug
__OPTIMIZEFLAG = -od
!endif
!ifeq BUILD release
__OPTIMIZEFLAG = -ot -ox
!endif
__RUNTIME_LIBS =
!ifeq RUNTIME_LIBS dynamic
__RUNTIME_LIBS = -br
!endif
!ifeq RUNTIME_LIBS static
__RUNTIME_LIBS = 
!endif
__UNICODE_DEFINE_p =
!ifeq UNICODE 1
__UNICODE_DEFINE_p = -dwxUSE_UNICODE=1
!endif
__WXLIB_BASE_p =
!ifeq MONOLITHIC 0
__WXLIB_BASE_p = wxbase25$(WXUNICODEFLAG)$(WXDEBUGFLAG).lib
!endif
__WXLIB_CORE_p =
!ifeq MONOLITHIC 0
__WXLIB_CORE_p = &
	wx$(PORTNAME)$(WXUNIVNAME)25$(WXUNICODEFLAG)$(WXDEBUGFLAG)_core.lib
!endif
__WXLIB_HTML_p =
!ifeq MONOLITHIC 0
__WXLIB_HTML_p = &
	wx$(PORTNAME)$(WXUNIVNAME)25$(WXUNICODEFLAG)$(WXDEBUGFLAG)_html.lib
!endif
__WXLIB_MONO_p =
!ifeq MONOLITHIC 1
__WXLIB_MONO_p = &
	wx$(PORTNAME)$(WXUNIVNAME)25$(WXUNICODEFLAG)$(WXDEBUGFLAG).lib
!endif
__WXUNIV_DEFINE_p =
!ifeq WXUNIV 1
__WXUNIV_DEFINE_p = -d__WXUNIVERSAL__
!endif

### Variables: ###

OBJS = &
	wat_$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)$(WXDLLFLAG)$(CFG)
SETUPHDIR = &
	$(LIBDIRNAME)\$(PORTNAME)$(WXUNIVNAME)$(WXUNICODEFLAG)$(WXDEBUGFLAG)
TEX2RTF_CXXFLAGS = $(CPPFLAGS) $(__DEBUGINFO_2) $(__OPTIMIZEFLAG) -bm &
	$(__RUNTIME_LIBS) -d__WXMSW__ $(__WXUNIV_DEFINE_p) $(__DEBUG_DEFINE_p) &
	$(__UNICODE_DEFINE_p) -i=.\..\..\..\include -i=$(SETUPHDIR) -i=. &
	$(__DLLFLAG_p) -dNO_GUI $(CXXFLAGS)
TEX2RTF_GUI_CXXFLAGS = $(CPPFLAGS) $(__DEBUGINFO_2) $(__OPTIMIZEFLAG) -bm &
	$(__RUNTIME_LIBS) -d__WXMSW__ $(__WXUNIV_DEFINE_p) $(__DEBUG_DEFINE_p) &
	$(__UNICODE_DEFINE_p) -i=.\..\..\..\include -i=$(SETUPHDIR) -i=. &
	$(__DLLFLAG_p) -i=.\..\..\..\samples $(CXXFLAGS)
TEX2RTF_GUI_OBJECTS =  &
	$(OBJS)\tex2rtf_gui_tex2rtf.obj &
	$(OBJS)\tex2rtf_gui_tex2any.obj &
	$(OBJS)\tex2rtf_gui_texutils.obj &
	$(OBJS)\tex2rtf_gui_rtfutils.obj &
	$(OBJS)\tex2rtf_gui_xlputils.obj &
	$(OBJS)\tex2rtf_gui_htmlutil.obj &
	$(OBJS)\tex2rtf_gui_readshg.obj &
	$(OBJS)\tex2rtf_gui_table.obj
TEX2RTF_OBJECTS =  &
	$(OBJS)\tex2rtf_tex2rtf.obj &
	$(OBJS)\tex2rtf_tex2any.obj &
	$(OBJS)\tex2rtf_texutils.obj &
	$(OBJS)\tex2rtf_rtfutils.obj &
	$(OBJS)\tex2rtf_xlputils.obj &
	$(OBJS)\tex2rtf_htmlutil.obj &
	$(OBJS)\tex2rtf_readshg.obj &
	$(OBJS)\tex2rtf_table.obj


all : $(OBJS)
$(OBJS) :
	-if not exist $(OBJS) mkdir $(OBJS)

### Targets: ###

all : .SYMBOLIC $(OBJS)\tex2rtf.exe $(OBJS)\tex2rtf_gui.exe

$(OBJS)\tex2rtf_gui_htmlutil.obj :  .AUTODEPEND .\htmlutil.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_GUI_CXXFLAGS) $<

$(OBJS)\tex2rtf_gui_readshg.obj :  .AUTODEPEND .\readshg.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_GUI_CXXFLAGS) $<

$(OBJS)\tex2rtf_gui_rtfutils.obj :  .AUTODEPEND .\rtfutils.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_GUI_CXXFLAGS) $<

$(OBJS)\tex2rtf_gui_sample.res :  .AUTODEPEND .\..\..\..\samples\sample.rc
	wrc -q -ad -bt=nt -r -fo=$^@ -d__WXMSW__ $(__WXUNIV_DEFINE_p) $(__DEBUG_DEFINE_p) $(__UNICODE_DEFINE_p) -i=.\..\..\..\include -i=$(SETUPHDIR) -i=. $(__DLLFLAG_p) -i=.\..\..\..\samples $<

$(OBJS)\tex2rtf_gui_table.obj :  .AUTODEPEND .\table.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_GUI_CXXFLAGS) $<

$(OBJS)\tex2rtf_gui_tex2any.obj :  .AUTODEPEND .\tex2any.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_GUI_CXXFLAGS) $<

$(OBJS)\tex2rtf_gui_tex2rtf.obj :  .AUTODEPEND .\tex2rtf.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_GUI_CXXFLAGS) $<

$(OBJS)\tex2rtf_gui_texutils.obj :  .AUTODEPEND .\texutils.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_GUI_CXXFLAGS) $<

$(OBJS)\tex2rtf_gui_xlputils.obj :  .AUTODEPEND .\xlputils.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_GUI_CXXFLAGS) $<

$(OBJS)\tex2rtf_htmlutil.obj :  .AUTODEPEND .\htmlutil.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_CXXFLAGS) $<

$(OBJS)\tex2rtf_readshg.obj :  .AUTODEPEND .\readshg.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_CXXFLAGS) $<

$(OBJS)\tex2rtf_rtfutils.obj :  .AUTODEPEND .\rtfutils.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_CXXFLAGS) $<

$(OBJS)\tex2rtf_table.obj :  .AUTODEPEND .\table.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_CXXFLAGS) $<

$(OBJS)\tex2rtf_tex2any.obj :  .AUTODEPEND .\tex2any.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_CXXFLAGS) $<

$(OBJS)\tex2rtf_tex2rtf.obj :  .AUTODEPEND .\tex2rtf.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_CXXFLAGS) $<

$(OBJS)\tex2rtf_texutils.obj :  .AUTODEPEND .\texutils.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_CXXFLAGS) $<

$(OBJS)\tex2rtf_xlputils.obj :  .AUTODEPEND .\xlputils.cpp
	$(CXX) -zq -fo=$^@ $(TEX2RTF_CXXFLAGS) $<

clean : .SYMBOLIC 
	-if exist $(OBJS)\*.obj del $(OBJS)\*.obj
	-if exist $(OBJS)\*.res del $(OBJS)\*.res
	-if exist $(OBJS)\*.lbc del $(OBJS)\*.lbc
	-if exist $(OBJS)\*.ilk del $(OBJS)\*.ilk
	-if exist $(OBJS)\tex2rtf.exe del $(OBJS)\tex2rtf.exe
	-if exist $(OBJS)\tex2rtf_gui.exe del $(OBJS)\tex2rtf_gui.exe

$(OBJS)\tex2rtf.exe :  $(TEX2RTF_OBJECTS)
	@%create $(OBJS)\tex2rtf.lbc
	@%append $(OBJS)\tex2rtf.lbc option quiet
	@%append $(OBJS)\tex2rtf.lbc name $^@
	@%append $(OBJS)\tex2rtf.lbc option caseexact
	@%append $(OBJS)\tex2rtf.lbc $(LDFLAGS) $(__DEBUGINFO)  libpath $(LIBDIRNAME) system nt ref 'main_'
	@for %i in ($(TEX2RTF_OBJECTS)) do @%append $(OBJS)\tex2rtf.lbc file %i
	@for %i in ( $(__WXLIB_BASE_p) $(__WXLIB_MONO_p) $(__LIB_TIFF_p) $(__LIB_JPEG_p) $(__LIB_PNG_p) wxzlib$(WXDEBUGFLAG).lib  wxregex$(WXDEBUGFLAG).lib wxexpat$(WXDEBUGFLAG).lib   kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib odbc32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib) do @%append $(OBJS)\tex2rtf.lbc library %i
	@%append $(OBJS)\tex2rtf.lbc
	wlink @$(OBJS)\tex2rtf.lbc

$(OBJS)\tex2rtf_gui.exe :  $(TEX2RTF_GUI_OBJECTS) $(OBJS)\tex2rtf_gui_sample.res
	@%create $(OBJS)\tex2rtf_gui.lbc
	@%append $(OBJS)\tex2rtf_gui.lbc option quiet
	@%append $(OBJS)\tex2rtf_gui.lbc name $^@
	@%append $(OBJS)\tex2rtf_gui.lbc option caseexact
	@%append $(OBJS)\tex2rtf_gui.lbc $(LDFLAGS) $(__DEBUGINFO)  libpath $(LIBDIRNAME) system nt_win ref '_WinMain@16'
	@for %i in ($(TEX2RTF_GUI_OBJECTS)) do @%append $(OBJS)\tex2rtf_gui.lbc file %i
	@for %i in ( $(__WXLIB_HTML_p) $(__WXLIB_CORE_p) $(__WXLIB_BASE_p) $(__WXLIB_MONO_p) $(__LIB_TIFF_p) $(__LIB_JPEG_p) $(__LIB_PNG_p) wxzlib$(WXDEBUGFLAG).lib  wxregex$(WXDEBUGFLAG).lib wxexpat$(WXDEBUGFLAG).lib   kernel32.lib user32.lib gdi32.lib comdlg32.lib winspool.lib winmm.lib shell32.lib comctl32.lib odbc32.lib ole32.lib oleaut32.lib uuid.lib rpcrt4.lib advapi32.lib wsock32.lib ) do @%append $(OBJS)\tex2rtf_gui.lbc library %i
	@%append $(OBJS)\tex2rtf_gui.lbc option resource=$(OBJS)\tex2rtf_gui_sample.res
	wlink @$(OBJS)\tex2rtf_gui.lbc

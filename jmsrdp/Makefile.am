AM_CPPFLAGS = \
  -DXRDP_CFG_PATH=\"${sysconfdir}/xrdp\" \
  -DXRDP_SBIN_PATH=\"${sbindir}\" \
  -DXRDP_SHARE_PATH=\"${datadir}/xrdp\" \
  -DXRDP_PID_PATH=\"${localstatedir}/run\" \
  -I$(top_srcdir)/common \
  $(FREERDP_CFLAGS)

module_LTLIBRARIES = \
  libxrdpjmsrdp.la

libxrdpjmsrdp_la_SOURCES = \
  xrdp-color.c \
  xrdp-color.h \
  xrdp-jms.c \
  xrdp-jms.h

libxrdpjmsrdp_la_LIBADD = \
  $(top_builddir)/common/libcommon.la \
  $(FREERDP_LIBS)

libxrdpjmsrdp_la_LDFLAGS = -avoid-version -module

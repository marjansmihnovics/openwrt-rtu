include $(TOPDIR)/rules.mk

PKG_NAME:=student_db
PKG_RELEASE:=1
PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=git@github.com:Pe44a/student_db.git
PKG_SOURCE_DATE:=2024-12-16
PKG_SOURCE_VERSION:=393cc59ac550a903dea07cb920f0d7d037c92eec
PKG_MIRROR_HASH:=skip


PKG_MAINTAINER:=Peteris Blankfelds
include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
    SECTION:=RTU
    CATEGORY:=RTU
    DEPENDS:=+libc
    TITLE:=Student database read/write app
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/home/peter/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/student_db $(1)/home/peter/bin/
endef

define Package/$(PKG_NAME)/description
    CLI application which allows to enter student data and read that afterwise
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="user for nfsen"
ACCT_USER_ID=-1
ACCT_USER_GROUPS=( nfsen )
ACCT_USER_HOME="/var/lib/nfsen"

acct-user_add_deps

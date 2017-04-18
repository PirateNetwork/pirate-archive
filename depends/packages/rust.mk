package=rust
$(package)_version=1.16.0
$(package)_download_path=https://static.rust-lang.org/dist
$(package)_file_name=rust-$($(package)_version)-i686-pc-windows-gnu.tar.gz
$(package)_sha256_hash=5e1ccb48e96a7f5299bf5c5af9bc2c5f569b3c483b9a44f911bf989ae270e163

define $(package)_stage_cmds
  ./install.sh --destdir=$($(package)_staging_dir) --prefix=$(host_prefix)/native --disable-ldconfig
endef

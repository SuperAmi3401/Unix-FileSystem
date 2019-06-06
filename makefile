ext2_fs : ext2_fs.o  main.o  Shell.o DirectoryEntry.o File.o VFS.o User.o VirtualProcess.o Logcat.o DiskBlock.o Ext2.o SuperBlock.o InodePool.o Bitmap.o Path.o BufferCache.o InodeCache.o DirectoryCache.o BufferLruList.o Kernel.o DiskInode.o DiskDriver.o Inode.o
	g++ -g -o ext2_fs main.o  Shell.o DirectoryEntry.o File.o VFS.o User.o VirtualProcess.o Logcat.o DiskBlock.o Ext2.o SuperBlock.o InodePool.o Bitmap.o Path.o BufferCache.o InodeCache.o DirectoryCache.o BufferLruList.o Kernel.o DiskInode.o DiskDriver.o Inode.o
	
ext2_fs.o : main.cpp include/define.h include/DirectoryEntry.h include/DiskDriver.h include/DiskInode.h include/File.h include/Inode.h include/Shell.h  include/User.h include/VFS.h include/VirtualProcess.h Shell/Shell.cpp VFS/DirectoryEntry.cpp VFS/File.cpp VFS/VFS.cpp VirtualProcess/User.cpp VirtualProcess/VirtualProcess.cpp include/Logcat.h Utils/Logcat.cpp include/DiskBlock.h DiskDriver/DiskBlock.cpp include/Ext2.h Ext2/Ext2.cpp DiskDriver/SuperBlock.cpp include/SuperBlock.h include/InodePool.h Ext2/InodePool.cpp include/Bitmap.h Ext2/Bitmap.cpp include/Path.h Ext2/Path.cpp include/BufferCache.h BufferCache/BufferCache.cpp include/InodeCache.h VFS/InodeCache.cpp include/DirectoryCache.h VFS/DirectoryCache.cpp include/BufferLruList.h BufferCache/BufferLruList.cpp include/Kernel.h VirtualProcess/Kernel.cpp DiskDriver/DiskDriver.cpp DiskDriver/DiskInode.cpp VFS/Inode.cpp
	g++ -g -c main.cpp include/define.h include/DirectoryEntry.h include/DiskDriver.h include/DiskInode.h include/File.h include/Inode.h include/Shell.h  include/User.h include/VFS.h include/VirtualProcess.h Shell/Shell.cpp VFS/DirectoryEntry.cpp VFS/File.cpp VFS/VFS.cpp VirtualProcess/User.cpp VirtualProcess/VirtualProcess.cpp include/Logcat.h Utils/Logcat.cpp include/DiskBlock.h DiskDriver/DiskBlock.cpp include/Ext2.h Ext2/Ext2.cpp DiskDriver/SuperBlock.cpp include/SuperBlock.h include/InodePool.h Ext2/InodePool.cpp include/Bitmap.h Ext2/Bitmap.cpp include/Path.h Ext2/Path.cpp include/BufferCache.h BufferCache/BufferCache.cpp include/InodeCache.h VFS/InodeCache.cpp include/DirectoryCache.h VFS/DirectoryCache.cpp include/BufferLruList.h BufferCache/BufferLruList.cpp include/Kernel.h VirtualProcess/Kernel.cpp DiskDriver/DiskDriver.cpp DiskDriver/DiskInode.cpp VFS/Inode.cpp -std=c++11 -lpthread

all: ext2_fs
# 	g++ -g main.cpp include/define.h include/DirectoryEntry.h include/DiskDriver.h include/DiskInode.h include/File.h include/Inode.h include/Shell.h  include/User.h include/VFS.h include/VirtualProcess.h Shell/Shell.cpp VFS/DirectoryEntry.cpp VFS/File.cpp VFS/VFS.cpp VirtualProcess/User.cpp VirtualProcess/VirtualProcess.cpp  -o  ext2_fs -std=c++11 -lpthread
clean:
	rm -rf include/*.gch *.o

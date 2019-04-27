#include "../include/Path.h"
#include "../include/InodePool.h"

    /**
     * 不需要显式析构inodePoolBitmap
     * 当InodePoool被析构的时候，会自动析构
     */
    InodePool::InodePool():inodePoolBitmap(MAX_INODE_NUM){
        //NOTHING TO DO
    }

    /**
     * 分配一个空闲inode号
     */
    int InodePool::ialloc(){
        int ret=inodePoolBitmap.getAFreeBitNum();
        inodePoolBitmap.setBit(ret);
        return ret;
    }

    /**
     * 回收一个inode
     */
    void InodePool::ifree(int InodeID){
        inodePoolBitmap.unsetBit(InodeID);
        //暂时不用对inode块做什么，只用标记其free了
    }
    /**
     * 根据InodeID获取一个Inode结构
     */
    Inode* InodePool::getInode(int InodeID){
        return &inodeBlock[InodeID];
        //NOTE []的运算优先级高于&是吧
    }
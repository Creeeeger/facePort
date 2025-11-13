.class public final Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# static fields
.field private static final blacklist LIGHT_MEMINFO_COUNT:I = 0x11


# instance fields
.field final blacklist mInfos:[J

.field private final blacklist mLightInfos:[J


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x1e

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    .line 46
    const/16 v0, 0x11

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mLightInfos:[J

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getActiveFileSizeKb()J
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public greylist getAvailableSize()J
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xe

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-r getCachedSize()J
    .locals 4

    .line 92
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getCachedSizeKb()J
    .locals 7

    .line 170
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x16

    aget-wide v1, v0, v1

    .line 175
    .local v1, "kReclaimable":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 176
    const/16 v3, 0xc

    aget-wide v1, v0, v3

    .line 178
    :cond_0
    const/4 v3, 0x2

    aget-wide v3, v0, v3

    add-long/2addr v3, v1

    const/4 v5, 0x3

    aget-wide v5, v0, v5

    add-long/2addr v3, v5

    const/16 v5, 0x12

    aget-wide v5, v0, v5

    sub-long/2addr v3, v5

    return-wide v3
.end method

.method public blacklist getCachedSizeLegacy()J
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-r getFreeSize()J
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getFreeSizeKb()J
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getInactiveFileSizeKb()J
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x5

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getKReclaimableSizeKb()J
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x16

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getKernelUsedSize()J
    .locals 4

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getKernelUsedSizeKb()J
    .locals 5

    .line 186
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xa

    aget-wide v1, v0, v1

    const/16 v3, 0xd

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/16 v3, 0x13

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    const/16 v3, 0x14

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    .line 188
    .local v1, "size":J
    invoke-static {}, Landroid/os/Debug;->isVmapStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v3, 0x15

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    .line 191
    :cond_0
    return-wide v1
.end method

.method public blacklist getKgslReclaimedSizeKb()J
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x1b

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getKgslSharedMemSizeKb()J
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x1d

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getKgslShmemUsageSizeKb()J
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x1a

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public greylist getRawInfo()[J
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    return-object v0
.end method

.method public blacklist getRbinAllocedSize()J
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x7

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getRbinCachedSizeKb()J
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x9

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getRbinFreeSizeKb()J
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x8

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getRbinTotalSize()J
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x6

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getSReclaimableSizeKb()J
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xc

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getSUnreclaimSizeKb()J
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xd

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getSwapFreeSizeKb()J
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x10

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getSwapTotalSizeKb()J
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0xf

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getSystemSizeKb()J
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x1c

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public greylist getTotalSize()J
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getTotalSizeKb()J
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getZramTotalSizeKb()J
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    const/16 v1, 0x11

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist readLightMemInfo()V
    .locals 5

    .line 51
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 53
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mLightInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 55
    iget-object v2, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    iget-object v3, p0, Lcom/android/internal/util/MemInfoReader;->mLightInfos:[J

    aget-wide v3, v3, v1

    aput-wide v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 58
    nop

    .line 59
    return-void

    .line 57
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 58
    throw v1
.end method

.method public greylist readMemInfo()V
    .locals 2

    .line 36
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 38
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/MemInfoReader;->mInfos:[J

    invoke-static {v1}, Landroid/os/Debug;->getMemInfo([J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 41
    nop

    .line 42
    return-void

    .line 40
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 41
    throw v1
.end method

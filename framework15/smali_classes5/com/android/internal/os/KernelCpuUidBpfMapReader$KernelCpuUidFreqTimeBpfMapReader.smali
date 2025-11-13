.class public Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidFreqTimeBpfMapReader;
.super Lcom/android/internal/os/KernelCpuUidBpfMapReader;
.source "KernelCpuUidBpfMapReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidBpfMapReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelCpuUidFreqTimeBpfMapReader"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;-><init>()V

    return-void
.end method

.method private final native blacklist removeUidRange(II)Z
.end method


# virtual methods
.method public final blacklist getDataDimensions()[J
    .locals 1

    invoke-static {}, Lcom/android/internal/os/KernelCpuBpfTracking;->getFreqsInternal()[J

    move-result-object v0

    return-object v0
.end method

.method protected final native blacklist readBpfData()Z
.end method

.method public blacklist removeUidsInRange(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidFreqTimeBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    invoke-super {p0, p1, p2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->removeUidsInRange(II)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidFreqTimeBpfMapReader;->removeUidRange(II)Z

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidBpfMapReader$KernelCpuUidFreqTimeBpfMapReader;->mWriteLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void
.end method

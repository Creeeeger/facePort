.class public Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;
.super Lcom/android/internal/os/KernelCpuUidTimeReader;
.source "KernelCpuUidTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuUidTimeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelCpuUidFullTimeReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/os/KernelCpuUidTimeReader<",
        "[J>;"
    }
.end annotation


# instance fields
.field private blacklist mBuffer:[J

.field private blacklist mCurTimes:[J

.field private blacklist mDeltaTimes:[J

.field private blacklist mNumClusters:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V
    .locals 1
    .param p1, "reader"    # Lcom/android/internal/os/KernelCpuProcStringReader;
    .param p2, "bpfReader"    # Lcom/android/internal/os/KernelCpuUidBpfMapReader;
    .param p3, "throttle"    # Z
    .param p4, "clock"    # Lcom/android/internal/os/Clock;

    .line 642
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/os/KernelCpuUidTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 634
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mNumClusters:I

    .line 643
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .locals 3
    .param p1, "throttle"    # Z

    .line 637
    invoke-static {}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->getFullTimeReaderInstance()Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    move-result-object v0

    sget-object v1, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;-><init>(Lcom/android/internal/os/KernelCpuProcStringReader;Lcom/android/internal/os/KernelCpuUidBpfMapReader;ZLcom/android/internal/os/Clock;)V

    .line 638
    return-void
.end method

.method private blacklist checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z
    .locals 4
    .param p1, "iter"    # Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    .line 709
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 710
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBpfTimesAvailable:Z

    .line 711
    return v0

    .line 713
    :cond_0
    iget v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mNumClusters:I

    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 714
    return v2

    .line 716
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    invoke-virtual {v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->getDataDimensions()[J

    move-result-object v1

    .line 717
    .local v1, "coresOnClusters":[J
    if-eqz v1, :cond_3

    array-length v3, v1

    if-ge v3, v2, :cond_2

    goto :goto_0

    .line 721
    :cond_2
    array-length v0, v1

    iput v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mNumClusters:I

    .line 722
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBuffer:[J

    .line 723
    new-array v2, v0, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mCurTimes:[J

    .line 724
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mDeltaTimes:[J

    .line 725
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBpfTimesAvailable:Z

    return v0

    .line 718
    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBpfTimesAvailable:Z

    .line 719
    return v0
.end method

.method private blacklist copyToCurTimes()V
    .locals 6

    .line 702
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xa

    .line 703
    .local v0, "factor":J
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mNumClusters:I

    if-ge v2, v3, :cond_1

    .line 704
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mCurTimes:[J

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBuffer:[J

    add-int/lit8 v5, v2, 0x1

    aget-wide v4, v4, v5

    mul-long/2addr v4, v0

    aput-wide v4, v3, v2

    .line 703
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 706
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 646
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBuffer:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-int v0, v2

    .line 647
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 648
    .local v2, "lastTimes":[J
    if-nez v2, :cond_0

    .line 649
    iget v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mNumClusters:I

    new-array v2, v3, [J

    .line 650
    iget-object v3, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mLastTimes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 652
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->copyToCurTimes()V

    .line 653
    const/4 v3, 0x0

    .line 654
    .local v3, "notify":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mNumClusters:I

    if-ge v4, v5, :cond_3

    .line 656
    iget-object v5, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mDeltaTimes:[J

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mCurTimes:[J

    aget-wide v6, v6, v4

    aget-wide v8, v2, v4

    sub-long/2addr v6, v8

    aput-wide v6, v5, v4

    .line 657
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 658
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Negative delta from freq time for uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", delta: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mDeltaTimes:[J

    aget-wide v6, v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-void

    .line 662
    :cond_1
    cmp-long v5, v6, v8

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    or-int/2addr v3, v5

    .line 654
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 664
    .end local v4    # "i":I
    :cond_3
    if-eqz v3, :cond_4

    .line 665
    iget-object v4, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mCurTimes:[J

    invoke-static {v4, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    if-eqz p1, :cond_4

    .line 667
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mDeltaTimes:[J

    invoke-interface {p1, v0, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V

    .line 670
    :cond_4
    return-void
.end method


# virtual methods
.method blacklist readAbsoluteImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;)V"
        }
    .end annotation

    .line 688
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_4

    .line 689
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mThrottle:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object v0

    .line 690
    .local v0, "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 691
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBuffer:[J

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->getNextUid([J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-direct {p0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->copyToCurTimes()V

    .line 693
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBuffer:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    long-to-int v1, v1

    iget-object v2, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mCurTimes:[J

    invoke-interface {p1, v1, v2}, Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;->onUidCpuTime(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 697
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    .line 695
    :cond_1
    return-void

    .line 697
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    goto :goto_2

    .line 689
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    .line 699
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :cond_4
    :goto_2
    return-void
.end method

.method blacklist readDeltaImpl(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;Z)V
    .locals 3
    .param p2, "forceRead"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<",
            "[J>;Z)V"
        }
    .end annotation

    .line 674
    .local p1, "cb":Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;, "Lcom/android/internal/os/KernelCpuUidTimeReader$Callback<[J>;"
    iget-boolean v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBpfTimesAvailable:Z

    if-eqz v0, :cond_4

    .line 675
    iget-object v0, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBpfReader:Lcom/android/internal/os/KernelCpuUidBpfMapReader;

    iget-boolean v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mThrottle:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader;->open(Z)Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;

    move-result-object v0

    .line 676
    .local v0, "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->checkPrecondition(Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 677
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->mBuffer:[J

    invoke-virtual {v0, v1}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->getNextUid([J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    invoke-direct {p0, p1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->processUidDelta(Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 682
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    .line 680
    :cond_1
    return-void

    .line 682
    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V

    goto :goto_2

    .line 675
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1

    .line 684
    .end local v0    # "iter":Lcom/android/internal/os/KernelCpuUidBpfMapReader$BpfMapIterator;
    :cond_4
    :goto_2
    return-void
.end method

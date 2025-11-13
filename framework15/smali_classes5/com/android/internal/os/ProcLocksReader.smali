.class public Lcom/android/internal/os/ProcLocksReader;
.super Ljava/lang/Object;
.source "ProcLocksReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;
    }
.end annotation


# instance fields
.field private final blacklist mPath:Ljava/lang/String;

.field private blacklist mPids:Landroid/util/IntArray;

.field private blacklist mReader:Lcom/android/internal/util/ProcFileReader;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    const-string v0, "/proc/locks"

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    iput-object p1, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist handleBlockingFileLocks(Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/internal/util/ProcFileReader;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/internal/os/ProcLocksReader;->mPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->rewind()V

    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->clear()V

    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/ProcFileReader;->nextLong(Z)J

    move-result-wide v5

    cmp-long v3, v5, v0

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;->onBlockingFileLock(Landroid/util/IntArray;)V

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->clear()V

    :cond_3
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextIgnored()V

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3, v2}, Landroid/util/IntArray;->add(I)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/util/IntArray;->set(II)V

    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mReader:Lcom/android/internal/util/ProcFileReader;

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    move-wide v0, v5

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    if-le v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/internal/os/ProcLocksReader;->mPids:Landroid/util/IntArray;

    invoke-interface {p1, v3}, Lcom/android/internal/os/ProcLocksReader$ProcLocksReaderCallback;->onBlockingFileLock(Landroid/util/IntArray;)V

    :cond_7
    return-void
.end method

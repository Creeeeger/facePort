.class public Lcom/android/internal/midi/MidiEventMultiScheduler;
.super Ljava/lang/Object;
.source "MidiEventMultiScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;
    }
.end annotation


# instance fields
.field private blacklist mMidiEventSchedulers:[Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

.field private final blacklist mMultiLock:Ljava/lang/Object;

.field private blacklist mNumClosedSchedulers:I

.field private blacklist mNumEventSchedulers:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMultiLock(Lcom/android/internal/midi/MidiEventMultiScheduler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMultiLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumClosedSchedulers(Lcom/android/internal/midi/MidiEventMultiScheduler;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumClosedSchedulers:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumClosedSchedulers(Lcom/android/internal/midi/MidiEventMultiScheduler;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumClosedSchedulers:I

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumClosedSchedulers:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMultiLock:Ljava/lang/Object;

    iput p1, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumEventSchedulers:I

    new-array v0, p1, [Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    iput-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMidiEventSchedulers:[Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMidiEventSchedulers:[Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    new-instance v2, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;-><init>(Lcom/android/internal/midi/MidiEventMultiScheduler;Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler-IA;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMidiEventSchedulers:[Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist getEventScheduler(I)Lcom/android/internal/midi/MidiEventScheduler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMidiEventSchedulers:[Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getNumEventSchedulers()I
    .locals 1

    iget v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumEventSchedulers:I

    return v0
.end method

.method public blacklist waitNextEvent()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMultiLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumClosedSchedulers:I

    iget v2, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mNumEventSchedulers:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    monitor-exit v0

    return v3

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMidiEventSchedulers:[Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;

    array-length v7, v6

    :goto_1
    if-ge v3, v7, :cond_2

    aget-object v8, v6, v3

    invoke-virtual {v8}, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;->isEventBufferEmptyLocked()Z

    move-result v9

    if-nez v9, :cond_1

    nop

    invoke-virtual {v8}, Lcom/android/internal/midi/MidiEventMultiScheduler$MultiLockMidiEventScheduler;->getLowestTimeLocked()J

    move-result-wide v9

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-wide v1, v9

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    cmp-long v3, v1, v4

    if-gtz v3, :cond_3

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_3
    sub-long v6, v1, v4

    const-wide/32 v8, 0xf4240

    div-long v8, v6, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    const-wide/32 v10, 0x7fffffff

    cmp-long v3, v8, v10

    if-lez v3, :cond_4

    const-wide/32 v8, 0x7fffffff

    :cond_4
    iget-object v3, p0, Lcom/android/internal/midi/MidiEventMultiScheduler;->mMultiLock:Ljava/lang/Object;

    invoke-virtual {v3, v8, v9}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.class public final Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
.super Ljava/lang/Object;
.source "BinderCallHeavyHitterWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;,
        Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    }
.end annotation


# static fields
.field private static final blacklist EPSILON:F = 1.0E-5f

.field private static final blacklist TAG:Ljava/lang/String; = "BinderCallHeavyHitterWatcher"

.field private static blacklist sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mBatchStartTimeStamp:J

.field private blacklist mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

.field private blacklist mCachedCandidateContainersIndex:I

.field private final blacklist mCachedCandidateFrequencies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCachedCandidateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCachedCandidateSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentInputSize:I

.field private blacklist mEnabled:Z

.field private final blacklist mHeavyHitterCandiates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/HeavyHitterSketch<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInputSize:I

.field private blacklist mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mThreshold:F

.field private blacklist mTotalInputSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private blacklist acquireHeavyHitterContainerLocked()Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    iget v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/os/BinderCallHeavyHitterWatcher;
    .locals 2

    sget-object v0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;-><init>()V

    sput-object v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    :cond_0
    sget-object v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->sInstance:Lcom/android/internal/os/BinderCallHeavyHitterWatcher;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist initCachedCandidateContainersLocked(I)V
    .locals 3

    if-lez p1, :cond_1

    new-array v0, p1, [Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    new-instance v2, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    invoke-direct {v2}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    return-void
.end method

.method private blacklist releaseHeavyHitterContainerLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainers:[Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    iget v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    aput-object p1, v0, v1

    return-void
.end method

.method private blacklist resetInternalLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;Lcom/android/internal/util/HeavyHitterSketch;IIFI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;",
            "Lcom/android/internal/util/HeavyHitterSketch<",
            "Ljava/lang/Integer;",
            ">;IIFI)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    iput-object p2, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;

    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    iput p3, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mInputSize:I

    iput p4, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iput p5, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mThreshold:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mBatchStartTimeStamp:J

    invoke-direct {p0, p6}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->initCachedCandidateContainersLocked(I)V

    return-void
.end method


# virtual methods
.method public blacklist onTransaction(ILjava/lang/Class;I)V
    .locals 17

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    if-nez v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;

    if-nez v0, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    invoke-static/range {p1 .. p3}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->hashCode(ILjava/lang/Class;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/internal/util/HeavyHitterSketch;->add(Ljava/lang/Object;)V

    iget v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v5, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mInputSize:I

    if-ne v4, v5, :cond_2

    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-interface {v0, v4}, Lcom/android/internal/util/HeavyHitterSketch;->getCandidates(Ljava/util/List;)Ljava/util/List;

    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    iget-object v5, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v7, p2

    move/from16 v8, p3

    goto/16 :goto_2

    :cond_2
    iget v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v5, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mInputSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-le v4, v5, :cond_5

    :try_start_1
    iget v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v5, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    if-ge v4, v5, :cond_5

    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_3

    nop

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->acquireHeavyHitterContainerLocked()Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v6, p1

    :try_start_2
    iput v6, v5, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mUid:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v7, p2

    :try_start_3
    iput-object v7, v5, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mClass:Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v8, p3

    :try_start_4
    iput v8, v5, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mCode:I

    iget-object v9, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {v9, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_3
    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    :goto_0
    goto/16 :goto_2

    :cond_4
    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move/from16 v6, p1

    goto/16 :goto_3

    :cond_5
    move/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    iget v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    iget v5, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    if-ne v4, v5, :cond_9

    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    iget-object v9, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-interface {v0, v5, v4, v9}, Lcom/android/internal/util/HeavyHitterSketch;->getTopHeavyHitters(ILjava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_7

    iget-object v12, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    if-eqz v12, :cond_6

    new-instance v13, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;

    invoke-direct {v13, v12}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;-><init>(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;)V

    iget-object v14, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    iput v14, v13, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$HeavyHitterContainer;->mFrequency:F

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    iget-object v11, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    iget v13, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    iget v14, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mThreshold:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    iget-wide v5, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mBatchStartTimeStamp:J

    sub-long/2addr v15, v5

    move-object v12, v10

    invoke-interface/range {v11 .. v16}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;->onHeavyHit(Ljava/util/List;IFJ)V

    :cond_8
    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterSketch:Lcom/android/internal/util/HeavyHitterSketch;

    invoke-interface {v4}, Lcom/android/internal/util/HeavyHitterSketch;->reset()V

    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mHeavyHitterCandiates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateFrequencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateSet:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V

    const/4 v4, 0x0

    iput v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCachedCandidateContainersIndex:I

    iput v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mCurrentInputSize:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mBatchStartTimeStamp:J

    :cond_9
    :goto_2
    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    :goto_3
    move-object/from16 v7, p2

    :goto_4
    move/from16 v8, p3

    :goto_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_5
.end method

.method public blacklist setConfig(ZIFLcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v9, p2

    iget-object v10, v8, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v10

    if-nez p1, :cond_1

    :try_start_0
    iget-boolean v0, v8, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->resetInternalLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;Lcom/android/internal/util/HeavyHitterSketch;IIFI)V

    const/4 v0, 0x0

    iput-boolean v0, v8, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    :cond_0
    monitor-exit v10

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mEnabled:Z

    const v0, 0x3727c5ac    # 1.0E-5f

    cmpg-float v1, p3, v0

    if-ltz v1, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v1

    if-lez v2, :cond_2

    move-object/from16 v11, p4

    goto/16 :goto_1

    :cond_2
    iget v2, v8, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mTotalInputSize:I

    if-ne v9, v2, :cond_3

    iget v2, v8, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mThreshold:F

    sub-float v2, p3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_3

    move-object/from16 v11, p4

    :try_start_1
    iput-object v11, v8, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->mListener:Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;

    monitor-exit v10

    return-void

    :cond_3
    move-object/from16 v11, p4

    div-float v0, v1, p3

    float-to-int v12, v0

    invoke-static {}, Lcom/android/internal/util/HeavyHitterSketch;->newDefault()Lcom/android/internal/util/HeavyHitterSketch;

    move-result-object v0

    move-object v13, v0

    invoke-interface {v13}, Lcom/android/internal/util/HeavyHitterSketch;->getRequiredValidationInputRatio()F

    move-result v0

    move v14, v0

    move/from16 v0, p2

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_4

    int-to-float v2, v9

    sub-float/2addr v1, v14

    mul-float/2addr v2, v1

    float-to-int v0, v2

    move v15, v0

    goto :goto_0

    :cond_4
    move v15, v0

    :goto_0
    :try_start_2
    invoke-interface {v13, v9, v12}, Lcom/android/internal/util/HeavyHitterSketch;->setConfig(II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object v3, v13

    move v4, v15

    move/from16 v5, p2

    move/from16 v6, p3

    move v7, v12

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/BinderCallHeavyHitterWatcher;->resetInternalLocked(Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;Lcom/android/internal/util/HeavyHitterSketch;IIFI)V

    monitor-exit v10

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    const-string v1, "BinderCallHeavyHitterWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid parameter to heavy hitter watcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v10

    return-void

    :cond_5
    move-object/from16 v11, p4

    :goto_1
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v11, p4

    :goto_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

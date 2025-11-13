.class public Landroid/hardware/camera2/impl/FrameNumberTracker;
.super Ljava/lang/Object;
.source "FrameNumberTracker.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FrameNumberTracker"


# instance fields
.field private blacklist mCompletedFrameNumber:[J

.field private final blacklist mFutureErrorMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPartialResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mPendingFrameNumbers:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [J

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    new-array v1, v0, [Ljava/util/LinkedList;

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    new-array v1, v0, [Ljava/util/LinkedList;

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const-wide/16 v3, -0x1

    aput-wide v3, v2, v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist update()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v7, v7, v5

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    cmp-long v7, v3, v7

    const/4 v8, 0x1

    if-nez v7, :cond_0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    :cond_0
    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v7, v3, v9

    if-nez v7, :cond_8

    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_4

    :cond_1
    const/4 v7, 0x1

    :goto_1
    const/4 v11, 0x3

    if-ge v7, v11, :cond_3

    add-int v12, v5, v7

    rem-int/2addr v12, v11

    iget-object v13, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, v3, v13

    if-nez v13, :cond_2

    iget-object v13, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v7, v5, 0x1

    rem-int/2addr v7, v11

    add-int/lit8 v12, v5, 0x2

    rem-int/2addr v12, v11

    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v13, v11, v7

    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    move-object v15, v6

    move/from16 v16, v7

    aget-wide v6, v11, v12

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long/2addr v6, v9

    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v13, v11, v5

    add-long/2addr v13, v9

    cmp-long v9, v6, v13

    if-lez v9, :cond_7

    cmp-long v9, v6, v3

    if-nez v9, :cond_7

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v6, v8

    goto :goto_4

    :cond_4
    move-object v15, v6

    move/from16 v16, v7

    goto :goto_3

    :cond_5
    move-object v15, v6

    move/from16 v16, v7

    goto :goto_3

    :cond_6
    move-object v15, v6

    :cond_7
    :goto_3
    move-object v6, v15

    :cond_8
    :goto_4
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aput-wide v3, v7, v5

    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_9
    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private blacklist updateCompletedFrameNumber(JI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v3, v3, p3

    cmp-long v3, v1, v3

    const-string v4, " is a repeat"

    const-string v5, "frame number "

    if-lez v3, :cond_a

    add-int/lit8 v3, p3, 0x1

    rem-int/lit8 v3, v3, 0x3

    add-int/lit8 v6, p3, 0x2

    rem-int/lit8 v6, v6, 0x3

    iget-object v7, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v7, v7, v3

    iget-object v9, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v9, v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    cmp-long v9, v1, v7

    if-gez v9, :cond_8

    iget-object v9, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v1, v10

    if-nez v10, :cond_0

    iget-object v4, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v4, v4, p3

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v10, v1, v10

    if-gez v10, :cond_1

    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " comes out of order. Expecting "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    iget-object v4, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v4, v4, v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v9, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v9, v9, v6

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-eq v4, v11, :cond_3

    move v13, v12

    goto :goto_0

    :cond_3
    move v13, v10

    :goto_0
    if-eq v9, v11, :cond_4

    move v10, v12

    :cond_4
    xor-int v11, v13, v10

    if-eqz v11, :cond_7

    if-eqz v13, :cond_5

    iget-object v5, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v5, v5, v3

    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v11, v11, v6

    move v12, v4

    goto :goto_1

    :cond_5
    iget-object v5, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v5, v5, v6

    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbers:[Ljava/util/LinkedList;

    aget-object v11, v11, v3

    move v12, v9

    :goto_1
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v12, :cond_6

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v11, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_4

    :cond_7
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " is a repeat or invalid"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_8
    iget-object v4, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aget-wide v4, v4, p3

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    :goto_3
    cmp-long v11, v4, v1

    if-gez v11, :cond_9

    iget-object v11, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPendingFrameNumbersWithOtherType:[Ljava/util/LinkedList;

    aget-object v11, v11, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-long/2addr v4, v9

    goto :goto_3

    :cond_9
    :goto_4
    iget-object v4, v0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    aput-wide v1, v4, p3

    return-void

    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getCompletedFrameNumber()J
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getCompletedReprocessFrameNumber()J
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist getCompletedZslStillFrameNumber()J
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mCompletedFrameNumber:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public blacklist popPartialResults(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public blacklist updateTracker(JLandroid/hardware/camera2/CaptureResult;ZI)V
    .locals 3

    if-nez p4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p5}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateTracker(JZI)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mPartialResults:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist updateTracker(JZI)V
    .locals 3

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/impl/FrameNumberTracker;->mFutureErrorMap:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Landroid/hardware/camera2/impl/FrameNumberTracker;->updateCompletedFrameNumber(JI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FrameNumberTracker"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->update()V

    return-void
.end method

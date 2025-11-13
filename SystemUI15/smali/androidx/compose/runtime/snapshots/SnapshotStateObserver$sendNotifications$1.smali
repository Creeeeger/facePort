.class final Landroidx/compose/runtime/snapshots/SnapshotStateObserver$sendNotifications$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$sendNotifications$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$sendNotifications$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    iget-object v3, v2, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, v2, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    if-nez v4, :cond_7

    iput-boolean v1, v2, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, v2, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    iget v6, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v6, :cond_6

    iget-object v5, v5, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_1
    aget-object v8, v5, v7

    check-cast v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    iget-object v9, v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    iget-object v10, v9, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v11, v9, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v12, v11

    add-int/lit8 v12, v12, -0x2

    if-ltz v12, :cond_3

    const/4 v13, 0x0

    :goto_2
    aget-wide v14, v11, v13

    move-object/from16 v16, v5

    not-long v4, v14

    const/16 v17, 0x7

    shl-long v4, v4, v17

    and-long/2addr v4, v14

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v4, v4, v17

    cmp-long v4, v4, v17

    if-eqz v4, :cond_2

    sub-int v4, v13, v12

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_1

    const-wide/16 v18, 0xff

    and-long v18, v14, v18

    const-wide/16 v20, 0x80

    cmp-long v18, v18, v20

    if-gez v18, :cond_0

    shl-int/lit8 v18, v13, 0x3

    add-int v18, v18, v1

    aget-object v5, v10, v18

    move-object/from16 v18, v10

    iget-object v10, v8, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x8

    goto :goto_4

    :cond_0
    move-object/from16 v18, v10

    :goto_4
    shr-long/2addr v14, v5

    const/4 v10, 0x1

    add-int/2addr v1, v10

    move-object/from16 v10, v18

    goto :goto_3

    :cond_1
    move-object/from16 v18, v10

    const/4 v10, 0x1

    if-ne v4, v5, :cond_4

    goto :goto_5

    :cond_2
    move-object/from16 v18, v10

    move v10, v1

    :goto_5
    if-eq v13, v12, :cond_4

    add-int/2addr v13, v10

    move v1, v10

    move-object/from16 v5, v16

    move-object/from16 v10, v18

    goto :goto_2

    :cond_3
    move v10, v1

    move-object/from16 v16, v5

    :cond_4
    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v7, v10

    if-lt v7, v6, :cond_5

    :goto_6
    const/4 v1, 0x0

    goto :goto_8

    :cond_5
    move v1, v10

    move-object/from16 v5, v16

    goto :goto_1

    :goto_7
    const/4 v1, 0x0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_6
    move v10, v1

    goto :goto_6

    :goto_8
    :try_start_2
    iput-boolean v1, v2, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    goto :goto_a

    :goto_9
    iput-boolean v1, v2, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_7
    move v10, v1

    :goto_a
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v3

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$sendNotifications$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->access$drainChanges(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_8
    move v1, v10

    goto/16 :goto_0

    :goto_b
    monitor-exit v3

    throw v0
.end method

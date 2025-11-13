.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "frameTime",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $alreadyComposed:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet;"
        }
    .end annotation
.end field

.field final synthetic $modifiedValues:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet;"
        }
    .end annotation
.end field

.field final synthetic $modifiedValuesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toApply:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toComplete:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet;"
        }
    .end annotation
.end field

.field final synthetic $toInsert:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $toLateApply:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet;"
        }
    .end annotation
.end field

.field final synthetic $toRecompose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/runtime/Recomposer;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iput-object p3, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iput-object p4, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iput-object p5, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iput-object p6, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iput-object p7, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iput-object p8, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iput-object p9, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v4, v3, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {v3}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    monitor-exit v4

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const-string v3, "Recomposer:animation"

    iget-object v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    iget-object v3, v6, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    invoke-virtual {v3, v1, v2}, Landroidx/compose/runtime/BroadcastFrameClock;->sendFrame(J)V

    sget-object v1, Landroidx/compose/runtime/snapshots/SnapshotKt;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v2, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentGlobalSnapshot:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/snapshots/GlobalSnapshot;

    iget-object v2, v2, Landroidx/compose/runtime/snapshots/MutableSnapshot;->modified:Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v2, v5, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :goto_0
    :try_start_3
    monitor-exit v1

    if-eqz v2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$advanceGlobalSnapshot()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_2
    :goto_2
    const-string v1, "Recomposer:recompose"

    iget-object v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iget-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iget-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iget-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iget-object v15, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_5
    invoke-static {v6}, Landroidx/compose/runtime/Recomposer;->access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z

    iget-object v1, v6, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    iget-object v7, v6, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    iget v9, v7, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v9, :cond_4

    iget-object v7, v7, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/4 v10, 0x0

    :cond_3
    aget-object v11, v7, v10

    check-cast v11, Landroidx/compose/runtime/ControlledComposition;

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    if-lt v10, v9, :cond_3

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_2a

    :cond_4
    :goto_3
    iget-object v4, v6, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v1

    invoke-virtual {v12}, Landroidx/collection/MutableScatterSet;->clear()V

    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->clear()V

    :goto_4
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    const/4 v4, 0x2

    if-nez v1, :cond_5

    move-object v1, v8

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    if-eqz v1, :cond_6

    :cond_5
    move-object/from16 v23, v12

    const/4 v4, 0x0

    goto/16 :goto_1a

    :cond_6
    move-object v0, v14

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v5

    const/4 v1, 0x6

    if-eqz v0, :cond_9

    iget-wide v9, v6, Landroidx/compose/runtime/Recomposer;->changeCount:J

    const-wide/16 v16, 0x1

    add-long v9, v9, v16

    iput-wide v9, v6, Landroidx/compose/runtime/Recomposer;->changeCount:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v0, :cond_7

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v15, v9}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    goto :goto_7

    :cond_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v0, :cond_8

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/ControlledComposition;

    check-cast v9, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v9}, Landroidx/compose/runtime/CompositionImpl;->applyChanges()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    :try_start_9
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception v0

    goto/16 :goto_2b

    :goto_7
    :try_start_a
    invoke-static {v6, v0, v4, v1}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;ZI)V

    move-object v7, v2

    move-object v9, v14

    move-object v10, v3

    move-object v11, v15

    invoke-static/range {v6 .. v13}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_28

    :goto_9
    :try_start_c
    invoke-interface {v14}, Ljava/util/List;->clear()V

    throw v0

    :cond_9
    :goto_a
    invoke-virtual {v3}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    const-wide/16 v16, 0xff

    const/4 v5, 0x7

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-eqz v0, :cond_f

    :try_start_d
    invoke-virtual {v15, v3}, Landroidx/collection/MutableScatterSet;->plusAssign(Landroidx/collection/ScatterSet;)V

    iget-object v0, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v7, v3, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v1, v7

    sub-int/2addr v1, v4

    if-ltz v1, :cond_d

    const/4 v4, 0x0

    :goto_b
    aget-wide v9, v7, v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-object/from16 v23, v12

    not-long v11, v9

    shl-long/2addr v11, v5

    and-long/2addr v11, v9

    and-long v11, v11, v18

    cmp-long v11, v11, v18

    if-eqz v11, :cond_c

    sub-int v11, v4, v1

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move-wide/from16 v24, v9

    const/4 v9, 0x0

    :goto_c
    if-ge v9, v11, :cond_b

    and-long v26, v24, v16

    const-wide/16 v21, 0x80

    cmp-long v10, v26, v21

    if-gez v10, :cond_a

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    :try_start_e
    aget-object v10, v0, v10

    check-cast v10, Landroidx/compose/runtime/ControlledComposition;

    check-cast v10, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v10}, Landroidx/compose/runtime/CompositionImpl;->applyLateChanges()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :cond_a
    const/16 v10, 0x8

    goto :goto_e

    :goto_d
    const/4 v1, 0x0

    const/4 v4, 0x6

    goto :goto_f

    :catchall_5
    move-exception v0

    goto :goto_10

    :catch_1
    move-exception v0

    goto :goto_d

    :goto_e
    shr-long v24, v24, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_b
    const/16 v10, 0x8

    if-ne v11, v10, :cond_e

    :cond_c
    if-eq v4, v1, :cond_e

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v12, v23

    goto :goto_b

    :catch_2
    move-exception v0

    move-object/from16 v23, v12

    goto :goto_d

    :cond_d
    move-object/from16 v23, v12

    :cond_e
    :try_start_f
    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_11

    :goto_f
    :try_start_10
    invoke-static {v6, v0, v1, v4}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;ZI)V

    move-object v7, v2

    move-object v9, v14

    move-object v10, v3

    move-object v11, v15

    move-object/from16 v12, v23

    invoke-static/range {v6 .. v13}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->clear()V

    goto/16 :goto_8

    :goto_10
    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->clear()V

    throw v0

    :cond_f
    move-object/from16 v23, v12

    :goto_11
    invoke-virtual {v15}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    if-eqz v0, :cond_14

    :try_start_12
    iget-object v0, v15, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v15, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v4, v1

    const/4 v7, 0x2

    sub-int/2addr v4, v7

    if-ltz v4, :cond_13

    const/4 v7, 0x0

    :goto_12
    aget-wide v9, v1, v7

    not-long v11, v9

    shl-long/2addr v11, v5

    and-long/2addr v11, v9

    and-long v11, v11, v18

    cmp-long v11, v11, v18

    if-eqz v11, :cond_12

    sub-int v11, v7, v4

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v11, v11, 0x8

    move-wide/from16 v24, v9

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v11, :cond_11

    and-long v26, v24, v16

    const-wide/16 v20, 0x80

    cmp-long v10, v26, v20

    if-gez v10, :cond_10

    shl-int/lit8 v10, v7, 0x3

    add-int/2addr v10, v9

    aget-object v10, v0, v10

    check-cast v10, Landroidx/compose/runtime/ControlledComposition;

    check-cast v10, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v10}, Landroidx/compose/runtime/CompositionImpl;->changesApplied()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :cond_10
    const/16 v10, 0x8

    goto :goto_15

    :goto_14
    const/4 v1, 0x6

    const/4 v4, 0x0

    goto :goto_17

    :catchall_6
    move-exception v0

    goto :goto_18

    :catch_3
    move-exception v0

    goto :goto_14

    :goto_15
    shr-long v24, v24, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_11
    const/16 v10, 0x8

    const-wide/16 v20, 0x80

    if-ne v11, v10, :cond_13

    goto :goto_16

    :cond_12
    const/16 v10, 0x8

    const-wide/16 v20, 0x80

    :goto_16
    if-eq v7, v4, :cond_13

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_13
    :try_start_13
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_19

    :goto_17
    :try_start_14
    invoke-static {v6, v0, v4, v1}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;ZI)V

    move-object v7, v2

    move-object v9, v14

    move-object v10, v3

    move-object v11, v15

    move-object/from16 v12, v23

    invoke-static/range {v6 .. v13}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :try_start_15
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->clear()V

    goto/16 :goto_8

    :goto_18
    invoke-virtual {v15}, Landroidx/collection/MutableScatterSet;->clear()V

    throw v0

    :cond_14
    :goto_19
    iget-object v1, v6, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    invoke-virtual {v6}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :try_start_17
    monitor-exit v1

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->notifyObjectsInitialized$runtime_release()V

    invoke-virtual {v13}, Landroidx/collection/MutableScatterSet;->clear()V

    invoke-virtual/range {v23 .. v23}, Landroidx/collection/MutableScatterSet;->clear()V

    const/4 v0, 0x0

    iput-object v0, v6, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    goto/16 :goto_8

    :catchall_7
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :goto_1a
    :try_start_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    move v7, v4

    :goto_1b
    if-ge v7, v1, :cond_16

    :try_start_19
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/ControlledComposition;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    move-object/from16 v12, v23

    :try_start_1a
    invoke-static {v6, v9, v12}, Landroidx/compose/runtime/Recomposer;->access$performRecompose(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;

    move-result-object v10

    if-eqz v10, :cond_15

    move-object v11, v14

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :catchall_8
    move-exception v0

    goto/16 :goto_29

    :catch_4
    move-exception v0

    :goto_1c
    move v1, v5

    :goto_1d
    const/4 v4, 0x2

    goto/16 :goto_27

    :cond_15
    :goto_1e
    invoke-virtual {v13, v9}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v23, v12

    goto :goto_1b

    :catch_5
    move-exception v0

    move-object/from16 v12, v23

    goto :goto_1c

    :cond_16
    move-object/from16 v12, v23

    :try_start_1b
    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v12}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, v6, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_17
    iget-object v1, v6, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    :try_start_1c
    invoke-virtual {v6}, Landroidx/compose/runtime/Recomposer;->getKnownCompositions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    move v10, v4

    :goto_1f
    if-ge v10, v9, :cond_19

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v13, v11}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_18

    check-cast v11, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/CompositionImpl;->observesAnyOf(Ljava/util/Set;)Z

    move-result v16

    if-eqz v16, :cond_18

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :catchall_9
    move-exception v0

    goto/16 :goto_26

    :cond_18
    :goto_20
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_1f

    :cond_19
    iget-object v4, v6, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    iget v7, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_21
    if-ge v9, v7, :cond_1c

    iget-object v11, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v11, v11, v9

    check-cast v11, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v13, v11}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1a

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1a

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_1a
    if-lez v10, :cond_1b

    iget-object v5, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v11, v9, v10

    aget-object v17, v5, v9

    aput-object v17, v5, v11

    :cond_1b
    :goto_22
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x1

    goto :goto_21

    :cond_1c
    iget-object v5, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v9, v7, v10

    const/4 v10, 0x0

    invoke-static {v9, v7, v10, v5}, Lkotlin/collections/ArraysKt___ArraysKt;->fill(IILjava/lang/Object;[Ljava/lang/Object;)V

    iput v9, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    :try_start_1d
    monitor-exit v1

    :cond_1d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    if-eqz v1, :cond_1f

    :try_start_1e
    invoke-static {v8, v6}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    :goto_23
    move-object v1, v8

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_1f

    invoke-virtual {v6, v8, v12}, Landroidx/compose/runtime/Recomposer;->performInsertValues(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "elements"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/collection/MutableScatterSet;->findAbsoluteInsertIndex(Ljava/lang/Object;)I

    move-result v5

    iget-object v7, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    aput-object v4, v7, v5

    goto :goto_24

    :cond_1e
    invoke-static {v8, v6}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto :goto_23

    :catch_6
    move-exception v0

    const/4 v1, 0x1

    const/4 v4, 0x2

    goto :goto_25

    :cond_1f
    const/4 v5, 0x1

    goto/16 :goto_4

    :goto_25
    :try_start_1f
    invoke-static {v6, v0, v1, v4}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;ZI)V

    move-object v7, v2

    move-object v9, v14

    move-object v10, v3

    move-object v11, v15

    invoke-static/range {v6 .. v13}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V

    goto/16 :goto_8

    :goto_26
    monitor-exit v1

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :catch_7
    move-exception v0

    move-object/from16 v12, v23

    const/4 v1, 0x1

    goto/16 :goto_1d

    :goto_27
    :try_start_20
    invoke-static {v6, v0, v1, v4}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;ZI)V

    move-object v7, v2

    move-object v9, v14

    move-object v10, v3

    move-object v11, v15

    invoke-static/range {v6 .. v13}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    :try_start_21
    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    goto/16 :goto_8

    :goto_28
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_29
    :try_start_22
    invoke-interface {v2}, Ljava/util/List;->clear()V

    throw v0

    :goto_2a
    monitor-exit v1

    throw v0
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    :goto_2b
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :catchall_a
    move-exception v0

    move-object v1, v0

    monitor-exit v4

    throw v1
.end method

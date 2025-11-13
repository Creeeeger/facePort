.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Recomposer;",
            "Landroidx/collection/MutableScatterSet;",
            "Landroidx/collection/MutableScatterSet;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;",
            "Landroidx/collection/MutableScatterSet;",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/ControlledComposition;",
            ">;",
            "Landroidx/collection/MutableScatterSet;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

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
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v4, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v5, v4, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {v4}, Landroidx/compose/runtime/Recomposer;->getHasBroadcastFrameClockAwaitersLocked()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    monitor-exit v5

    if-eqz v4, :cond_0

    const-string v4, "Recomposer:animation"

    iget-object v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    sget-object v6, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    iget-object v4, v5, Landroidx/compose/runtime/Recomposer;->broadcastFrameClock:Landroidx/compose/runtime/BroadcastFrameClock;

    invoke-virtual {v4, v2, v3}, Landroidx/compose/runtime/BroadcastFrameClock;->sendFrame(J)V

    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->sendApplyNotifications()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_0
    :goto_0
    const-string v2, "Recomposer:recompose"

    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->this$0:Landroidx/compose/runtime/Recomposer;

    iget-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValues:Landroidx/collection/MutableScatterSet;

    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$alreadyComposed:Landroidx/collection/MutableScatterSet;

    iget-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toRecompose:Ljava/util/List;

    iget-object v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toInsert:Ljava/util/List;

    iget-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toLateApply:Landroidx/collection/MutableScatterSet;

    iget-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toApply:Ljava/util/List;

    iget-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$toComplete:Landroidx/collection/MutableScatterSet;

    iget-object v0, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2$1;->$modifiedValuesSet:Ljava/util/Set;

    sget-object v4, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_2
    invoke-static {v3}, Landroidx/compose/runtime/Recomposer;->access$recordComposerModifications(Landroidx/compose/runtime/Recomposer;)Z

    iget-object v2, v3, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-object v4, v3, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    iget v6, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v6, :cond_2

    iget-object v4, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/4 v8, 0x0

    :cond_1
    aget-object v15, v4, v8

    check-cast v15, Landroidx/compose/runtime/ControlledComposition;

    move-object v7, v11

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v1

    if-lt v8, v6, :cond_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_29

    :cond_2
    :goto_1
    iget-object v4, v3, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2

    invoke-virtual {v9}, Landroidx/collection/MutableScatterSet;->clear()V

    invoke-virtual {v10}, Landroidx/collection/MutableScatterSet;->clear()V

    :goto_2
    move-object v2, v11

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    const/4 v4, 0x2

    if-nez v2, :cond_3

    move-object v2, v5

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_4

    :cond_3
    move-object/from16 v23, v9

    move-object/from16 v24, v10

    const/4 v1, 0x0

    goto/16 :goto_19

    :cond_4
    move-object v0, v13

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    xor-int/2addr v0, v1

    const/4 v2, 0x6

    if-eqz v0, :cond_7

    :try_start_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v0, :cond_5

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v14, v8}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v0, :cond_6

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/ControlledComposition;

    check-cast v8, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v8}, Landroidx/compose/runtime/CompositionImpl;->applyChanges()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/2addr v7, v1

    goto :goto_4

    :cond_6
    :try_start_6
    invoke-interface {v13}, Ljava/util/List;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    goto/16 :goto_2a

    :goto_5
    :try_start_7
    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;ZI)V

    move-object v4, v11

    move-object v6, v13

    move-object v7, v12

    move-object v8, v14

    invoke-static/range {v3 .. v10}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-interface {v13}, Ljava/util/List;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_27

    :goto_7
    :try_start_9
    invoke-interface {v13}, Ljava/util/List;->clear()V

    throw v0

    :cond_7
    :goto_8
    invoke-virtual {v12}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const-wide/16 v15, 0xff

    const/16 v17, 0x7

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v6, 0x8

    if-eqz v0, :cond_d

    :try_start_a
    invoke-virtual {v14, v12}, Landroidx/collection/MutableScatterSet;->plusAssign(Landroidx/collection/ScatterSet;)V

    iget-object v0, v12, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v2, v12, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v1, v2

    sub-int/2addr v1, v4

    if-ltz v1, :cond_b

    const/4 v4, 0x0

    :goto_9
    aget-wide v7, v2, v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    not-long v9, v7

    shl-long v9, v9, v17

    and-long/2addr v9, v7

    and-long v9, v9, v18

    cmp-long v9, v9, v18

    if-eqz v9, :cond_a

    sub-int v9, v4, v1

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    move-wide/from16 v25, v7

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v9, :cond_9

    and-long v27, v25, v15

    const-wide/16 v21, 0x80

    cmp-long v8, v27, v21

    if-gez v8, :cond_8

    shl-int/lit8 v8, v4, 0x3

    add-int/2addr v8, v7

    :try_start_b
    aget-object v8, v0, v8

    check-cast v8, Landroidx/compose/runtime/ControlledComposition;

    check-cast v8, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v8}, Landroidx/compose/runtime/CompositionImpl;->applyLateChanges()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_c

    :goto_b
    const/4 v1, 0x0

    const/4 v2, 0x6

    goto :goto_e

    :catchall_4
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_b

    :cond_8
    :goto_c
    shr-long v25, v25, v6

    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto :goto_a

    :cond_9
    const/4 v8, 0x1

    if-ne v9, v6, :cond_c

    goto :goto_d

    :cond_a
    const/4 v8, 0x1

    :goto_d
    if-eq v4, v1, :cond_c

    add-int/2addr v4, v8

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    goto :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    goto :goto_b

    :cond_b
    move-object/from16 v23, v9

    move-object/from16 v24, v10

    :cond_c
    :try_start_c
    invoke-virtual {v12}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_10

    :goto_e
    :try_start_d
    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;ZI)V

    move-object v4, v11

    move-object v6, v13

    move-object v7, v12

    move-object v8, v14

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    invoke-static/range {v3 .. v10}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {v12}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    goto/16 :goto_6

    :goto_f
    :try_start_f
    invoke-virtual {v12}, Landroidx/collection/MutableScatterSet;->clear()V

    throw v0

    :cond_d
    move-object/from16 v23, v9

    move-object/from16 v24, v10

    :goto_10
    invoke-virtual {v14}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v0, :cond_12

    :try_start_10
    iget-object v0, v14, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v14, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v2, v1

    const/4 v4, 0x2

    sub-int/2addr v2, v4

    if-ltz v2, :cond_11

    const/4 v4, 0x0

    :goto_11
    aget-wide v7, v1, v4

    not-long v9, v7

    shl-long v9, v9, v17

    and-long/2addr v9, v7

    and-long v9, v9, v18

    cmp-long v9, v9, v18

    if-eqz v9, :cond_10

    sub-int v9, v4, v2

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    move-wide/from16 v25, v7

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v9, :cond_f

    and-long v27, v25, v15

    const-wide/16 v20, 0x80

    cmp-long v8, v27, v20

    if-gez v8, :cond_e

    shl-int/lit8 v8, v4, 0x3

    add-int/2addr v8, v7

    aget-object v8, v0, v8

    check-cast v8, Landroidx/compose/runtime/ControlledComposition;

    check-cast v8, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v8}, Landroidx/compose/runtime/CompositionImpl;->changesApplied()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_14

    :goto_13
    const/4 v1, 0x0

    const/4 v2, 0x6

    goto :goto_16

    :catchall_5
    move-exception v0

    goto :goto_17

    :catch_3
    move-exception v0

    goto :goto_13

    :cond_e
    :goto_14
    shr-long v25, v25, v6

    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto :goto_12

    :cond_f
    const/4 v8, 0x1

    const-wide/16 v20, 0x80

    if-ne v9, v6, :cond_11

    goto :goto_15

    :cond_10
    const/4 v8, 0x1

    const-wide/16 v20, 0x80

    :goto_15
    if-eq v4, v2, :cond_11

    add-int/2addr v4, v8

    goto :goto_11

    :cond_11
    :try_start_11
    invoke-virtual {v14}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_18

    :goto_16
    :try_start_12
    invoke-static {v3, v0, v1, v2}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;ZI)V

    move-object v4, v11

    move-object v6, v13

    move-object v7, v12

    move-object v8, v14

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    invoke-static/range {v3 .. v10}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    invoke-virtual {v14}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    goto/16 :goto_6

    :goto_17
    :try_start_14
    invoke-virtual {v14}, Landroidx/collection/MutableScatterSet;->clear()V

    throw v0

    :cond_12
    :goto_18
    iget-object v1, v3, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    invoke-virtual {v3}, Landroidx/compose/runtime/Recomposer;->deriveStateLocked()Lkotlinx/coroutines/CancellableContinuation;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    monitor-exit v1

    sget-object v0, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->notifyObjectsInitialized$runtime_release()V

    invoke-virtual/range {v24 .. v24}, Landroidx/collection/MutableScatterSet;->clear()V

    invoke-virtual/range {v23 .. v23}, Landroidx/collection/MutableScatterSet;->clear()V

    const/4 v0, 0x0

    iput-object v0, v3, Landroidx/compose/runtime/Recomposer;->compositionsRemoved:Ljava/util/Set;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    goto/16 :goto_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_17
    monitor-exit v1

    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :goto_19
    :try_start_18
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    move v4, v1

    :goto_1a
    if-ge v4, v2, :cond_14

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/runtime/ControlledComposition;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    move-object/from16 v9, v23

    :try_start_19
    invoke-static {v3, v6, v9}, Landroidx/compose/runtime/Recomposer;->access$performRecompose(Landroidx/compose/runtime/Recomposer;Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)Landroidx/compose/runtime/ControlledComposition;

    move-result-object v7

    if-eqz v7, :cond_13

    move-object v8, v13

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :cond_13
    move-object/from16 v10, v24

    goto :goto_1d

    :catchall_7
    move-exception v0

    goto/16 :goto_28

    :catch_4
    move-exception v0

    :goto_1b
    move-object/from16 v10, v24

    :goto_1c
    const/4 v1, 0x2

    const/4 v2, 0x1

    goto/16 :goto_26

    :goto_1d
    :try_start_1a
    invoke-virtual {v10, v6}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_5
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    const/4 v6, 0x1

    add-int/2addr v4, v6

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    goto :goto_1a

    :catch_5
    move-exception v0

    goto :goto_1c

    :catch_6
    move-exception v0

    move-object/from16 v9, v23

    goto :goto_1b

    :cond_14
    move-object/from16 v9, v23

    move-object/from16 v10, v24

    :try_start_1b
    invoke-interface {v11}, Ljava/util/List;->clear()V

    invoke-virtual {v9}, Landroidx/collection/ScatterSet;->isNotEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, v3, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_15
    iget-object v2, v3, Landroidx/compose/runtime/Recomposer;->stateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :try_start_1c
    invoke-virtual {v3}, Landroidx/compose/runtime/Recomposer;->getKnownCompositions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v7, v1

    :goto_1e
    if-ge v7, v6, :cond_17

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v10, v8}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    check-cast v8, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/CompositionImpl;->observesAnyOf(Ljava/util/Set;)Z

    move-result v15

    if-eqz v15, :cond_16

    move-object v15, v11

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_16
    const/4 v8, 0x1

    goto :goto_1f

    :catchall_8
    move-exception v0

    goto/16 :goto_25

    :goto_1f
    add-int/2addr v7, v8

    goto :goto_1e

    :cond_17
    iget-object v4, v3, Landroidx/compose/runtime/Recomposer;->compositionInvalidations:Landroidx/compose/runtime/collection/MutableVector;

    iget v6, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    move v7, v1

    move v8, v7

    :goto_20
    if-ge v7, v6, :cond_1a

    iget-object v15, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v15, v15, v7

    check-cast v15, Landroidx/compose/runtime/ControlledComposition;

    invoke-virtual {v10, v15}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_18

    invoke-interface {v11, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_18

    move-object v1, v11

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    add-int/2addr v8, v1

    goto :goto_21

    :cond_18
    if-lez v8, :cond_19

    iget-object v1, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v15, v7, v8

    aget-object v16, v1, v7

    aput-object v16, v1, v15

    :cond_19
    const/4 v1, 0x1

    :goto_21
    add-int/2addr v7, v1

    const/4 v1, 0x0

    goto :goto_20

    :cond_1a
    iget-object v1, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v7, v6, v8

    const/4 v8, 0x0

    invoke-static {v1, v7, v6, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v7, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    :try_start_1d
    monitor-exit v2

    :cond_1b
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    if-eqz v1, :cond_1d

    :try_start_1e
    invoke-static {v5, v3}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V

    :goto_22
    move-object v1, v5

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1d

    invoke-virtual {v3, v5, v9}, Landroidx/compose/runtime/Recomposer;->performInsertValues(Ljava/util/List;Landroidx/collection/MutableScatterSet;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/collection/MutableScatterSet;->findAbsoluteInsertIndex(Ljava/lang/Object;)I

    move-result v4

    iget-object v6, v12, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    aput-object v2, v6, v4

    goto :goto_23

    :cond_1c
    invoke-static {v5, v3}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$fillToInsert(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_7
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto :goto_22

    :catch_7
    move-exception v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    goto :goto_24

    :cond_1d
    const/4 v1, 0x1

    goto/16 :goto_2

    :goto_24
    :try_start_1f
    invoke-static {v3, v0, v2, v1}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;ZI)V

    move-object v4, v11

    move-object v6, v13

    move-object v7, v12

    move-object v8, v14

    invoke-static/range {v3 .. v10}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    goto/16 :goto_6

    :goto_25
    :try_start_20
    monitor-exit v2

    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    :goto_26
    :try_start_21
    invoke-static {v3, v0, v2, v1}, Landroidx/compose/runtime/Recomposer;->processCompositionError$default(Landroidx/compose/runtime/Recomposer;Ljava/lang/Exception;ZI)V

    move-object v4, v11

    move-object v6, v13

    move-object v7, v12

    move-object v8, v14

    invoke-static/range {v3 .. v10}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->access$invokeSuspend$clearRecompositionState(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    :try_start_22
    invoke-interface {v11}, Ljava/util/List;->clear()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    sget-object v0, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    goto/16 :goto_6

    :goto_27
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_28
    :try_start_23
    invoke-interface {v11}, Ljava/util/List;->clear()V

    throw v0

    :goto_29
    monitor-exit v2

    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    :goto_2a
    sget-object v1, Landroidx/compose/runtime/Trace;->INSTANCE:Landroidx/compose/runtime/Trace;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :catchall_9
    move-exception v0

    move-object v1, v0

    monitor-exit v5

    throw v1
.end method

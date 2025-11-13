.class final Landroidx/compose/runtime/snapshots/SnapshotStateObserver$sendNotifications$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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

    :cond_0
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$sendNotifications$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    iget-object v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    if-nez v3, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->observedScopeMaps:Landroidx/compose/runtime/collection/MutableVector;

    iget v5, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v5, :cond_6

    iget-object v4, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/4 v6, 0x0

    :goto_0
    aget-object v7, v4, v6

    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    iget-object v8, v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    iget-object v9, v8, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v10, v8, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v11, v10

    add-int/lit8 v11, v11, -0x2

    if-ltz v11, :cond_4

    const/4 v12, 0x0

    :goto_1
    aget-wide v13, v10, v12

    move-object/from16 v16, v4

    not-long v3, v13

    const/16 v17, 0x7

    shl-long v3, v3, v17

    and-long/2addr v3, v13

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v3, v3, v17

    cmp-long v3, v3, v17

    if-eqz v3, :cond_3

    sub-int v3, v12, v11

    not-int v3, v3

    ushr-int/lit8 v3, v3, 0x1f

    const/16 v4, 0x8

    rsub-int/lit8 v3, v3, 0x8

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v3, :cond_2

    const-wide/16 v18, 0xff

    and-long v18, v13, v18

    const-wide/16 v20, 0x80

    cmp-long v18, v18, v20

    if-gez v18, :cond_1

    shl-int/lit8 v18, v12, 0x3

    add-int v18, v18, v15

    aget-object v4, v9, v18

    move-object/from16 v18, v9

    iget-object v9, v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {v9, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x8

    goto :goto_3

    :cond_1
    move-object/from16 v18, v9

    :goto_3
    shr-long/2addr v13, v4

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v18

    goto :goto_2

    :cond_2
    move-object/from16 v18, v9

    if-ne v3, v4, :cond_5

    goto :goto_4

    :cond_3
    move-object/from16 v18, v9

    :goto_4
    if-eq v12, v11, :cond_5

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v16

    move-object/from16 v9, v18

    goto :goto_1

    :cond_4
    move-object/from16 v16, v4

    :cond_5
    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v5, :cond_7

    :cond_6
    const/4 v3, 0x0

    goto :goto_6

    :cond_7
    move-object/from16 v4, v16

    goto :goto_0

    :goto_5
    const/4 v3, 0x0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_5

    :goto_6
    :try_start_2
    iput-boolean v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    goto :goto_8

    :goto_7
    iput-boolean v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->sendingNotifications:Z

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_8
    :goto_8
    monitor-exit v2

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$sendNotifications$1;->this$0:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    invoke-static {v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->access$drainChanges(Landroidx/compose/runtime/snapshots/SnapshotStateObserver;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_9
    monitor-exit v2

    throw v0
.end method

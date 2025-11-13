.class public final Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public currentScope:Ljava/lang/Object;

.field public currentScopeReads:Landroidx/collection/MutableObjectIntMap;

.field public currentToken:I

.field public final dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

.field public deriveStateScopeCount:I

.field public final derivedStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

.field public final invalidated:Landroidx/collection/MutableScatterSet;

.field public final onChanged:Lkotlin/jvm/functions/Function1;

.field public final recordedDerivedStateValues:Ljava/util/HashMap;

.field public final scopeToValues:Landroidx/collection/MutableScatterMap;

.field public final statesToReread:Landroidx/compose/runtime/collection/MutableVector;

.field public final valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    new-instance p1, Landroidx/compose/runtime/collection/ScopeMap;

    invoke-direct {p1}, Landroidx/compose/runtime/collection/ScopeMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    new-instance p1, Landroidx/collection/MutableScatterMap;

    invoke-direct {p1}, Landroidx/collection/MutableScatterMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    new-instance p1, Landroidx/collection/MutableScatterSet;

    invoke-direct {p1}, Landroidx/collection/MutableScatterSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v0, 0x10

    new-array v0, v0, [Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-direct {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    new-instance p1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->derivedStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

    new-instance p1, Landroidx/compose/runtime/collection/ScopeMap;

    invoke-direct {p1}, Landroidx/compose/runtime/collection/ScopeMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final observe(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    iget v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    iput-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/collection/MutableObjectIntMap;

    iput-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    iget v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_0

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v1

    iput v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    :cond_0
    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->derivedStateObserver:Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v5

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->observe(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    sub-int/2addr v1, v6

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    iget-object v7, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    if-eqz v7, :cond_7

    iget-object v8, v7, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v9, v8

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_7

    const/4 v11, 0x0

    :goto_0
    aget-wide v12, v8, v11

    not-long v14, v12

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v12

    const-wide v16, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_6

    sub-int v14, v11, v9

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v14, :cond_5

    const-wide/16 v16, 0xff

    and-long v16, v12, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_4

    shl-int/lit8 v16, v11, 0x3

    add-int v6, v16, v10

    iget-object v15, v7, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    aget-object v15, v15, v6

    move-object/from16 v16, v8

    iget-object v8, v7, Landroidx/collection/MutableObjectIntMap;->values:[I

    aget v8, v8, v6

    if-eq v8, v5, :cond_1

    const/4 v8, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_2

    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    if-eqz v8, :cond_3

    invoke-virtual {v7, v6}, Landroidx/collection/MutableObjectIntMap;->removeValueAt(I)V

    :cond_3
    const/16 v6, 0x8

    goto :goto_3

    :cond_4
    move-object/from16 v16, v8

    move v6, v15

    :goto_3
    shr-long/2addr v12, v6

    add-int/lit8 v10, v10, 0x1

    move v15, v6

    move-object/from16 v8, v16

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v16, v8

    move v6, v15

    if-ne v14, v6, :cond_7

    goto :goto_4

    :cond_6
    move-object/from16 v16, v8

    :goto_4
    if-eq v11, v9, :cond_7

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v16

    const/4 v6, 0x1

    goto :goto_0

    :cond_7
    iput-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    iput v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    return-void

    :catchall_0
    move-exception v0

    iget v1, v5, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    throw v0
.end method

.method public final recordInvalidation(Ljava/util/Set;)Z
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    instance-of v3, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    sget-object v4, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>"

    iget-object v6, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    const/4 v11, 0x7

    const/4 v12, 0x2

    const/16 v15, 0x8

    const/16 v16, 0x1

    const/16 v17, 0x0

    iget-object v7, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    iget-object v8, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    iget-object v9, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_22

    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    iget-object v1, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;->set:Landroidx/collection/ScatterSet;

    iget-object v3, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v10, v1

    sub-int/2addr v10, v12

    if-ltz v10, :cond_20

    move/from16 v12, v17

    move/from16 v23, v12

    :goto_0
    aget-wide v13, v1, v12

    move-object/from16 p1, v1

    not-long v0, v13

    shl-long/2addr v0, v11

    and-long/2addr v0, v13

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v0, v0, v24

    cmp-long v0, v0, v24

    if-eqz v0, :cond_1f

    sub-int v0, v12, v10

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    rsub-int/lit8 v0, v0, 0x8

    move/from16 v1, v17

    :goto_1
    if-ge v1, v0, :cond_1e

    const-wide/16 v20, 0xff

    and-long v26, v13, v20

    const-wide/16 v18, 0x80

    cmp-long v26, v26, v18

    if-gez v26, :cond_1d

    shl-int/lit8 v26, v12, 0x3

    add-int v26, v26, v1

    aget-object v15, v3, v26

    instance-of v11, v15, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v11, :cond_0

    move-object v11, v15

    check-cast v11, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    move-object/from16 v28, v3

    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v11

    if-nez v11, :cond_1

    move/from16 v31, v0

    move/from16 v32, v1

    move-object v0, v2

    move-object/from16 v29, v4

    move-object/from16 v38, v5

    move-object/from16 v30, v7

    move-object v2, v8

    move/from16 v43, v10

    move/from16 v33, v12

    move-wide/from16 v34, v13

    goto/16 :goto_11

    :cond_0
    move-object/from16 v28, v3

    :cond_1
    iget-object v3, v7, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v3, v15}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v7, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v3, v15}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    instance-of v11, v3, Landroidx/collection/MutableScatterSet;

    if-eqz v11, :cond_f

    check-cast v3, Landroidx/collection/MutableScatterSet;

    iget-object v11, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v3, v3, Landroidx/collection/ScatterSet;->metadata:[J

    move-object/from16 v29, v4

    array-length v4, v3

    const/16 v22, 0x2

    add-int/lit8 v4, v4, -0x2

    move/from16 v31, v0

    move/from16 v32, v1

    if-ltz v4, :cond_d

    move-object/from16 v30, v7

    move/from16 v7, v17

    :goto_2
    aget-wide v0, v3, v7

    move/from16 v33, v12

    move-wide/from16 v34, v13

    not-long v12, v0

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v0

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v12, v12, v24

    cmp-long v12, v12, v24

    if-eqz v12, :cond_c

    sub-int v12, v7, v4

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    move/from16 v13, v17

    :goto_3
    if-ge v13, v12, :cond_b

    const-wide/16 v20, 0xff

    and-long v36, v0, v20

    const-wide/16 v18, 0x80

    cmp-long v14, v36, v18

    if-gez v14, :cond_a

    shl-int/lit8 v14, v7, 0x3

    add-int/2addr v14, v13

    aget-object v14, v11, v14

    check-cast v14, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v36, v3

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v37, v11

    iget-object v11, v14, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-object/from16 v38, v5

    if-nez v11, :cond_2

    move-object/from16 v11, v29

    :cond_2
    invoke-virtual {v14}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v5

    iget-object v5, v5, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-interface {v11, v5, v3}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v8, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v3, v14}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    instance-of v5, v3, Landroidx/collection/MutableScatterSet;

    if-eqz v5, :cond_7

    check-cast v3, Landroidx/collection/MutableScatterSet;

    iget-object v5, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v3, v3, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v11, v3

    const/4 v14, 0x2

    sub-int/2addr v11, v14

    if-ltz v11, :cond_6

    move/from16 v40, v7

    move-object/from16 v39, v8

    move/from16 v14, v17

    :goto_4
    aget-wide v7, v3, v14

    move-object/from16 v41, v2

    move-object/from16 v42, v3

    not-long v2, v7

    const/16 v26, 0x7

    shl-long v2, v2, v26

    and-long/2addr v2, v7

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v24

    cmp-long v2, v2, v24

    if-eqz v2, :cond_5

    sub-int v2, v14, v11

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    move/from16 v3, v17

    :goto_5
    if-ge v3, v2, :cond_4

    const-wide/16 v20, 0xff

    and-long v43, v7, v20

    const-wide/16 v18, 0x80

    cmp-long v43, v43, v18

    if-gez v43, :cond_3

    shl-int/lit8 v23, v14, 0x3

    add-int v23, v23, v3

    move/from16 v43, v10

    aget-object v10, v5, v23

    invoke-virtual {v9, v10}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v23, v16

    :goto_6
    const/16 v10, 0x8

    goto :goto_7

    :cond_3
    move/from16 v43, v10

    goto :goto_6

    :goto_7
    shr-long/2addr v7, v10

    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v43

    goto :goto_5

    :cond_4
    move/from16 v43, v10

    const/16 v10, 0x8

    if-ne v2, v10, :cond_9

    goto :goto_8

    :cond_5
    move/from16 v43, v10

    :goto_8
    if-eq v14, v11, :cond_9

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    move/from16 v10, v43

    goto :goto_4

    :cond_6
    move-object/from16 v41, v2

    move/from16 v40, v7

    move-object/from16 v39, v8

    move/from16 v43, v10

    goto :goto_9

    :cond_7
    move-object/from16 v41, v2

    move/from16 v40, v7

    move-object/from16 v39, v8

    move/from16 v43, v10

    invoke-virtual {v9, v3}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v23, v16

    goto :goto_9

    :cond_8
    move-object/from16 v41, v2

    move/from16 v40, v7

    move-object/from16 v39, v8

    move/from16 v43, v10

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_9
    :goto_9
    const/16 v2, 0x8

    goto :goto_a

    :cond_a
    move-object/from16 v41, v2

    move-object/from16 v36, v3

    move-object/from16 v38, v5

    move/from16 v40, v7

    move-object/from16 v39, v8

    move/from16 v43, v10

    move-object/from16 v37, v11

    goto :goto_9

    :goto_a
    shr-long/2addr v0, v2

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v36

    move-object/from16 v11, v37

    move-object/from16 v5, v38

    move-object/from16 v8, v39

    move/from16 v7, v40

    move-object/from16 v2, v41

    move/from16 v10, v43

    goto/16 :goto_3

    :cond_b
    move-object/from16 v41, v2

    move-object/from16 v36, v3

    move-object/from16 v38, v5

    move/from16 v40, v7

    move-object/from16 v39, v8

    move/from16 v43, v10

    move-object/from16 v37, v11

    const/16 v2, 0x8

    if-ne v12, v2, :cond_e

    move/from16 v0, v40

    goto :goto_b

    :cond_c
    move-object/from16 v41, v2

    move-object/from16 v36, v3

    move-object/from16 v38, v5

    move-object/from16 v39, v8

    move/from16 v43, v10

    move-object/from16 v37, v11

    move v0, v7

    :goto_b
    if-eq v0, v4, :cond_e

    add-int/lit8 v7, v0, 0x1

    move/from16 v12, v33

    move-wide/from16 v13, v34

    move-object/from16 v3, v36

    move-object/from16 v11, v37

    move-object/from16 v5, v38

    move-object/from16 v8, v39

    move-object/from16 v2, v41

    move/from16 v10, v43

    goto/16 :goto_2

    :cond_d
    move-object/from16 v41, v2

    move-object/from16 v38, v5

    move-object/from16 v30, v7

    move-object/from16 v39, v8

    move/from16 v43, v10

    move/from16 v33, v12

    move-wide/from16 v34, v13

    :cond_e
    move-object/from16 v2, v39

    move-object/from16 v0, v41

    goto/16 :goto_e

    :cond_f
    move/from16 v31, v0

    move/from16 v32, v1

    move-object/from16 v41, v2

    move-object/from16 v29, v4

    move-object/from16 v38, v5

    move-object/from16 v30, v7

    move-object/from16 v39, v8

    move/from16 v43, v10

    move/from16 v33, v12

    move-wide/from16 v34, v13

    check-cast v3, Landroidx/compose/runtime/DerivedSnapshotState;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v3, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    if-nez v2, :cond_10

    move-object/from16 v2, v29

    :cond_10
    invoke-virtual {v3}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-interface {v2, v4, v1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    move-object/from16 v2, v39

    iget-object v1, v2, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    instance-of v3, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_14

    check-cast v1, Landroidx/collection/MutableScatterSet;

    iget-object v3, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v4, v1

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ltz v4, :cond_17

    move/from16 v5, v17

    :goto_c
    aget-wide v7, v1, v5

    not-long v10, v7

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_13

    sub-int v10, v5, v4

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move/from16 v11, v17

    :goto_d
    if-ge v11, v10, :cond_12

    const-wide/16 v12, 0xff

    and-long v36, v7, v12

    const-wide/16 v12, 0x80

    cmp-long v14, v36, v12

    if-gez v14, :cond_11

    shl-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v11

    aget-object v12, v3, v12

    invoke-virtual {v9, v12}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v23, v16

    :cond_11
    const/16 v12, 0x8

    shr-long/2addr v7, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_12
    const/16 v12, 0x8

    if-ne v10, v12, :cond_17

    :cond_13
    if-eq v5, v4, :cond_17

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_14
    invoke-virtual {v9, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v23, v16

    goto :goto_e

    :cond_15
    move-object/from16 v2, v39

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_e

    :cond_16
    move/from16 v31, v0

    move/from16 v32, v1

    move-object v0, v2

    move-object/from16 v29, v4

    move-object/from16 v38, v5

    move-object/from16 v30, v7

    move-object v2, v8

    move/from16 v43, v10

    move/from16 v33, v12

    move-wide/from16 v34, v13

    :cond_17
    :goto_e
    iget-object v1, v2, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, v15}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    instance-of v3, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_1b

    check-cast v1, Landroidx/collection/MutableScatterSet;

    iget-object v3, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v4, v1

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ltz v4, :cond_1c

    move/from16 v5, v17

    :goto_f
    aget-wide v7, v1, v5

    not-long v10, v7

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1a

    sub-int v10, v5, v4

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v15, v10, 0x8

    move/from16 v10, v17

    :goto_10
    if-ge v10, v15, :cond_19

    const-wide/16 v11, 0xff

    and-long v13, v7, v11

    const-wide/16 v11, 0x80

    cmp-long v13, v13, v11

    if-gez v13, :cond_18

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget-object v11, v3, v11

    invoke-virtual {v9, v11}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v23, v16

    :cond_18
    const/16 v11, 0x8

    shr-long/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_19
    const/16 v11, 0x8

    if-ne v15, v11, :cond_1c

    :cond_1a
    if-eq v5, v4, :cond_1c

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1b
    invoke-virtual {v9, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v23, v16

    :cond_1c
    :goto_11
    const/16 v1, 0x8

    goto :goto_12

    :cond_1d
    move/from16 v31, v0

    move/from16 v32, v1

    move-object v0, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v38, v5

    move-object/from16 v30, v7

    move-object v2, v8

    move/from16 v43, v10

    move/from16 v33, v12

    move-wide/from16 v34, v13

    move v1, v15

    :goto_12
    shr-long v13, v34, v1

    add-int/lit8 v3, v32, 0x1

    move v15, v1

    move-object v8, v2

    move v1, v3

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    move-object/from16 v7, v30

    move/from16 v12, v33

    move-object/from16 v5, v38

    move/from16 v10, v43

    const/4 v11, 0x7

    move-object v2, v0

    move/from16 v0, v31

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v38, v5

    move-object/from16 v30, v7

    move/from16 v43, v10

    move/from16 v33, v12

    move v1, v15

    move v15, v0

    move-object v0, v2

    move-object v2, v8

    if-ne v15, v1, :cond_21

    move/from16 v1, v33

    move/from16 v10, v43

    goto :goto_13

    :cond_1f
    move-object v0, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v38, v5

    move-object/from16 v30, v7

    move-object v2, v8

    move v1, v12

    :goto_13
    if-eq v1, v10, :cond_21

    add-int/lit8 v12, v1, 0x1

    move-object/from16 v1, p1

    move-object v8, v2

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    move-object/from16 v7, v30

    move-object/from16 v5, v38

    const/4 v11, 0x7

    const/16 v15, 0x8

    move-object v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_20
    move-object v2, v8

    move/from16 v23, v17

    :cond_21
    move-object v1, v2

    goto/16 :goto_26

    :cond_22
    move-object v0, v2

    move-object/from16 v29, v4

    move-object/from16 v38, v5

    move-object/from16 v30, v7

    move-object v2, v8

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v23, v17

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v4, :cond_23

    move-object v4, v3

    check-cast v4, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v4

    if-nez v4, :cond_23

    move-object/from16 p1, v1

    move-object v1, v2

    goto/16 :goto_25

    :cond_23
    move-object/from16 v4, v30

    iget-object v5, v4, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v3}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object v5, v4, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v5, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_38

    instance-of v7, v5, Landroidx/collection/MutableScatterSet;

    if-eqz v7, :cond_31

    check-cast v5, Landroidx/collection/MutableScatterSet;

    iget-object v7, v5, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v5, v5, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v8, v5

    const/4 v10, 0x2

    sub-int/2addr v8, v10

    if-ltz v8, :cond_2f

    move/from16 v10, v17

    :goto_15
    aget-wide v11, v5, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v13, v13, v24

    cmp-long v13, v13, v24

    if-eqz v13, :cond_2e

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v15, v13, 0x8

    move/from16 v13, v17

    :goto_16
    if-ge v13, v15, :cond_2d

    const-wide/16 v20, 0xff

    and-long v30, v11, v20

    const-wide/16 v18, 0x80

    cmp-long v14, v30, v18

    if-gez v14, :cond_2c

    shl-int/lit8 v14, v10, 0x3

    add-int/2addr v14, v13

    aget-object v14, v7, v14

    check-cast v14, Landroidx/compose/runtime/DerivedSnapshotState;

    move-object/from16 p1, v1

    move-object/from16 v1, v38

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v30, v4

    iget-object v4, v14, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-object/from16 v28, v5

    if-nez v4, :cond_24

    move-object/from16 v4, v29

    :cond_24
    invoke-virtual {v14}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v5

    iget-object v5, v5, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-interface {v4, v5, v1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, v2, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, v14}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    instance-of v4, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v4, :cond_29

    check-cast v1, Landroidx/collection/MutableScatterSet;

    iget-object v4, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v5, v1

    const/4 v14, 0x2

    sub-int/2addr v5, v14

    if-ltz v5, :cond_28

    move-object/from16 v39, v2

    move-object/from16 v31, v3

    move/from16 v14, v17

    :goto_17
    aget-wide v2, v1, v14

    move-object/from16 v41, v0

    move-object/from16 v32, v1

    not-long v0, v2

    const/16 v26, 0x7

    shl-long v0, v0, v26

    and-long/2addr v0, v2

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v0, v0, v24

    cmp-long v0, v0, v24

    if-eqz v0, :cond_27

    sub-int v0, v14, v5

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    move/from16 v1, v17

    :goto_18
    if-ge v1, v0, :cond_26

    const-wide/16 v20, 0xff

    and-long v33, v2, v20

    const-wide/16 v18, 0x80

    cmp-long v33, v33, v18

    if-gez v33, :cond_25

    shl-int/lit8 v23, v14, 0x3

    add-int v23, v23, v1

    move-object/from16 v33, v7

    aget-object v7, v4, v23

    invoke-virtual {v9, v7}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v23, v16

    :goto_19
    const/16 v7, 0x8

    goto :goto_1a

    :cond_25
    move-object/from16 v33, v7

    goto :goto_19

    :goto_1a
    shr-long/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v7, v33

    goto :goto_18

    :cond_26
    move-object/from16 v33, v7

    const/16 v7, 0x8

    if-ne v0, v7, :cond_2b

    goto :goto_1b

    :cond_27
    move-object/from16 v33, v7

    :goto_1b
    if-eq v14, v5, :cond_2b

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v32

    move-object/from16 v7, v33

    move-object/from16 v0, v41

    goto :goto_17

    :cond_28
    move-object/from16 v41, v0

    move-object/from16 v39, v2

    move-object/from16 v31, v3

    goto :goto_1d

    :cond_29
    move-object/from16 v41, v0

    move-object/from16 v39, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v7

    invoke-virtual {v9, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v23, v16

    goto :goto_1c

    :cond_2a
    move-object/from16 v41, v0

    move-object/from16 v39, v2

    move-object/from16 v31, v3

    move-object/from16 v33, v7

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_2b
    :goto_1c
    const/16 v0, 0x8

    goto :goto_1e

    :cond_2c
    move-object/from16 v41, v0

    move-object/from16 p1, v1

    move-object/from16 v39, v2

    move-object/from16 v31, v3

    move-object/from16 v30, v4

    move-object/from16 v28, v5

    :goto_1d
    move-object/from16 v33, v7

    goto :goto_1c

    :goto_1e
    shr-long/2addr v11, v0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v28

    move-object/from16 v4, v30

    move-object/from16 v3, v31

    move-object/from16 v7, v33

    move-object/from16 v2, v39

    move-object/from16 v0, v41

    goto/16 :goto_16

    :cond_2d
    move-object/from16 v41, v0

    move-object/from16 p1, v1

    move-object/from16 v39, v2

    move-object/from16 v31, v3

    move-object/from16 v30, v4

    move-object/from16 v28, v5

    move-object/from16 v33, v7

    const/16 v0, 0x8

    if-ne v15, v0, :cond_30

    goto :goto_1f

    :cond_2e
    move-object/from16 v41, v0

    move-object/from16 p1, v1

    move-object/from16 v39, v2

    move-object/from16 v31, v3

    move-object/from16 v30, v4

    move-object/from16 v28, v5

    move-object/from16 v33, v7

    :goto_1f
    if-eq v10, v8, :cond_30

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v5, v28

    move-object/from16 v4, v30

    move-object/from16 v3, v31

    move-object/from16 v7, v33

    move-object/from16 v2, v39

    move-object/from16 v0, v41

    goto/16 :goto_15

    :cond_2f
    move-object/from16 v41, v0

    move-object/from16 p1, v1

    move-object/from16 v39, v2

    move-object/from16 v31, v3

    move-object/from16 v30, v4

    :cond_30
    move-object/from16 v1, v39

    move-object/from16 v0, v41

    goto/16 :goto_22

    :cond_31
    move-object/from16 v41, v0

    move-object/from16 p1, v1

    move-object/from16 v39, v2

    move-object/from16 v31, v3

    move-object/from16 v30, v4

    check-cast v5, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v5, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    if-nez v2, :cond_32

    move-object/from16 v2, v29

    :cond_32
    invoke-virtual {v5}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    move-object/from16 v1, v39

    iget-object v2, v1, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v5}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_39

    instance-of v3, v2, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_36

    check-cast v2, Landroidx/collection/MutableScatterSet;

    iget-object v3, v2, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v4, v2

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ltz v4, :cond_39

    move/from16 v5, v17

    :goto_20
    aget-wide v7, v2, v5

    not-long v10, v7

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_35

    sub-int v10, v5, v4

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v15, v10, 0x8

    move/from16 v10, v17

    :goto_21
    if-ge v10, v15, :cond_34

    const-wide/16 v11, 0xff

    and-long v13, v7, v11

    const-wide/16 v11, 0x80

    cmp-long v13, v13, v11

    if-gez v13, :cond_33

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget-object v11, v3, v11

    invoke-virtual {v9, v11}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v23, v16

    :cond_33
    const/16 v11, 0x8

    shr-long/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_34
    const/16 v11, 0x8

    if-ne v15, v11, :cond_39

    :cond_35
    if-eq v5, v4, :cond_39

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_36
    invoke-virtual {v9, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v23, v16

    goto :goto_22

    :cond_37
    move-object/from16 v1, v39

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_22

    :cond_38
    move-object/from16 p1, v1

    move-object v1, v2

    move-object/from16 v31, v3

    move-object/from16 v30, v4

    :cond_39
    :goto_22
    iget-object v2, v1, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    move-object/from16 v3, v31

    invoke-virtual {v2, v3}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3e

    instance-of v3, v2, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_3d

    check-cast v2, Landroidx/collection/MutableScatterSet;

    iget-object v3, v2, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v4, v2

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    if-ltz v4, :cond_3e

    move/from16 v5, v17

    :goto_23
    aget-wide v7, v2, v5

    not-long v10, v7

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3c

    sub-int v10, v5, v4

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v15, v10, 0x8

    move/from16 v10, v17

    :goto_24
    if-ge v10, v15, :cond_3b

    const-wide/16 v11, 0xff

    and-long v13, v7, v11

    const-wide/16 v11, 0x80

    cmp-long v13, v13, v11

    if-gez v13, :cond_3a

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget-object v11, v3, v11

    invoke-virtual {v9, v11}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v23, v16

    :cond_3a
    const/16 v11, 0x8

    shr-long/2addr v7, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    :cond_3b
    const/16 v11, 0x8

    if-ne v15, v11, :cond_3e

    :cond_3c
    if-eq v5, v4, :cond_3e

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_3d
    invoke-virtual {v9, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v23, v16

    :cond_3e
    :goto_25
    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_14

    :goto_26
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget v0, v6, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v0, :cond_49

    iget-object v2, v6, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    move/from16 v3, v17

    :goto_27
    aget-object v4, v2, v3

    check-cast v4, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v5

    iget-object v7, v1, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v7, v4}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_46

    instance-of v8, v7, Landroidx/collection/MutableScatterSet;

    move-object/from16 v9, p0

    iget-object v10, v9, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    if-eqz v8, :cond_44

    check-cast v7, Landroidx/collection/MutableScatterSet;

    iget-object v8, v7, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v7, v7, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v11, v7

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    if-ltz v11, :cond_43

    move/from16 v13, v17

    :goto_28
    aget-wide v14, v7, v13

    move/from16 p1, v13

    not-long v12, v14

    const/16 v16, 0x7

    shl-long v12, v12, v16

    and-long/2addr v12, v14

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v12, v12, v24

    cmp-long v12, v12, v24

    if-eqz v12, :cond_42

    sub-int v13, p1, v11

    not-int v12, v13

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    move/from16 v13, v17

    :goto_29
    if-ge v13, v12, :cond_41

    const-wide/16 v20, 0xff

    and-long v28, v14, v20

    const-wide/16 v18, 0x80

    cmp-long v26, v28, v18

    if-gez v26, :cond_40

    shl-int/lit8 v26, p1, 0x3

    add-int v26, v26, v13

    move-object/from16 v39, v1

    aget-object v1, v8, v26

    invoke-virtual {v10, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v28, v2

    if-nez v26, :cond_3f

    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v2}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    invoke-virtual {v10, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2a

    :cond_3f
    move-object/from16 v2, v26

    :goto_2a
    invoke-virtual {v9, v4, v5, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    :goto_2b
    const/16 v1, 0x8

    goto :goto_2c

    :cond_40
    move-object/from16 v39, v1

    move-object/from16 v28, v2

    goto :goto_2b

    :goto_2c
    shr-long/2addr v14, v1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v28

    move-object/from16 v1, v39

    goto :goto_29

    :cond_41
    move-object/from16 v39, v1

    move-object/from16 v28, v2

    const/16 v1, 0x8

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    if-ne v12, v1, :cond_47

    :goto_2d
    move/from16 v2, p1

    goto :goto_2e

    :cond_42
    move-object/from16 v39, v1

    move-object/from16 v28, v2

    const/16 v1, 0x8

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    goto :goto_2d

    :goto_2e
    if-eq v2, v11, :cond_47

    add-int/lit8 v13, v2, 0x1

    move-object/from16 v2, v28

    move-object/from16 v1, v39

    const/4 v12, 0x2

    goto :goto_28

    :cond_43
    move-object/from16 v39, v1

    move-object/from16 v28, v2

    const/16 v1, 0x8

    const/16 v16, 0x7

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_2f

    :cond_44
    move-object/from16 v39, v1

    move-object/from16 v28, v2

    const/16 v1, 0x8

    const/16 v16, 0x7

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    invoke-virtual {v10, v7}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/collection/MutableObjectIntMap;

    if-nez v2, :cond_45

    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v2}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    invoke-virtual {v10, v7, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_45
    invoke-virtual {v9, v4, v5, v7, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    goto :goto_2f

    :cond_46
    move-object/from16 v39, v1

    move-object/from16 v28, v2

    const/16 v1, 0x8

    const/16 v16, 0x7

    const-wide/16 v18, 0x80

    const-wide/16 v20, 0xff

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move-object/from16 v9, p0

    :cond_47
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_48

    goto :goto_30

    :cond_48
    move-object/from16 v2, v28

    move-object/from16 v1, v39

    goto/16 :goto_27

    :cond_49
    :goto_30
    invoke-virtual {v6}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    :cond_4a
    return v23
.end method

.method public final recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    iget v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    if-lez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3, v1}, Landroidx/collection/MutableObjectIntMap;->findIndex(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    not-int v4, v4

    const/4 v6, -0x1

    goto :goto_0

    :cond_1
    iget-object v6, v3, Landroidx/collection/MutableObjectIntMap;->values:[I

    aget v6, v6, v4

    :goto_0
    iget-object v7, v3, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    aput-object v1, v7, v4

    iget-object v3, v3, Landroidx/collection/MutableObjectIntMap;->values:[I

    aput v2, v3, v4

    instance-of v3, v1, Landroidx/compose/runtime/DerivedSnapshotState;

    const/4 v4, 0x2

    if-eqz v3, :cond_6

    if-eq v6, v2, :cond_6

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v2}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    iget-object v7, v2, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->dependencies:Landroidx/collection/MutableObjectIntMap;

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope(Ljava/lang/Object;)V

    iget-object v7, v2, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v8, v2

    sub-int/2addr v8, v4

    if-ltz v8, :cond_6

    const/4 v10, 0x0

    :goto_1
    aget-wide v11, v2, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_5

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_4

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_3

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v16, v7, v16

    move-object/from16 v9, v16

    check-cast v9, Landroidx/compose/runtime/snapshots/StateObject;

    instance-of v5, v9, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v5, :cond_2

    move-object v5, v9

    check-cast v5, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    :cond_2
    invoke-virtual {v3, v9, v1}, Landroidx/compose/runtime/collection/ScopeMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    shr-long/2addr v11, v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    if-ne v13, v14, :cond_6

    :cond_5
    if-eq v10, v8, :cond_6

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, -0x1

    if-ne v6, v2, :cond_8

    instance-of v2, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v2, :cond_7

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime_release(I)V

    :cond_7
    iget-object v0, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public final removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v0, p2, p1}, Landroidx/compose/runtime/collection/ScopeMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    instance-of p1, p2, Landroidx/compose/runtime/DerivedSnapshotState;

    if-eqz p1, :cond_0

    iget-object p1, v0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p1, p2}, Landroidx/collection/MutableScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final removeScopeIf(Lkotlin/jvm/functions/Function1;)V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    iget-object v2, v1, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_a

    const/4 v5, 0x0

    :goto_0
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_9

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_8

    const-wide/16 v14, 0xff

    and-long v16, v6, v14

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_7

    shl-int/lit8 v16, v5, 0x3

    add-int v4, v16, v13

    iget-object v14, v1, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    aget-object v14, v14, v4

    iget-object v15, v1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    aget-object v15, v15, v4

    check-cast v15, Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v9, p1

    invoke-interface {v9, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_4

    iget-object v11, v15, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v12, v15, Landroidx/collection/MutableObjectIntMap;->values:[I

    iget-object v15, v15, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v10, v15

    add-int/lit8 v10, v10, -0x2

    move-object/from16 v26, v2

    if-ltz v10, :cond_3

    move/from16 v27, v8

    const/4 v2, 0x0

    :goto_2
    aget-wide v8, v15, v2

    move/from16 v28, v5

    move-wide/from16 v29, v6

    not-long v5, v8

    const/4 v7, 0x7

    shl-long/2addr v5, v7

    and-long/2addr v5, v8

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v5, v5, v23

    cmp-long v5, v5, v23

    if-eqz v5, :cond_2

    sub-int v5, v2, v10

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0x8

    rsub-int/lit8 v5, v5, 0x8

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_1

    const-wide/16 v20, 0xff

    and-long v31, v8, v20

    cmp-long v25, v31, v18

    if-gez v25, :cond_0

    shl-int/lit8 v25, v2, 0x3

    add-int v25, v25, v6

    aget-object v7, v11, v25

    aget v25, v12, v25

    invoke-virtual {v0, v14, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/16 v7, 0x8

    shr-long/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x7

    goto :goto_3

    :cond_1
    const/16 v7, 0x8

    const-wide/16 v20, 0xff

    if-ne v5, v7, :cond_5

    goto :goto_4

    :cond_2
    const-wide/16 v20, 0xff

    :goto_4
    if-eq v2, v10, :cond_5

    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v28

    move-wide/from16 v6, v29

    goto :goto_2

    :cond_3
    move/from16 v28, v5

    move-wide/from16 v29, v6

    move/from16 v27, v8

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_5

    :cond_4
    move-object/from16 v26, v2

    move/from16 v28, v5

    move-wide/from16 v29, v6

    move/from16 v27, v8

    move-wide/from16 v23, v11

    :cond_5
    :goto_5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v4}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_6
    const/16 v2, 0x8

    goto :goto_6

    :cond_7
    move-object/from16 v26, v2

    move/from16 v28, v5

    move-wide/from16 v29, v6

    move/from16 v27, v8

    move-wide/from16 v23, v11

    move v2, v9

    :goto_6
    shr-long v6, v29, v2

    add-int/lit8 v13, v13, 0x1

    move v9, v2

    move-wide/from16 v11, v23

    move-object/from16 v2, v26

    move/from16 v8, v27

    move/from16 v5, v28

    const/4 v10, 0x7

    goto/16 :goto_1

    :cond_8
    move-object/from16 v26, v2

    move/from16 v28, v5

    move v2, v9

    move v9, v8

    if-ne v9, v2, :cond_a

    move/from16 v4, v28

    goto :goto_7

    :cond_9
    move-object/from16 v26, v2

    move v4, v5

    :goto_7
    if-eq v4, v3, :cond_a

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v2, v26

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.class public final Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lkotlin/jvm/functions/Function1;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    new-instance p1, Landroidx/compose/runtime/collection/ScopeMap;

    invoke-direct {p1}, Landroidx/compose/runtime/collection/ScopeMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    new-instance p1, Landroidx/collection/MutableScatterMap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/MutableScatterMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    new-instance p1, Landroidx/collection/MutableScatterSet;

    invoke-direct {p1, v0, v1, v2}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-direct {p1, v1, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

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

    invoke-virtual {v5, v1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    sget-object v1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p2 .. p3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->observe(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
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

    iget-object v8, v7, Landroidx/collection/ObjectIntMap;->metadata:[J

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

    iget-object v15, v7, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    aget-object v15, v15, v6

    move-object/from16 v16, v8

    iget-object v8, v7, Landroidx/collection/ObjectIntMap;->values:[I

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
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    instance-of v3, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    iget-object v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    const/4 v9, 0x7

    const/4 v10, 0x2

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    iget-object v15, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    iget-object v14, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/compose/runtime/collection/ScopeMap;

    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_21

    check-cast v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    iget-object v1, v1, Landroidx/compose/runtime/collection/ScatterSetWrapper;->set:Landroidx/collection/ScatterSet;

    iget-object v3, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v6, v1

    sub-int/2addr v6, v10

    if-ltz v6, :cond_1f

    const/4 v10, 0x0

    const/16 v20, 0x0

    :goto_0
    aget-wide v7, v1, v10

    move-object/from16 v23, v14

    not-long v13, v7

    shl-long/2addr v13, v9

    and-long/2addr v13, v7

    and-long/2addr v13, v11

    cmp-long v13, v13, v11

    if-eqz v13, :cond_1e

    sub-int v13, v10, v6

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_1d

    const-wide/16 v21, 0xff

    and-long v24, v7, v21

    const-wide/16 v17, 0x80

    cmp-long v24, v24, v17

    if-gez v24, :cond_1c

    shl-int/lit8 v24, v10, 0x3

    add-int v24, v24, v14

    aget-object v11, v3, v24

    instance-of v12, v11, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v12, :cond_0

    move-object v12, v11

    check-cast v12, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    sget v24, Landroidx/compose/runtime/snapshots/ReaderKind;->$r8$clinit:I

    const/4 v9, 0x2

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v12

    if-nez v12, :cond_0

    goto/16 :goto_16

    :cond_0
    iget-object v9, v15, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v9, v11}, Landroidx/collection/ScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    iget-object v9, v15, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v9, v11}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_15

    instance-of v12, v9, Landroidx/collection/MutableScatterSet;

    if-eqz v12, :cond_e

    check-cast v9, Landroidx/collection/MutableScatterSet;

    iget-object v12, v9, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v9, v9, Landroidx/collection/ScatterSet;->metadata:[J

    move-object/from16 p1, v1

    array-length v1, v9

    const/16 v19, 0x2

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_c

    move-object/from16 v27, v3

    move/from16 v28, v13

    move/from16 v29, v14

    const/4 v3, 0x0

    :goto_2
    aget-wide v13, v9, v3

    move-object/from16 v31, v9

    move/from16 v30, v10

    not-long v9, v13

    const/16 v24, 0x7

    shl-long v9, v9, v24

    and-long/2addr v9, v13

    const-wide v25, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v9, v9, v25

    cmp-long v9, v9, v25

    if-eqz v9, :cond_b

    sub-int v9, v3, v1

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_a

    const-wide/16 v21, 0xff

    and-long v32, v13, v21

    const-wide/16 v17, 0x80

    cmp-long v32, v32, v17

    if-gez v32, :cond_9

    shl-int/lit8 v32, v3, 0x3

    add-int v32, v32, v10

    aget-object v32, v12, v32

    move-object/from16 v33, v12

    move-object/from16 v12, v32

    check-cast v12, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v32, v15

    iget-object v15, v12, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    if-nez v15, :cond_1

    sget-object v15, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    :cond_1
    move/from16 v34, v6

    invoke-virtual {v12}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v6

    iget-object v6, v6, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-interface {v15, v6, v0}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object/from16 v0, v23

    iget-object v6, v0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v6, v12}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    instance-of v12, v6, Landroidx/collection/MutableScatterSet;

    if-eqz v12, :cond_6

    check-cast v6, Landroidx/collection/MutableScatterSet;

    iget-object v12, v6, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v6, v6, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v15, v6

    const/16 v19, 0x2

    add-int/lit8 v15, v15, -0x2

    if-ltz v15, :cond_5

    move-object/from16 v23, v0

    move-wide/from16 v35, v7

    const/4 v7, 0x0

    move v8, v1

    :goto_4
    aget-wide v0, v6, v7

    move-object/from16 v37, v2

    move/from16 v38, v3

    not-long v2, v0

    const/16 v24, 0x7

    shl-long v2, v2, v24

    and-long/2addr v2, v0

    const-wide v25, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v25

    cmp-long v2, v2, v25

    if-eqz v2, :cond_4

    sub-int v2, v7, v15

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x8

    rsub-int/lit8 v2, v2, 0x8

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_3

    const-wide/16 v21, 0xff

    and-long v39, v0, v21

    const-wide/16 v17, 0x80

    cmp-long v39, v39, v17

    if-gez v39, :cond_2

    shl-int/lit8 v20, v7, 0x3

    add-int v20, v20, v3

    move-object/from16 v39, v6

    aget-object v6, v12, v20

    invoke-virtual {v5, v6}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v6, 0x8

    const/16 v20, 0x1

    goto :goto_6

    :cond_2
    move-object/from16 v39, v6

    const/16 v6, 0x8

    :goto_6
    shr-long/2addr v0, v6

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v39

    goto :goto_5

    :cond_3
    move-object/from16 v39, v6

    const/16 v6, 0x8

    const/16 v16, 0x1

    if-ne v2, v6, :cond_8

    goto :goto_7

    :cond_4
    move-object/from16 v39, v6

    const/16 v16, 0x1

    :goto_7
    if-eq v7, v15, :cond_8

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v6, v39

    goto :goto_4

    :cond_5
    move-object/from16 v23, v0

    move-object/from16 v37, v2

    move/from16 v38, v3

    move-wide/from16 v35, v7

    goto :goto_9

    :cond_6
    move-object/from16 v23, v0

    move-object/from16 v37, v2

    move/from16 v38, v3

    move-wide/from16 v35, v7

    move v8, v1

    invoke-virtual {v5, v6}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    goto :goto_8

    :cond_7
    move-object/from16 v37, v2

    move/from16 v38, v3

    move-wide/from16 v35, v7

    move v8, v1

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_8
    :goto_8
    const/16 v0, 0x8

    goto :goto_a

    :cond_9
    move-object/from16 v37, v2

    move/from16 v38, v3

    move/from16 v34, v6

    move-wide/from16 v35, v7

    move-object/from16 v33, v12

    move-object/from16 v32, v15

    :goto_9
    move v8, v1

    goto :goto_8

    :goto_a
    shr-long/2addr v13, v0

    const/4 v1, 0x1

    add-int/2addr v10, v1

    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v15, v32

    move-object/from16 v12, v33

    move/from16 v6, v34

    move-wide/from16 v7, v35

    move-object/from16 v2, v37

    move/from16 v3, v38

    goto/16 :goto_3

    :cond_a
    move-object/from16 v37, v2

    move/from16 v38, v3

    move/from16 v34, v6

    move-wide/from16 v35, v7

    move-object/from16 v33, v12

    move-object/from16 v32, v15

    const/16 v0, 0x8

    move v8, v1

    const/4 v1, 0x1

    if-ne v9, v0, :cond_d

    move/from16 v0, v38

    goto :goto_b

    :cond_b
    move-object/from16 v37, v2

    move/from16 v34, v6

    move-wide/from16 v35, v7

    move-object/from16 v33, v12

    move-object/from16 v32, v15

    move v8, v1

    const/4 v1, 0x1

    move v0, v3

    :goto_b
    if-eq v0, v8, :cond_d

    add-int/lit8 v3, v0, 0x1

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v10, v30

    move-object/from16 v9, v31

    move-object/from16 v15, v32

    move-object/from16 v12, v33

    move/from16 v6, v34

    move-wide/from16 v7, v35

    move-object/from16 v2, v37

    goto/16 :goto_2

    :cond_c
    move-object/from16 v37, v2

    move-object/from16 v27, v3

    move/from16 v34, v6

    move-wide/from16 v35, v7

    move/from16 v30, v10

    move/from16 v28, v13

    move/from16 v29, v14

    move-object/from16 v32, v15

    :cond_d
    move-object/from16 v2, v23

    move-object/from16 v0, v37

    goto/16 :goto_10

    :cond_e
    move-object/from16 p1, v1

    move-object/from16 v37, v2

    move-object/from16 v27, v3

    move/from16 v34, v6

    move-wide/from16 v35, v7

    move/from16 v30, v10

    move/from16 v28, v13

    move/from16 v29, v14

    move-object/from16 v32, v15

    check-cast v9, Landroidx/compose/runtime/DerivedSnapshotState;

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    if-nez v2, :cond_f

    sget-object v2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    :cond_f
    invoke-virtual {v9}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    move-object/from16 v2, v23

    iget-object v1, v2, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, v9}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    instance-of v3, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_13

    check-cast v1, Landroidx/collection/MutableScatterSet;

    iget-object v3, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v6, v1

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    if-ltz v6, :cond_16

    const/4 v7, 0x0

    :goto_c
    aget-wide v8, v1, v7

    not-long v12, v8

    const/4 v10, 0x7

    shl-long/2addr v12, v10

    and-long/2addr v12, v8

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v10, v12, v14

    if-eqz v10, :cond_12

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v13, v10, 0x8

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v13, :cond_11

    const-wide/16 v14, 0xff

    and-long v37, v8, v14

    const-wide/16 v14, 0x80

    cmp-long v12, v37, v14

    if-gez v12, :cond_10

    shl-int/lit8 v12, v7, 0x3

    add-int/2addr v12, v10

    aget-object v12, v3, v12

    invoke-virtual {v5, v12}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v12, 0x8

    const/16 v20, 0x1

    goto :goto_e

    :cond_10
    const/16 v12, 0x8

    :goto_e
    shr-long/2addr v8, v12

    const/4 v14, 0x1

    add-int/2addr v10, v14

    goto :goto_d

    :cond_11
    const/16 v12, 0x8

    const/4 v14, 0x1

    if-ne v13, v12, :cond_16

    goto :goto_f

    :cond_12
    const/4 v14, 0x1

    :goto_f
    if-eq v7, v6, :cond_16

    add-int/2addr v7, v14

    goto :goto_c

    :cond_13
    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    goto :goto_10

    :cond_14
    move-object/from16 v2, v23

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_10

    :cond_15
    move-object/from16 p1, v1

    move-object v0, v2

    move-object/from16 v27, v3

    move/from16 v34, v6

    move-wide/from16 v35, v7

    move/from16 v30, v10

    move/from16 v28, v13

    move/from16 v29, v14

    move-object/from16 v32, v15

    move-object/from16 v2, v23

    :cond_16
    :goto_10
    iget-object v1, v2, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1, v11}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1b

    instance-of v3, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v3, :cond_1a

    check-cast v1, Landroidx/collection/MutableScatterSet;

    iget-object v3, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v6, v1

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    if-ltz v6, :cond_1b

    const/4 v7, 0x0

    :goto_11
    aget-wide v8, v1, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_19

    sub-int v10, v7, v6

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v13, v10, 0x8

    const/4 v10, 0x0

    :goto_12
    if-ge v10, v13, :cond_18

    const-wide/16 v11, 0xff

    and-long v14, v8, v11

    const-wide/16 v11, 0x80

    cmp-long v14, v14, v11

    if-gez v14, :cond_17

    shl-int/lit8 v11, v7, 0x3

    add-int/2addr v11, v10

    aget-object v11, v3, v11

    invoke-virtual {v5, v11}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v11, 0x8

    const/16 v20, 0x1

    goto :goto_13

    :cond_17
    const/16 v11, 0x8

    :goto_13
    shr-long/2addr v8, v11

    const/4 v12, 0x1

    add-int/2addr v10, v12

    goto :goto_12

    :cond_18
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ne v13, v11, :cond_1b

    goto :goto_14

    :cond_19
    const/4 v12, 0x1

    :goto_14
    if-eq v7, v6, :cond_1b

    add-int/2addr v7, v12

    goto :goto_11

    :cond_1a
    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    :cond_1b
    :goto_15
    const/16 v1, 0x8

    goto :goto_17

    :cond_1c
    :goto_16
    move-object/from16 p1, v1

    move-object v0, v2

    move-object/from16 v27, v3

    move/from16 v34, v6

    move-wide/from16 v35, v7

    move/from16 v30, v10

    move/from16 v28, v13

    move/from16 v29, v14

    move-object/from16 v32, v15

    move-object/from16 v2, v23

    goto :goto_15

    :goto_17
    shr-long v7, v35, v1

    const/4 v3, 0x1

    add-int/lit8 v14, v29, 0x1

    move-object/from16 v1, p1

    move-object/from16 v23, v2

    move-object/from16 v3, v27

    move/from16 v13, v28

    move/from16 v10, v30

    move-object/from16 v15, v32

    move/from16 v6, v34

    const/4 v9, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move-object v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_1d
    move-object/from16 p1, v1

    move-object v0, v2

    move-object/from16 v27, v3

    move/from16 v34, v6

    move/from16 v30, v10

    move-object/from16 v32, v15

    move-object/from16 v2, v23

    const/16 v1, 0x8

    const/4 v3, 0x1

    if-ne v13, v1, :cond_20

    move/from16 v1, v30

    move/from16 v6, v34

    goto :goto_18

    :cond_1e
    move-object/from16 p1, v1

    move-object v0, v2

    move-object/from16 v27, v3

    move-object/from16 v32, v15

    move-object/from16 v2, v23

    const/4 v3, 0x1

    move v1, v10

    :goto_18
    if-eq v1, v6, :cond_20

    add-int/lit8 v10, v1, 0x1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object/from16 v3, v27

    move-object/from16 v15, v32

    const/4 v9, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move-object v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_1f
    move-object v2, v14

    const/16 v20, 0x0

    :cond_20
    move-object v1, v2

    goto/16 :goto_2c

    :cond_21
    move-object v0, v2

    move-object v2, v14

    move-object/from16 v32, v15

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v7, :cond_22

    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    sget v8, Landroidx/compose/runtime/snapshots/ReaderKind;->$r8$clinit:I

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime_release(I)Z

    move-result v7

    if-nez v7, :cond_22

    move-object/from16 p1, v1

    move-object v1, v2

    goto/16 :goto_2b

    :cond_22
    move-object/from16 v7, v32

    iget-object v8, v7, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v6}, Landroidx/collection/ScatterMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_37

    iget-object v8, v7, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v6}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_37

    instance-of v9, v8, Landroidx/collection/MutableScatterSet;

    if-eqz v9, :cond_30

    check-cast v8, Landroidx/collection/MutableScatterSet;

    iget-object v9, v8, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v8, v8, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v10, v8

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    if-ltz v10, :cond_2e

    const/4 v11, 0x0

    :goto_1a
    aget-wide v12, v8, v11

    not-long v14, v12

    const/16 v20, 0x7

    shl-long v14, v14, v20

    and-long/2addr v14, v12

    const-wide v25, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v25

    cmp-long v14, v14, v25

    if-eqz v14, :cond_2d

    sub-int v14, v11, v10

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    move v15, v3

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v14, :cond_2c

    const-wide/16 v20, 0xff

    and-long v27, v12, v20

    const-wide/16 v17, 0x80

    cmp-long v20, v27, v17

    if-gez v20, :cond_2b

    shl-int/lit8 v20, v11, 0x3

    add-int v20, v20, v3

    aget-object v20, v9, v20

    move-object/from16 p1, v1

    move-object/from16 v1, v20

    check-cast v1, Landroidx/compose/runtime/DerivedSnapshotState;

    move-object/from16 v32, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v20, v8

    iget-object v8, v1, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    if-nez v8, :cond_23

    sget-object v8, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    :cond_23
    move-object/from16 v23, v9

    invoke-virtual {v1}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v9

    iget-object v9, v9, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-interface {v8, v9, v7}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    iget-object v7, v2, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v7, v1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    instance-of v7, v1, Landroidx/collection/MutableScatterSet;

    if-eqz v7, :cond_28

    check-cast v1, Landroidx/collection/MutableScatterSet;

    iget-object v7, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v8, v1

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    if-ltz v8, :cond_27

    move/from16 v27, v10

    move/from16 v28, v11

    const/4 v9, 0x0

    :goto_1c
    aget-wide v10, v1, v9

    move-object/from16 v30, v1

    move-object/from16 v29, v2

    not-long v1, v10

    const/16 v24, 0x7

    shl-long v1, v1, v24

    and-long/2addr v1, v10

    const-wide v25, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v1, v1, v25

    cmp-long v1, v1, v25

    if-eqz v1, :cond_26

    sub-int v1, v9, v8

    not-int v1, v1

    ushr-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_25

    const-wide/16 v21, 0xff

    and-long v33, v10, v21

    const-wide/16 v17, 0x80

    cmp-long v31, v33, v17

    if-gez v31, :cond_24

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v2

    aget-object v15, v7, v15

    invoke-virtual {v5, v15}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v31, v7

    const/16 v7, 0x8

    const/4 v15, 0x1

    goto :goto_1e

    :cond_24
    move-object/from16 v31, v7

    const/16 v7, 0x8

    :goto_1e
    shr-long/2addr v10, v7

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, v31

    goto :goto_1d

    :cond_25
    move-object/from16 v31, v7

    const/16 v7, 0x8

    const/16 v16, 0x1

    if-ne v1, v7, :cond_2a

    goto :goto_1f

    :cond_26
    move-object/from16 v31, v7

    const/16 v16, 0x1

    :goto_1f
    if-eq v9, v8, :cond_2a

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v29

    move-object/from16 v1, v30

    move-object/from16 v7, v31

    goto :goto_1c

    :cond_27
    move-object/from16 v29, v2

    goto :goto_21

    :cond_28
    move-object/from16 v29, v2

    move/from16 v27, v10

    move/from16 v28, v11

    invoke-virtual {v5, v1}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto :goto_20

    :cond_29
    move-object/from16 v29, v2

    move/from16 v27, v10

    move/from16 v28, v11

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_2a
    :goto_20
    const/16 v1, 0x8

    goto :goto_22

    :cond_2b
    move-object/from16 p1, v1

    move-object/from16 v29, v2

    move-object/from16 v32, v7

    move-object/from16 v20, v8

    move-object/from16 v23, v9

    :goto_21
    move/from16 v27, v10

    move/from16 v28, v11

    goto :goto_20

    :goto_22
    shr-long/2addr v12, v1

    const/4 v2, 0x1

    add-int/2addr v3, v2

    move-object/from16 v1, p1

    move-object/from16 v8, v20

    move-object/from16 v9, v23

    move/from16 v10, v27

    move/from16 v11, v28

    move-object/from16 v2, v29

    move-object/from16 v7, v32

    goto/16 :goto_1b

    :cond_2c
    move-object/from16 p1, v1

    move-object/from16 v29, v2

    move-object/from16 v32, v7

    move-object/from16 v20, v8

    move-object/from16 v23, v9

    move/from16 v27, v10

    move/from16 v28, v11

    const/16 v1, 0x8

    const/4 v2, 0x1

    move v3, v15

    if-ne v14, v1, :cond_2f

    move/from16 v10, v27

    move/from16 v1, v28

    goto :goto_23

    :cond_2d
    move-object/from16 p1, v1

    move-object/from16 v29, v2

    move-object/from16 v32, v7

    move-object/from16 v20, v8

    move-object/from16 v23, v9

    const/4 v2, 0x1

    move v1, v11

    :goto_23
    if-eq v1, v10, :cond_2f

    add-int/lit8 v11, v1, 0x1

    move-object/from16 v1, p1

    move-object/from16 v8, v20

    move-object/from16 v9, v23

    move-object/from16 v2, v29

    move-object/from16 v7, v32

    goto/16 :goto_1a

    :cond_2e
    move-object/from16 p1, v1

    move-object/from16 v29, v2

    move-object/from16 v32, v7

    :cond_2f
    move-object/from16 v1, v29

    goto/16 :goto_27

    :cond_30
    move-object/from16 p1, v1

    move-object/from16 v29, v2

    move-object/from16 v32, v7

    check-cast v8, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v8, Landroidx/compose/runtime/DerivedSnapshotState;->policy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    if-nez v2, :cond_31

    sget-object v2, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    :cond_31
    invoke-virtual {v8}, Landroidx/compose/runtime/DerivedSnapshotState;->getCurrentRecord()Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;

    move-result-object v7

    iget-object v7, v7, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->result:Ljava/lang/Object;

    invoke-interface {v2, v7, v1}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    move-object/from16 v1, v29

    iget-object v2, v1, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v8}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_38

    instance-of v7, v2, Landroidx/collection/MutableScatterSet;

    if-eqz v7, :cond_35

    check-cast v2, Landroidx/collection/MutableScatterSet;

    iget-object v7, v2, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v8, v2

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    if-ltz v8, :cond_38

    const/4 v9, 0x0

    :goto_24
    aget-wide v10, v2, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_34

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    move v13, v3

    const/4 v3, 0x0

    :goto_25
    if-ge v3, v12, :cond_33

    const-wide/16 v14, 0xff

    and-long v27, v10, v14

    const-wide/16 v14, 0x80

    cmp-long v20, v27, v14

    if-gez v20, :cond_32

    shl-int/lit8 v13, v9, 0x3

    add-int/2addr v13, v3

    aget-object v13, v7, v13

    invoke-virtual {v5, v13}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    :cond_32
    const/16 v14, 0x8

    shr-long/2addr v10, v14

    const/4 v15, 0x1

    add-int/2addr v3, v15

    goto :goto_25

    :cond_33
    const/16 v14, 0x8

    const/4 v15, 0x1

    move v3, v13

    if-ne v12, v14, :cond_38

    goto :goto_26

    :cond_34
    const/4 v15, 0x1

    :goto_26
    if-eq v9, v8, :cond_38

    add-int/2addr v9, v15

    goto :goto_24

    :cond_35
    invoke-virtual {v5, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_27

    :cond_36
    move-object/from16 v1, v29

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_27

    :cond_37
    move-object/from16 p1, v1

    move-object v1, v2

    move-object/from16 v32, v7

    :cond_38
    :goto_27
    iget-object v2, v1, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v6}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3d

    instance-of v6, v2, Landroidx/collection/MutableScatterSet;

    if-eqz v6, :cond_3c

    check-cast v2, Landroidx/collection/MutableScatterSet;

    iget-object v6, v2, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v7, v2

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    if-ltz v7, :cond_3d

    const/4 v8, 0x0

    :goto_28
    aget-wide v9, v2, v8

    not-long v11, v9

    const/4 v13, 0x7

    shl-long/2addr v11, v13

    and-long/2addr v11, v9

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v11, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_3b

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v12, 0x8

    rsub-int/lit8 v13, v11, 0x8

    move v11, v3

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v13, :cond_3a

    const-wide/16 v14, 0xff

    and-long v27, v9, v14

    const-wide/16 v14, 0x80

    cmp-long v12, v27, v14

    if-gez v12, :cond_39

    shl-int/lit8 v11, v8, 0x3

    add-int/2addr v11, v3

    aget-object v11, v6, v11

    invoke-virtual {v5, v11}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x1

    :cond_39
    const/16 v12, 0x8

    shr-long/2addr v9, v12

    const/4 v14, 0x1

    add-int/2addr v3, v14

    goto :goto_29

    :cond_3a
    const/16 v12, 0x8

    const/4 v14, 0x1

    move v3, v11

    if-ne v13, v12, :cond_3d

    goto :goto_2a

    :cond_3b
    const/4 v14, 0x1

    :goto_2a
    if-eq v8, v7, :cond_3d

    add-int/2addr v8, v14

    goto :goto_28

    :cond_3c
    invoke-virtual {v5, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_3d
    :goto_2b
    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_19

    :cond_3e
    move-object v1, v2

    move/from16 v20, v3

    :goto_2c
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget v0, v4, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v0, :cond_49

    iget-object v2, v4, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_2d
    aget-object v5, v2, v3

    check-cast v5, Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v6

    iget-object v7, v1, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v7, v5}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_47

    instance-of v8, v7, Landroidx/collection/MutableScatterSet;

    move-object/from16 v10, p0

    iget-object v11, v10, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    if-eqz v8, :cond_45

    check-cast v7, Landroidx/collection/MutableScatterSet;

    iget-object v8, v7, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v7, v7, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v12, v7

    const/4 v13, 0x2

    sub-int/2addr v12, v13

    if-ltz v12, :cond_43

    const/4 v14, 0x0

    :goto_2e
    aget-wide v9, v7, v14

    move v15, v14

    not-long v13, v9

    const/16 v23, 0x7

    shl-long v13, v13, v23

    and-long/2addr v13, v9

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v13, v13, v24

    cmp-long v13, v13, v24

    if-eqz v13, :cond_42

    sub-int v14, v15, v12

    not-int v13, v14

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_2f
    if-ge v14, v13, :cond_41

    const-wide/16 v21, 0xff

    and-long v26, v9, v21

    const-wide/16 v17, 0x80

    cmp-long v26, v26, v17

    if-gez v26, :cond_40

    shl-int/lit8 v26, v15, 0x3

    add-int v26, v26, v14

    move-object/from16 v29, v1

    aget-object v1, v8, v26

    invoke-virtual {v11, v1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v27, v2

    if-nez v26, :cond_3f

    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v16, v7

    move-object/from16 v28, v8

    move/from16 v30, v15

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v15, 0x0

    invoke-direct {v2, v7, v8, v15}, Landroidx/collection/MutableObjectIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v15, p0

    goto :goto_30

    :cond_3f
    move-object/from16 v16, v7

    move-object/from16 v28, v8

    move/from16 v30, v15

    const/4 v8, 0x1

    move-object/from16 v15, p0

    move-object/from16 v2, v26

    :goto_30
    invoke-virtual {v15, v5, v6, v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    :goto_31
    const/16 v1, 0x8

    goto :goto_32

    :cond_40
    move-object/from16 v29, v1

    move-object/from16 v27, v2

    move-object/from16 v16, v7

    move-object/from16 v28, v8

    move/from16 v30, v15

    const/4 v8, 0x1

    move-object/from16 v15, p0

    goto :goto_31

    :goto_32
    shr-long/2addr v9, v1

    add-int/2addr v14, v8

    move-object/from16 v7, v16

    move-object/from16 v2, v27

    move-object/from16 v8, v28

    move-object/from16 v1, v29

    move/from16 v15, v30

    goto :goto_2f

    :cond_41
    const-wide/16 v17, 0x80

    const-wide/16 v21, 0xff

    move-object/from16 v29, v1

    move-object/from16 v27, v2

    move-object/from16 v16, v7

    move-object/from16 v28, v8

    move/from16 v30, v15

    const/4 v8, 0x1

    const/16 v1, 0x8

    move-object/from16 v15, p0

    if-ne v13, v1, :cond_44

    :goto_33
    move/from16 v2, v30

    goto :goto_34

    :cond_42
    const-wide/16 v17, 0x80

    const-wide/16 v21, 0xff

    move-object/from16 v29, v1

    move-object/from16 v27, v2

    move-object/from16 v16, v7

    move-object/from16 v28, v8

    move/from16 v30, v15

    const/4 v8, 0x1

    const/16 v1, 0x8

    move-object/from16 v15, p0

    goto :goto_33

    :goto_34
    if-eq v2, v12, :cond_44

    add-int/lit8 v14, v2, 0x1

    move-object/from16 v7, v16

    move-object/from16 v2, v27

    move-object/from16 v8, v28

    move-object/from16 v1, v29

    const/4 v13, 0x2

    goto/16 :goto_2e

    :cond_43
    move-object/from16 v29, v1

    move-object/from16 v27, v2

    move-object v15, v10

    const/16 v1, 0x8

    const/4 v8, 0x1

    const-wide/16 v17, 0x80

    const-wide/16 v21, 0xff

    const/16 v23, 0x7

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    :cond_44
    const/4 v9, 0x0

    goto :goto_36

    :cond_45
    move-object/from16 v29, v1

    move-object/from16 v27, v2

    move-object v15, v10

    const/16 v1, 0x8

    const/4 v8, 0x1

    const-wide/16 v17, 0x80

    const-wide/16 v21, 0xff

    const/16 v23, 0x7

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    invoke-virtual {v11, v7}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/collection/MutableObjectIntMap;

    if-nez v2, :cond_46

    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v2, v9, v8, v10}, Landroidx/collection/MutableObjectIntMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, v7, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_35

    :cond_46
    const/4 v9, 0x0

    :goto_35
    invoke-virtual {v15, v5, v6, v7, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    goto :goto_36

    :cond_47
    move-object/from16 v15, p0

    move-object/from16 v29, v1

    move-object/from16 v27, v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v17, 0x80

    const-wide/16 v21, 0xff

    const/16 v23, 0x7

    const-wide v24, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v1, 0x8

    :goto_36
    add-int/2addr v3, v8

    if-lt v3, v0, :cond_48

    goto :goto_37

    :cond_48
    move-object/from16 v2, v27

    move-object/from16 v1, v29

    goto/16 :goto_2d

    :cond_49
    :goto_37
    invoke-virtual {v4}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    :cond_4a
    return v20
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
    iget-object v6, v3, Landroidx/collection/ObjectIntMap;->values:[I

    aget v6, v6, v4

    :goto_0
    iget-object v7, v3, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    aput-object v1, v7, v4

    iget-object v3, v3, Landroidx/collection/ObjectIntMap;->values:[I

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

    iget-object v2, v2, Landroidx/compose/runtime/DerivedSnapshotState$ResultRecord;->dependencies:Landroidx/collection/ObjectIntMap;

    iget-object v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/compose/runtime/collection/ScopeMap;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope(Ljava/lang/Object;)V

    iget-object v7, v2, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/ObjectIntMap;->metadata:[J

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

    sget v17, Landroidx/compose/runtime/snapshots/ReaderKind;->$r8$clinit:I

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

    sget v3, Landroidx/compose/runtime/snapshots/ReaderKind;->$r8$clinit:I

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

    invoke-virtual {p1, p2}, Landroidx/collection/ScatterMap;->containsKey(Ljava/lang/Object;)Z

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

    iget-object v2, v1, Landroidx/collection/ScatterMap;->metadata:[J

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

    iget-object v14, v1, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v14, v14, v4

    iget-object v15, v1, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aget-object v15, v15, v4

    check-cast v15, Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v9, p1

    invoke-interface {v9, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_4

    iget-object v11, v15, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v12, v15, Landroidx/collection/ObjectIntMap;->values:[I

    iget-object v15, v15, Landroidx/collection/ObjectIntMap;->metadata:[J

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

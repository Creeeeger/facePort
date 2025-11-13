.class final synthetic Landroidx/compose/ui/focus/FocusInvalidationManager$scheduleInvalidation$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    iget-object v0, v0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/focus/FocusInvalidationManager;

    iget-object v1, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusPropertiesNodes:Landroidx/collection/MutableScatterSet;

    iget-object v2, v1, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v3, v1, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    const-string/jumbo v7, "visitChildren called on an unattached node"

    const/4 v12, 0x7

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    iget-object v5, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetNodes:Landroidx/collection/MutableScatterSet;

    const/16 v13, 0x8

    const/16 v17, 0x0

    if-ltz v4, :cond_1b

    move/from16 v6, v17

    :goto_0
    aget-wide v8, v3, v6

    not-long v10, v8

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    and-long/2addr v10, v14

    cmp-long v10, v10, v14

    if-eqz v10, :cond_1a

    sub-int v10, v6, v4

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    rsub-int/lit8 v10, v10, 0x8

    move/from16 v11, v17

    :goto_1
    if-ge v11, v10, :cond_19

    const-wide/16 v21, 0xff

    and-long v23, v8, v21

    const-wide/16 v19, 0x80

    cmp-long v23, v23, v19

    if-gez v23, :cond_18

    shl-int/lit8 v23, v6, 0x3

    add-int v23, v23, v11

    aget-object v23, v2, v23

    check-cast v23, Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    move-object/from16 v14, v23

    check-cast v14, Landroidx/compose/ui/Modifier$Node;

    iget-object v15, v14, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v12, v15, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v12, :cond_16

    const/4 v12, 0x0

    :goto_2
    if-eqz v15, :cond_8

    instance-of v13, v15, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v13, :cond_1

    check-cast v15, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v5, v15}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    goto :goto_7

    :cond_1
    iget v13, v15, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_0

    instance-of v13, v15, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v13, :cond_0

    move-object v13, v15

    check-cast v13, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v13, v13, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v25, v2

    move/from16 v2, v17

    :goto_3
    if-eqz v13, :cond_6

    move-object/from16 v26, v3

    iget v3, v13, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object v15, v13

    goto :goto_5

    :cond_2
    if-nez v12, :cond_3

    new-instance v12, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v27, v2

    const/16 v3, 0x10

    new-array v2, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v12, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    move/from16 v27, v2

    :goto_4
    if-eqz v15, :cond_4

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/4 v15, 0x0

    :cond_4
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move/from16 v2, v27

    :cond_5
    :goto_5
    iget-object v13, v13, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v3, v26

    goto :goto_3

    :cond_6
    move-object/from16 v26, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    :goto_6
    move-object/from16 v2, v25

    move-object/from16 v3, v26

    const/16 v13, 0x8

    goto :goto_2

    :cond_7
    :goto_7
    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    goto :goto_6

    :cond_8
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    iget-object v2, v14, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v3, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v3, :cond_15

    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v12, 0x10

    new-array v13, v12, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v13}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iget-object v12, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    if-nez v12, :cond_9

    invoke-static {v3, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_8

    :cond_9
    invoke-virtual {v3, v12}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_a
    :goto_8
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    iget v2, v3, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v12, 0x1

    sub-int/2addr v2, v12

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    iget v12, v2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v12, v12, 0x400

    if-nez v12, :cond_b

    invoke-static {v3, v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_8

    :cond_b
    :goto_9
    if-eqz v2, :cond_a

    iget v12, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v12, v12, 0x400

    if-eqz v12, :cond_14

    const/4 v12, 0x0

    :goto_a
    if-eqz v2, :cond_a

    instance-of v13, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v13, :cond_d

    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-virtual {v5, v2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object/from16 v27, v3

    goto :goto_f

    :cond_d
    iget v13, v2, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v13, v13, 0x400

    if-eqz v13, :cond_c

    instance-of v13, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v13, :cond_c

    move-object v13, v2

    check-cast v13, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v13, v13, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move/from16 v14, v17

    :goto_b
    if-eqz v13, :cond_12

    iget v15, v13, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v15, v15, 0x400

    if-eqz v15, :cond_11

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    move-object/from16 v27, v3

    move-object v2, v13

    goto :goto_d

    :cond_e
    if-nez v12, :cond_f

    new-instance v12, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v27, v3

    const/16 v15, 0x10

    new-array v3, v15, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v12, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    goto :goto_c

    :cond_f
    move-object/from16 v27, v3

    :goto_c
    if-eqz v2, :cond_10

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :cond_10
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_d

    :cond_11
    move-object/from16 v27, v3

    :goto_d
    iget-object v13, v13, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v3, v27

    goto :goto_b

    :cond_12
    move-object/from16 v27, v3

    const/4 v3, 0x1

    if-ne v14, v3, :cond_13

    :goto_e
    move-object/from16 v3, v27

    goto :goto_a

    :cond_13
    :goto_f
    invoke-static {v12}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_e

    :cond_14
    move-object/from16 v27, v3

    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v3, v27

    goto :goto_9

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    :cond_17
    const/16 v2, 0x8

    goto :goto_10

    :cond_18
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move v2, v13

    :goto_10
    shr-long/2addr v8, v2

    add-int/lit8 v11, v11, 0x1

    move v13, v2

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    const/4 v12, 0x7

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto/16 :goto_1

    :cond_19
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move v2, v13

    if-ne v10, v2, :cond_1b

    goto :goto_11

    :cond_1a
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    :goto_11
    if-eq v6, v4, :cond_1b

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    const/4 v12, 0x7

    const/16 v13, 0x8

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    iget-object v2, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusEventNodes:Landroidx/collection/MutableScatterSet;

    iget-object v3, v2, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v4, v2, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v6, v4

    add-int/lit8 v6, v6, -0x2

    iget-object v8, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->focusTargetsWithInvalidatedFocusEvents:Landroidx/collection/MutableScatterSet;

    if-ltz v6, :cond_3f

    move/from16 v9, v17

    :goto_12
    aget-wide v10, v4, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3e

    sub-int v12, v9, v6

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    move/from16 v13, v17

    :goto_13
    if-ge v13, v12, :cond_3d

    const-wide/16 v14, 0xff

    and-long v25, v10, v14

    const-wide/16 v14, 0x80

    cmp-long v25, v25, v14

    if-gez v25, :cond_3c

    shl-int/lit8 v14, v9, 0x3

    add-int/2addr v14, v13

    aget-object v14, v3, v14

    check-cast v14, Landroidx/compose/ui/focus/FocusEventModifierNode;

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v25, v3

    iget-object v3, v15, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v26, v4

    iget-boolean v4, v3, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    move-object/from16 v27, v3

    sget-object v3, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    if-nez v4, :cond_1c

    invoke-interface {v14, v3}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusStateImpl;)V

    move-object/from16 v33, v0

    move-object/from16 v32, v1

    move-object/from16 v35, v2

    goto/16 :goto_27

    :cond_1c
    move/from16 v30, v17

    move-object/from16 v4, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_14
    if-eqz v4, :cond_27

    move-object/from16 v31, v3

    instance-of v3, v4, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v3, :cond_1f

    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v28, :cond_1d

    const/16 v30, 0x1

    :cond_1d
    invoke-virtual {v5, v4}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v8, v4}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v27, v17

    :cond_1e
    move-object/from16 v33, v0

    move-object/from16 v32, v1

    move-object/from16 v35, v2

    move-object/from16 v28, v4

    goto/16 :goto_19

    :cond_1f
    iget v3, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_25

    instance-of v3, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_25

    move-object v3, v4

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v3, v3, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v32, v1

    move/from16 v1, v17

    :goto_15
    if-eqz v3, :cond_24

    move-object/from16 v33, v0

    iget v0, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_23

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_20

    move-object/from16 v35, v2

    move-object v4, v3

    goto :goto_17

    :cond_20
    if-nez v29, :cond_21

    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v34, v1

    move-object/from16 v35, v2

    const/16 v1, 0x10

    new-array v2, v1, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    goto :goto_16

    :cond_21
    move/from16 v34, v1

    move-object/from16 v35, v2

    move-object/from16 v0, v29

    :goto_16
    if-eqz v4, :cond_22

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/4 v4, 0x0

    :cond_22
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object/from16 v29, v0

    move/from16 v1, v34

    goto :goto_17

    :cond_23
    move-object/from16 v35, v2

    :goto_17
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v0, v33

    move-object/from16 v2, v35

    goto :goto_15

    :cond_24
    move-object/from16 v33, v0

    move-object/from16 v35, v2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_26

    :goto_18
    move-object/from16 v3, v31

    move-object/from16 v1, v32

    move-object/from16 v0, v33

    move-object/from16 v2, v35

    goto/16 :goto_14

    :cond_25
    move-object/from16 v33, v0

    move-object/from16 v32, v1

    move-object/from16 v35, v2

    :cond_26
    :goto_19
    invoke-static/range {v29 .. v29}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_18

    :cond_27
    move-object/from16 v33, v0

    move-object/from16 v32, v1

    move-object/from16 v35, v2

    move-object/from16 v31, v3

    iget-object v0, v15, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v1, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v1, :cond_3b

    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v2, 0x10

    new-array v3, v2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    if-nez v2, :cond_28

    invoke-static {v1, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_1a

    :cond_28
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :goto_1a
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    iget v0, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    iget v2, v0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_2a

    invoke-static {v1, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    :cond_29
    move-object/from16 v16, v1

    const/4 v1, 0x1

    const/16 v15, 0x10

    goto/16 :goto_23

    :cond_2a
    :goto_1b
    if-eqz v0, :cond_29

    iget v2, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_36

    const/4 v2, 0x0

    :goto_1c
    if-eqz v0, :cond_35

    instance-of v3, v0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v3, :cond_2e

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v28, :cond_2b

    const/16 v30, 0x1

    :cond_2b
    invoke-virtual {v5, v0}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v8, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    move/from16 v27, v17

    :cond_2c
    move-object/from16 v28, v0

    :cond_2d
    move-object/from16 v16, v1

    const/4 v1, 0x1

    const/16 v15, 0x10

    goto :goto_22

    :cond_2e
    iget v3, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_2d

    instance-of v3, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_2d

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v3, v3, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move/from16 v4, v17

    :goto_1d
    if-eqz v3, :cond_33

    iget v15, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 v15, v15, 0x400

    if-eqz v15, :cond_32

    add-int/lit8 v4, v4, 0x1

    const/4 v15, 0x1

    if-ne v4, v15, :cond_2f

    move-object/from16 v16, v1

    move-object v0, v3

    :goto_1e
    const/16 v15, 0x10

    goto :goto_20

    :cond_2f
    if-nez v2, :cond_30

    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v16, v1

    const/16 v15, 0x10

    new-array v1, v15, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    goto :goto_1f

    :cond_30
    move-object/from16 v16, v1

    const/16 v15, 0x10

    :goto_1f
    if-eqz v0, :cond_31

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_31
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_20

    :cond_32
    move-object/from16 v16, v1

    goto :goto_1e

    :goto_20
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v1, v16

    goto :goto_1d

    :cond_33
    move-object/from16 v16, v1

    const/4 v1, 0x1

    const/16 v15, 0x10

    if-ne v4, v1, :cond_34

    :goto_21
    move-object/from16 v1, v16

    goto :goto_1c

    :cond_34
    :goto_22
    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_21

    :cond_35
    const/16 v15, 0x10

    goto/16 :goto_1a

    :cond_36
    move-object/from16 v16, v1

    const/4 v1, 0x1

    const/16 v15, 0x10

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    move-object/from16 v1, v16

    goto/16 :goto_1b

    :goto_23
    move-object/from16 v1, v16

    goto/16 :goto_1a

    :cond_37
    const/4 v1, 0x1

    const/16 v15, 0x10

    if-eqz v27, :cond_3a

    if-eqz v30, :cond_38

    invoke-static {v14}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->getFocusState(Landroidx/compose/ui/focus/FocusEventModifierNode;)Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    goto :goto_25

    :cond_38
    if-eqz v28, :cond_39

    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v3

    goto :goto_24

    :cond_39
    move-object/from16 v3, v31

    :goto_24
    move-object v0, v3

    :goto_25
    invoke-interface {v14, v0}, Landroidx/compose/ui/focus/FocusEventModifierNode;->onFocusEvent(Landroidx/compose/ui/focus/FocusStateImpl;)V

    :cond_3a
    :goto_26
    const/16 v0, 0x8

    goto :goto_28

    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    move-object/from16 v33, v0

    move-object/from16 v32, v1

    move-object/from16 v35, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    :goto_27
    const/4 v1, 0x1

    const/16 v15, 0x10

    goto :goto_26

    :goto_28
    shr-long/2addr v10, v0

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v1, v32

    move-object/from16 v0, v33

    move-object/from16 v2, v35

    goto/16 :goto_13

    :cond_3d
    move-object/from16 v33, v0

    move-object/from16 v32, v1

    move-object/from16 v35, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/16 v15, 0x10

    if-ne v12, v0, :cond_40

    goto :goto_29

    :cond_3e
    move-object/from16 v33, v0

    move-object/from16 v32, v1

    move-object/from16 v35, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    const/4 v1, 0x1

    const/16 v15, 0x10

    :goto_29
    if-eq v9, v6, :cond_40

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v1, v32

    move-object/from16 v0, v33

    move-object/from16 v2, v35

    goto/16 :goto_12

    :cond_3f
    move-object/from16 v33, v0

    move-object/from16 v32, v1

    move-object/from16 v35, v2

    :cond_40
    invoke-virtual/range {v35 .. v35}, Landroidx/collection/MutableScatterSet;->clear()V

    iget-object v0, v5, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, v5, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_45

    move/from16 v3, v17

    :goto_2a
    aget-wide v6, v1, v3

    not-long v9, v6

    const/4 v4, 0x7

    shl-long/2addr v9, v4

    and-long/2addr v9, v6

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_44

    sub-int v9, v3, v2

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v13, v9, 0x8

    move/from16 v9, v17

    :goto_2b
    if-ge v9, v13, :cond_43

    const-wide/16 v14, 0xff

    and-long v21, v6, v14

    const-wide/16 v18, 0x80

    cmp-long v10, v21, v18

    if-gez v10, :cond_42

    shl-int/lit8 v10, v3, 0x3

    add-int/2addr v10, v9

    aget-object v10, v0, v10

    check-cast v10, Landroidx/compose/ui/focus/FocusTargetNode;

    iget-boolean v4, v10, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v4, :cond_42

    invoke-virtual {v10}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v4

    invoke-virtual {v10}, Landroidx/compose/ui/focus/FocusTargetNode;->invalidateFocus$ui_release()V

    invoke-virtual {v10}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v11

    if-ne v4, v11, :cond_41

    invoke-virtual {v8, v10}, Landroidx/collection/ScatterSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    :cond_41
    invoke-static {v10}, Landroidx/compose/ui/focus/FocusEventModifierNodeKt;->refreshFocusEventNodes(Landroidx/compose/ui/focus/FocusTargetNode;)V

    :cond_42
    const/16 v4, 0x8

    shr-long/2addr v6, v4

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_2b

    :cond_43
    const/16 v4, 0x8

    const-wide/16 v14, 0xff

    const-wide/16 v18, 0x80

    if-ne v13, v4, :cond_45

    goto :goto_2c

    :cond_44
    const/16 v4, 0x8

    const-wide/16 v14, 0xff

    const-wide/16 v18, 0x80

    :goto_2c
    if-eq v3, v2, :cond_45

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_45
    invoke-virtual {v5}, Landroidx/collection/MutableScatterSet;->clear()V

    invoke-virtual {v8}, Landroidx/collection/MutableScatterSet;->clear()V

    move-object/from16 v0, v33

    iget-object v0, v0, Landroidx/compose/ui/focus/FocusInvalidationManager;->invalidateOwnerFocusState:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual/range {v32 .. v32}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual/range {v35 .. v35}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v5}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_46
    const-string v0, "Unprocessed FocusTarget nodes"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_47
    const/4 v0, 0x0

    const-string v1, "Unprocessed FocusEvent nodes"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    throw v0

    :cond_48
    const/4 v0, 0x0

    const-string v1, "Unprocessed FocusProperties nodes"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    throw v0
.end method

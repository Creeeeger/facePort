.class public final synthetic Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/autofill/AndroidSemanticAutofill;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/autofill/AndroidSemanticAutofill;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/autofill/AndroidSemanticAutofill;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    const/4 v0, 0x1

    move-object/from16 v1, p0

    iget-object v1, v1, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/autofill/AndroidSemanticAutofill;

    iget-object v2, v1, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V

    invoke-virtual {v1}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/MutableIntObjectMap;

    move-result-object v2

    iget-object v3, v2, Landroidx/collection/MutableIntObjectMap;->keys:[I

    iget-object v4, v2, Landroidx/collection/MutableIntObjectMap;->metadata:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    iget-object v6, v1, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    const-wide/16 v10, 0xff

    const/16 v12, 0x8

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v15, 0x7

    if-ltz v5, :cond_f

    move-object/from16 v16, v1

    const/4 v7, 0x0

    :goto_0
    aget-wide v0, v4, v7

    not-long v8, v0

    shl-long/2addr v8, v15

    and-long/2addr v8, v0

    and-long/2addr v8, v13

    cmp-long v8, v8, v13

    if-eqz v8, :cond_e

    sub-int v8, v7, v5

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_d

    and-long v19, v0, v10

    const-wide/16 v17, 0x80

    cmp-long v19, v19, v17

    if-gez v19, :cond_c

    shl-int/lit8 v19, v7, 0x3

    add-int v19, v19, v9

    aget v10, v3, v19

    invoke-virtual {v6, v10}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {v2, v10}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    check-cast v13, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    const/4 v14, 0x0

    if-eqz v13, :cond_0

    iget-object v13, v13, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    goto :goto_2

    :cond_0
    move-object v13, v14

    :goto_2
    if-eqz v13, :cond_b

    if-nez v11, :cond_1

    move-object/from16 v22, v2

    move-object/from16 v21, v4

    move-object/from16 v24, v6

    move-object/from16 v23, v16

    move-object/from16 v16, v3

    goto/16 :goto_7

    :cond_1
    sget-object v15, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v11, v11, Landroidx/compose/ui/platform/SemanticsNodeCopy;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-static {v11, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v12, v21

    check-cast v12, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v12, :cond_2

    iget-object v12, v12, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    goto :goto_3

    :cond_2
    move-object v12, v14

    :goto_3
    iget-object v13, v13, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-static {v13, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v15, :cond_3

    iget-object v15, v15, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    goto :goto_4

    :cond_3
    move-object v15, v14

    :goto_4
    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v15, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v0, :cond_4

    iget-object v14, v0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    :cond_4
    if-eqz v14, :cond_5

    iget-object v0, v14, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    if-eqz v0, :cond_5

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    :cond_5
    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "An operation is not implemented: b/138604541: Add Autofill support for ContentDataType.None"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sget-object v12, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v11, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-static {v13, v12}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    move-object/from16 v22, v2

    move-object/from16 v2, v16

    move-object/from16 v16, v3

    iget-object v3, v2, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->autofillManager:Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;

    if-nez v21, :cond_8

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v21, v4

    invoke-virtual {v2}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/MutableIntObjectMap;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v4, :cond_7

    iget-object v4, v4, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->adjustedBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_7

    move-object/from16 v23, v2

    iget-object v2, v3, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->autofillManager:Landroid/view/autofill/AutofillManager;

    move-object/from16 v24, v6

    iget-object v6, v3, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2, v6, v10, v4}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    goto :goto_6

    :cond_7
    move-object/from16 v23, v2

    goto :goto_5

    :cond_8
    move-object/from16 v23, v2

    move-object/from16 v21, v4

    :goto_5
    move-object/from16 v24, v6

    :goto_6
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v3, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->autofillManager:Landroid/view/autofill/AutofillManager;

    iget-object v4, v3, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2, v4, v10}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    :cond_9
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->InvisibleToUser:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v4, v11, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iget-object v6, v13, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v4, v2, :cond_a

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    iget-object v4, v3, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->autofillManager:Landroid/view/autofill/AutofillManager;

    iget-object v3, v3, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v4, v3, v10, v2}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    :cond_a
    :goto_7
    const/16 v2, 0x8

    goto :goto_8

    :cond_b
    const-string v0, "no value for specified key"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)V

    throw v14

    :cond_c
    move-object/from16 v22, v2

    move-object/from16 v21, v4

    move-object/from16 v24, v6

    move-object/from16 v23, v16

    move-object/from16 v16, v3

    move v2, v12

    :goto_8
    shr-long/2addr v0, v2

    const/4 v3, 0x1

    add-int/2addr v9, v3

    move v12, v2

    move-object/from16 v3, v16

    move-object/from16 v4, v21

    move-object/from16 v2, v22

    move-object/from16 v16, v23

    move-object/from16 v6, v24

    const-wide/16 v10, 0xff

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v15, 0x7

    goto/16 :goto_1

    :cond_d
    move-object/from16 v22, v2

    move-object/from16 v21, v4

    move-object/from16 v24, v6

    move v2, v12

    move-object/from16 v23, v16

    move-object/from16 v16, v3

    const/4 v3, 0x1

    if-ne v8, v2, :cond_10

    goto :goto_9

    :cond_e
    move-object/from16 v22, v2

    move-object/from16 v21, v4

    move-object/from16 v24, v6

    move-object/from16 v23, v16

    move-object/from16 v16, v3

    const/4 v3, 0x1

    :goto_9
    if-eq v7, v5, :cond_10

    add-int/2addr v7, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v21

    move-object/from16 v2, v22

    move-object/from16 v16, v23

    move-object/from16 v6, v24

    const-wide/16 v10, 0xff

    const/16 v12, 0x8

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v15, 0x7

    goto/16 :goto_0

    :cond_f
    move-object/from16 v23, v1

    move-object/from16 v24, v6

    :cond_10
    invoke-virtual/range {v24 .. v24}, Landroidx/collection/MutableIntObjectMap;->clear()V

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iget-object v1, v0, Landroidx/collection/MutableIntObjectMap;->keys:[I

    iget-object v2, v0, Landroidx/collection/MutableIntObjectMap;->values:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/MutableIntObjectMap;->metadata:[J

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_13

    const/4 v4, 0x0

    :goto_a
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v10

    cmp-long v7, v7, v10

    if-eqz v7, :cond_14

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v12, v7, 0x8

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v12, :cond_12

    const-wide/16 v13, 0xff

    and-long v19, v5, v13

    const-wide/16 v16, 0x80

    cmp-long v8, v19, v16

    if-gez v8, :cond_11

    shl-int/lit8 v8, v4, 0x3

    add-int/2addr v8, v7

    aget v15, v1, v8

    aget-object v8, v2, v8

    check-cast v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    new-instance v9, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    iget-object v8, v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/MutableIntObjectMap;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/MutableIntObjectMap;)V

    move-object/from16 v8, v24

    invoke-virtual {v8, v15, v9}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :goto_c
    const/16 v9, 0x8

    goto :goto_d

    :cond_11
    move-object/from16 v8, v24

    goto :goto_c

    :goto_d
    shr-long/2addr v5, v9

    const/4 v10, 0x1

    add-int/2addr v7, v10

    move-object/from16 v24, v8

    const/4 v9, 0x7

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_b

    :cond_12
    move-object/from16 v8, v24

    const/16 v9, 0x8

    const/4 v10, 0x1

    const-wide/16 v13, 0xff

    const-wide/16 v16, 0x80

    if-ne v12, v9, :cond_13

    goto :goto_e

    :cond_13
    move-object/from16 v0, v23

    goto :goto_f

    :cond_14
    move-object/from16 v8, v24

    const/16 v9, 0x8

    const/4 v10, 0x1

    const-wide/16 v13, 0xff

    const-wide/16 v16, 0x80

    :goto_e
    if-eq v4, v3, :cond_13

    add-int/2addr v4, v10

    move-object/from16 v24, v8

    goto :goto_a

    :goto_f
    iget-object v1, v0, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v1, v1, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    sget-object v2, Landroidx/collection/IntSetKt;->EmptyIntArray:[I

    new-instance v2, Landroidx/collection/MutableIntSet;

    invoke-direct {v2}, Landroidx/collection/MutableIntSet;-><init>()V

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static {v1, v4, v3}, Landroidx/compose/ui/semantics/SemanticsNode;->getChildren$ui_release$default(Landroidx/compose/ui/semantics/SemanticsNode;ZI)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v3, :cond_16

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNode;

    iget v5, v4, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v0, v5}, Landroidx/collection/MutableIntObjectMap;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_15

    iget v4, v4, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    invoke-virtual {v2, v4}, Landroidx/collection/MutableIntSet;->add(I)Z

    :cond_15
    const/4 v4, 0x1

    add-int/2addr v7, v4

    goto :goto_10

    :cond_16
    return-void
.end method

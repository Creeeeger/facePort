.class public final synthetic Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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
    .locals 26

    const/4 v0, 0x1

    move-object/from16 v1, p0

    iget-object v1, v1, Landroidx/compose/ui/autofill/AndroidSemanticAutofill$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/autofill/AndroidSemanticAutofill;

    iget-object v2, v1, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    sget-object v3, Landroidx/compose/ui/node/Owner;->Companion:Landroidx/compose/ui/node/Owner$Companion;

    invoke-virtual {v2, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V

    invoke-virtual {v1}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v2

    iget-object v3, v2, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v4, v2, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    iget-object v6, v1, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    const-wide/16 v10, 0xff

    const/16 v12, 0x8

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v15, 0x7

    if-ltz v5, :cond_15

    move-object/from16 v16, v1

    const/4 v7, 0x0

    :goto_0
    aget-wide v0, v4, v7

    not-long v8, v0

    shl-long/2addr v8, v15

    and-long/2addr v8, v0

    and-long/2addr v8, v13

    cmp-long v8, v8, v13

    if-eqz v8, :cond_14

    sub-int v8, v7, v5

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_13

    and-long v19, v0, v10

    const-wide/16 v17, 0x80

    cmp-long v19, v19, v17

    if-gez v19, :cond_12

    shl-int/lit8 v19, v7, 0x3

    add-int v19, v19, v9

    aget v10, v3, v19

    invoke-virtual {v6, v10}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {v2, v10}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v13, v19

    check-cast v13, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v13, :cond_0

    iget-object v13, v13, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    goto :goto_2

    :cond_0
    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_11

    if-nez v11, :cond_1

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v24, v16

    move-object/from16 v16, v2

    goto/16 :goto_c

    :cond_1
    sget-object v19, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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
    const/4 v12, 0x0

    :goto_3
    iget-object v13, v13, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-static {v13, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/text/AnnotatedString;

    if-eqz v15, :cond_3

    iget-object v15, v15, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    :goto_4
    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v14, v16

    move-object/from16 v16, v2

    iget-object v2, v14, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->autofillManager:Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;

    if-nez v12, :cond_d

    if-eqz v15, :cond_d

    invoke-virtual {v14}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v12, :cond_4

    iget-object v12, v12, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    goto :goto_5

    :cond_4
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_5

    iget-object v12, v12, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    if-eqz v12, :cond_5

    move-object/from16 v22, v3

    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v12, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/autofill/ContentDataType;

    goto :goto_6

    :cond_5
    move-object/from16 v22, v3

    const/4 v3, 0x0

    :goto_6
    sget-object v12, Landroidx/compose/ui/autofill/ContentDataType;->Companion:Landroidx/compose/ui/autofill/ContentDataType$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v12, Landroidx/compose/ui/autofill/ContentDataType;->Text:I

    if-nez v3, :cond_6

    goto :goto_7

    :cond_6
    move-object/from16 v23, v4

    iget v4, v3, Landroidx/compose/ui/autofill/ContentDataType;->dataType:I

    if-ne v4, v12, :cond_7

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v3

    iget-object v4, v2, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->autofillManager:Landroid/view/autofill/AutofillManager;

    iget-object v12, v2, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v4, v12, v10, v3}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    goto :goto_a

    :cond_7
    :goto_7
    sget v0, Landroidx/compose/ui/autofill/ContentDataType;->Date:I

    if-nez v3, :cond_8

    goto :goto_8

    :cond_8
    iget v1, v3, Landroidx/compose/ui/autofill/ContentDataType;->dataType:I

    if-eq v1, v0, :cond_c

    :goto_8
    sget v0, Landroidx/compose/ui/autofill/ContentDataType;->List:I

    if-nez v3, :cond_9

    goto :goto_9

    :cond_9
    iget v1, v3, Landroidx/compose/ui/autofill/ContentDataType;->dataType:I

    if-eq v1, v0, :cond_b

    :goto_9
    sget v0, Landroidx/compose/ui/autofill/ContentDataType;->Toggle:I

    if-eqz v3, :cond_a

    iget v1, v3, Landroidx/compose/ui/autofill/ContentDataType;->dataType:I

    if-ne v1, v0, :cond_a

    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "An operation is not implemented: b/138604541: Add Autofill support for ContentDataType.Toggle"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "An operation is not implemented: b/138604541: Add Autofill support for ContentDataType.None"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "An operation is not implemented: b/138604541: Add Autofill support for ContentDataType.List"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Lkotlin/NotImplementedError;

    const-string v1, "An operation is not implemented: b/138604541: Add Autofill support for ContentDataType.Date"

    invoke-direct {v0, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    :goto_a
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v11, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-static {v13, v3}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual {v14}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    if-eqz v15, :cond_e

    iget-object v15, v15, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->adjustedBounds:Landroid/graphics/Rect;

    if-eqz v15, :cond_e

    move-object/from16 v24, v14

    iget-object v14, v2, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->autofillManager:Landroid/view/autofill/AutofillManager;

    move-object/from16 v25, v6

    iget-object v6, v2, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v14, v6, v10, v15}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    goto :goto_b

    :cond_e
    move-object/from16 v25, v6

    move-object/from16 v24, v14

    :goto_b
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v2, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->autofillManager:Landroid/view/autofill/AutofillManager;

    iget-object v4, v2, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v3, v4, v10}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    :cond_f
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->InvisibleToUser:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    iget-object v4, v11, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    iget-object v6, v13, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eq v4, v3, :cond_10

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/autofill/AutofillApi27Helper;->INSTANCE:Landroidx/compose/ui/autofill/AutofillApi27Helper;

    iget-object v6, v2, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->autofillManager:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Landroidx/compose/ui/autofill/AutofillManagerWrapperImpl;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v6, v2, v10, v3}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;IZ)V

    :cond_10
    :goto_c
    const/16 v2, 0x8

    goto :goto_d

    :cond_11
    const-string v0, "no value for specified key"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_12
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v24, v16

    move-object/from16 v16, v2

    move v2, v12

    :goto_d
    shr-long/2addr v0, v2

    const/4 v3, 0x1

    add-int/2addr v9, v3

    move v12, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v16, v24

    move-object/from16 v6, v25

    const-wide/16 v10, 0xff

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v15, 0x7

    goto/16 :goto_1

    :cond_13
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v24, v16

    const/4 v3, 0x1

    move-object/from16 v16, v2

    move v2, v12

    if-ne v8, v2, :cond_16

    goto :goto_e

    :cond_14
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v6

    move-object/from16 v24, v16

    const/4 v3, 0x1

    move-object/from16 v16, v2

    :goto_e
    if-eq v7, v5, :cond_16

    add-int/2addr v7, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    move-object/from16 v16, v24

    move-object/from16 v6, v25

    const-wide/16 v10, 0xff

    const/16 v12, 0x8

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v15, 0x7

    goto/16 :goto_0

    :cond_15
    move-object/from16 v24, v1

    move-object/from16 v25, v6

    :cond_16
    invoke-virtual/range {v25 .. v25}, Landroidx/collection/MutableIntObjectMap;->clear()V

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v0

    iget-object v1, v0, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v2, v0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_1a

    const/4 v4, 0x0

    :goto_f
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v10

    cmp-long v7, v7, v10

    if-eqz v7, :cond_19

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v12, v7, 0x8

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v12, :cond_18

    const-wide/16 v13, 0xff

    and-long v19, v5, v13

    const-wide/16 v16, 0x80

    cmp-long v8, v19, v16

    if-gez v8, :cond_17

    shl-int/lit8 v8, v4, 0x3

    add-int/2addr v8, v7

    aget v15, v1, v8

    aget-object v8, v2, v8

    check-cast v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    new-instance v9, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    iget-object v8, v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    move-object/from16 v8, v25

    invoke-virtual {v8, v15, v9}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :goto_11
    const/16 v9, 0x8

    goto :goto_12

    :cond_17
    move-object/from16 v8, v25

    goto :goto_11

    :goto_12
    shr-long/2addr v5, v9

    const/4 v10, 0x1

    add-int/2addr v7, v10

    move-object/from16 v25, v8

    const/4 v9, 0x7

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_10

    :cond_18
    move-object/from16 v8, v25

    const/16 v9, 0x8

    const/4 v10, 0x1

    const-wide/16 v13, 0xff

    const-wide/16 v16, 0x80

    if-ne v12, v9, :cond_1a

    goto :goto_13

    :cond_19
    move-object/from16 v8, v25

    const/16 v9, 0x8

    const/4 v10, 0x1

    const-wide/16 v13, 0xff

    const-wide/16 v16, 0x80

    :goto_13
    if-eq v4, v3, :cond_1a

    add-int/2addr v4, v10

    move-object/from16 v25, v8

    goto :goto_f

    :cond_1a
    new-instance v0, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    move-object/from16 v1, v24

    iget-object v2, v1, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v2, v2, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/ui/autofill/AndroidSemanticAutofill;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    return-void
.end method

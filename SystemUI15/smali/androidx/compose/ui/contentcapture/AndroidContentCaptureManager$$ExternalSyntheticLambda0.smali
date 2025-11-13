.class public final synthetic Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 25

    const/4 v0, 0x1

    move-object/from16 v1, p0

    iget-object v1, v1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    invoke-virtual {v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->isEnabled$ui_release()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v2, v1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    sget-object v3, Landroidx/compose/ui/node/Owner;->Companion:Landroidx/compose/ui/node/Owner$Companion;

    invoke-virtual {v2, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->measureAndLayout(Z)V

    iget-object v2, v1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v2, v2, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    iget-object v3, v1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->sendSemanticsStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V

    iget-object v2, v1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v2, v2, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    invoke-virtual {v2}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v2

    iget-object v3, v1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->sendContentCaptureStructureChangeEvents(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/SemanticsNodeCopy;)V

    invoke-virtual {v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v2

    iget-object v3, v2, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v4, v2, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    const-wide/16 v9, 0xff

    const/16 v11, 0x8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v14, 0x7

    if-ltz v5, :cond_12

    move-object/from16 p0, v1

    const/4 v15, 0x0

    :goto_0
    aget-wide v0, v4, v15

    not-long v6, v0

    shl-long/2addr v6, v14

    and-long/2addr v6, v0

    and-long/2addr v6, v12

    cmp-long v6, v6, v12

    if-eqz v6, :cond_11

    sub-int v6, v15, v5

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    rsub-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_10

    and-long v18, v0, v9

    const-wide/16 v16, 0x80

    cmp-long v8, v18, v16

    if-gez v8, :cond_f

    shl-int/lit8 v8, v15, 0x3

    add-int/2addr v8, v7

    aget v8, v3, v8

    move-object/from16 v9, p0

    iget-object v10, v9, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v10, v8}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    invoke-virtual {v2, v8}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    const/16 v20, 0x0

    if-eqz v8, :cond_1

    iget-object v8, v8, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    goto :goto_2

    :cond_1
    move-object/from16 v8, v20

    :goto_2
    if-eqz v8, :cond_e

    const-string v21, "Invalid content capture ID"

    iget v12, v8, Landroidx/compose/ui/semantics/SemanticsNode;->id:I

    iget-object v8, v8, Landroidx/compose/ui/semantics/SemanticsNode;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    if-nez v10, :cond_7

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    sget-object v22, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {v8, v14}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    if-eqz v13, :cond_2

    invoke-static {v13}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_4

    :cond_2
    move-object/from16 v13, v20

    :goto_4
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v9, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    if-nez v14, :cond_3

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    goto :goto_5

    :cond_3
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    int-to-long v2, v12

    iget-object v11, v14, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v11, Landroid/view/contentcapture/ContentCaptureSession;

    iget-object v14, v14, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->mView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v14

    invoke-static {v14}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->toAutofillIdCompat(Landroid/view/autofill/AutofillId;)Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;

    move-result-object v14

    iget-object v14, v14, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v14, Landroid/view/autofill/AutofillId;

    invoke-virtual {v11, v14, v2, v3}, Landroid/view/contentcapture/ContentCaptureSession;->newAutofillId(Landroid/view/autofill/AutofillId;J)Landroid/view/autofill/AutofillId;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v11, v2, v13}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    :goto_5
    move-object/from16 v2, v22

    move-object/from16 v3, v23

    const/16 v11, 0x8

    :cond_4
    const/4 v14, 0x7

    goto :goto_3

    :cond_5
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)V

    throw v20

    :cond_6
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    goto/16 :goto_a

    :cond_7
    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-virtual {v8}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v10, Landroidx/compose/ui/platform/SemanticsNodeCopy;->unmergedConfig:Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-static {v3, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_9

    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_7

    :cond_9
    move-object/from16 v3, v20

    :goto_7
    invoke-static {v8, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->getOrNull(Landroidx/compose/ui/semantics/SemanticsConfiguration;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_a

    invoke-static {v11}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/text/AnnotatedString;

    goto :goto_8

    :cond_a
    move-object/from16 v11, v20

    :goto_8
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v11, v9, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->contentCaptureSession:Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;

    if-nez v11, :cond_b

    move-object/from16 v24, v2

    goto :goto_9

    :cond_b
    int-to-long v13, v12

    move-object/from16 v24, v2

    iget-object v2, v11, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v2, Landroid/view/contentcapture/ContentCaptureSession;

    iget-object v11, v11, Landroidx/compose/ui/platform/coreshims/ContentCaptureSessionCompat;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v11

    invoke-static {v11}, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->toAutofillIdCompat(Landroid/view/autofill/AutofillId;)Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;

    move-result-object v11

    iget-object v11, v11, Landroidx/compose/ui/platform/coreshims/AutofillIdCompat;->mWrappedObj:Ljava/lang/Object;

    check-cast v11, Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v11, v13, v14}, Landroid/view/contentcapture/ContentCaptureSession;->newAutofillId(Landroid/view/autofill/AutofillId;J)Landroid/view/autofill/AutofillId;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v2, v11, v3}, Landroid/view/contentcapture/ContentCaptureSession;->notifyViewTextChanged(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    :goto_9
    move-object/from16 v2, v24

    goto :goto_6

    :cond_c
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)V

    throw v20

    :cond_d
    :goto_a
    const/16 v2, 0x8

    goto :goto_b

    :cond_e
    const-string v0, "no value for specified key"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateExceptionForNullCheck(Ljava/lang/String;)V

    throw v20

    :cond_f
    move-object/from16 v9, p0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move v2, v11

    :goto_b
    shr-long/2addr v0, v2

    const/4 v3, 0x1

    add-int/2addr v7, v3

    move v11, v2

    move-object/from16 p0, v9

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    const-wide/16 v9, 0xff

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v14, 0x7

    goto/16 :goto_1

    :cond_10
    move-object/from16 v9, p0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move v2, v11

    const/4 v3, 0x1

    if-ne v6, v2, :cond_13

    goto :goto_c

    :cond_11
    move-object/from16 v9, p0

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    const/4 v3, 0x1

    :goto_c
    if-eq v15, v5, :cond_13

    add-int/2addr v15, v3

    move-object/from16 p0, v9

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    const-wide/16 v9, 0xff

    const/16 v11, 0x8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/4 v14, 0x7

    goto/16 :goto_0

    :cond_12
    move-object v9, v1

    :cond_13
    iget-object v0, v9, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0}, Landroidx/collection/MutableIntObjectMap;->clear()V

    invoke-virtual {v9}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v0

    iget-object v1, v0, Landroidx/collection/IntObjectMap;->keys:[I

    iget-object v2, v0, Landroidx/collection/IntObjectMap;->values:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/IntObjectMap;->metadata:[J

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_17

    const/4 v4, 0x0

    :goto_d
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v10, 0x7

    shl-long/2addr v7, v10

    and-long/2addr v7, v5

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v11

    cmp-long v7, v7, v11

    if-eqz v7, :cond_16

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v7, :cond_15

    const-wide/16 v13, 0xff

    and-long v18, v5, v13

    const-wide/16 v16, 0x80

    cmp-long v15, v18, v16

    if-gez v15, :cond_14

    shl-int/lit8 v15, v4, 0x3

    add-int/2addr v15, v8

    aget v10, v1, v15

    aget-object v15, v2, v15

    check-cast v15, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;

    iget-object v11, v9, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsNodes:Landroidx/collection/MutableIntObjectMap;

    new-instance v12, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    iget-object v15, v15, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-virtual {v9}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v13

    invoke-direct {v12, v15, v13}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    invoke-virtual {v11, v10, v12}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_14
    const/16 v10, 0x8

    shr-long/2addr v5, v10

    const/4 v11, 0x1

    add-int/2addr v8, v11

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_e

    :cond_15
    const/16 v10, 0x8

    const/4 v11, 0x1

    const-wide/16 v16, 0x80

    if-ne v7, v10, :cond_17

    goto :goto_f

    :cond_16
    const/16 v10, 0x8

    const/4 v11, 0x1

    const-wide/16 v16, 0x80

    :goto_f
    if-eq v4, v3, :cond_17

    add-int/2addr v4, v11

    goto :goto_d

    :cond_17
    new-instance v0, Landroidx/compose/ui/platform/SemanticsNodeCopy;

    iget-object v1, v9, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->view:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v1, v1, Landroidx/compose/ui/platform/AndroidComposeView;->semanticsOwner:Landroidx/compose/ui/semantics/SemanticsOwner;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v1

    invoke-virtual {v9}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->getCurrentSemanticsNodes$ui_release()Landroidx/collection/IntObjectMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/platform/SemanticsNodeCopy;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/IntObjectMap;)V

    iput-object v0, v9, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->previousSemanticsRoot:Landroidx/compose/ui/platform/SemanticsNodeCopy;

    const/4 v0, 0x0

    iput-boolean v0, v9, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->checkingForSemanticsChanges:Z

    :goto_10
    return-void
.end method

.class public final Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;
.super Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;Landroid/content/Context;)V

    return-void
.end method

.method public static createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;
    .locals 6

    const-string v0, "Wrong DropTarget type: #"

    if-eqz p2, :cond_0

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Insets;->top:I

    add-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v4, v3, 0x2

    div-int/lit8 v4, v4, 0x3

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Insets;->right:I

    add-int/2addr v5, p3

    invoke-direct {v1, v2, v4, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p3, v2, p2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Insets;->right:I

    add-int/2addr v4, p3

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 p3, p3, 0x3

    invoke-direct {v1, v2, v3, v4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p3, v2, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, p3

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v3, p3, 0x2

    div-int/lit8 v3, v3, 0x3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v1, v2, v3, v4, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p3, v2, p2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, p3

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v4, v4, 0x3

    invoke-direct {v1, v2, p3, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p3, v2, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0

    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Insets;->left:I

    add-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, v2, 0x2

    div-int/lit8 v3, v3, 0x3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget p3, p3, Landroid/graphics/Insets;->right:I

    add-int/2addr v2, p3

    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v3, v4, v2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p3, p2, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, p3

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, p3, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p3, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p3, v2, v3, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v0, p0, v1, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;
    .locals 5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Insets;->right:I

    add-int/2addr v4, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0

    :cond_0
    :pswitch_0
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Insets;->right:I

    add-int/2addr v4, p1

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0

    :cond_1
    :pswitch_1
    new-instance v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, p1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addSplitTargets(Landroid/graphics/Rect;ZZFLjava/util/ArrayList;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v4, v4, Lcom/android/wm/shell/draganddrop/DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v4

    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMultiSplitScreenVisible()Z

    move-result v7

    const/4 v8, 0x2

    const/16 v9, 0x8

    const/16 v10, 0x9

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v14, 0x4

    if-eqz v7, :cond_10

    if-eqz p3, :cond_10

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result v7

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getCellStageWindowConfigPosition()I

    move-result v16

    invoke-virtual {v6, v0, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getAllStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/16 v6, 0x40

    const/16 v15, 0x20

    const/16 v13, 0x10

    if-eqz v7, :cond_1

    and-int/lit8 v7, v16, 0x8

    if-eqz v7, :cond_0

    move v7, v9

    goto :goto_0

    :cond_0
    and-int/lit8 v7, v16, 0x20

    if-eqz v7, :cond_3

    move v7, v15

    goto :goto_0

    :cond_1
    and-int/lit8 v7, v16, 0x10

    if-eqz v7, :cond_2

    move v7, v13

    goto :goto_0

    :cond_2
    and-int/lit8 v7, v16, 0x40

    if-eqz v7, :cond_3

    move v7, v6

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    if-eq v7, v9, :cond_d

    if-eq v7, v13, :cond_a

    if-eq v7, v15, :cond_7

    if-eq v7, v6, :cond_4

    goto/16 :goto_9

    :cond_4
    and-int/lit8 v5, v16, 0x8

    if-eqz v5, :cond_5

    move-object v6, v1

    goto :goto_1

    :cond_5
    move-object v6, v0

    :goto_1
    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    invoke-static {v11, v4, v6}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v4, v0}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8, v4, v3}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_7
    and-int/lit8 v6, v16, 0x10

    if-eqz v6, :cond_8

    move-object v7, v1

    goto :goto_3

    :cond_8
    move-object v7, v0

    :goto_3
    if-eqz v6, :cond_9

    goto :goto_4

    :cond_9
    move-object v0, v1

    :goto_4
    invoke-static {v9, v4, v7}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v4, v0}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5, v4, v3}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_a
    and-int/lit8 v5, v16, 0x8

    if-eqz v5, :cond_b

    move-object v6, v1

    goto :goto_5

    :cond_b
    move-object v6, v0

    :goto_5
    if-eqz v5, :cond_c

    goto :goto_6

    :cond_c
    move-object v0, v1

    :goto_6
    invoke-static {v12, v4, v6}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9, v4, v0}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14, v4, v3}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_d
    and-int/lit8 v5, v16, 0x10

    if-eqz v5, :cond_e

    move-object v6, v1

    goto :goto_7

    :cond_e
    move-object v6, v0

    :goto_7
    if-eqz v5, :cond_f

    goto :goto_8

    :cond_f
    move-object v0, v1

    :goto_8
    invoke-static {v12, v4, v6}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11, v4, v0}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    invoke-static {v0, v4, v3}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    return-void

    :cond_10
    if-eqz p3, :cond_12

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz v0, :cond_11

    invoke-static {v5, v4, v1}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    invoke-static {v0, v4, v3}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12, v1, v5, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11, v1, v5, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9, v3, v5, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v3, v5, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    invoke-static {v8, v4, v1}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14, v4, v3}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createTarget(ILandroid/graphics/Insets;Landroid/graphics/Rect;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v12, v1, v0, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9, v1, v0, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v11, v3, v0, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v3, v0, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->createMultiSplitTarget(ILandroid/graphics/Rect;ZLandroid/graphics/Insets;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    return-void

    :cond_12
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v9, v0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "task_bar"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v5, :cond_18

    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget v9, v3, Lcom/android/wm/shell/draganddrop/DragSession;->runningTaskActType:I

    if-eq v9, v8, :cond_18

    iget-boolean v3, v3, Lcom/android/wm/shell/draganddrop/DragSession;->isDragFromRecent:Z

    if-nez v3, :cond_13

    goto :goto_c

    :cond_13
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v3

    const v9, 0x7fffffff

    invoke-virtual {v3, v9}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getDisplayId()I

    move-result v10

    if-eqz v10, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v10

    if-ne v10, v8, :cond_16

    goto :goto_d

    :cond_16
    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v9

    if-ne v9, v5, :cond_14

    :cond_17
    :goto_c
    move v3, v5

    goto :goto_e

    :cond_18
    :goto_d
    const/4 v3, 0x0

    :goto_e
    iget v9, v4, Landroid/graphics/Insets;->right:I

    sub-int v9, v7, v9

    iget v10, v4, Landroid/graphics/Insets;->left:I

    invoke-static {v9, v10, v8, v10}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v9

    if-eqz v3, :cond_19

    iget v3, v4, Landroid/graphics/Insets;->bottom:I

    sub-int v3, v1, v3

    goto :goto_f

    :cond_19
    move v3, v1

    :goto_f
    invoke-virtual {v6, v5}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenFeasible(Z)Z

    move-result v10

    if-eqz v10, :cond_1a

    new-instance v10, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v11, Landroid/graphics/Rect;

    iget v12, v4, Landroid/graphics/Insets;->left:I

    iget v13, v4, Landroid/graphics/Insets;->right:I

    sub-int v13, v7, v13

    div-int/2addr v1, v8

    const/4 v15, 0x0

    invoke-direct {v11, v12, v15, v13, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v15, v15, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v8, v12}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/List;

    move-result-object v20

    const/16 v19, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x0

    move-object v15, v10

    move-object/from16 v18, v11

    invoke-direct/range {v15 .. v20}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/List;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v10, Landroid/graphics/Rect;

    iget v11, v4, Landroid/graphics/Insets;->left:I

    iget v12, v4, Landroid/graphics/Insets;->right:I

    sub-int v12, v7, v12

    invoke-direct {v10, v11, v1, v12, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-direct {v11, v12, v1, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v14, v11}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/List;

    move-result-object v26

    const/16 v25, 0x1

    const/16 v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v21, v8

    move-object/from16 v24, v10

    invoke-direct/range {v21 .. v26}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/List;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenFeasible(Z)Z

    move-result v6

    if-eqz v6, :cond_1b

    new-instance v6, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v13, Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Insets;->right:I

    sub-int v8, v7, v8

    invoke-direct {v13, v9, v1, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    div-int/lit8 v15, v7, 0x2

    invoke-direct {v8, v15, v1, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v8}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/List;

    move-result-object v1

    const/4 v14, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v10, v6

    move v7, v15

    move-object v15, v1

    invoke-direct/range {v10 .. v15}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/List;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    new-instance v6, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Insets;->left:I

    const/4 v8, 0x0

    invoke-direct {v6, v4, v8, v9, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v8, v8, v7, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v5, v4}, Lcom/android/wm/shell/draganddrop/MultiSplitDropTargetProvider;->getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/List;

    move-result-object v20

    const/16 v19, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v15, v1

    move-object/from16 v18, v6

    invoke-direct/range {v15 .. v20}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZLjava/util/List;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public final getPolygonTouchRegion(ILandroid/graphics/Rect;)Ljava/util/List;
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/SplitDropTargetProvider;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getCenterFreeformBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070349

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget p2, v0, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p1, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    new-instance p1, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-direct {p1, v1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget p2, v0, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    new-instance p1, Landroid/graphics/PointF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    new-instance p1, Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {p1, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-direct {p1, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-object p0
.end method

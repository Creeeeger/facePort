.class public abstract Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProviderKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final calculateInsetsForRotationWithRotatedResources(IILcom/android/systemui/SysUICutoutInformation;Landroid/graphics/Rect;IIIZIII)Landroid/graphics/Rect;
    .locals 16

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    if-eq v0, v5, :cond_0

    new-instance v7, Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {v7, v6, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ltz p9, :cond_1

    mul-int/lit8 v10, p9, 0x2

    add-int v10, v10, p10

    sub-int v10, v4, v10

    goto :goto_1

    :cond_1
    move v10, v6

    :goto_1
    const/4 v11, 0x3

    const/4 v12, 0x1

    if-eq v1, v12, :cond_2

    if-ne v1, v11, :cond_3

    :cond_2
    move v8, v7

    :cond_3
    if-eqz v2, :cond_5

    iget-object v13, v2, Lcom/android/systemui/SysUICutoutInformation;->cutout:Landroid/view/DisplayCutout;

    if-eqz v13, :cond_5

    new-array v11, v11, [Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v14

    aput-object v14, v11, v6

    invoke-virtual {v13}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v14

    aput-object v14, v11, v12

    invoke-virtual {v13}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v13

    aput-object v13, v11, v5

    invoke-static {v11}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    xor-int/2addr v15, v12

    if-eqz v15, :cond_4

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    :cond_6
    if-eqz v13, :cond_21

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    goto/16 :goto_f

    :cond_7
    sub-int/2addr v0, v1

    if-gez v0, :cond_8

    add-int/lit8 v0, v0, 0x4

    :cond_8
    new-instance v1, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-direct {v1, v11, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v11, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    if-eq v0, v12, :cond_a

    if-eq v0, v5, :cond_9

    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v14, v15, v6, v11, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_9
    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v14, v6, v15, v11, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_a
    new-instance v14, Landroid/graphics/Rect;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v14, v6, v6, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_3

    :cond_b
    new-instance v14, Landroid/graphics/Rect;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v14, v6, v6, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_3
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v11, p5

    move/from16 v13, p6

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    iget-object v7, v2, Lcom/android/systemui/SysUICutoutInformation;->cameraProtection:Lcom/android/systemui/CameraProtectionInfo;

    if-eqz v7, :cond_c

    iget-object v7, v7, Lcom/android/systemui/CameraProtectionInfo;->bounds:Landroid/graphics/Rect;

    goto :goto_5

    :cond_c
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_d

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v5, v15, Landroid/graphics/Rect;->left:I

    iget v6, v15, Landroid/graphics/Rect;->top:I

    iget v12, v15, Landroid/graphics/Rect;->right:I

    move-object/from16 p0, v1

    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v5, v6, v12, v1}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_e

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    move-object v15, v1

    goto :goto_6

    :cond_d
    move-object/from16 p0, v1

    :cond_e
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_6
    if-ge v9, v3, :cond_f

    iget v1, v15, Landroid/graphics/Rect;->top:I

    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x0

    invoke-virtual {v14, v6, v1, v9, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    goto :goto_7

    :cond_f
    const/4 v6, 0x0

    if-le v9, v3, :cond_10

    iget v1, v15, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14, v1, v6, v5, v3}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    goto :goto_7

    :cond_10
    move v1, v6

    :goto_7
    if-nez v1, :cond_11

    const/4 v1, 0x2

    const/4 v5, 0x1

    goto/16 :goto_e

    :cond_11
    if-eqz v0, :cond_15

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    iget v1, v15, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_12

    :goto_8
    const/4 v5, 0x1

    goto :goto_9

    :cond_12
    move v5, v6

    goto :goto_9

    :cond_13
    iget v1, v15, Landroid/graphics/Rect;->right:I

    if-lt v1, v9, :cond_12

    goto :goto_8

    :cond_14
    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v3, :cond_12

    goto :goto_8

    :cond_15
    iget v1, v15, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_12

    goto :goto_8

    :goto_9
    if-eqz v5, :cond_18

    if-eqz v0, :cond_16

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_a

    :cond_16
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v1

    :goto_a
    if-eqz p7, :cond_17

    add-int v1, v1, p8

    :cond_17
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move-object/from16 v1, p0

    const/4 v5, 0x2

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_18
    if-eqz v0, :cond_1c

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    iget v1, v15, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v3, :cond_19

    :goto_b
    move v1, v5

    goto :goto_c

    :cond_19
    move v1, v6

    goto :goto_c

    :cond_1a
    iget v1, v15, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_19

    goto :goto_b

    :cond_1b
    iget v1, v15, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_19

    goto :goto_b

    :cond_1c
    const/4 v5, 0x1

    iget v1, v15, Landroid/graphics/Rect;->right:I

    if-lt v1, v9, :cond_19

    goto :goto_b

    :goto_c
    if-eqz v1, :cond_1f

    const/4 v1, 0x2

    if-eqz v0, :cond_1d

    if-eq v0, v1, :cond_1d

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v7

    goto :goto_d

    :cond_1d
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v7

    :goto_d
    if-nez p7, :cond_1e

    add-int v7, v7, p8

    :cond_1e
    invoke-static {v13, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_e
    move v12, v5

    move v5, v1

    move-object/from16 v1, p0

    goto/16 :goto_4

    :cond_1f
    const/4 v1, 0x2

    goto :goto_e

    :cond_20
    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr v8, v13

    invoke-direct {v0, v11, v10, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_10

    :cond_21
    :goto_f
    new-instance v0, Landroid/graphics/Rect;

    sub-int v8, v8, p6

    move/from16 v1, p5

    invoke-direct {v0, v1, v10, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_10
    return-object v0
.end method

.method public static final getPrivacyChipBoundingRectForInsets(Landroid/graphics/Rect;IIZ)Landroid/graphics/Rect;
    .locals 2

    if-eqz p3, :cond_0

    new-instance p3, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int p1, v0, p1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p3, p1, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int p2, v0, p2

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p3, p2, v1, v0, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object p3
.end method

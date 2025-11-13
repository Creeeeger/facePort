.class public final Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDensityDpi:I

.field public final mDismissEndTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

.field public final mDismissStartTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

.field public final mDisplayDeviceType:I

.field public final mDisplayHeight:I

.field public final mDisplayWidth:I

.field public final mDividerSize:I

.field public final mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

.field public final mFreeSnapMode:Z

.field public final mInsets:Landroid/graphics/Rect;

.field public final mIsHorizontalDivision:Z

.field public final mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

.field public final mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

.field public final mMinDismissVelocityPxPerSecond:F

.field public final mMinFlingVelocityPxPerSecond:F

.field public final mMinimalSizeResizableTask:I

.field public final mMultiSplitMinimalSize:I

.field public final mSnapMode:I

.field public final mTargets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;I)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;IZZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x43c80000    # 400.0f

    mul-float/2addr v9, v10

    iput v9, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x44160000    # 600.0f

    mul-float/2addr v9, v10

    iput v9, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    iput v4, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDividerSize:I

    iput v2, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDisplayWidth:I

    iput v3, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDisplayHeight:I

    iput-boolean v5, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    move-object/from16 v9, p6

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_SNAP_ALGORITHM:Z

    const/4 v12, 0x3

    if-eqz v9, :cond_1

    if-eqz p8, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    const/16 v13, 0x14

    :goto_0
    iput v13, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mSnapMode:I

    goto :goto_2

    :cond_1
    if-eqz p8, :cond_2

    move v13, v12

    goto :goto_1

    :cond_2
    const/16 v13, 0xa

    :goto_1
    iput v13, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mSnapMode:I

    :goto_2
    const v13, 0x111014b

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    iput-boolean v13, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFreeSnapMode:Z

    const v13, 0x1130008

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v14, v14}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v13

    const v15, 0x105016f

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    iput v15, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    const v11, 0x11101a0

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    if-eqz p9, :cond_3

    const v10, 0x1050579

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->densityDpi:I

    iput v14, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDensityDpi:I

    const v14, 0x10502bd

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    iput v14, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMultiSplitMinimalSize:I

    const v14, 0x10502be

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v1, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDisplayDeviceType:I

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    if-eqz v5, :cond_4

    move v1, v3

    :goto_4
    move/from16 v16, v11

    goto :goto_5

    :cond_4
    move v1, v2

    goto :goto_4

    :goto_5
    neg-int v11, v4

    if-ne v6, v12, :cond_5

    iget v12, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v12

    :cond_5
    new-instance v12, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move/from16 v17, v13

    const/16 v13, 0xb

    const v6, 0x3eb33333    # 0.35f

    invoke-direct {v12, v11, v11, v13, v6}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v11, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mSnapMode:I

    const/4 v12, 0x2

    const/high16 v13, 0x3f100000    # 0.5625f

    if-eqz v11, :cond_17

    const/4 v6, 0x1

    if-eq v11, v6, :cond_13

    if-eq v11, v12, :cond_12

    const/4 v6, 0x3

    if-eq v11, v6, :cond_e

    const/16 v6, 0xa

    if-eq v11, v6, :cond_b

    const/16 v6, 0x14

    if-eq v11, v6, :cond_6

    :goto_6
    const v6, 0x3eb33333    # 0.35f

    goto/16 :goto_12

    :cond_6
    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    if-eqz v5, :cond_8

    iget v6, v8, Landroid/graphics/Rect;->top:I

    goto :goto_7

    :cond_8
    iget v6, v8, Landroid/graphics/Rect;->left:I

    :goto_7
    if-eqz v5, :cond_9

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v2

    goto :goto_8

    :cond_9
    iget v3, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->getMinimalSize()I

    move-result v3

    add-int/2addr v6, v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    sub-int v3, v2, v6

    if-gt v3, v14, :cond_a

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v6, v2, v1, v5}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->addNonDismissingTargets(IIIZ)V

    goto :goto_6

    :cond_b
    if-eqz v5, :cond_c

    iget v6, v8, Landroid/graphics/Rect;->top:I

    goto :goto_9

    :cond_c
    iget v6, v8, Landroid/graphics/Rect;->left:I

    :goto_9
    if-eqz v5, :cond_d

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v3, v8

    goto :goto_a

    :cond_d
    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v8, v2, v8

    :goto_a
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v6, v2

    sub-int/2addr v8, v2

    sub-int/2addr v8, v4

    invoke-virtual {v0, v6, v8, v1, v5}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->addNonDismissingTargets(IIIZ)V

    goto :goto_6

    :cond_e
    iget v3, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v3

    if-nez v5, :cond_10

    move/from16 v3, p7

    const/4 v5, 0x1

    const v6, 0x3eb33333    # 0.35f

    if-ne v3, v5, :cond_f

    iget v2, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v2

    goto :goto_b

    :cond_f
    const/4 v5, 0x3

    if-ne v3, v5, :cond_11

    sub-int/2addr v2, v10

    iget v3, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    sub-int v10, v2, v4

    goto :goto_b

    :cond_10
    const v6, 0x3eb33333    # 0.35f

    :cond_11
    :goto_b
    new-instance v2, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    const/16 v3, 0xd

    invoke-direct {v2, v10, v10, v3}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_12
    const v6, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v5}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    goto :goto_12

    :cond_13
    const v6, 0x3eb33333    # 0.35f

    if-eqz v5, :cond_14

    iget v9, v8, Landroid/graphics/Rect;->top:I

    goto :goto_c

    :cond_14
    iget v9, v8, Landroid/graphics/Rect;->left:I

    :goto_c
    if-eqz v5, :cond_15

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v2

    goto :goto_d

    :cond_15
    iget v3, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    :goto_d
    sub-int v3, v2, v9

    int-to-float v3, v3

    mul-float v13, v17, v3

    float-to-int v3, v13

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v3, v8

    if-eqz v16, :cond_16

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_16
    add-int/2addr v9, v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-virtual {v0, v9, v2, v1, v5}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->addNonDismissingTargets(IIIZ)V

    goto :goto_12

    :cond_17
    if-eqz v5, :cond_18

    iget v9, v8, Landroid/graphics/Rect;->top:I

    goto :goto_e

    :cond_18
    iget v9, v8, Landroid/graphics/Rect;->left:I

    :goto_e
    if-eqz v5, :cond_19

    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v3, v10

    goto :goto_f

    :cond_19
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v10, v2, v10

    :goto_f
    if-eqz v5, :cond_1a

    iget v11, v8, Landroid/graphics/Rect;->left:I

    goto :goto_10

    :cond_1a
    iget v11, v8, Landroid/graphics/Rect;->top:I

    :goto_10
    if-eqz v5, :cond_1b

    iget v3, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    goto :goto_11

    :cond_1b
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v2

    :goto_11
    sub-int/2addr v2, v11

    int-to-float v2, v2

    mul-float/2addr v2, v13

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v9, v2

    sub-int/2addr v10, v2

    sub-int/2addr v10, v4

    invoke-virtual {v0, v9, v10, v1, v5}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->addNonDismissingTargets(IIIZ)V

    :goto_12
    new-instance v2, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    const/16 v3, 0xc

    invoke-direct {v2, v1, v1, v3, v6}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iput-object v2, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    invoke-static {v7, v12}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iput-object v2, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iput-object v2, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    invoke-static {v7, v1}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iput-object v1, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v12

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iput-object v1, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final addMiddleTarget(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    if-eqz p1, :cond_1

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDisplayHeight:I

    :goto_1
    sub-int/2addr v0, p1

    goto :goto_2

    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDisplayWidth:I

    goto :goto_1

    :goto_2
    const/4 p1, 0x2

    invoke-static {v0, v1, p1, v1}, Landroidx/appcompat/widget/AbsActionBarView$$ExternalSyntheticOutline0;->m(IIII)I

    move-result v0

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDividerSize:I

    div-int/2addr v1, p1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v0, v1}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addNonDismissingTargets(IIIZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    sub-int v0, p1, v0

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p1, v3}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    iget-boolean p1, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    :goto_1
    sub-int/2addr p3, p1

    iget p1, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDividerSize:I

    add-int/2addr p1, p2

    sub-int/2addr p3, p1

    if-lt p3, v1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    const/4 p3, 0x2

    invoke-direct {p1, p2, p2, p3}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final calculateNonDismissingSnapTarget(I)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->snap(IZ)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final calculateSnapTarget(IZ)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    if-ge p1, v0, :cond_0

    neg-float v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v3, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v3, :cond_1

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    return-object p0

    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->snap(IZ)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final getMinimalSize()I
    .locals 2

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOR_COVER_DISPLAY:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDisplayDeviceType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1cc

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x1a4

    :goto_1
    iget v1, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDensityDpi:I

    if-lt v1, v0, :cond_2

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    return p0

    :cond_2
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMultiSplitMinimalSize:I

    return p0
.end method

.method public final getTargetMinimalRatio()I
    .locals 4

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    iget v1, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMultiSplitMinimalSize:I

    if-eqz v0, :cond_0

    int-to-float v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDisplayHeight:I

    sub-int/2addr p0, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    sub-int/2addr p0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    goto :goto_1

    :cond_0
    int-to-float v0, v1

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mDisplayWidth:I

    sub-int/2addr p0, v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :goto_1
    float-to-double v0, v0

    const-wide v2, 0x3fd6666666666666L    # 0.35

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_1

    const/16 p0, 0x28

    goto :goto_2

    :cond_1
    const/16 p0, 0x1e

    :goto_2
    return p0
.end method

.method public final snap(IZ)Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;
    .locals 6

    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFreeSnapMode:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    if-eq v2, v1, :cond_1

    iget v0, v0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge v0, p1, :cond_1

    iget v0, v2, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_1

    new-instance p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    const/16 p2, 0xa

    invoke-direct {p0, p1, p1, p2}, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    return-object p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    iget v5, v4, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    if-eqz p2, :cond_2

    iget v4, v4, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;->distanceMultiplier:F

    div-float/2addr v5, v4

    :cond_2
    cmpg-float v4, v5, v2

    if-gez v4, :cond_3

    move v1, v3

    move v2, v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/split/DividerSnapAlgorithm$SnapTarget;

    return-object p0
.end method

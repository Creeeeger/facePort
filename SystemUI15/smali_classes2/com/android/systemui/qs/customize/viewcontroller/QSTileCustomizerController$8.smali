.class public final Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "handleMessage() msg.what="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Landroid/os/Message;->what:I

    const-string v7, "QSTileCustomizerController"

    invoke-static {v6, v7, v5}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController$8;->this$0:Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;

    iget v6, v5, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mWhereAmI:I

    const/16 v7, 0x1388

    if-ne v6, v7, :cond_0

    iget-object v6, v5, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mActiveTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    goto :goto_0

    :cond_0
    iget-object v6, v5, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->mAvailableTileLayout:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    :goto_0
    iget v7, v0, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;

    invoke-virtual {v5, v0}, Lcom/android/systemui/qs/customize/viewcontroller/QSTileCustomizerController;->moveToArea(Lcom/android/systemui/qs/customize/MessageObjectAnim;)V

    goto/16 :goto_9

    :pswitch_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;

    iget-object v5, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_9

    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getCurrentItem()I

    move-result v9

    iget-object v5, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget v7, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->touchedPos:I

    const-string v8, "CSTMPagedTileLayout"

    if-nez v5, :cond_2

    const-string v0, "TileInfo is null"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "handleAnimate addInfo.spce"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v5, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "animation type = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->animationType:I

    invoke-static {v11, v8, v10}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v10, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->animationType:I

    const/16 v11, 0xca

    const-string v12, "CustomizerTileLayout"

    if-ne v10, v11, :cond_9

    iget-object v0, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/CustomTileInfo;)I

    move-result v6

    if-gez v6, :cond_3

    goto/16 :goto_9

    :cond_3
    iget v8, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mColumns:I

    iget v9, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mMaxRows:I

    mul-int/2addr v8, v9

    iget-object v9, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v9, v8, -0x1

    if-le v7, v9, :cond_4

    move v7, v9

    :cond_4
    sget-boolean v9, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "moveTile from = "

    const-string v10, " to  = "

    const-string/jumbo v11, "total = "

    invoke-static {v6, v7, v9, v10, v11}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "fromtileInfo = "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/systemui/qs/customize/SecTileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-static {v9, v8, v12}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const-string/jumbo v9, "y"

    const-string/jumbo v10, "x"

    if-ge v6, v7, :cond_7

    move v1, v6

    :goto_1
    if-ge v1, v7, :cond_6

    iget-object v11, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v11, v11, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    new-array v13, v4, [Landroid/animation/Animator;

    iget-object v14, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v15

    int-to-float v15, v15

    move/from16 p0, v6

    new-array v6, v2, [F

    aput v14, v6, v3

    aput v15, v6, v4

    invoke-static {v11, v10, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v13, v3

    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v6, v4, [Landroid/animation/Animator;

    iget-object v13, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getTop()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    new-array v14, v2, [F

    aput v13, v14, v3

    aput v1, v14, v4

    invoke-static {v11, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move/from16 v6, p0

    move v1, v12

    goto :goto_1

    :cond_6
    move/from16 p0, v6

    goto :goto_3

    :cond_7
    move/from16 p0, v6

    :goto_2
    if-le v6, v7, :cond_8

    iget-object v11, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    add-int/lit8 v12, v6, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v11, v11, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    new-array v13, v4, [Landroid/animation/Animator;

    iget-object v14, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v15

    int-to-float v15, v15

    new-array v1, v2, [F

    aput v14, v1, v3

    aput v15, v1, v4

    invoke-static {v11, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v13, v3

    invoke-virtual {v8, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v13, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getTop()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getTop()I

    move-result v13

    int-to-float v13, v13

    new-array v14, v2, [F

    aput v12, v14, v3

    aput v13, v14, v4

    invoke-static {v11, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v1, v3

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v1, -0x1

    add-int/2addr v6, v1

    goto :goto_2

    :cond_8
    :goto_3
    const-wide/16 v1, 0xc8

    invoke-virtual {v8, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;

    invoke-direct {v1, v0, v7, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout$3;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileLayout;ILcom/android/systemui/qs/customize/CustomTileInfo;)V

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    move/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v3, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_9

    :cond_9
    const/16 v1, 0xc9

    if-ne v10, v1, :cond_a

    iget-object v0, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->dropTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Ljava/lang/Boolean;)V

    goto/16 :goto_9

    :cond_a
    const/16 v1, 0xcb

    const/16 v2, 0xcc

    if-eq v10, v1, :cond_b

    if-ne v10, v2, :cond_c

    :cond_b
    const/4 v1, -0x1

    goto/16 :goto_4

    :cond_c
    const/16 v0, 0xc8

    if-ne v10, v0, :cond_d

    iget-object v0, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v0, v5, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->selectTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    goto/16 :goto_9

    :cond_d
    const/16 v0, 0xd3

    if-ne v10, v0, :cond_11

    iget-object v0, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->indexOf(Lcom/android/systemui/qs/customize/CustomTileInfo;)I

    move-result v1

    if-gez v1, :cond_e

    goto/16 :goto_9

    :cond_e
    iget-object v2, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_f

    iget-object v1, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :cond_f
    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->mCustomTilesInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/CustomTileInfo;->customTileView:Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    sget-boolean v2, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->DEBUG:Z

    if-eqz v2, :cond_10

    const-string/jumbo v2, "selectTileByAccessibility position = "

    invoke-static {v1, v2, v12}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_10
    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_9

    :cond_11
    const/16 v0, 0xd2

    if-ne v10, v0, :cond_1b

    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getTiledPageIndex(Lcom/android/systemui/qs/customize/CustomTileInfo;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleAnimate dropTile: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pageIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    goto/16 :goto_9

    :cond_12
    iget-object v1, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->dropTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Ljava/lang/Boolean;)V

    goto/16 :goto_9

    :goto_4
    iget-object v5, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_13

    goto/16 :goto_9

    :cond_13
    iget v5, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->animationType:I

    if-ne v5, v2, :cond_15

    iget-object v7, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mAdapter:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$1;->getCount()I

    move-result v7

    goto :goto_5

    :cond_14
    move v7, v3

    :goto_5
    sub-int/2addr v7, v4

    if-lt v9, v7, :cond_16

    goto/16 :goto_9

    :cond_15
    if-gtz v9, :cond_16

    goto/16 :goto_9

    :cond_16
    if-ne v5, v2, :cond_17

    move v10, v4

    goto :goto_6

    :cond_17
    move v10, v1

    :goto_6
    if-ne v5, v2, :cond_18

    move v1, v3

    goto :goto_7

    :cond_18
    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    move-result v1

    iget v7, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    mul-int/2addr v1, v7

    sub-int/2addr v1, v4

    :goto_7
    if-ne v5, v2, :cond_19

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    move-result v2

    iget v5, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    mul-int/2addr v2, v5

    sub-int/2addr v2, v4

    move v14, v2

    goto :goto_8

    :cond_19
    move v14, v3

    :goto_8
    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->getColumnCount()I

    move-result v2

    iget v5, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mRows:I

    mul-int/2addr v2, v5

    sub-int/2addr v2, v4

    add-int v11, v9, v10

    iget-object v5, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v5, v1}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->getInfo(I)Lcom/android/systemui/qs/customize/CustomTileInfo;

    move-result-object v13

    if-nez v13, :cond_1a

    goto :goto_9

    :cond_1a
    iget-object v1, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v1, v13, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->removeTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    iget-object v12, v0, Lcom/android/systemui/qs/customize/MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qs/customize/CustomTileInfo;

    iget-object v0, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v0, v12, v2, v3}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->addTile(Lcom/android/systemui/qs/customize/CustomTileInfo;IZ)V

    iget-object v0, v6, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$CustomizerTilePage;

    invoke-virtual {v0, v12, v4}, Lcom/android/systemui/qs/customize/CustomizerTileLayout;->selectTile(Lcom/android/systemui/qs/customize/CustomTileInfo;Z)V

    new-instance v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;

    move-object v7, v0

    move-object v8, v6

    invoke-direct/range {v7 .. v14}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;IIILcom/android/systemui/qs/customize/CustomTileInfo;Lcom/android/systemui/qs/customize/CustomTileInfo;I)V

    const-wide/16 v1, 0xd2

    invoke-virtual {v6, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

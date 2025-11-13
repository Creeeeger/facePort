.class public final Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/customize/SubscreenCustomizer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;

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

    const-string v7, "SubscreenCustomizer"

    invoke-static {v6, v7, v5}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget v5, Lcom/android/systemui/qp/customize/SubscreenCustomizer;->$r8$clinit:I

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/android/systemui/qp/customize/SubscreenCustomizer$1;->this$0:Lcom/android/systemui/qp/customize/SubscreenCustomizer;

    iget-object v5, v5, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v5, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iget v6, v0, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;

    invoke-virtual {v5}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->getCurrentItem()I

    move-result v6

    iget v7, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->touchedPos:I

    iget-object v8, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "handleAnimate addInfo:spec-"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v8, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;->mTilespec:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",animation type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->animationType:I

    const-string v11, "SubscreenPagedTileLayout"

    invoke-static {v10, v11, v9}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v9, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->animationType:I

    const/16 v10, 0xca

    const-string v12, "SubscreenTileLayout"

    if-ne v9, v10, :cond_4

    iget-object v0, v5, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v0, v8}, Lcom/android/systemui/qp/SubscreenTileLayout;->indexOf(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;)I

    move-result v5

    if-gez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v6, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mColumns:I

    iget v9, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRows:I

    mul-int/2addr v6, v9

    iget-object v9, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 v9, v6, -0x1

    if-le v7, v9, :cond_1

    move v7, v9

    :cond_1
    const-string v9, "moveTile from = "

    const-string v10, " to  = "

    const-string/jumbo v11, "total = "

    invoke-static {v5, v7, v9, v10, v11}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "fromtileInfo = "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v8, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;->mTilespec:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const-string/jumbo v8, "y"

    const-string/jumbo v9, "x"

    if-ge v5, v7, :cond_2

    move v1, v5

    :goto_0
    if-ge v1, v7, :cond_3

    iget-object v10, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v10, v10, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    new-array v12, v4, [Landroid/animation/Animator;

    iget-object v13, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v14

    int-to-float v14, v14

    new-array v15, v2, [F

    aput v13, v15, v3

    aput v14, v15, v4

    invoke-static {v10, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v12, v4, [Landroid/animation/Animator;

    iget-object v13, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getTop()I

    move-result v13

    int-to-float v13, v13

    iget-object v14, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    new-array v14, v2, [F

    aput v13, v14, v3

    aput v1, v14, v4

    invoke-static {v10, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v12, v3

    invoke-virtual {v6, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move v1, v11

    goto :goto_0

    :cond_2
    move v10, v5

    :goto_1
    if-le v10, v7, :cond_3

    iget-object v11, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    add-int/lit8 v12, v10, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v11, v11, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    new-array v13, v4, [Landroid/animation/Animator;

    iget-object v14, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v14

    int-to-float v14, v14

    iget-object v15, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v15

    int-to-float v15, v15

    new-array v1, v2, [F

    aput v14, v1, v3

    aput v15, v1, v4

    invoke-static {v11, v9, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v13, v3

    invoke-virtual {v6, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v13, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getTop()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mBoundaryBox:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getTop()I

    move-result v13

    int-to-float v13, v13

    new-array v14, v2, [F

    aput v12, v14, v3

    aput v13, v14, v4

    invoke-static {v11, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v1, v3

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v1, -0x1

    add-int/2addr v10, v1

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0xc8

    invoke-virtual {v6, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/qp/SubscreenTileLayout$3;

    invoke-direct {v1, v0, v7}, Lcom/android/systemui/qp/SubscreenTileLayout$3;-><init>(Lcom/android/systemui/qp/SubscreenTileLayout;I)V

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v2, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    const/4 v1, -0x1

    const/16 v7, 0xc9

    if-ne v9, v7, :cond_6

    iget-object v0, v5, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v0, v8}, Lcom/android/systemui/qp/SubscreenTileLayout;->indexOf(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;)I

    move-result v1

    if-gez v1, :cond_5

    goto/16 :goto_4

    :cond_5
    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dropTile tileView =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v0, 0x0

    throw v0

    :cond_6
    const/16 v7, 0xcb

    const/16 v10, 0xcc

    if-eq v9, v7, :cond_8

    if-ne v9, v10, :cond_7

    goto :goto_2

    :cond_7
    const/16 v0, 0xc8

    if-ne v9, v0, :cond_10

    iget-object v0, v5, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v0, v8, v3}, Lcom/android/systemui/qp/SubscreenTileLayout;->selectTile(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;Z)V

    goto/16 :goto_4

    :cond_8
    :goto_2
    invoke-virtual {v5}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->getCurrentItem()I

    move-result v13

    iget v6, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->animationType:I

    if-ne v6, v10, :cond_9

    iget-object v7, v5, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    if-ne v13, v7, :cond_a

    goto/16 :goto_4

    :cond_9
    if-nez v13, :cond_a

    goto/16 :goto_4

    :cond_a
    if-ne v6, v10, :cond_b

    move v1, v4

    :cond_b
    if-ne v6, v10, :cond_c

    move v7, v3

    goto :goto_3

    :cond_c
    invoke-virtual {v5}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->getColumnCount()I

    move-result v7

    mul-int/2addr v7, v2

    sub-int/2addr v7, v4

    :goto_3
    if-ne v6, v10, :cond_d

    invoke-virtual {v5}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->getColumnCount()I

    move-result v3

    mul-int/2addr v3, v2

    sub-int/2addr v3, v4

    :cond_d
    invoke-virtual {v5}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->getColumnCount()I

    move-result v6

    mul-int/2addr v6, v2

    sub-int/2addr v6, v4

    const-string v2, "movePage, cur = "

    const-string v8, ",pageOffset = "

    const-string v9, ",removePos = "

    invoke-static {v13, v1, v2, v8, v9}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ",curAddPos = "

    const-string v9, ",longClickedAddPos = "

    invoke-static {v2, v7, v8, v3, v9}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-static {v6, v11, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v2, v5, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    add-int v8, v13, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getInfo position = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v2, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v4

    if-le v7, v9, :cond_e

    const-string v7, "position is invalid position is  "

    invoke-static {v9, v7, v12}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    move v7, v9

    :cond_e
    iget-object v2, v2, Lcom/android/systemui/qp/SubscreenTileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    if-nez v11, :cond_f

    goto :goto_4

    :cond_f
    iget-object v2, v5, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v2, v11}, Lcom/android/systemui/qp/SubscreenTileLayout;->removeTile(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;)V

    iget-object v10, v0, Lcom/android/systemui/qp/customize/SubscreenCustomizer$MessageObjectAnim;->longClickedTileInfo:Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;

    iget-object v0, v5, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v0, v10, v6}, Lcom/android/systemui/qp/SubscreenTileLayout;->addTile(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;I)V

    iget-object v0, v5, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    invoke-virtual {v0, v10, v4}, Lcom/android/systemui/qp/SubscreenTileLayout;->selectTile(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;Z)V

    iget-object v0, v5, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubscreenTileLayout;

    new-instance v2, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;

    move-object v6, v2

    move-object v7, v5

    move v8, v13

    move v9, v1

    move v12, v3

    invoke-direct/range {v6 .. v12}, Lcom/android/systemui/qp/SubscreenPagedTileLayout$1;-><init>(Lcom/android/systemui/qp/SubscreenPagedTileLayout;IILcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$SubscreenTileRecord;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;

    invoke-direct {v0, v5, v13, v1}, Lcom/android/systemui/qp/SubscreenPagedTileLayout$2;-><init>(Lcom/android/systemui/qp/SubscreenPagedTileLayout;II)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v5, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

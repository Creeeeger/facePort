.class Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;
.super Ljava/lang/Object;
.source "SemAddDeleteHorizontalListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->prepareInsert(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

.field final synthetic blacklist val$adapter:Landroid/widget/ListAdapter;

.field final synthetic blacklist val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic blacklist val$insertedItems:Ljava/util/ArrayList;

.field final synthetic blacklist val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    .line 556
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 30

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    .line 559
    .local v1, "listview":Landroid/widget/SemHorizontalListView;
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    .line 560
    .local v2, "firstVisiblePos":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeaderViewsCount()I

    move-result v3

    .line 561
    .local v3, "headerViewsCount":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFooterViewsCount()I

    move-result v4

    .line 562
    .local v4, "footerViewsCount":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getChildCount()I

    move-result v5

    .line 563
    .local v5, "childCount":I
    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 564
    .local v6, "adapterCount":I
    const/4 v7, 0x0

    .line 565
    .local v7, "translationX":F
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v8, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v9, 0x0

    .line 569
    .local v9, "singleItemWidth":I
    const/4 v10, 0x0

    .line 570
    .local v10, "top":I
    const/4 v11, 0x0

    .line 571
    .local v11, "height":I
    const/4 v12, 0x0

    if-le v5, v3, :cond_0

    .line 572
    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v13}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$mgetChildMaxWidth(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)I

    move-result v9

    .line 573
    invoke-virtual {v1, v3}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v10

    .line 574
    invoke-virtual {v1, v12}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v11

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getHeight()I

    move-result v11

    .line 579
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v5, :cond_9

    .line 580
    add-int v15, v13, v2

    .line 581
    .local v15, "position":I
    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v17

    .line 582
    .local v17, "itemId":J
    invoke-virtual {v1, v13}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 583
    .local v12, "child":Landroid/view/View;
    const/16 v19, 0x0

    .line 585
    .local v19, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v14

    int-to-float v14, v14

    .line 586
    .local v14, "newX":F
    const-wide/16 v21, -0x1

    cmp-long v21, v17, v21

    move/from16 v22, v3

    .end local v3    # "headerViewsCount":I
    .local v22, "headerViewsCount":I
    if-nez v21, :cond_3

    .line 587
    add-int v21, v15, v4

    sub-int v21, v21, v6

    const/16 v20, 0x1

    add-int/lit8 v3, v21, 0x1

    move/from16 v21, v4

    .end local v4    # "footerViewsCount":I
    .local v21, "footerViewsCount":I
    int-to-long v3, v3

    .line 588
    .local v3, "footerId":J
    move/from16 v24, v6

    .end local v6    # "adapterCount":I
    .local v24, "adapterCount":I
    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v6, v6, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move/from16 v25, v10

    move/from16 v26, v11

    .end local v10    # "top":I
    .end local v11    # "height":I
    .local v25, "top":I
    .local v26, "height":I
    neg-long v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 589
    .end local v19    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v6, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-nez v6, :cond_1

    .line 591
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    const-string v11, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    goto/16 :goto_2

    .line 595
    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 596
    iget v10, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v10, v10

    cmpl-float v10, v10, v14

    if-nez v10, :cond_2

    .line 598
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v27, v3

    .end local v3    # "footerId":J
    .local v27, "footerId":J
    const-string v3, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.left="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    goto :goto_2

    .line 602
    .end local v27    # "footerId":J
    .restart local v3    # "footerId":J
    :cond_2
    move-wide/from16 v27, v3

    .end local v3    # "footerId":J
    .restart local v27    # "footerId":J
    iget v3, v6, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v14

    .line 603
    .end local v7    # "translationX":F
    .local v3, "translationX":F
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v7, 0x0

    invoke-virtual {v4, v12, v3, v7}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 604
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v27    # "footerId":J
    move/from16 v27, v2

    move v7, v3

    goto/16 :goto_5

    .line 608
    .end local v3    # "translationX":F
    .end local v21    # "footerViewsCount":I
    .end local v24    # "adapterCount":I
    .end local v25    # "top":I
    .end local v26    # "height":I
    .local v4, "footerViewsCount":I
    .local v6, "adapterCount":I
    .restart local v7    # "translationX":F
    .restart local v10    # "top":I
    .restart local v11    # "height":I
    .restart local v19    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_3
    move/from16 v21, v4

    move/from16 v24, v6

    move/from16 v25, v10

    move/from16 v26, v11

    .end local v4    # "footerViewsCount":I
    .end local v6    # "adapterCount":I
    .end local v10    # "top":I
    .end local v11    # "height":I
    .restart local v21    # "footerViewsCount":I
    .restart local v24    # "adapterCount":I
    .restart local v25    # "top":I
    .restart local v26    # "height":I
    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 610
    .local v3, "startPos":Ljava/lang/Integer;
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v4, v4, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 611
    .end local v19    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v4, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-eqz v4, :cond_5

    .line 612
    invoke-virtual {v4}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 614
    iget v6, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v6, v6

    cmpl-float v6, v6, v14

    if-nez v6, :cond_4

    .line 615
    nop

    .line 579
    .end local v3    # "startPos":Ljava/lang/Integer;
    .end local v4    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "newX":F
    .end local v15    # "position":I
    .end local v17    # "itemId":J
    :goto_2
    move/from16 v27, v2

    goto/16 :goto_5

    .line 617
    .restart local v3    # "startPos":Ljava/lang/Integer;
    .restart local v4    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .restart local v12    # "child":Landroid/view/View;
    .restart local v14    # "newX":F
    .restart local v15    # "position":I
    .restart local v17    # "itemId":J
    :cond_4
    iget v6, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    int-to-float v6, v6

    sub-float/2addr v6, v14

    .line 618
    .end local v7    # "translationX":F
    .local v6, "translationX":F
    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v10, 0x0

    invoke-virtual {v7, v12, v6, v10}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 619
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    move/from16 v27, v2

    move v7, v6

    goto :goto_5

    .end local v6    # "translationX":F
    .local v7, "translationX":F
    :cond_5
    if-eqz v3, :cond_6

    .line 622
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v14

    .line 623
    .end local v7    # "translationX":F
    .restart local v6    # "translationX":F
    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v10, 0x0

    invoke-virtual {v7, v12, v6, v10}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 624
    .local v7, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    .end local v7    # "anim":Landroid/animation/ObjectAnimator;
    move/from16 v27, v2

    move v7, v6

    goto :goto_5

    .line 627
    .end local v6    # "translationX":F
    .local v7, "translationX":F
    :cond_6
    add-int v6, v13, v2

    .line 628
    .local v6, "currentPos":I
    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v6, v11}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v10

    .line 629
    .local v10, "shiftCount":I
    sub-int v11, v6, v10

    .line 631
    .local v11, "oldPos":I
    sub-int v19, v6, v11

    .line 632
    .local v19, "rowShift":I
    const/16 v20, -0x1

    .line 633
    .local v20, "oldX":I
    move/from16 v27, v2

    .end local v2    # "firstVisiblePos":I
    .local v27, "firstVisiblePos":I
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 634
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v2

    mul-int v28, v19, v9

    add-int v2, v2, v28

    .end local v20    # "oldX":I
    .local v2, "oldX":I
    goto :goto_3

    .line 636
    .end local v2    # "oldX":I
    .restart local v20    # "oldX":I
    :cond_7
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v2

    mul-int v28, v19, v9

    sub-int v2, v2, v28

    .line 639
    .end local v20    # "oldX":I
    .restart local v2    # "oldX":I
    :goto_3
    move-object/from16 v20, v3

    .end local v3    # "startPos":Ljava/lang/Integer;
    .local v20, "startPos":Ljava/lang/Integer;
    int-to-float v3, v2

    sub-float/2addr v3, v14

    .line 641
    .end local v7    # "translationX":F
    .local v3, "translationX":F
    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItemPosHash:Ljava/util/HashSet;

    move/from16 v28, v2

    .end local v2    # "oldX":I
    .local v28, "oldX":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 642
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    const/4 v7, 0x0

    invoke-virtual {v2, v12, v3, v7}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "anim":Landroid/animation/ObjectAnimator;
    goto :goto_4

    .line 644
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    :cond_8
    const/4 v7, 0x0

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-virtual {v2, v12, v3, v7}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 646
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    :goto_4
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v3

    .line 579
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v3    # "translationX":F
    .end local v4    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v6    # "currentPos":I
    .end local v10    # "shiftCount":I
    .end local v11    # "oldPos":I
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "newX":F
    .end local v15    # "position":I
    .end local v17    # "itemId":J
    .end local v19    # "rowShift":I
    .end local v20    # "startPos":Ljava/lang/Integer;
    .end local v28    # "oldX":I
    .restart local v7    # "translationX":F
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v21

    move/from16 v3, v22

    move/from16 v6, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v2, v27

    const/4 v12, 0x0

    goto/16 :goto_1

    .end local v21    # "footerViewsCount":I
    .end local v22    # "headerViewsCount":I
    .end local v24    # "adapterCount":I
    .end local v25    # "top":I
    .end local v26    # "height":I
    .end local v27    # "firstVisiblePos":I
    .local v2, "firstVisiblePos":I
    .local v3, "headerViewsCount":I
    .local v4, "footerViewsCount":I
    .local v6, "adapterCount":I
    .local v10, "top":I
    .local v11, "height":I
    :cond_9
    move/from16 v27, v2

    move/from16 v22, v3

    move/from16 v21, v4

    move/from16 v24, v6

    move/from16 v25, v10

    move/from16 v26, v11

    .line 650
    .end local v2    # "firstVisiblePos":I
    .end local v3    # "headerViewsCount":I
    .end local v4    # "footerViewsCount":I
    .end local v6    # "adapterCount":I
    .end local v10    # "top":I
    .end local v11    # "height":I
    .end local v13    # "i":I
    .restart local v21    # "footerViewsCount":I
    .restart local v22    # "headerViewsCount":I
    .restart local v24    # "adapterCount":I
    .restart local v25    # "top":I
    .restart local v26    # "height":I
    .restart local v27    # "firstVisiblePos":I
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 654
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 657
    .local v2, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    .line 658
    .local v3, "lastVisiblePosition":I
    const/4 v4, 0x0

    .line 660
    .local v4, "updateListenerAdded":Z
    move v6, v3

    .line 661
    .local v6, "currentPos":I
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v12, "bounds"

    if-eqz v10, :cond_10

    .line 662
    add-int/lit8 v6, v6, 0x1

    .line 663
    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 664
    goto :goto_6

    .line 667
    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 668
    .local v10, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 680
    .local v13, "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget v15, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v11, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v15, v11}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->getNewPositionForInsert(ILjava/util/ArrayList;)I

    move-result v11

    .line 681
    .local v11, "newPosition":I
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v14

    if-ge v11, v14, :cond_d

    .line 682
    add-int/lit8 v6, v6, -0x1

    .line 683
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getFirstVisiblePosition()I

    move-result v14

    sub-int/2addr v14, v11

    .line 685
    .local v14, "rowShift":I
    if-eqz v5, :cond_b

    .line 686
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/widget/SemHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v15

    .local v15, "childLeft":I
    goto :goto_7

    .line 688
    .end local v15    # "childLeft":I
    :cond_b
    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->getLeft()I

    move-result v15

    .line 691
    .restart local v15    # "childLeft":I
    :goto_7
    move-object/from16 v18, v1

    .end local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .local v18, "listview":Landroid/widget/SemHorizontalListView;
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 692
    mul-int v1, v14, v9

    add-int/2addr v1, v15

    .local v1, "newX":I
    goto :goto_8

    .line 694
    .end local v1    # "newX":I
    :cond_c
    mul-int v1, v14, v9

    sub-int v1, v15, v1

    .line 696
    .end local v15    # "childLeft":I
    .restart local v1    # "newX":I
    :goto_8
    goto :goto_9

    .line 697
    .end local v14    # "rowShift":I
    .end local v18    # "listview":Landroid/widget/SemHorizontalListView;
    .local v1, "listview":Landroid/widget/SemHorizontalListView;
    :cond_d
    move-object/from16 v18, v1

    .end local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v18    # "listview":Landroid/widget/SemHorizontalListView;
    iget v1, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    sub-int v14, v6, v1

    .line 698
    .restart local v14    # "rowShift":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-$$Nest$fgetmHorizontalListView(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SemHorizontalListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 699
    iget v1, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    mul-int v15, v14, v9

    sub-int/2addr v1, v15

    .local v1, "newX":I
    goto :goto_9

    .line 701
    .end local v1    # "newX":I
    :cond_e
    iget v1, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    mul-int v15, v14, v9

    add-int/2addr v1, v15

    .line 705
    .restart local v1    # "newX":I
    :goto_9
    new-instance v15, Landroid/graphics/Rect;

    move-object/from16 v19, v2

    .end local v2    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v19, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    iget v2, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    move/from16 v23, v3

    .end local v3    # "lastVisiblePosition":I
    .local v23, "lastVisiblePosition":I
    iget v3, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    move/from16 v28, v5

    .end local v5    # "childCount":I
    .local v28, "childCount":I
    add-int v5, v25, v26

    move/from16 v29, v6

    move/from16 v6, v25

    .end local v25    # "top":I
    .local v6, "top":I
    .local v29, "currentPos":I
    invoke-direct {v15, v2, v6, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v15

    .line 706
    .local v2, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int/2addr v15, v6

    invoke-direct {v3, v1, v6, v5, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 707
    .local v3, "newViewBounds":Landroid/graphics/Rect;
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    iget-object v5, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v15, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    move/from16 v25, v1

    const/4 v1, 0x2

    .end local v1    # "newX":I
    .local v25, "newX":I
    new-array v1, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v2, v1, v16

    const/16 v17, 0x1

    aput-object v3, v1, v17

    invoke-static {v5, v12, v15, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 710
    .local v1, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    if-nez v4, :cond_f

    .line 712
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 713
    const/4 v4, 0x1

    .line 715
    .end local v1    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v2    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v3    # "newViewBounds":Landroid/graphics/Rect;
    .end local v10    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v11    # "newPosition":I
    .end local v13    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v14    # "rowShift":I
    .end local v25    # "newX":I
    :cond_f
    move/from16 v25, v6

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v23

    move/from16 v5, v28

    move/from16 v6, v29

    goto/16 :goto_6

    .line 719
    .end local v18    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v19    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v23    # "lastVisiblePosition":I
    .end local v28    # "childCount":I
    .end local v29    # "currentPos":I
    .local v1, "listview":Landroid/widget/SemHorizontalListView;
    .local v2, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v3, "lastVisiblePosition":I
    .restart local v5    # "childCount":I
    .local v6, "currentPos":I
    .local v25, "top":I
    :cond_10
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v23, v3

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v6, v25

    .end local v1    # "listview":Landroid/widget/SemHorizontalListView;
    .end local v2    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v3    # "lastVisiblePosition":I
    .end local v5    # "childCount":I
    .end local v25    # "top":I
    .local v6, "top":I
    .restart local v18    # "listview":Landroid/widget/SemHorizontalListView;
    .restart local v19    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .restart local v23    # "lastVisiblePosition":I
    .restart local v28    # "childCount":I
    .restart local v29    # "currentPos":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 721
    .local v1, "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 722
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 723
    .local v2, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 725
    .local v3, "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget v5, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    iget-object v10, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    mul-int/2addr v10, v9

    add-int/2addr v5, v10

    .line 727
    .local v5, "newX":I
    new-instance v10, Landroid/graphics/Rect;

    iget v11, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->left:I

    iget v13, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->right:I

    add-int v14, v6, v26

    invoke-direct {v10, v11, v6, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 728
    .local v10, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v13, v5

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v14

    add-int/2addr v14, v6

    invoke-direct {v11, v5, v6, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 729
    .local v11, "newViewBounds":Landroid/graphics/Rect;
    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v13, v13, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v13, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v14, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    move-object/from16 v17, v1

    const/4 v15, 0x2

    .end local v1    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v17, "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    new-array v1, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v10, v1, v16

    const/16 v20, 0x1

    aput-object v11, v1, v20

    invoke-static {v13, v12, v14, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 732
    .local v1, "animBounds":Landroid/animation/ObjectAnimator;
    if-nez v4, :cond_11

    .line 733
    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v13, v13, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v13}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 735
    :cond_11
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    .end local v1    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v2    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .end local v3    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v5    # "newX":I
    .end local v10    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v11    # "newViewBounds":Landroid/graphics/Rect;
    move-object/from16 v1, v17

    goto :goto_a

    .line 738
    .end local v17    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v1, "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    :cond_12
    move-object/from16 v17, v1

    .end local v1    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .restart local v17    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 739
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 741
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 742
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 743
    sget-object v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 744
    new-instance v2, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 772
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$4;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mTranslationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 773
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 774
    return-void
.end method

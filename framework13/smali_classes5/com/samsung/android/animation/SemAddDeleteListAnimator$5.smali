.class Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;
.super Ljava/lang/Object;
.source "SemAddDeleteListAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteListAnimator;->prepareInsert(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field final synthetic blacklist val$adapter:Landroid/widget/ListAdapter;

.field final synthetic blacklist val$insertedItemPosHash:Ljava/util/HashSet;

.field final synthetic blacklist val$insertedItems:Ljava/util/ArrayList;

.field final synthetic blacklist val$upcomingViewsStartCoords:Ljava/util/HashMap;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator;Landroid/widget/ListAdapter;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 569
    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$adapter:Landroid/widget/ListAdapter;

    iput-object p3, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$insertedItems:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$insertedItemPosHash:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 30

    .line 571
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmListView(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/widget/ListView;

    move-result-object v1

    .line 572
    .local v1, "listview":Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 573
    .local v2, "firstVisiblePos":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 574
    .local v3, "headerViewsCount":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    .line 575
    .local v4, "footerViewsCount":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 576
    .local v5, "childCount":I
    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 577
    .local v6, "adapterCount":I
    const/4 v7, 0x0

    .line 578
    .local v7, "translationY":F
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .local v8, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v9, 0x0

    .line 582
    .local v9, "singleItemHeight":I
    const/4 v10, 0x0

    .line 583
    .local v10, "left":I
    const/4 v11, 0x0

    .line 584
    .local v11, "width":I
    const/4 v12, 0x0

    if-le v5, v3, :cond_0

    .line 585
    iget-object v13, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v13}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$mgetChildMaxHeight(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)I

    move-result v13

    invoke-virtual {v1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v14

    add-int v9, v13, v14

    .line 586
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 587
    invoke-virtual {v1, v12}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v11

    goto :goto_0

    .line 589
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v11

    .line 592
    :goto_0
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v5, :cond_8

    .line 593
    add-int v15, v13, v2

    .line 594
    .local v15, "position":I
    iget-object v12, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$adapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v15}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v17

    .line 595
    .local v17, "itemId":J
    invoke-virtual {v1, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 596
    .local v12, "child":Landroid/view/View;
    const/16 v19, 0x0

    .line 598
    .local v19, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    int-to-float v14, v14

    .line 599
    .local v14, "newY":F
    const-wide/16 v21, -0x1

    cmp-long v21, v17, v21

    move/from16 v22, v3

    .end local v3    # "headerViewsCount":I
    .local v22, "headerViewsCount":I
    if-nez v21, :cond_3

    .line 600
    add-int v21, v15, v4

    sub-int v21, v21, v6

    const/16 v20, 0x1

    add-int/lit8 v3, v21, 0x1

    move/from16 v21, v4

    .end local v4    # "footerViewsCount":I
    .local v21, "footerViewsCount":I
    int-to-long v3, v3

    .line 601
    .local v3, "footerId":J
    move/from16 v24, v5

    .end local v5    # "childCount":I
    .local v24, "childCount":I
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    move/from16 v25, v6

    move/from16 v26, v7

    .end local v6    # "adapterCount":I
    .end local v7    # "translationY":F
    .local v25, "adapterCount":I
    .local v26, "translationY":F
    neg-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 602
    .end local v19    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v5, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-nez v5, :cond_1

    .line 604
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AFTER header/footer SOMETHING WENT WRONG, in the new layout, header/footer is appearing that was not present before!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    goto/16 :goto_2

    .line 608
    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 609
    iget v6, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v6, v6

    cmpl-float v6, v6, v14

    if-nez v6, :cond_2

    .line 611
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v27, v3

    .end local v3    # "footerId":J
    .local v27, "footerId":J
    const-string v3, "AFTER header/footer something strange is happening, the coordinates are same after layout, viewInfo.top="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    goto :goto_2

    .line 615
    .end local v27    # "footerId":J
    .restart local v3    # "footerId":J
    :cond_2
    move-wide/from16 v27, v3

    .end local v3    # "footerId":J
    .restart local v27    # "footerId":J
    iget v3, v5, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v3, v3

    sub-float/2addr v3, v14

    .line 616
    .end local v26    # "translationY":F
    .local v3, "translationY":F
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v6, v3}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 617
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v27    # "footerId":J
    move/from16 v28, v2

    move v7, v3

    goto/16 :goto_4

    .line 621
    .end local v3    # "translationY":F
    .end local v21    # "footerViewsCount":I
    .end local v24    # "childCount":I
    .end local v25    # "adapterCount":I
    .local v4, "footerViewsCount":I
    .local v5, "childCount":I
    .restart local v6    # "adapterCount":I
    .restart local v7    # "translationY":F
    .restart local v19    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    :cond_3
    move/from16 v21, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    .end local v4    # "footerViewsCount":I
    .end local v5    # "childCount":I
    .end local v6    # "adapterCount":I
    .end local v7    # "translationY":F
    .restart local v21    # "footerViewsCount":I
    .restart local v24    # "childCount":I
    .restart local v25    # "adapterCount":I
    .restart local v26    # "translationY":F
    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 623
    .local v3, "startPos":Ljava/lang/Integer;
    iget-object v4, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v4, v4, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 624
    .end local v19    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v4, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    if-eqz v4, :cond_5

    .line 625
    invoke-virtual {v4}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->recycleBitmap()V

    .line 627
    iget v5, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v5, v5

    cmpl-float v5, v5, v14

    if-nez v5, :cond_4

    .line 628
    nop

    .line 592
    .end local v3    # "startPos":Ljava/lang/Integer;
    .end local v4    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "newY":F
    .end local v15    # "position":I
    .end local v17    # "itemId":J
    :goto_2
    move/from16 v28, v2

    move/from16 v7, v26

    goto :goto_4

    .line 630
    .restart local v3    # "startPos":Ljava/lang/Integer;
    .restart local v4    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .restart local v12    # "child":Landroid/view/View;
    .restart local v14    # "newY":F
    .restart local v15    # "position":I
    .restart local v17    # "itemId":J
    :cond_4
    iget v5, v4, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    int-to-float v5, v5

    sub-float/2addr v5, v14

    .line 631
    .end local v26    # "translationY":F
    .local v5, "translationY":F
    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v7, 0x0

    invoke-virtual {v6, v12, v7, v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 632
    .local v6, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    move/from16 v28, v2

    move v7, v5

    goto :goto_4

    .end local v5    # "translationY":F
    .restart local v26    # "translationY":F
    :cond_5
    if-eqz v3, :cond_6

    .line 635
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v14

    .line 636
    .end local v26    # "translationY":F
    .restart local v5    # "translationY":F
    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v7, 0x0

    invoke-virtual {v6, v12, v7, v5}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 637
    .restart local v6    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    move/from16 v28, v2

    move v7, v5

    goto :goto_4

    .line 640
    .end local v5    # "translationY":F
    .restart local v26    # "translationY":F
    :cond_6
    add-int v5, v13, v2

    .line 641
    .local v5, "currentPos":I
    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getShiftCount(ILjava/util/ArrayList;)I

    move-result v6

    .line 642
    .local v6, "shiftCount":I
    sub-int v7, v5, v6

    .line 644
    .local v7, "oldPos":I
    sub-int v19, v5, v7

    .line 645
    .local v19, "rowShift":I
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v20

    mul-int v27, v19, v9

    move/from16 v28, v2

    .end local v2    # "firstVisiblePos":I
    .local v28, "firstVisiblePos":I
    sub-int v2, v20, v27

    .line 646
    .local v2, "oldY":I
    move-object/from16 v20, v3

    .end local v3    # "startPos":Ljava/lang/Integer;
    .local v20, "startPos":Ljava/lang/Integer;
    int-to-float v3, v2

    sub-float/2addr v3, v14

    .line 648
    .end local v26    # "translationY":F
    .local v3, "translationY":F
    move/from16 v27, v2

    .end local v2    # "oldY":I
    .local v27, "oldY":I
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$insertedItemPosHash:Ljava/util/HashSet;

    move-object/from16 v29, v4

    .end local v4    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v29, "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 649
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v4, v3}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "anim":Landroid/animation/ObjectAnimator;
    goto :goto_3

    .line 651
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    :cond_7
    const/4 v4, 0x0

    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-virtual {v2, v12, v4, v3}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 653
    .restart local v2    # "anim":Landroid/animation/ObjectAnimator;
    :goto_3
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v3

    .line 592
    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v3    # "translationY":F
    .end local v5    # "currentPos":I
    .end local v6    # "shiftCount":I
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "newY":F
    .end local v15    # "position":I
    .end local v17    # "itemId":J
    .end local v19    # "rowShift":I
    .end local v20    # "startPos":Ljava/lang/Integer;
    .end local v27    # "oldY":I
    .end local v29    # "viewInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .local v7, "translationY":F
    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v21

    move/from16 v3, v22

    move/from16 v5, v24

    move/from16 v6, v25

    move/from16 v2, v28

    const/4 v12, 0x0

    goto/16 :goto_1

    .end local v21    # "footerViewsCount":I
    .end local v22    # "headerViewsCount":I
    .end local v24    # "childCount":I
    .end local v25    # "adapterCount":I
    .end local v28    # "firstVisiblePos":I
    .local v2, "firstVisiblePos":I
    .local v3, "headerViewsCount":I
    .local v4, "footerViewsCount":I
    .local v5, "childCount":I
    .local v6, "adapterCount":I
    :cond_8
    move/from16 v28, v2

    move/from16 v22, v3

    move/from16 v21, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    .line 657
    .end local v2    # "firstVisiblePos":I
    .end local v3    # "headerViewsCount":I
    .end local v4    # "footerViewsCount":I
    .end local v5    # "childCount":I
    .end local v6    # "adapterCount":I
    .end local v7    # "translationY":F
    .end local v13    # "i":I
    .restart local v21    # "footerViewsCount":I
    .restart local v22    # "headerViewsCount":I
    .restart local v24    # "childCount":I
    .restart local v25    # "adapterCount":I
    .restart local v26    # "translationY":F
    .restart local v28    # "firstVisiblePos":I
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$upcomingViewsStartCoords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 661
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 664
    .local v2, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 665
    .local v3, "lastVisiblePosition":I
    const/4 v4, 0x0

    .line 667
    .local v4, "updateListenerAdded":Z
    move v5, v3

    .line 668
    .local v5, "currentPos":I
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v12, "bounds"

    if-eqz v6, :cond_c

    .line 669
    add-int/lit8 v5, v5, 0x1

    .line 670
    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$insertedItems:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 671
    goto :goto_5

    .line 674
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 675
    .local v6, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 679
    .local v13, "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v15, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v15, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->getNewPositionForInsert(ILjava/util/ArrayList;)I

    move-result v7

    .line 680
    .local v7, "newPosition":I
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v14

    if-ge v7, v14, :cond_a

    .line 681
    add-int/lit8 v5, v5, -0x1

    .line 682
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v14

    sub-int/2addr v14, v7

    .line 683
    .local v14, "rowShift":I
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v15

    mul-int v18, v14, v9

    sub-int v15, v15, v18

    .local v15, "newY":I
    goto :goto_6

    .line 685
    .end local v14    # "rowShift":I
    .end local v15    # "newY":I
    :cond_a
    iget v14, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->oldPosition:I

    sub-int v14, v5, v14

    .line 686
    .restart local v14    # "rowShift":I
    iget v15, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    mul-int v18, v14, v9

    add-int v15, v15, v18

    .line 689
    .restart local v15    # "newY":I
    :goto_6
    move-object/from16 v18, v1

    .end local v1    # "listview":Landroid/widget/ListView;
    .local v18, "listview":Landroid/widget/ListView;
    new-instance v1, Landroid/graphics/Rect;

    move-object/from16 v19, v2

    .end local v2    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v19, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    iget v2, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    move/from16 v23, v3

    .end local v3    # "lastVisiblePosition":I
    .local v23, "lastVisiblePosition":I
    add-int v3, v10, v11

    move/from16 v27, v5

    .end local v5    # "currentPos":I
    .local v27, "currentPos":I
    iget v5, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    invoke-direct {v1, v10, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 690
    .local v1, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v15

    invoke-direct {v2, v10, v15, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 691
    .local v2, "newViewBounds":Landroid/graphics/Rect;
    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v3, v3, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v3, v13, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v5, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    move-object/from16 v29, v6

    const/4 v6, 0x2

    .end local v6    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .local v29, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    new-array v6, v6, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v6, v16

    const/16 v17, 0x1

    aput-object v2, v6, v17

    invoke-static {v3, v12, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 694
    .local v3, "animBounds":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    if-nez v4, :cond_b

    .line 696
    iget-object v5, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v5, v5, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 697
    const/4 v4, 0x1

    .line 699
    .end local v1    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v2    # "newViewBounds":Landroid/graphics/Rect;
    .end local v3    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v7    # "newPosition":I
    .end local v13    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v14    # "rowShift":I
    .end local v15    # "newY":I
    .end local v29    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    :cond_b
    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v23

    move/from16 v5, v27

    goto/16 :goto_5

    .line 703
    .end local v18    # "listview":Landroid/widget/ListView;
    .end local v19    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v23    # "lastVisiblePosition":I
    .end local v27    # "currentPos":I
    .local v1, "listview":Landroid/widget/ListView;
    .local v2, "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .local v3, "lastVisiblePosition":I
    .restart local v5    # "currentPos":I
    :cond_c
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v23, v3

    .end local v1    # "listview":Landroid/widget/ListView;
    .end local v2    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v3    # "lastVisiblePosition":I
    .restart local v18    # "listview":Landroid/widget/ListView;
    .restart local v19    # "entrySetIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .restart local v23    # "lastVisiblePosition":I
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 705
    .local v1, "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 706
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 707
    .local v2, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 709
    .local v3, "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget v6, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    iget-object v7, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->val$insertedItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/2addr v7, v9

    add-int/2addr v6, v7

    .line 711
    .local v6, "newY":I
    new-instance v7, Landroid/graphics/Rect;

    iget v13, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->top:I

    add-int v14, v10, v11

    iget v15, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->bottom:I

    invoke-direct {v7, v10, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 712
    .local v7, "oldViewBounds":Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    add-int/2addr v14, v10

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v15

    add-int/2addr v15, v6

    invoke-direct {v13, v10, v6, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 713
    .local v13, "newViewBounds":Landroid/graphics/Rect;
    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v14, v14, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    iget-object v14, v3, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    sget-object v15, Lcom/samsung/android/animation/SemAnimatorUtils;->BOUNDS_EVALUATOR:Landroid/animation/TypeEvaluator;

    move-object/from16 v27, v1

    move-object/from16 v17, v2

    const/4 v1, 0x2

    .end local v1    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .end local v2    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .local v17, "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    .local v27, "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    new-array v2, v1, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v2, v16

    const/16 v20, 0x1

    aput-object v13, v2, v20

    invoke-static {v14, v12, v15, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 716
    .local v2, "animBounds":Landroid/animation/ObjectAnimator;
    if-nez v4, :cond_d

    .line 717
    iget-object v14, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v14, v14, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v14}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 719
    :cond_d
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    .end local v2    # "animBounds":Landroid/animation/ObjectAnimator;
    .end local v3    # "viewinfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    .end local v6    # "newY":I
    .end local v7    # "oldViewBounds":Landroid/graphics/Rect;
    .end local v13    # "newViewBounds":Landroid/graphics/Rect;
    .end local v17    # "viewEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;"
    move-object/from16 v1, v27

    goto :goto_7

    .line 722
    .end local v27    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .restart local v1    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    :cond_e
    move-object/from16 v27, v1

    .end local v1    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    .restart local v27    # "headerFootersIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;>;>;"
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 723
    iget-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, v1, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mOldHeaderFooterViewCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 725
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 726
    .local v1, "animSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 727
    sget-object v2, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 728
    new-instance v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;

    invoke-direct {v2, v0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5$1;-><init>(Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 763
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v2, v2, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 764
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 766
    invoke-static {}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "postDelayed #2 mAniTimeoutRunnable delay = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v6, v6, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v6, v6, 0x64

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v2, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmHandler(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->-$$Nest$fgetmAniTimeoutRunnable(Lcom/samsung/android/animation/SemAddDeleteListAnimator;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v6, v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator$5;->this$0:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget v6, v6, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->mTranslationDuration:I

    add-int/lit8 v6, v6, 0x64

    int-to-long v6, v6

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 768
    return-void
.end method

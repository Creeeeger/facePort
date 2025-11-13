.class Landroid/widget/SemExpandableListView$7;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startCollapseAnimation(ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListView;

.field final synthetic blacklist val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic blacklist val$collapsedGroupFlatPosBefore:I

.field final synthetic blacklist val$collapsedGroupTopBefore:I

.field final synthetic blacklist val$firstVisiblePosBefore:I

.field final synthetic blacklist val$groupCountBefore:I

.field final synthetic blacklist val$groupPosBefore:I

.field final synthetic blacklist val$listTotalChildrenCountBefore:I


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;IIIIII)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;

    .line 1582
    iput-object p1, p0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Landroid/widget/SemExpandableListView$7;->val$groupPosBefore:I

    iput p4, p0, Landroid/widget/SemExpandableListView$7;->val$collapsedGroupFlatPosBefore:I

    iput p5, p0, Landroid/widget/SemExpandableListView$7;->val$groupCountBefore:I

    iput p6, p0, Landroid/widget/SemExpandableListView$7;->val$firstVisiblePosBefore:I

    iput p7, p0, Landroid/widget/SemExpandableListView$7;->val$listTotalChildrenCountBefore:I

    iput p8, p0, Landroid/widget/SemExpandableListView$7;->val$collapsedGroupTopBefore:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 20

    .line 1585
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1587
    iget-object v1, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v1

    .line 1588
    .local v1, "childCount":I
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1589
    iget-object v3, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$mresetCollapseAnimationState(Landroid/widget/SemExpandableListView;)V

    .line 1590
    iget-object v3, v0, Landroid/widget/SemExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1591
    return v2

    .line 1594
    :cond_0
    iget-object v3, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v3}, Landroid/widget/SemExpandableListView;->getExpandCollapseDuration()I

    move-result v3

    .line 1597
    .local v3, "animationDuration":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    .local v4, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iget-object v5, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v5}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v5

    .line 1600
    .local v5, "firstVisiblePosAfter":I
    iget-object v6, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    iget v7, v0, Landroid/widget/SemExpandableListView$7;->val$groupPosBefore:I

    invoke-static {v7}, Landroid/widget/SemExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v6

    .line 1601
    .local v6, "collapsedGroupFlatPosAfter":I
    iget-object v7, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    sub-int v8, v6, v5

    invoke-virtual {v7, v8}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1602
    .local v7, "collapsedGroupAfter":Landroid/view/View;
    if-nez v7, :cond_1

    .line 1605
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startCollapseAnimation() BEFORE: groupPos="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/widget/SemExpandableListView$7;->val$groupPosBefore:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", flatPos="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Landroid/widget/SemExpandableListView$7;->val$collapsedGroupFlatPosBefore:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", groupCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v0, Landroid/widget/SemExpandableListView$7;->val$groupCountBefore:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", firstPos="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v12, v0, Landroid/widget/SemExpandableListView$7;->val$firstVisiblePosBefore:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ", totalListChildrenCount="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v13, v0, Landroid/widget/SemExpandableListView$7;->val$listTotalChildrenCountBefore:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "; AFTER: flatPos="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v10}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmAdapter(Landroid/widget/SemExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v10

    .line 1609
    invoke-interface {v10}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    .line 1610
    invoke-virtual {v10}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1605
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object v8, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-$$Nest$mresetCollapseAnimationState(Landroid/widget/SemExpandableListView;)V

    .line 1612
    iget-object v8, v0, Landroid/widget/SemExpandableListView$7;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 1613
    return v2

    .line 1615
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1617
    .local v8, "collapsedGroupTopAfter":I
    iget v9, v0, Landroid/widget/SemExpandableListView$7;->val$collapsedGroupTopBefore:I

    sub-int v9, v8, v9

    .line 1618
    .local v9, "collapsedGroupShift":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v1, :cond_8

    .line 1619
    iget-object v12, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v12, v10}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1620
    .local v12, "child":Landroid/view/View;
    iget-object v13, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    add-int v14, v10, v5

    invoke-virtual {v13, v14}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v13

    .line 1621
    .local v13, "packedPos":J
    iget-object v15, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v15}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1624
    .local v15, "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    if-eqz v15, :cond_2

    .line 1625
    iget-object v11, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v11}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v11

    invoke-virtual {v11, v13, v14}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1627
    iget v11, v15, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v11, v11, v17

    .local v11, "offset":I
    goto :goto_1

    .line 1629
    .end local v11    # "offset":I
    :cond_2
    invoke-static {v13, v14}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v11

    .line 1630
    .local v11, "groupPosAfter":I
    const/4 v2, -0x3

    if-ne v11, v2, :cond_3

    .line 1632
    iget-object v2, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I

    move-result v2

    sub-int/2addr v2, v9

    move v11, v2

    .local v2, "offset":I
    goto :goto_1

    .line 1633
    .end local v2    # "offset":I
    :cond_3
    const/4 v2, -0x2

    if-ne v11, v2, :cond_4

    .line 1635
    neg-int v2, v9

    move v11, v2

    .restart local v2    # "offset":I
    goto :goto_1

    .line 1636
    .end local v2    # "offset":I
    :cond_4
    iget v2, v0, Landroid/widget/SemExpandableListView$7;->val$groupPosBefore:I

    if-le v11, v2, :cond_5

    .line 1638
    iget-object v2, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I

    move-result v2

    sub-int/2addr v2, v9

    move v11, v2

    .restart local v2    # "offset":I
    goto :goto_1

    .line 1641
    .end local v2    # "offset":I
    :cond_5
    neg-int v2, v9

    move v11, v2

    .line 1645
    .local v11, "offset":I
    :goto_1
    if-nez v11, :cond_6

    .line 1646
    move/from16 v18, v1

    move/from16 v17, v5

    const/4 v1, 0x1

    goto :goto_2

    .line 1647
    :cond_6
    add-int v2, v10, v5

    if-ne v2, v6, :cond_7

    iget-object v2, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v2, v2, Landroid/widget/SemExpandableListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_7

    .line 1649
    iget-object v2, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2, v11}, Landroid/widget/SemExpandableListView;->-$$Nest$mgetSelectorRectAnim(Landroid/widget/SemExpandableListView;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1652
    :cond_7
    int-to-float v2, v11

    invoke-virtual {v12, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1653
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move/from16 v18, v1

    move/from16 v17, v5

    const/4 v1, 0x1

    .end local v1    # "childCount":I
    .end local v5    # "firstVisiblePosAfter":I
    .local v17, "firstVisiblePosAfter":I
    .local v18, "childCount":I
    new-array v5, v1, [F

    const/16 v19, 0x0

    const/16 v16, 0x0

    aput v19, v5, v16

    invoke-static {v12, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1654
    .local v2, "translateAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    .end local v2    # "translateAnim":Landroid/animation/ObjectAnimator;
    .end local v11    # "offset":I
    .end local v13    # "packedPos":J
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move v2, v1

    move/from16 v5, v17

    move/from16 v1, v18

    goto/16 :goto_0

    .end local v12    # "child":Landroid/view/View;
    .end local v15    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v17    # "firstVisiblePosAfter":I
    .end local v18    # "childCount":I
    .restart local v1    # "childCount":I
    .restart local v5    # "firstVisiblePosAfter":I
    :cond_8
    move/from16 v18, v1

    move/from16 v17, v5

    .line 1657
    .end local v1    # "childCount":I
    .end local v5    # "firstVisiblePosAfter":I
    .end local v10    # "i":I
    .restart local v17    # "firstVisiblePosAfter":I
    .restart local v18    # "childCount":I
    iget-object v1, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    const/4 v2, 0x0

    invoke-static {v1, v7, v2, v3}, Landroid/widget/SemExpandableListView;->-$$Nest$mstartIndicatorAnimation(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    .line 1659
    iget-object v1, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v1}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 1661
    .local v1, "viewSnapshotsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_9

    .line 1662
    iget-object v5, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1664
    .local v5, "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    iget-object v10, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v10, v9, v5}, Landroid/widget/SemExpandableListView;->-$$Nest$mcreateViewSnapshotAnimation(Landroid/widget/SemExpandableListView;ILandroid/widget/SemExpandableListView$ViewInfo;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 1665
    .local v10, "animBounds":Landroid/animation/ObjectAnimator;
    iget-object v11, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v11}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmGhostViews(Landroid/widget/SemExpandableListView;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1666
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    .end local v5    # "viewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v10    # "animBounds":Landroid/animation/ObjectAnimator;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1668
    .end local v2    # "i":I
    :cond_9
    if-lez v1, :cond_a

    .line 1669
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1670
    .local v2, "anim":Landroid/animation/ValueAnimator;
    iget-object v5, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v5, v5, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1671
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1673
    .end local v2    # "anim":Landroid/animation/ValueAnimator;
    :cond_a
    iget-object v2, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmCollapsedGroupTopStart(Landroid/widget/SemExpandableListView;)I

    move-result v5

    add-int/2addr v5, v9

    invoke-static {v2, v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmCollapsedGroupTopEnd(Landroid/widget/SemExpandableListView;I)V

    .line 1675
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1676
    .local v2, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1677
    int-to-long v10, v3

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1678
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetEXPAND_COLLAPSE_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1679
    new-instance v5, Landroid/widget/SemExpandableListView$7$1;

    invoke-direct {v5, v0}, Landroid/widget/SemExpandableListView$7$1;-><init>(Landroid/widget/SemExpandableListView$7;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1693
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1694
    iget-object v5, v0, Landroid/widget/SemExpandableListView$7;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->clear()V

    .line 1696
    const/4 v5, 0x0

    return v5

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

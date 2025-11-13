.class Landroid/widget/SemExpandableListView$8;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->startCollapseAllAnimation([ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/SemExpandableListView;

.field final synthetic blacklist val$animationEndRunnable:Ljava/lang/Runnable;

.field final synthetic blacklist val$animations:Ljava/util/ArrayList;

.field final synthetic blacklist val$expanded:[Z

.field final synthetic blacklist val$lastGroupIdBefore:I

.field final synthetic blacklist val$lastPositionBottomBefore:I


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemExpandableListView;Ljava/lang/Runnable;II[ZLjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;

    .line 1781
    iput-object p1, p0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iput-object p2, p0, Landroid/widget/SemExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    iput p3, p0, Landroid/widget/SemExpandableListView$8;->val$lastGroupIdBefore:I

    iput p4, p0, Landroid/widget/SemExpandableListView$8;->val$lastPositionBottomBefore:I

    iput-object p5, p0, Landroid/widget/SemExpandableListView$8;->val$expanded:[Z

    iput-object p6, p0, Landroid/widget/SemExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 19

    .line 1785
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1787
    iget-object v1, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1}, Landroid/widget/SemExpandableListView;->getChildCount()I

    move-result v1

    .line 1788
    .local v1, "childCount":I
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1789
    iget-object v3, v0, Landroid/widget/SemExpandableListView$8;->val$animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1790
    iget-object v3, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v3}, Landroid/widget/SemExpandableListView;->-$$Nest$mresetCollapseAnimationState(Landroid/widget/SemExpandableListView;)V

    .line 1791
    return v2

    .line 1794
    :cond_0
    iget-object v3, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iget v4, v0, Landroid/widget/SemExpandableListView$8;->val$lastGroupIdBefore:I

    invoke-static {v3, v4}, Landroid/widget/SemExpandableListView;->-$$Nest$mgetAbsoluteFlatPosition(Landroid/widget/SemExpandableListView;I)I

    move-result v3

    .line 1795
    .local v3, "previousLastGroupPos":I
    iget-object v4, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iget v5, v0, Landroid/widget/SemExpandableListView$8;->val$lastPositionBottomBefore:I

    invoke-virtual {v4, v3}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Landroid/widget/SemExpandableListView;->-$$Nest$fputmTranslationOffset(Landroid/widget/SemExpandableListView;I)V

    .line 1797
    const/16 v4, 0x2bc

    .line 1801
    .local v4, "animationDuration":I
    iget-object v5, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v5}, Landroid/widget/SemExpandableListView;->getFirstVisiblePosition()I

    move-result v5

    .line 1802
    .local v5, "firstVisiblePos":I
    const/4 v6, 0x1

    .line 1803
    .local v6, "allCollapsed":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_5

    .line 1804
    iget-object v9, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    add-int v10, v7, v5

    invoke-static {v9, v10}, Landroid/widget/SemExpandableListView;->-$$Nest$misHeaderOrFooterPosition(Landroid/widget/SemExpandableListView;I)Z

    move-result v9

    .line 1805
    .local v9, "isHeaderOrFooter":Z
    iget-object v10, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v10, v7}, Landroid/widget/SemExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1806
    .local v10, "child":Landroid/view/View;
    iget-object v11, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-virtual {v11, v7}, Landroid/widget/SemExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v11

    .line 1808
    .local v11, "packedPos":J
    iget-object v13, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v13}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/SemExpandableListView$ViewInfo;

    .line 1809
    .local v13, "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    if-eqz v13, :cond_1

    .line 1810
    iget v14, v13, Landroid/widget/SemExpandableListView$ViewInfo;->top:I

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    .local v14, "offset":I
    goto :goto_1

    .line 1812
    .end local v14    # "offset":I
    :cond_1
    iget-object v14, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v14}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmTranslationOffset(Landroid/widget/SemExpandableListView;)I

    move-result v14

    .line 1814
    .restart local v14    # "offset":I
    :goto_1
    invoke-static {v11, v12}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v15

    .line 1815
    .local v15, "groupId":I
    if-nez v9, :cond_2

    iget v2, v0, Landroid/widget/SemExpandableListView$8;->val$lastGroupIdBefore:I

    if-gt v15, v2, :cond_2

    .line 1816
    iget-object v2, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmCollapsingRects(Landroid/widget/SemExpandableListView;)[Landroid/widget/SemExpandableListView$CollapsingRect;

    move-result-object v2

    aget-object v2, v2, v15

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/SemExpandableListView$CollapsingRect;->setFinishY(I)V

    .line 1818
    :cond_2
    iget-object v2, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1819
    if-nez v9, :cond_3

    iget-object v2, v0, Landroid/widget/SemExpandableListView$8;->val$expanded:[Z

    array-length v8, v2

    if-ge v15, v8, :cond_3

    .line 1820
    aget-boolean v2, v2, v15

    xor-int/lit8 v8, v2, 0x1

    and-int/2addr v6, v8

    .line 1821
    if-eqz v2, :cond_3

    .line 1822
    iget-object v2, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    const/4 v8, 0x0

    invoke-static {v2, v10, v8, v4}, Landroid/widget/SemExpandableListView;->-$$Nest$mstartIndicatorAnimation(Landroid/widget/SemExpandableListView;Landroid/view/View;ZI)V

    .line 1826
    :cond_3
    if-nez v14, :cond_4

    move/from16 v16, v1

    const/4 v8, 0x1

    goto :goto_2

    .line 1828
    :cond_4
    int-to-float v2, v14

    invoke-virtual {v10, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1829
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    move/from16 v16, v1

    const/4 v8, 0x1

    .end local v1    # "childCount":I
    .local v16, "childCount":I
    new-array v1, v8, [F

    const/16 v18, 0x0

    const/16 v17, 0x0

    aput v18, v1, v17

    invoke-static {v10, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1830
    .local v1, "translateAnim":Landroid/animation/ObjectAnimator;
    iget-object v2, v0, Landroid/widget/SemExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    .end local v1    # "translateAnim":Landroid/animation/ObjectAnimator;
    .end local v9    # "isHeaderOrFooter":Z
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "packedPos":J
    .end local v15    # "groupId":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v2, v8

    move/from16 v1, v16

    goto/16 :goto_0

    .end local v13    # "oldViewInfo":Landroid/widget/SemExpandableListView$ViewInfo;
    .end local v14    # "offset":I
    .end local v16    # "childCount":I
    .local v1, "childCount":I
    :cond_5
    move/from16 v16, v1

    .line 1833
    .end local v1    # "childCount":I
    .end local v7    # "i":I
    .restart local v16    # "childCount":I
    new-instance v1, Landroid/widget/SemExpandableListView$8$1;

    invoke-direct {v1, v0}, Landroid/widget/SemExpandableListView$8$1;-><init>(Landroid/widget/SemExpandableListView$8;)V

    .line 1846
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    if-eqz v6, :cond_6

    .line 1847
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1848
    const/4 v2, 0x0

    return v2

    .line 1850
    :cond_6
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1851
    .local v2, "anim":Landroid/animation/ValueAnimator;
    iget-object v7, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    iget-object v7, v7, Landroid/widget/SemExpandableListView;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1852
    iget-object v7, v0, Landroid/widget/SemExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1854
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1855
    .local v7, "set":Landroid/animation/AnimatorSet;
    iget-object v8, v0, Landroid/widget/SemExpandableListView$8;->val$animations:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1856
    int-to-long v8, v4

    invoke-virtual {v7, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1857
    invoke-static {}, Landroid/widget/SemExpandableListView;->-$$Nest$sfgetEXPAND_COLLAPSE_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1858
    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1859
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 1860
    iget-object v8, v0, Landroid/widget/SemExpandableListView$8;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v8}, Landroid/widget/SemExpandableListView;->-$$Nest$fgetmViewSnapshots(Landroid/widget/SemExpandableListView;)Landroid/util/LongSparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->clear()V

    .line 1862
    const/4 v8, 0x0

    return v8

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

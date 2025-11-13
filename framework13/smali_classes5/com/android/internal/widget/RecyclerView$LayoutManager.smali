.class public abstract Lcom/android/internal/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;,
        Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field blacklist mAutoMeasure:Z

.field blacklist mChildHelper:Lcom/android/internal/widget/ChildHelper;

.field private blacklist mHeight:I

.field private blacklist mHeightMode:I

.field blacklist mIsAttachedToWindow:Z

.field private blacklist mItemPrefetchEnabled:Z

.field private blacklist mMeasurementCacheEnabled:Z

.field blacklist mPrefetchMaxCountObserved:I

.field blacklist mPrefetchMaxObservedInInitialPrefetch:Z

.field blacklist mRecyclerView:Lcom/android/internal/widget/RecyclerView;

.field blacklist mRequestedSimpleAnimations:Z

.field blacklist mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

.field private blacklist mWidth:I

.field private blacklist mWidthMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$monSmoothScrollerStopped(Lcom/android/internal/widget/RecyclerView$LayoutManager;Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 6959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 6968
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 6970
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 6976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 6978
    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return-void
.end method

.method private blacklist addViewInt(Landroid/view/View;IZ)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "disappearing"    # Z

    .line 7834
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7835
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7844
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 7837
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->addToDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 7846
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 7847
    .local v1, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 7857
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-ne v2, v4, :cond_6

    .line 7859
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 7860
    .local v2, "currentIndex":I
    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    .line 7861
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v5}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result p2

    .line 7863
    :cond_3
    if-eq v2, v4, :cond_5

    .line 7868
    if-eq v2, p2, :cond_4

    .line 7869
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->moveView(II)V

    .line 7871
    .end local v2    # "currentIndex":I
    :cond_4
    goto :goto_4

    .line 7864
    .restart local v2    # "currentIndex":I
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 7866
    invoke-virtual {v5, p1}, Lcom/android/internal/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7872
    .end local v2    # "currentIndex":I
    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    .line 7873
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 7874
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 7875
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_4

    .line 7848
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7849
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_3

    .line 7851
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 7853
    :goto_3
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, p1, p2, v4, v3}, Lcom/android/internal/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 7878
    :cond_9
    :goto_4
    iget-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz v2, :cond_a

    .line 7882
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 7883
    iput-boolean v3, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 7885
    :cond_a
    return-void
.end method

.method public static blacklist chooseSize(III)I
    .locals 3
    .param p0, "spec"    # I
    .param p1, "desired"    # I
    .param p2, "min"    # I

    .line 7165
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7166
    .local v0, "mode":I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 7167
    .local v1, "size":I
    sparse-switch v0, :sswitch_data_0

    .line 7174
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 7169
    :sswitch_0
    return v1

    .line 7171
    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist detachViewInternal(ILandroid/view/View;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 8061
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->detachViewFromParent(I)V

    .line 8062
    return-void
.end method

.method public static blacklist getChildMeasureSpec(IIIIZ)I
    .locals 5
    .param p0, "parentSize"    # I
    .param p1, "parentMode"    # I
    .param p2, "padding"    # I
    .param p3, "childDimension"    # I
    .param p4, "canScroll"    # Z

    .line 8695
    sub-int v0, p0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8696
    .local v0, "size":I
    const/4 v1, 0x0

    .line 8697
    .local v1, "resultSize":I
    const/4 v2, 0x0

    .line 8698
    .local v2, "resultMode":I
    const/4 v3, -0x2

    const/4 v4, -0x1

    if-eqz p4, :cond_2

    .line 8699
    if-ltz p3, :cond_0

    .line 8700
    move v1, p3

    .line 8701
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_2

    .line 8702
    :cond_0
    if-ne p3, v4, :cond_1

    .line 8703
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 8710
    :sswitch_0
    const/4 v1, 0x0

    .line 8711
    const/4 v2, 0x0

    goto :goto_0

    .line 8706
    :sswitch_1
    move v1, v0

    .line 8707
    move v2, p1

    .line 8708
    nop

    .line 8712
    :goto_0
    goto :goto_2

    .line 8714
    :cond_1
    if-ne p3, v3, :cond_7

    .line 8715
    const/4 v1, 0x0

    .line 8716
    const/4 v2, 0x0

    goto :goto_2

    .line 8719
    :cond_2
    if-ltz p3, :cond_3

    .line 8720
    move v1, p3

    .line 8721
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_2

    .line 8722
    :cond_3
    if-ne p3, v4, :cond_4

    .line 8723
    move v1, v0

    .line 8724
    move v2, p1

    goto :goto_2

    .line 8725
    :cond_4
    if-ne p3, v3, :cond_7

    .line 8726
    move v1, v0

    .line 8727
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_6

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p1, v3, :cond_5

    goto :goto_1

    .line 8730
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 8728
    :cond_6
    :goto_1
    const/high16 v2, -0x80000000

    .line 8736
    :cond_7
    :goto_2
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static blacklist getChildMeasureSpec(IIIZ)I
    .locals 4
    .param p0, "parentSize"    # I
    .param p1, "padding"    # I
    .param p2, "childDimension"    # I
    .param p3, "canScroll"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8652
    sub-int v0, p0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8653
    .local v0, "size":I
    const/4 v1, 0x0

    .line 8654
    .local v1, "resultSize":I
    const/4 v2, 0x0

    .line 8655
    .local v2, "resultMode":I
    if-eqz p3, :cond_1

    .line 8656
    if-ltz p2, :cond_0

    .line 8657
    move v1, p2

    .line 8658
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 8662
    :cond_0
    const/4 v1, 0x0

    .line 8663
    const/4 v2, 0x0

    goto :goto_0

    .line 8666
    :cond_1
    if-ltz p2, :cond_2

    .line 8667
    move v1, p2

    .line 8668
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 8669
    :cond_2
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 8670
    move v1, v0

    .line 8672
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_0

    .line 8673
    :cond_3
    const/4 v3, -0x2

    if-ne p2, v3, :cond_4

    .line 8674
    move v1, v0

    .line 8675
    const/high16 v2, -0x80000000

    .line 8678
    :cond_4
    :goto_0
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    return v3
.end method

.method public static blacklist getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 9747
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    .line 9748
    .local v0, "properties":Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;
    sget-object v1, Lcom/android/internal/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 9750
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    .line 9751
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    .line 9752
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 9753
    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 9754
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 9755
    return-object v0
.end method

.method private static blacklist isMeasurementUpToDate(III)Z
    .locals 4
    .param p0, "childSize"    # I
    .param p1, "spec"    # I
    .param p2, "dimension"    # I

    .line 8589
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8590
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 8591
    .local v1, "specSize":I
    const/4 v2, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    .line 8592
    return v2

    .line 8594
    :cond_0
    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 8602
    return v2

    .line 8600
    :sswitch_0
    if-ne v1, p0, :cond_1

    move v2, v3

    :cond_1
    return v2

    .line 8596
    :sswitch_1
    return v3

    .line 8598
    :sswitch_2
    if-lt v1, p0, :cond_2

    move v2, v3

    :cond_2
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist onSmoothScrollerStopped(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V
    .locals 1
    .param p1, "smoothScroller"    # Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    .line 9432
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    .line 9433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    .line 9435
    :cond_0
    return-void
.end method

.method private blacklist scrapOrRecycleView(Lcom/android/internal/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .locals 2
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "index"    # I
    .param p3, "view"    # Landroid/view/View;

    .line 8449
    invoke-static {p3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8450
    .local v0, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8454
    return-void

    .line 8456
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 8457
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8458
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8459
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 8461
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 8462
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 8463
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->onViewDetached(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 8465
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist addDisappearingView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7789
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 7790
    return-void
.end method

.method public blacklist addDisappearingView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 7807
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 7808
    return-void
.end method

.method public blacklist addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7818
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 7819
    return-void
.end method

.method public blacklist addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 7830
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    .line 7831
    return-void
.end method

.method public blacklist assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 7149
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7150
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->assertInLayoutOrScroll(Ljava/lang/String;)V

    .line 7152
    :cond_0
    return-void
.end method

.method public blacklist assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 7186
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7187
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 7189
    :cond_0
    return-void
.end method

.method public blacklist attachView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 8106
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 8107
    return-void
.end method

.method public blacklist attachView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 8095
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$LayoutParams;)V

    .line 8096
    return-void
.end method

.method public blacklist attachView(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$LayoutParams;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "lp"    # Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 8074
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8075
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8076
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->addToDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 8078
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 8080
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8084
    return-void
.end method

.method public blacklist calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 8955
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 8956
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8957
    return-void

    .line 8959
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 8960
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8961
    return-void
.end method

.method public blacklist canScrollHorizontally()Z
    .locals 1

    .line 7690
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canScrollVertically()Z
    .locals 1

    .line 7700
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkLayoutParams(Lcom/android/internal/widget/RecyclerView$LayoutParams;)Z
    .locals 1
    .param p1, "lp"    # Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 7605
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist collectAdjacentPrefetchPositions(IILcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p4, "layoutPrefetchRegistry"    # Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 7357
    return-void
.end method

.method public blacklist collectInitialPrefetchPositions(ILcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .param p1, "adapterItemCount"    # I
    .param p2, "layoutPrefetchRegistry"    # Lcom/android/internal/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 7385
    return-void
.end method

.method public blacklist computeHorizontalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9286
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeHorizontalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9301
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeHorizontalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9316
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeVerticalScrollExtent(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9331
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeVerticalScrollOffset(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9346
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist computeVerticalScrollRange(Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9361
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist detachAndScrapAttachedViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 8441
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 8442
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 8443
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8444
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/android/internal/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8442
    .end local v2    # "v":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8446
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist detachAndScrapView(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 8145
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 8146
    .local v0, "index":I
    invoke-direct {p0, p2, v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/android/internal/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8147
    return-void
.end method

.method public blacklist detachAndScrapViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 8159
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8160
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p2, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lcom/android/internal/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    .line 8161
    return-void
.end method

.method public blacklist detachView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 8032
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 8033
    .local v0, "ind":I
    if-ltz v0, :cond_0

    .line 8034
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 8036
    :cond_0
    return-void
.end method

.method public blacklist detachViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 8054
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    .line 8055
    return-void
.end method

.method blacklist dispatchAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 7388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7389
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V

    .line 7390
    return-void
.end method

.method blacklist dispatchDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 7393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7394
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 7395
    return-void
.end method

.method public blacklist endAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 7770
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 7771
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 7773
    :cond_0
    return-void
.end method

.method public blacklist findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 7974
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 7975
    return-object v1

    .line 7977
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 7978
    .local v0, "found":Landroid/view/View;
    if-nez v0, :cond_1

    .line 7979
    return-object v1

    .line 7981
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7982
    return-object v1

    .line 7984
    :cond_2
    return-object v0
.end method

.method public blacklist findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .line 8001
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 8002
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 8003
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8004
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 8005
    .local v3, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_0

    .line 8006
    goto :goto_1

    .line 8008
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 8009
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 8010
    :cond_1
    return-object v2

    .line 8002
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8013
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public abstract blacklist generateDefaultLayoutParams()Lcom/android/internal/widget/RecyclerView$LayoutParams;
.end method

.method public blacklist generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 7646
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public blacklist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .locals 2
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 7622
    instance-of v0, p1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 7623
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Lcom/android/internal/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 7624
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 7625
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 7627
    :cond_1
    new-instance v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public blacklist getBaseline()I
    .locals 1

    .line 7933
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getBottomDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 8990
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public blacklist getChildAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 8202
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public blacklist getChildCount()I
    .locals 1

    .line 8193
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getChildCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getClipToPadding()Z
    .locals 1

    .line 7505
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getColumnCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9647
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9650
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :cond_1
    return v1

    .line 9648
    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getDecoratedBottom(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 8934
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 8886
    invoke-static {p1, p2}, Lcom/android/internal/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8887
    return-void
.end method

.method public blacklist getDecoratedLeft(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 8898
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getDecoratedMeasuredHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 8763
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8764
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist getDecoratedMeasuredWidth(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 8749
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8750
    .local v0, "insets":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist getDecoratedRight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 8922
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public blacklist getDecoratedTop(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 8910
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getFocusedChild()Landroid/view/View;
    .locals 3

    .line 8339
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8340
    return-object v1

    .line 8342
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 8343
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8346
    :cond_1
    return-object v0

    .line 8344
    :cond_2
    :goto_0
    return-object v1
.end method

.method public blacklist getHeight()I
    .locals 1

    .line 8256
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    return v0
.end method

.method public blacklist getHeightMode()I
    .locals 1

    .line 8238
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return v0
.end method

.method public blacklist getItemCount()I
    .locals 2

    .line 8362
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8363
    .local v0, "a":Lcom/android/internal/widget/RecyclerView$Adapter;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public blacklist getItemViewType(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 7954
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    return v0
.end method

.method public blacklist getLayoutDirection()I
    .locals 1

    .line 7760
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public blacklist getLeftDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 9005
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public blacklist getMinimumHeight()I
    .locals 1

    .line 9404
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public blacklist getMinimumWidth()I
    .locals 1

    .line 9397
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public blacklist getPaddingBottom()I
    .locals 1

    .line 8292
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getPaddingEnd()I
    .locals 1

    .line 8310
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getPaddingLeft()I
    .locals 1

    .line 8265
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getPaddingRight()I
    .locals 1

    .line 8283
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getPaddingStart()I
    .locals 1

    .line 8301
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingStart()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getPaddingTop()I
    .locals 1

    .line 8274
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist getPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 7944
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    return v0
.end method

.method public blacklist getRightDecorationWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 9020
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public blacklist getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9628
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9631
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    :cond_1
    return v1

    .line 9629
    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getSelectionModeForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9612
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getTopDecorationHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 8975
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public blacklist getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "includeDecorInsets"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .line 8853
    if-eqz p2, :cond_0

    .line 8854
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8855
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    .line 8856
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 8855
    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8857
    .end local v0    # "insets":Landroid/graphics/Rect;
    goto :goto_0

    .line 8858
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8861
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 8862
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 8863
    .local v0, "childMatrix":Landroid/graphics/Matrix;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_1

    .line 8864
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 8865
    .local v1, "tempRectF":Landroid/graphics/RectF;
    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8866
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8867
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    .line 8868
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    .line 8869
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    .line 8870
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v5

    .line 8871
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 8867
    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 8875
    .end local v0    # "childMatrix":Landroid/graphics/Matrix;
    .end local v1    # "tempRectF":Landroid/graphics/RectF;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 8876
    return-void
.end method

.method public blacklist getWidth()I
    .locals 1

    .line 8247
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    return v0
.end method

.method public blacklist getWidthMode()I
    .locals 1

    .line 8220
    iget v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidthMode:I

    return v0
.end method

.method blacklist hasFlexibleChildInBothOrientations()Z
    .locals 5

    .line 9780
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 9781
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9782
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9783
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 9784
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    .line 9785
    const/4 v4, 0x1

    return v4

    .line 9781
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9788
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist hasFocus()Z
    .locals 1

    .line 8330
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist ignoreView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 8407
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 8412
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8413
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8414
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ViewInfoStore;->removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 8415
    return-void

    .line 8410
    .end local v0    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View should be fully attached to be ignored"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isAttachedToWindow()Z
    .locals 1

    .line 7405
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return v0
.end method

.method public blacklist isAutoMeasureEnabled()Z
    .locals 1

    .line 7268
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return v0
.end method

.method public blacklist isFocused()Z
    .locals 1

    .line 8320
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final blacklist isItemPrefetchEnabled()Z
    .locals 1

    .line 7333
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return v0
.end method

.method public blacklist isLayoutHierarchical(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Z
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9664
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMeasurementCacheEnabled()Z
    .locals 1

    .line 8573
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    return v0
.end method

.method public blacklist isSmoothScrolling()Z
    .locals 1

    .line 7747
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist layoutDecorated(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 8798
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8799
    .local v0, "insets":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v3, p4, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v4, p5, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 8801
    return-void
.end method

.method public blacklist layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 8834
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 8835
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8836
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, p4, v4

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v5, p5, v5

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 8839
    return-void
.end method

.method public blacklist measureChild(Landroid/view/View;II)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .line 8519
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 8521
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8522
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 8523
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr p3, v2

    .line 8524
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    .line 8525
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, p2

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->width:I

    .line 8526
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    .line 8524
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 8527
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v4

    .line 8528
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->height:I

    .line 8529
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    .line 8527
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 8530
    .local v3, "heightSpec":I
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8531
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 8533
    :cond_0
    return-void
.end method

.method public blacklist measureChildWithMargins(Landroid/view/View;II)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthUsed"    # I
    .param p3, "heightUsed"    # I

    .line 8618
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 8620
    .local v0, "lp":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8621
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 8622
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int/2addr p3, v2

    .line 8624
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    .line 8625
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v4, p2

    iget v5, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->width:I

    .line 8627
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v6

    .line 8624
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v2

    .line 8628
    .local v2, "widthSpec":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v4

    .line 8629
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;->height:I

    .line 8631
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    .line 8628
    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    .line 8632
    .local v3, "heightSpec":I
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8633
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 8635
    :cond_0
    return-void
.end method

.method public blacklist moveView(II)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 8126
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8127
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 8131
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 8132
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    .line 8133
    return-void

    .line 8128
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist offsetChildrenHorizontal(I)V
    .locals 1
    .param p1, "dx"    # I

    .line 8373
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8374
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    .line 8376
    :cond_0
    return-void
.end method

.method public blacklist offsetChildrenVertical(I)V
    .locals 1
    .param p1, "dy"    # I

    .line 8385
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 8386
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->offsetChildrenVertical(I)V

    .line 8388
    :cond_0
    return-void
.end method

.method public blacklist onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "oldAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 9169
    return-void
.end method

.method public blacklist onAddFocusables(Lcom/android/internal/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 1
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p3, "direction"    # I
    .param p4, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 9197
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onAttachedToWindow(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;

    .line 7460
    return-void
.end method

.method public blacklist onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7469
    return-void
.end method

.method public blacklist onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 7496
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lcom/android/internal/widget/RecyclerView;)V

    .line 7497
    return-void
.end method

.method public blacklist onFocusSearchFailed(Landroid/view/View;ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I
    .param p3, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p4, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 9043
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 9519
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 9520
    return-void
.end method

.method public blacklist onInitializeAccessibilityEvent(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 9535
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    .line 9538
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 9539
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 9540
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 9541
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    .line 9538
    :goto_1
    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 9543
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3

    .line 9544
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 9546
    :cond_3
    return-void

    .line 9536
    :cond_4
    :goto_2
    return-void
.end method

.method blacklist onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9468
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9469
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfo(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9498
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 9499
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9500
    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9501
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 9503
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 9504
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9505
    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 9506
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 9508
    :cond_3
    nop

    .line 9510
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v0

    .line 9511
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v1

    .line 9512
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)Z

    move-result v2

    .line 9513
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I

    move-result v3

    .line 9510
    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 9514
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 9515
    return-void
.end method

.method blacklist onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9550
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9552
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9553
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 9556
    :cond_0
    return-void
.end method

.method public blacklist onInitializeAccessibilityNodeInfoForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 9574
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 9575
    .local v2, "rowIndexGuess":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :cond_1
    move v4, v1

    .line 9576
    .local v4, "columnIndexGuess":I
    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 9577
    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    .line 9579
    .local v0, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 9580
    return-void
.end method

.method public blacklist onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 9063
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onItemsAdded(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 9219
    return-void
.end method

.method public blacklist onItemsChanged(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 9207
    return-void
.end method

.method public blacklist onItemsMoved(Lcom/android/internal/widget/RecyclerView;III)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 9271
    return-void
.end method

.method public blacklist onItemsRemoved(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 9229
    return-void
.end method

.method public blacklist onItemsUpdated(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 9241
    return-void
.end method

.method public blacklist onItemsUpdated(Lcom/android/internal/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 9254
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/android/internal/widget/RecyclerView;II)V

    .line 9255
    return-void
.end method

.method public blacklist onLayoutChildren(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 7560
    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7561
    return-void
.end method

.method public blacklist onLayoutCompleted(Lcom/android/internal/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 7575
    return-void
.end method

.method public blacklist onMeasure(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;II)V
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "widthSpec"    # I
    .param p4, "heightSpec"    # I

    .line 9379
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 9380
    return-void
.end method

.method public blacklist onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "focused"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9131
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "child"    # Landroid/view/View;
    .param p4, "focused"    # Landroid/view/View;

    .line 9153
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public blacklist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 9423
    return-void
.end method

.method public blacklist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 9417
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 9443
    return-void
.end method

.method blacklist performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 9669
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public blacklist performAccessibilityAction(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Landroid/os/Bundle;

    .line 9685
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 9686
    return v1

    .line 9688
    :cond_0
    const/4 v2, 0x0

    .local v2, "vScroll":I
    const/4 v3, 0x0

    .line 9689
    .local v3, "hScroll":I
    const/4 v4, 0x1

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    .line 9691
    :sswitch_0
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9692
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    neg-int v2, v0

    .line 9694
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9695
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, v5

    neg-int v3, v0

    goto :goto_0

    .line 9699
    :sswitch_1
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9700
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int v2, v0, v5

    .line 9702
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9703
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int v3, v0, v5

    .line 9707
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 9708
    return v1

    .line 9710
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/widget/RecyclerView;->smoothScrollBy(II)V

    .line 9711
    return v4

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method blacklist performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 9716
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public blacklist performAccessibilityActionForItem(Lcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "action"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .line 9737
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist postOnAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 7419
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7420
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7422
    :cond_0
    return-void
.end method

.method public blacklist removeAllViews()V
    .locals 3

    .line 7920
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 7921
    .local v0, "childCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 7922
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ChildHelper;->removeViewAt(I)V

    .line 7921
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7924
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public blacklist removeAndRecycleAllViews(Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 3
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 9458
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 9459
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9460
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9461
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 9458
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 9464
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method blacklist removeAndRecycleScrapInt(Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 6
    .param p1, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 8477
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v0

    .line 8479
    .local v0, "scrapCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 8480
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 8481
    .local v2, "scrap":Landroid/view/View;
    invoke-static {v2}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 8482
    .local v3, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8483
    goto :goto_1

    .line 8490
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8491
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8492
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8494
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_2

    .line 8495
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 8497
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8498
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 8479
    .end local v2    # "scrap":Landroid/view/View;
    .end local v3    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8500
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->clearScrap()V

    .line 8501
    if-lez v0, :cond_4

    .line 8502
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->invalidate()V

    .line 8504
    :cond_4
    return-void
.end method

.method public blacklist removeAndRecycleView(Landroid/view/View;Lcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 8170
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 8171
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 8172
    return-void
.end method

.method public blacklist removeAndRecycleViewAt(ILcom/android/internal/widget/RecyclerView$Recycler;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;

    .line 8181
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8182
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8183
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    .line 8184
    return-void
.end method

.method public blacklist removeCallbacks(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 7439
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7440
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0

    .line 7442
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeDetachedView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 8116
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8117
    return-void
.end method

.method public blacklist removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 7896
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ChildHelper;->removeView(Landroid/view/View;)V

    .line 7897
    return-void
.end method

.method public blacklist removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .line 7908
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7909
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 7910
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ChildHelper;->removeViewAt(I)V

    .line 7912
    :cond_0
    return-void
.end method

.method public blacklist requestChildRectangleOnScreen(Lcom/android/internal/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 17
    .param p1, "parent"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .line 9083
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    .line 9084
    .local v2, "parentLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    .line 9085
    .local v3, "parentTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 9086
    .local v4, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 9087
    .local v5, "parentBottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    .line 9088
    .local v6, "childLeft":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    .line 9089
    .local v7, "childTop":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v8, v6

    .line 9090
    .local v8, "childRight":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v9, v7

    .line 9092
    .local v9, "childBottom":I
    sub-int v10, v6, v2

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 9093
    .local v10, "offScreenLeft":I
    sub-int v12, v7, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 9094
    .local v12, "offScreenTop":I
    sub-int v13, v8, v4

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 9095
    .local v13, "offScreenRight":I
    sub-int v14, v9, v5

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 9101
    .local v14, "offScreenBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v15

    const/4 v11, 0x1

    if-ne v15, v11, :cond_1

    .line 9102
    if-eqz v13, :cond_0

    move v15, v13

    goto :goto_0

    .line 9103
    :cond_0
    sub-int v15, v8, v4

    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    :goto_0
    nop

    .local v15, "dx":I
    goto :goto_2

    .line 9105
    .end local v15    # "dx":I
    :cond_1
    if-eqz v10, :cond_2

    move v15, v10

    goto :goto_1

    .line 9106
    :cond_2
    sub-int v15, v6, v2

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    :goto_1
    nop

    .line 9111
    .restart local v15    # "dx":I
    :goto_2
    if-eqz v12, :cond_3

    move v11, v12

    goto :goto_3

    .line 9112
    :cond_3
    sub-int v11, v7, v3

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_3
    nop

    .line 9114
    .local v11, "dy":I
    if-nez v15, :cond_5

    if-eqz v11, :cond_4

    goto :goto_4

    .line 9122
    :cond_4
    const/16 v16, 0x0

    return v16

    .line 9115
    :cond_5
    :goto_4
    if-eqz p4, :cond_6

    .line 9116
    invoke-virtual {v0, v15, v11}, Lcom/android/internal/widget/RecyclerView;->scrollBy(II)V

    goto :goto_5

    .line 9118
    :cond_6
    invoke-virtual {v0, v15, v11}, Lcom/android/internal/widget/RecyclerView;->smoothScrollBy(II)V

    .line 9120
    :goto_5
    const/16 v16, 0x1

    return v16
.end method

.method public blacklist requestLayout()V
    .locals 1

    .line 7136
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7137
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->requestLayout()V

    .line 7139
    :cond_0
    return-void
.end method

.method public blacklist requestSimpleAnimationsInNextLayout()V
    .locals 1

    .line 9593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 9594
    return-void
.end method

.method public blacklist scrollHorizontallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dx"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 7663
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scrollToPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 7713
    return-void
.end method

.method public blacklist scrollVerticallyBy(ILcom/android/internal/widget/RecyclerView$Recycler;Lcom/android/internal/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Lcom/android/internal/widget/RecyclerView$Recycler;
    .param p3, "state"    # Lcom/android/internal/widget/RecyclerView$State;

    .line 7680
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAutoMeasureEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 7256
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    .line 7257
    return-void
.end method

.method blacklist setExactMeasureSpecsFrom(Lcom/android/internal/widget/RecyclerView;)V
    .locals 3
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 9759
    nop

    .line 9760
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 9761
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 9759
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 9763
    return-void
.end method

.method public final blacklist setItemPrefetchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 7315
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    if-eq p1, v0, :cond_0

    .line 7316
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    .line 7317
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 7318
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 7319
    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 7322
    :cond_0
    return-void
.end method

.method blacklist setMeasureSpecs(II)V
    .locals 2
    .param p1, "wSpec"    # I
    .param p2, "hSpec"    # I

    .line 7047
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7048
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 7049
    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_0

    .line 7050
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7053
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 7054
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 7055
    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez v0, :cond_1

    .line 7056
    iput v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 7058
    :cond_1
    return-void
.end method

.method public blacklist setMeasuredDimension(II)V
    .locals 1
    .param p1, "widthSize"    # I
    .param p2, "heightSize"    # I

    .line 9390
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->access$300(Lcom/android/internal/widget/RecyclerView;II)V

    .line 9391
    return-void
.end method

.method public blacklist setMeasuredDimension(Landroid/graphics/Rect;II)V
    .locals 4
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .line 7125
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 7126
    .local v0, "usedWidth":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 7127
    .local v1, "usedHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v2

    invoke-static {p2, v0, v2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v2

    .line 7128
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v3

    invoke-static {p3, v1, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v3

    .line 7129
    .local v3, "height":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 7130
    return-void
.end method

.method blacklist setMeasuredDimensionFromChildren(II)V
    .locals 9
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 7074
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 7075
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 7076
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 7077
    return-void

    .line 7079
    :cond_0
    const v1, 0x7fffffff

    .line 7080
    .local v1, "minX":I
    const v2, 0x7fffffff

    .line 7081
    .local v2, "minY":I
    const/high16 v3, -0x80000000

    .line 7082
    .local v3, "maxX":I
    const/high16 v4, -0x80000000

    .line 7084
    .local v4, "maxY":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 7085
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7086
    .local v6, "child":Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 7087
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7088
    iget v8, v7, Landroid/graphics/Rect;->left:I

    if-ge v8, v1, :cond_1

    .line 7089
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 7091
    :cond_1
    iget v8, v7, Landroid/graphics/Rect;->right:I

    if-le v8, v3, :cond_2

    .line 7092
    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 7094
    :cond_2
    iget v8, v7, Landroid/graphics/Rect;->top:I

    if-ge v8, v2, :cond_3

    .line 7095
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 7097
    :cond_3
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_4

    .line 7098
    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 7084
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "bounds":Landroid/graphics/Rect;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7101
    .end local v5    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 7102
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5, p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 7103
    return-void
.end method

.method public blacklist setMeasurementCacheEnabled(Z)V
    .locals 0
    .param p1, "measurementCacheEnabled"    # Z

    .line 8585
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 8586
    return-void
.end method

.method blacklist setRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 7031
    if-nez p1, :cond_0

    .line 7032
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 7033
    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    .line 7034
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7035
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    goto :goto_0

    .line 7037
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 7038
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    .line 7039
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7040
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 7042
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 7043
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 7044
    return-void
.end method

.method blacklist shouldMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 8556
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1

    .line 8558
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8559
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 8556
    :goto_1
    return v0
.end method

.method blacklist shouldMeasureTwice()Z
    .locals 1

    .line 9776
    const/4 v0, 0x0

    return v0
.end method

.method blacklist shouldReMeasureChild(Landroid/view/View;IILcom/android/internal/widget/RecyclerView$LayoutParams;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "lp"    # Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 8542
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz v0, :cond_1

    .line 8543
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8544
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Lcom/android/internal/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 8542
    :goto_1
    return v0
.end method

.method public blacklist smoothScrollToPosition(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "state"    # Lcom/android/internal/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 7726
    const-string v0, "RecyclerView"

    const-string v1, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7727
    return-void
.end method

.method public blacklist startSmoothScroll(Lcom/android/internal/widget/RecyclerView$SmoothScroller;)V
    .locals 1
    .param p1, "smoothScroller"    # Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    .line 7735
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 7736
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7737
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 7739
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    .line 7740
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mRecyclerView:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->start(Lcom/android/internal/widget/RecyclerView;Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 7741
    return-void
.end method

.method public blacklist stopIgnoringView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 8427
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8428
    .local v0, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->stopIgnoring()V

    .line 8429
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 8430
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8431
    return-void
.end method

.method blacklist stopSmoothScroller()V
    .locals 1

    .line 9426
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lcom/android/internal/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    .line 9427
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$SmoothScroller;->stop()V

    .line 9429
    :cond_0
    return-void
.end method

.method public blacklist supportsPredictiveItemAnimations()Z
    .locals 1

    .line 7292
    const/4 v0, 0x0

    return v0
.end method

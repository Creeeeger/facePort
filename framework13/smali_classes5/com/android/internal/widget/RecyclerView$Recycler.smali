.class public final Lcom/android/internal/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field static final blacklist DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final blacklist mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

.field private blacklist mRequestedCacheMax:I

.field private final blacklist mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

.field blacklist mViewCacheMax:I

.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/widget/RecyclerView;

    .line 5318
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5320
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 5324
    nop

    .line 5325
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 5327
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5328
    iput v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method private blacklist attachAccessibilityDelegate(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .line 5715
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5716
    invoke-virtual {p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 5718
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 5721
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5722
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAccessibilityDelegate:Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5725
    :cond_1
    return-void
.end method

.method private blacklist invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "invalidateThis"    # Z

    .line 5734
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 5735
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5736
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 5737
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5734
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5740
    .end local v0    # "i":I
    :cond_1
    if-nez p2, :cond_2

    .line 5741
    return-void

    .line 5744
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 5745
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5746
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 5748
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 5749
    .local v0, "visibility":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5750
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5752
    .end local v0    # "visibility":I
    :goto_1
    return-void
.end method

.method private blacklist invalidateDisplayListInt(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5728
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 5729
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 5731
    :cond_0
    return-void
.end method

.method private blacklist tryBindViewHolderByDeadline(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIJ)Z
    .locals 9
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "offsetPosition"    # I
    .param p3, "position"    # I
    .param p4, "deadlineNs"    # J

    .line 5424
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 5425
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 5426
    .local v0, "viewType":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    .line 5427
    .local v7, "startBindNs":J
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p4, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 5428
    move v2, v0

    move-wide v3, v7

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5430
    const/4 v1, 0x0

    return v1

    .line 5432
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->bindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 5433
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v1

    .line 5434
    .local v1, "endBindNs":J
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    sub-long v5, v1, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    .line 5435
    iget-object v3, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 5436
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5437
    iput p3, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 5439
    :cond_1
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method blacklist addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "dispatchRecycled"    # Z

    .line 5920
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5921
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 5922
    if-eqz p2, :cond_0

    .line 5923
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->dispatchViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5925
    :cond_0
    iput-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 5926
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->putRecycledView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5927
    return-void
.end method

.method public blacklist bindViewToPosition(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 5458
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 5459
    .local v6, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v6, :cond_4

    .line 5464
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v7

    .line 5465
    .local v7, "offsetPosition":I
    if-ltz v7, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 5470
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, v6

    move v2, v7

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIJ)Z

    .line 5472
    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5474
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 5475
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5476
    .local v1, "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 5477
    .end local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5478
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5479
    .restart local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 5481
    .end local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5484
    .restart local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5485
    iput-object v6, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5486
    iget-object v3, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 5487
    return-void

    .line 5466
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5468
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5460
    .end local v7    # "offsetPosition":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clear()V
    .locals 1

    .line 5341
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5342
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 5343
    return-void
.end method

.method blacklist clearOldPositions()V
    .locals 5

    .line 6304
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6305
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6306
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6307
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6305
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6309
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6310
    .local v1, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 6311
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6310
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6313
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 6314
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6315
    .local v2, "changedScrapCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 6316
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 6315
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6319
    .end local v2    # "changedScrapCount":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method blacklist clearScrap()V
    .locals 1

    .line 5997
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5998
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5999
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6001
    :cond_0
    return-void
.end method

.method public blacklist convertPreLayoutPositionToPostLayout(I)I
    .locals 3
    .param p1, "position"    # I

    .line 5508
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 5512
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5513
    return p1

    .line 5515
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v0

    return v0

    .line 5509
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5510
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist dispatchViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6148
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 6149
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mRecyclerListener:Lcom/android/internal/widget/RecyclerView$RecyclerListener;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/RecyclerView$RecyclerListener;->onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6151
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 6152
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6154
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    if-eqz v0, :cond_2

    .line 6155
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ViewInfoStore;->removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 6158
    :cond_2
    return-void
.end method

.method blacklist getChangedScrapViewForPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 10
    .param p1, "position"    # I

    .line 6006
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v0

    .local v2, "changedScrapSize":I
    if-nez v0, :cond_0

    goto :goto_2

    .line 6010
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v0, v2, :cond_2

    .line 6011
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6012
    .local v4, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 6013
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6014
    return-object v4

    .line 6010
    .end local v4    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6018
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6019
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v0

    .line 6020
    .local v0, "offsetPosition":I
    if-lez v0, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 6021
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 6022
    .local v4, "id":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_4

    .line 6023
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6024
    .local v7, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_3

    .line 6025
    invoke-virtual {v7, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6026
    return-object v7

    .line 6022
    .end local v7    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6031
    .end local v0    # "offsetPosition":I
    .end local v4    # "id":J
    .end local v6    # "i":I
    :cond_4
    return-object v1

    .line 6007
    .end local v2    # "changedScrapSize":I
    :cond_5
    :goto_2
    return-object v1
.end method

.method blacklist getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 6252
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 6253
    new-instance v0, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 6255
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method blacklist getScrapCount()I
    .locals 1

    .line 5989
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 5372
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method blacklist getScrapOrCachedViewForId(JIZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "dryRun"    # Z

    .line 6096
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6097
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 6098
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6099
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_2

    .line 6100
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_1

    .line 6101
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6102
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6111
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6112
    const/4 v3, 0x2

    const/16 v4, 0xe

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6116
    :cond_0
    return-object v2

    .line 6117
    :cond_1
    if-nez p4, :cond_2

    .line 6121
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6122
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6123
    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 6097
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6129
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6130
    .local v1, "cacheSize":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x0

    if-ltz v2, :cond_7

    .line 6131
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6132
    .local v4, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_6

    .line 6133
    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v5

    if-ne p3, v5, :cond_5

    .line 6134
    if-nez p4, :cond_4

    .line 6135
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6137
    :cond_4
    return-object v4

    .line 6138
    :cond_5
    if-nez p4, :cond_6

    .line 6139
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6140
    return-object v3

    .line 6130
    .end local v4    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 6144
    .end local v2    # "i":I
    :cond_7
    return-object v3
.end method

.method blacklist getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .line 6042
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6045
    .local v0, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 6046
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6047
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 6048
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v3, v3, Lcom/android/internal/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6049
    :cond_0
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6050
    return-object v2

    .line 6045
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6054
    .end local v1    # "i":I
    :cond_2
    if-nez p2, :cond_4

    .line 6055
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v1

    .line 6056
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_4

    .line 6059
    invoke-static {v1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 6060
    .local v2, "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 6061
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 6062
    .local v3, "layoutIndex":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 6066
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/ChildHelper;->detachViewFromParent(I)V

    .line 6067
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 6068
    const/16 v4, 0x2020

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6070
    return-object v2

    .line 6063
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6075
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "vh":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v3    # "layoutIndex":I
    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6076
    .local v1, "cacheSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_7

    .line 6077
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6080
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_6

    .line 6081
    if-nez p2, :cond_5

    .line 6082
    iget-object v4, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6088
    :cond_5
    return-object v3

    .line 6076
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6091
    .end local v2    # "i":I
    :cond_7
    const/4 v2, 0x0

    return-object v2
.end method

.method blacklist getScrapViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 5993
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getViewForPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .line 5533
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method blacklist getViewForPosition(IZ)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .line 5537
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method blacklist markItemDecorInsetsDirty()V
    .locals 5

    .line 6322
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6323
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6324
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6325
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 6326
    .local v3, "layoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    if-eqz v3, :cond_0

    .line 6327
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6323
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v3    # "layoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6330
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method blacklist markKnownViewsInvalid()V
    .locals 4

    .line 6288
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6289
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6290
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6291
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6292
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    .line 6293
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6294
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 6290
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6297
    .end local v0    # "cachedCount":I
    .end local v1    # "i":I
    :cond_1
    goto :goto_1

    .line 6299
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 6301
    :goto_1
    return-void
.end method

.method blacklist offsetPositionRecordsForInsert(II)V
    .locals 4
    .param p1, "insertedAt"    # I
    .param p2, "count"    # I

    .line 6196
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6197
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6198
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6199
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 6204
    const/4 v3, 0x1

    invoke-virtual {v2, p2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6197
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6207
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method blacklist offsetPositionRecordsForMove(II)V
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 6168
    if-ge p1, p2, :cond_0

    .line 6169
    move v0, p1

    .line 6170
    .local v0, "start":I
    move v1, p2

    .line 6171
    .local v1, "end":I
    const/4 v2, -0x1

    .local v2, "inBetweenOffset":I
    goto :goto_0

    .line 6173
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "inBetweenOffset":I
    :cond_0
    move v0, p2

    .line 6174
    .restart local v0    # "start":I
    move v1, p1

    .line 6175
    .restart local v1    # "end":I
    const/4 v2, 0x1

    .line 6177
    .restart local v2    # "inBetweenOffset":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6178
    .local v3, "cachedCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 6179
    iget-object v5, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6180
    .local v5, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v5, :cond_3

    iget v6, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v0, :cond_3

    iget v6, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_1

    .line 6181
    goto :goto_2

    .line 6183
    :cond_1
    iget v6, v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v7, 0x0

    if-ne v6, p1, :cond_2

    .line 6184
    sub-int v6, p2, p1

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 6186
    :cond_2
    invoke-virtual {v5, v2, v7}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6178
    .end local v5    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6193
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method blacklist offsetPositionRecordsForRemove(IIZ)V
    .locals 5
    .param p1, "removedFrom"    # I
    .param p2, "count"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 6216
    add-int v0, p1, p2

    .line 6217
    .local v0, "removedEnd":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6218
    .local v1, "cachedCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 6219
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6220
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    .line 6221
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v0, :cond_0

    .line 6227
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_1

    .line 6228
    :cond_0
    iget v4, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_1

    .line 6230
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6231
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6218
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6235
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method blacklist onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lcom/android/internal/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .line 6162
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->clear()V

    .line 6163
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Lcom/android/internal/widget/RecyclerView$Adapter;Lcom/android/internal/widget/RecyclerView$Adapter;Z)V

    .line 6164
    return-void
.end method

.method blacklist quickRecycleScrapView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 5935
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5936
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$fputmScrapContainer(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 5937
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$fputmInChangeScrap(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 5938
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5939
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5940
    return-void
.end method

.method blacklist recycleAndClearCachedViews()V
    .locals 2

    .line 5789
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5790
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 5791
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5790
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5793
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5794
    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->-$$Nest$sfgetALLOW_THREAD_GAP_WORK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5795
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v1}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 5797
    :cond_1
    return-void
.end method

.method blacklist recycleCachedViewAt(I)V
    .locals 2
    .param p1, "cachedViewIndex"    # I

    .line 5814
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5818
    .local v0, "viewHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 5819
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5820
    return-void
.end method

.method public blacklist recycleView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 5767
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5768
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5769
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5771
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5772
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_0

    .line 5773
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5774
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5776
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5777
    return-void
.end method

.method blacklist recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5828
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 5835
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_b

    .line 5840
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5845
    nop

    .line 5846
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$mdoesTransientStatePreventRecycling(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 5847
    .local v0, "transientStatePreventsRecycling":Z
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    .line 5849
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 5850
    .local v3, "forceRecycle":Z
    :goto_0
    const/4 v4, 0x0

    .line 5851
    .local v4, "cached":Z
    const/4 v5, 0x0

    .line 5856
    .local v5, "recycled":Z
    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 5857
    :cond_2
    iget v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lez v6, :cond_7

    const/16 v6, 0x20e

    .line 5858
    invoke-virtual {p1, v6}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 5863
    iget-object v6, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5864
    .local v6, "cachedViewSize":I
    iget v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lt v6, v7, :cond_3

    if-lez v6, :cond_3

    .line 5865
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5866
    add-int/lit8 v6, v6, -0x1

    .line 5869
    :cond_3
    move v1, v6

    .line 5870
    .local v1, "targetCacheIndex":I
    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->-$$Nest$sfgetALLOW_THREAD_GAP_WORK()Z

    move-result v7

    if-eqz v7, :cond_6

    if-lez v6, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v8, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5872
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 5874
    add-int/lit8 v7, v6, -0x1

    .line 5875
    .local v7, "cacheIndex":I
    :goto_1
    if-ltz v7, :cond_5

    .line 5876
    iget-object v8, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget v8, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5877
    .local v8, "cachedPos":I
    iget-object v9, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v9, v9, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 5878
    goto :goto_2

    .line 5880
    :cond_4
    nop

    .end local v8    # "cachedPos":I
    add-int/lit8 v7, v7, -0x1

    .line 5881
    goto :goto_1

    .line 5882
    :cond_5
    :goto_2
    add-int/lit8 v1, v7, 0x1

    .line 5884
    .end local v7    # "cacheIndex":I
    :cond_6
    iget-object v7, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5885
    const/4 v4, 0x1

    .line 5887
    .end local v1    # "targetCacheIndex":I
    .end local v6    # "cachedViewSize":I
    :cond_7
    if-nez v4, :cond_8

    .line 5888
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 5889
    const/4 v5, 0x1

    .line 5905
    :cond_8
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mViewInfoStore:Lcom/android/internal/widget/ViewInfoStore;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ViewInfoStore;->removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5906
    if-nez v4, :cond_9

    if-nez v5, :cond_9

    if-eqz v0, :cond_9

    .line 5907
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/android/internal/widget/RecyclerView;

    .line 5909
    :cond_9
    return-void

    .line 5841
    .end local v0    # "transientStatePreventsRecycling":Z
    .end local v3    # "forceRecycle":Z
    .end local v4    # "cached":Z
    .end local v5    # "recycled":Z
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5836
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5829
    :cond_c
    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5831
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5832
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_d

    move v1, v2

    :cond_d
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist recycleViewInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 5785
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5786
    return-void
.end method

.method blacklist scrapView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 5952
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5953
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5954
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5963
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 5964
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5966
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setScrapContainer(Lcom/android/internal/widget/RecyclerView$Recycler;Z)V

    .line 5967
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5955
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 5956
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5960
    :cond_4
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setScrapContainer(Lcom/android/internal/widget/RecyclerView$Recycler;Z)V

    .line 5961
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5969
    :goto_2
    return-void
.end method

.method blacklist setAdapterPositionsAsUnknown()V
    .locals 4

    .line 6278
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6279
    .local v0, "cachedCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6280
    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6281
    .local v2, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    .line 6282
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6279
    .end local v2    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6285
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method blacklist setRecycledViewPool(Lcom/android/internal/widget/RecyclerView$RecycledViewPool;)V
    .locals 1
    .param p1, "pool"    # Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 6242
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_0

    .line 6243
    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 6245
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 6246
    if-eqz p1, :cond_1

    .line 6247
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView;->getAdapter()Lcom/android/internal/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->attach(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 6249
    :cond_1
    return-void
.end method

.method blacklist setViewCacheExtension(Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;)V
    .locals 0
    .param p1, "extension"    # Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    .line 6238
    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    .line 6239
    return-void
.end method

.method public blacklist setViewCacheSize(I)V
    .locals 0
    .param p1, "viewCount"    # I

    .line 5351
    iput p1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5352
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 5353
    return-void
.end method

.method blacklist tryGetViewHolderForPositionByDeadline(IZJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 17
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z
    .param p3, "deadlineNs"    # J

    .line 5561
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    if-ltz v7, :cond_18

    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v7, v0, :cond_18

    .line 5565
    const/4 v0, 0x0

    .line 5566
    .local v0, "fromScrapOrHiddenOrCache":Z
    const/4 v1, 0x0

    .line 5568
    .local v1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    .line 5569
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5570
    if-eqz v1, :cond_0

    move v2, v9

    goto :goto_0

    :cond_0
    move v2, v10

    :goto_0
    move v0, v2

    .line 5573
    :cond_1
    if-nez v1, :cond_6

    .line 5574
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5575
    if-eqz v1, :cond_6

    .line 5576
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 5578
    if-nez v8, :cond_4

    .line 5581
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5582
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5583
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3, v10}, Lcom/android/internal/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5584
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_1

    .line 5585
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5586
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5588
    :cond_3
    :goto_1
    invoke-virtual {v6, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5590
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 5592
    :cond_5
    const/4 v0, 0x1

    .line 5596
    :cond_6
    :goto_2
    if-nez v1, :cond_10

    .line 5597
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    .line 5598
    .local v2, "offsetPosition":I
    if-ltz v2, :cond_f

    iget-object v3, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 5604
    iget-object v3, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v3, v3, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    .line 5606
    .local v3, "type":I
    iget-object v4, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5607
    iget-object v4, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5, v3, v8}, Lcom/android/internal/widget/RecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5609
    if-eqz v1, :cond_7

    .line 5611
    iput v2, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5612
    const/4 v0, 0x1

    .line 5615
    :cond_7
    if-nez v1, :cond_a

    iget-object v4, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;

    if-eqz v4, :cond_a

    .line 5618
    nop

    .line 5619
    invoke-virtual {v4, v6, v7, v3}, Lcom/android/internal/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lcom/android/internal/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v4

    .line 5620
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_a

    .line 5621
    iget-object v5, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5622
    if-eqz v1, :cond_9

    .line 5625
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_3

    .line 5626
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v9, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5623
    :cond_9
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v9, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5632
    .end local v4    # "view":Landroid/view/View;
    :cond_a
    :goto_3
    if-nez v1, :cond_b

    .line 5637
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5638
    if-eqz v1, :cond_b

    .line 5639
    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5640
    sget-boolean v4, Lcom/android/internal/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v4, :cond_b

    .line 5641
    invoke-direct {v6, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 5645
    :cond_b
    if-nez v1, :cond_e

    .line 5646
    iget-object v4, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    .line 5647
    .local v4, "start":J
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v11, p3, v11

    if-eqz v11, :cond_c

    iget-object v11, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    .line 5648
    move v12, v3

    move-wide v13, v4

    move-wide/from16 v15, p3

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v11

    if-nez v11, :cond_c

    .line 5650
    const/4 v9, 0x0

    return-object v9

    .line 5652
    :cond_c
    iget-object v11, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v11, v11, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget-object v12, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v11, v12, v3}, Lcom/android/internal/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5653
    invoke-static {}, Lcom/android/internal/widget/RecyclerView;->-$$Nest$sfgetALLOW_THREAD_GAP_WORK()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 5655
    iget-object v11, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v11}, Lcom/android/internal/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView;

    move-result-object v11

    .line 5656
    .local v11, "innerView":Lcom/android/internal/widget/RecyclerView;
    if-eqz v11, :cond_d

    .line 5657
    new-instance v12, Ljava/lang/ref/WeakReference;

    invoke-direct {v12, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v12, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5661
    .end local v11    # "innerView":Lcom/android/internal/widget/RecyclerView;
    :cond_d
    iget-object v11, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v11}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v11

    .line 5662
    .local v11, "end":J
    iget-object v13, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/android/internal/widget/RecyclerView$RecycledViewPool;

    sub-long v14, v11, v4

    invoke-virtual {v13, v3, v14, v15}, Lcom/android/internal/widget/RecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    move v11, v0

    move-object v12, v1

    goto :goto_4

    .line 5645
    .end local v4    # "start":J
    .end local v11    # "end":J
    :cond_e
    move v11, v0

    move-object v12, v1

    goto :goto_4

    .line 5599
    .end local v3    # "type":I
    :cond_f
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistency detected. Invalid item position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(offset:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ").state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v5, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5601
    invoke-virtual {v5}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5596
    .end local v2    # "offsetPosition":I
    :cond_10
    move v11, v0

    move-object v12, v1

    .line 5672
    .end local v0    # "fromScrapOrHiddenOrCache":Z
    .end local v1    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .local v11, "fromScrapOrHiddenOrCache":Z
    .local v12, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :goto_4
    if-eqz v11, :cond_11

    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_11

    .line 5673
    const/16 v0, 0x2000

    invoke-virtual {v12, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5674
    invoke-virtual {v12, v10, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5675
    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/android/internal/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_11

    .line 5676
    nop

    .line 5677
    invoke-static {v12}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lcom/android/internal/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 5678
    .local v0, "changeFlags":I
    or-int/lit16 v0, v0, 0x1000

    .line 5679
    iget-object v1, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mItemAnimator:Lcom/android/internal/widget/RecyclerView$ItemAnimator;

    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5680
    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v3

    .line 5679
    invoke-virtual {v1, v2, v12, v0, v3}, Lcom/android/internal/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lcom/android/internal/widget/RecyclerView$State;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v1

    .line 5681
    .local v1, "info":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v12, v1}, Lcom/android/internal/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 5685
    .end local v0    # "changeFlags":I
    .end local v1    # "info":Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_11
    const/4 v13, 0x0

    .line 5686
    .local v13, "bound":Z
    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 5688
    iput v7, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_5

    .line 5689
    :cond_12
    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v12}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5694
    :cond_13
    iget-object v0, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapterHelper:Lcom/android/internal/widget/AdapterHelper;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v14

    .line 5695
    .local v14, "offsetPosition":I
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v14

    move/from16 v3, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIJ)Z

    move-result v13

    .line 5698
    .end local v14    # "offsetPosition":I
    :cond_14
    :goto_5
    iget-object v0, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5700
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_15

    .line 5701
    iget-object v1, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5702
    .local v1, "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v2, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 5703
    .end local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_15
    iget-object v1, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 5704
    iget-object v1, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5705
    .restart local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    iget-object v2, v12, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 5707
    .end local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :cond_16
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    .line 5709
    .restart local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    :goto_6
    iput-object v12, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5710
    if-eqz v11, :cond_17

    if-eqz v13, :cond_17

    goto :goto_7

    :cond_17
    move v9, v10

    :goto_7
    iput-boolean v9, v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 5711
    return-object v12

    .line 5562
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v1    # "rvLayoutParams":Lcom/android/internal/widget/RecyclerView$LayoutParams;
    .end local v11    # "fromScrapOrHiddenOrCache":Z
    .end local v12    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v13    # "bound":Z
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v2, v2, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    .line 5563
    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist unscrapView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5978
    invoke-static {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$fgetmInChangeScrap(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5979
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5981
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5983
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$fputmScrapContainer(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$Recycler;)V

    .line 5984
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->-$$Nest$fputmInChangeScrap(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 5985
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5986
    return-void
.end method

.method blacklist updateViewCacheSize()V
    .locals 4

    .line 5356
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget v0, v0, Lcom/android/internal/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5357
    .local v0, "extraCache":I
    :goto_0
    iget v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 5360
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5361
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-le v2, v3, :cond_1

    .line 5362
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5361
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 5364
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method blacklist validateViewHolderForOffsetPosition(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 7
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 5386
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5391
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    return v0

    .line 5393
    :cond_0
    iget v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v0, :cond_4

    iget v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 5397
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 5399
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget v2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 5400
    .local v0, "type":I
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 5401
    return v1

    .line 5404
    .end local v0    # "type":I
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 5405
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    iget v5, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 5407
    :cond_3
    return v2

    .line 5394
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist viewRangeUpdate(II)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 6259
    add-int v0, p1, p2

    .line 6260
    .local v0, "positionEnd":I
    iget-object v1, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6261
    .local v1, "cachedCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 6262
    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 6263
    .local v3, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_0

    .line 6264
    goto :goto_1

    .line 6267
    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    .line 6268
    .local v4, "pos":I
    if-lt v4, p1, :cond_1

    if-ge v4, v0, :cond_1

    .line 6269
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6270
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 6261
    .end local v3    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v4    # "pos":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6275
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

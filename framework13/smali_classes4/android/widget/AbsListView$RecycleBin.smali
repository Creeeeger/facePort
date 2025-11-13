.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private greylist-max-o mActiveViews:[Landroid/view/View;

.field private greylist-max-o mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mFirstActivePosition:I

.field private greylist mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private greylist-max-o mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mViewTypeCount:I

.field final synthetic blacklist this$0:Landroid/widget/AbsListView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 0

    iget-object p0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRecyclerListener(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .line 7638
    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7653
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method private greylist-max-o clearScrap(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 8149
    .local p1, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8150
    .local v0, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8151
    add-int/lit8 v2, v0, -0x1

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8153
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method private greylist-max-o clearScrapForRebind(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 8156
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 8157
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8158
    invoke-virtual {p1}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 8159
    return-void
.end method

.method private greylist-max-o getSkippedScrap()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 7926
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 7927
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 7929
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private greylist-max-o pruneScrapViews()V
    .locals 9

    .line 8034
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    .line 8035
    .local v0, "maxViews":I
    iget v1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 8036
    .local v1, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8037
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 8038
    aget-object v4, v2, v3

    .line 8039
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8040
    .local v5, "size":I
    :goto_1
    if-le v5, v0, :cond_0

    .line 8041
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 8037
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "size":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8045
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8046
    .local v3, "transViewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 8047
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 8048
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 8049
    .local v6, "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v7

    if-nez v7, :cond_2

    .line 8050
    invoke-direct {p0, v6, v4}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8051
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 8052
    add-int/lit8 v5, v5, -0x1

    .line 8047
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 8057
    .end local v5    # "i":I
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8058
    .local v5, "transViewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v5, :cond_5

    .line 8059
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 8060
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 8061
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-nez v8, :cond_4

    .line 8062
    invoke-direct {p0, v7, v4}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8063
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 8064
    add-int/lit8 v6, v6, -0x1

    .line 8059
    .end local v7    # "v":Landroid/view/View;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 8068
    .end local v6    # "i":I
    :cond_5
    return-void
.end method

.method private greylist-max-o removeDetachedView(Landroid/view/View;Z)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 8163
    if-eqz p1, :cond_0

    .line 8164
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8165
    invoke-virtual {p1}, Landroid/view/View;->resetSubtreeAutofillIds()V

    .line 8166
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0, p1, p2}, Landroid/widget/AbsListView;->access$1600(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    goto :goto_0

    .line 8168
    :cond_0
    const-string v0, "AbsListView"

    const-string/jumbo v1, "removeDetachedView child is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8171
    :goto_0
    return-void
.end method

.method private greylist-max-o retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 8
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 8120
    .local p1, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8121
    .local v0, "size":I
    if-lez v0, :cond_4

    .line 8124
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 8125
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 8126
    .local v2, "view":Landroid/view/View;
    nop

    .line 8127
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 8129
    .local v3, "params":Landroid/widget/AbsListView$LayoutParams;
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_1

    .line 8130
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 8131
    .local v4, "id":J
    iget-wide v6, v3, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 8132
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    return-object v6

    .line 8131
    .end local v4    # "id":J
    :cond_0
    goto :goto_1

    .line 8134
    :cond_1
    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v4, p2, :cond_2

    .line 8135
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 8136
    .local v4, "scrap":Landroid/view/View;
    invoke-direct {p0, v4}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 8137
    return-object v4

    .line 8134
    .end local v4    # "scrap":Landroid/view/View;
    :cond_2
    :goto_1
    nop

    .line 8124
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/AbsListView$LayoutParams;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8140
    .end local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 8141
    .local v1, "scrap":Landroid/view/View;
    invoke-direct {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    .line 8142
    return-object v1

    .line 8144
    .end local v1    # "scrap":Landroid/view/View;
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method greylist-max-o addScrapView(Landroid/view/View;I)V
    .locals 6
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 7852
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 7853
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-nez v0, :cond_0

    .line 7856
    return-void

    .line 7859
    :cond_0
    iput p2, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7863
    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7864
    .local v1, "viewType":I
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7868
    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    .line 7869
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7871
    :cond_1
    return-void

    .line 7874
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7880
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 7884
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    .line 7885
    .local v2, "scrapHasTransientState":Z
    if-eqz v2, :cond_7

    .line 7886
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_4

    .line 7889
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_3

    .line 7890
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7892
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 7893
    :cond_4
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_6

    .line 7896
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_5

    .line 7897
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7899
    :cond_5
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 7905
    :cond_6
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7911
    :cond_7
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v4, v3, :cond_8

    .line 7912
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7914
    :cond_8
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 7915
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7919
    :cond_9
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v3, :cond_a

    .line 7920
    invoke-interface {v3, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7923
    :cond_a
    :goto_1
    return-void
.end method

.method greylist clear()V
    .locals 3

    .line 7723
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7724
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7725
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v0}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 7726
    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    goto :goto_1

    .line 7727
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7728
    .local v0, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7729
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 7730
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {p0, v2}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    .line 7728
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7734
    .end local v0    # "typeCount":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7735
    return-void
.end method

.method greylist-max-o clearTransientStateViews()V
    .locals 6

    .line 7807
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7808
    .local v0, "viewsByPos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7809
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 7810
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 7811
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7810
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7813
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 7816
    .end local v2    # "N":I
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7817
    .local v2, "viewsById":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    if-eqz v2, :cond_3

    .line 7818
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 7819
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 7820
    invoke-virtual {v2, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7819
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7822
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 7824
    .end local v3    # "N":I
    :cond_3
    return-void
.end method

.method greylist-max-o fillActiveViews(II)V
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .line 7745
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 7746
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7748
    :cond_0
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    .line 7751
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7752
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 7753
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7754
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 7756
    .local v3, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 7759
    aput-object v2, v0, v1

    .line 7761
    add-int v4, p2, v1

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7752
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7764
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method greylist-max-o fullyDetachScrapViews()V
    .locals 7

    .line 8014
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 8015
    .local v0, "viewTypeCount":I
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8016
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8017
    aget-object v3, v1, v2

    .line 8018
    .local v3, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_1

    .line 8019
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 8020
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 8021
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 8018
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 8016
    .end local v3    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8025
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method greylist-max-o getActiveView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .line 7774
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v0, p1, v0

    .line 7775
    .local v0, "index":I
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7776
    .local v1, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    if-ltz v0, :cond_0

    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 7777
    aget-object v3, v1, v0

    .line 7778
    .local v3, "match":Landroid/view/View;
    aput-object v2, v1, v0

    .line 7779
    return-object v3

    .line 7781
    .end local v3    # "match":Landroid/view/View;
    :cond_0
    return-object v2
.end method

.method greylist-max-o getScrapView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .line 7830
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 7831
    .local v0, "whichScrap":I
    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 7832
    return-object v1

    .line 7834
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 7835
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 7836
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 7837
    aget-object v1, v2, v0

    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 7839
    :cond_2
    return-object v1
.end method

.method greylist-max-o getTransientStateView(I)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I

    .line 7785
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 7786
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 7787
    .local v0, "id":J
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 7788
    .local v2, "result":Landroid/view/View;
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 7789
    return-object v2

    .line 7791
    .end local v0    # "id":J
    .end local v2    # "result":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 7792
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 7793
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 7794
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 7795
    .local v1, "result":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 7796
    return-object v1

    .line 7799
    .end local v0    # "index":I
    .end local v1    # "result":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o markChildrenDirty()V
    .locals 6

    .line 7684
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 7685
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7686
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7687
    .local v1, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7688
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 7687
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7690
    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "scrapCount":I
    .end local v2    # "i":I
    :cond_0
    goto :goto_3

    .line 7691
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7692
    .local v0, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 7693
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 7694
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7695
    .local v3, "scrapCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 7696
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->forceLayout()V

    .line 7695
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 7692
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7700
    .end local v0    # "typeCount":I
    .end local v1    # "i":I
    :cond_3
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 7701
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 7702
    .local v0, "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 7703
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 7702
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 7706
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_5

    .line 7707
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 7708
    .restart local v0    # "count":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v0, :cond_5

    .line 7709
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 7708
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7712
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method greylist-max-o reclaimScrapViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 8074
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8075
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 8077
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 8078
    .local v0, "viewTypeCount":I
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8079
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8080
    aget-object v3, v1, v2

    .line 8081
    .local v3, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8079
    .end local v3    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8084
    .end local v0    # "viewTypeCount":I
    .end local v1    # "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method greylist-max-o removeSkippedScrap()V
    .locals 4

    .line 7936
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 7937
    return-void

    .line 7939
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 7940
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7941
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7940
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7943
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7944
    return-void
.end method

.method greylist-max-o scrapActiveViews()V
    .locals 13

    .line 7950
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7951
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 7952
    .local v1, "hasListener":Z
    :goto_0
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-le v4, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 7954
    .local v2, "multipleScraps":Z
    :goto_1
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7955
    .local v4, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v5, v0

    .line 7956
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_a

    .line 7957
    aget-object v7, v0, v6

    .line 7958
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_9

    .line 7959
    nop

    .line 7960
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    .line 7961
    .local v8, "lp":Landroid/widget/AbsListView$LayoutParams;
    iget v9, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7963
    .local v9, "whichScrap":I
    const/4 v10, 0x0

    aput-object v10, v0, v6

    .line 7965
    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    const/4 v11, -0x2

    if-eqz v10, :cond_6

    .line 7967
    invoke-virtual {v7}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 7969
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v10, :cond_3

    .line 7970
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v10, :cond_2

    .line 7971
    new-instance v10, Landroid/util/LongSparseArray;

    invoke-direct {v10}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 7973
    :cond_2
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v6

    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    .line 7974
    .local v10, "id":J
    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v10, v11, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 7975
    .end local v10    # "id":J
    goto :goto_3

    :cond_3
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v10, :cond_5

    .line 7976
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v10, :cond_4

    .line 7977
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 7979
    :cond_4
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v6

    invoke-virtual {v10, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 7980
    :cond_5
    if-eq v9, v11, :cond_9

    .line 7982
    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 7984
    :cond_6
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 7986
    if-eq v9, v11, :cond_9

    .line 7987
    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    .line 7991
    :cond_7
    if-eqz v2, :cond_8

    .line 7992
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v10, v9

    .line 7995
    :cond_8
    iget v10, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v10, v6

    iput v10, v8, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 7996
    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    .line 7997
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7999
    if-eqz v1, :cond_9

    .line 8000
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v10, v7}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 7956
    .end local v7    # "victim":Landroid/view/View;
    .end local v8    # "lp":Landroid/widget/AbsListView$LayoutParams;
    .end local v9    # "whichScrap":I
    :cond_9
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    .line 8005
    .end local v6    # "i":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    .line 8006
    return-void
.end method

.method greylist-max-o setCacheColorHint(I)V
    .locals 6
    .param p1, "color"    # I

    .line 8092
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8093
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8094
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 8095
    .local v1, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 8096
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8095
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8098
    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v1    # "scrapCount":I
    .end local v2    # "i":I
    :cond_0
    goto :goto_3

    .line 8099
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 8100
    .local v0, "typeCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 8101
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    .line 8102
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 8103
    .local v3, "scrapCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v3, :cond_2

    .line 8104
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8103
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 8100
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8109
    .end local v0    # "typeCount":I
    .end local v1    # "i":I
    :cond_3
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8110
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 8111
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v1, :cond_5

    .line 8112
    aget-object v3, v0, v2

    .line 8113
    .local v3, "victim":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 8114
    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8111
    .end local v3    # "victim":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 8117
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public greylist-max-o setViewTypeCount(I)V
    .locals 3
    .param p1, "viewTypeCount"    # I

    .line 7670
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 7674
    new-array v0, p1, [Ljava/util/ArrayList;

    .line 7675
    .local v0, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 7676
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v0, v1

    .line 7675
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7678
    .end local v1    # "i":I
    :cond_0
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    .line 7679
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7680
    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7681
    return-void

    .line 7671
    .end local v0    # "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .line 7715
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

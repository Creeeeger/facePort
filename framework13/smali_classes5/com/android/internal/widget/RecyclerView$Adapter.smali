.class public abstract Lcom/android/internal/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mHasStableIds:Z

.field private final blacklist mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 6375
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6376
    new-instance v0, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    .line 6377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final blacklist bindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 6479
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    iput p2, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6480
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6481
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 6483
    :cond_0
    const/16 v0, 0x207

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 6486
    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6487
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 6488
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 6489
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6490
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_1

    .line 6491
    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    iput-boolean v1, v2, Lcom/android/internal/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6493
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 6494
    return-void
.end method

.method public final blacklist createViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 6464
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    const-string v0, "RV CreateView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 6465
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 6466
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    iput p2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 6467
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 6468
    return-object v0
.end method

.method public abstract blacklist getItemCount()I
.end method

.method public blacklist getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 6537
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .line 6509
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist hasObservers()Z
    .locals 1

    .line 6647
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public final blacklist hasStableIds()Z
    .locals 1

    .line 6555
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-boolean v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return v0
.end method

.method public final blacklist notifyDataSetChanged()V
    .locals 1

    .line 6734
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    .line 6735
    return-void
.end method

.method public final blacklist notifyItemChanged(I)V
    .locals 2
    .param p1, "position"    # I

    .line 6750
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 6751
    return-void
.end method

.method public final blacklist notifyItemChanged(ILjava/lang/Object;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "payload"    # Ljava/lang/Object;

    .line 6778
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 6779
    return-void
.end method

.method public final blacklist notifyItemInserted(I)V
    .locals 2
    .param p1, "position"    # I

    .line 6843
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 6844
    return-void
.end method

.method public final blacklist notifyItemMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 6858
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    .line 6859
    return-void
.end method

.method public final blacklist notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 6796
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    .line 6797
    return-void
.end method

.method public final blacklist notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 6826
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 6827
    return-void
.end method

.method public final blacklist notifyItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 6877
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    .line 6878
    return-void
.end method

.method public final blacklist notifyItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 6911
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 6912
    return-void
.end method

.method public final blacklist notifyItemRemoved(I)V
    .locals 2
    .param p1, "position"    # I

    .line 6894
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    .line 6895
    return-void
.end method

.method public blacklist onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 6693
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public abstract blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6454
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/RecyclerView$Adapter;->onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V

    .line 6455
    return-void
.end method

.method public abstract blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public blacklist onDetachedFromRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 6702
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    return-void
.end method

.method public blacklist onFailedToRecycleView(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    .line 6613
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onViewAttachedToWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 6627
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public blacklist onViewDetachedFromWindow(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 6639
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public blacklist onViewRecycled(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 6576
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    .local p1, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;, "TVH;"
    return-void
.end method

.method public blacklist registerAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;

    .line 6667
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 6668
    return-void
.end method

.method public blacklist setHasStableIds(Z)V
    .locals 2
    .param p1, "hasStableIds"    # Z

    .line 6521
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6525
    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mHasStableIds:Z

    .line 6526
    return-void

    .line 6522
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unregisterAdapterDataObserver(Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/widget/RecyclerView$AdapterDataObserver;

    .line 6681
    .local p0, "this":Lcom/android/internal/widget/RecyclerView$Adapter;, "Lcom/android/internal/widget/RecyclerView$Adapter<TVH;>;"
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$Adapter;->mObservable:Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/RecyclerView$AdapterDataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 6682
    return-void
.end method

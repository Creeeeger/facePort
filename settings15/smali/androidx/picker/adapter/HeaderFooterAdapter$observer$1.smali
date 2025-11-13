.class public final Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/picker/adapter/HeaderFooterAdapter;


# direct methods
.method public constructor <init>(Landroidx/picker/adapter/HeaderFooterAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;->this$0:Landroidx/picker/adapter/HeaderFooterAdapter;

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;->this$0:Landroidx/picker/adapter/HeaderFooterAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onItemRangeChanged(II)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;->this$0:Landroidx/picker/adapter/HeaderFooterAdapter;

    iget-object v0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->headerViewInfoList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;->this$0:Landroidx/picker/adapter/HeaderFooterAdapter;

    iget-object v0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->headerViewInfoList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$Adapter;->mObservable:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, v0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;->this$0:Landroidx/picker/adapter/HeaderFooterAdapter;

    iget-object v0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->headerViewInfoList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final onItemRangeMoved(II)V
    .locals 3

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;->this$0:Landroidx/picker/adapter/HeaderFooterAdapter;

    iget-object v0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->headerViewInfoList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->headerViewInfoList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v0

    :goto_0
    iget-boolean v1, v0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v1

    add-int v2, p1, v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/adapter/HeaderFooterAdapter$observer$1;->this$0:Landroidx/picker/adapter/HeaderFooterAdapter;

    iget-object v0, p0, Landroidx/picker/adapter/HeaderFooterAdapter;->headerViewInfoList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

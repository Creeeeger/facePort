.class public final Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final onItemRangeChanged(II)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final onItemRangeMoved(II)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

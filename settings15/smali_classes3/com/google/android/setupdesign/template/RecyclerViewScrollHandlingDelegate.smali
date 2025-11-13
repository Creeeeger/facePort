.class public final Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;


# instance fields
.field public final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    iput-object p2, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final pageScrollDown()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IIZ)V

    :cond_0
    return-void
.end method

.method public final startListening()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$1;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate$1;-><init>(Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v0

    sub-int/2addr v2, v0

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    iget-object p0, p0, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "RVRequireScrollMixin"

    const-string v0, "Cannot require scroll. Recycler view is null."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

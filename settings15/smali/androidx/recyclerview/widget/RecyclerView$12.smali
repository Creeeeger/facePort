.class public final Landroidx/recyclerview/widget/RecyclerView$12;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$12;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$12;->val$position:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$12;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    const-string p0, "SeslRecyclerView"

    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_2

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$12;->val$position:I

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager$SmoothScrollerJumpIfNeeded;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager$SmoothScrollerJumpIfNeeded;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->showGoToTop$1()V

    iput p0, v2, Landroidx/recyclerview/widget/LinearSmoothScroller;->mTargetPosition:I

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/LinearSmoothScroller;)V

    const-string p0, "SeslLinearLayoutManager"

    const-string/jumbo v0, "smoothScroller2"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$12;->val$position:I

    invoke-virtual {v1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(ILandroidx/recyclerview/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

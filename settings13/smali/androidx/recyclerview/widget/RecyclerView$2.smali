.class Landroidx/recyclerview/widget/RecyclerView$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 696
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$2;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 711
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$2;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->access$002(Landroidx/recyclerview/widget/RecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 712
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$2;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->access$102(Landroidx/recyclerview/widget/RecyclerView;Z)Z

    .line 713
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$2;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->access$202(Landroidx/recyclerview/widget/RecyclerView;Z)Z

    .line 714
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$2;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 715
    instance-of v0, p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    if-eqz v0, :cond_0

    .line 716
    check-cast p1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->clearPendingAnimFlag()V

    .line 718
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$2;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

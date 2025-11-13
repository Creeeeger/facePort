.class public final Landroidx/transition/ChangeBounds$SuppressLayoutListener;
.super Landroidx/transition/TransitionListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCanceled:Z

.field public final mParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds$SuppressLayoutListener;->mCanceled:Z

    iput-object p1, p0, Landroidx/transition/ChangeBounds$SuppressLayoutListener;->mParent:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/ChangeBounds$SuppressLayoutListener;->mParent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$SuppressLayoutListener;->mCanceled:Z

    return-void
.end method

.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/transition/ChangeBounds$SuppressLayoutListener;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/transition/ChangeBounds$SuppressLayoutListener;->mParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method

.method public final onTransitionPause()V
    .locals 1

    iget-object p0, p0, Landroidx/transition/ChangeBounds$SuppressLayoutListener;->mParent:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    return-void
.end method

.method public final onTransitionResume()V
    .locals 1

    iget-object p0, p0, Landroidx/transition/ChangeBounds$SuppressLayoutListener;->mParent:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    return-void
.end method

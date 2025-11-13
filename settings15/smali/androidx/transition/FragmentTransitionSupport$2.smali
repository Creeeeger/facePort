.class public final Landroidx/transition/FragmentTransitionSupport$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# instance fields
.field public final synthetic val$exitingViews:Ljava/util/ArrayList;

.field public final synthetic val$fragmentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/FragmentTransitionSupport$2;->val$fragmentView:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/FragmentTransitionSupport$2;->val$exitingViews:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onTransitionCancel()V
    .locals 0

    return-void
.end method

.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 3

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)V

    iget-object p1, p0, Landroidx/transition/FragmentTransitionSupport$2;->val$fragmentView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Landroidx/transition/FragmentTransitionSupport$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Landroidx/transition/FragmentTransitionSupport$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTransitionPause()V
    .locals 0

    return-void
.end method

.method public final onTransitionResume()V
    .locals 0

    return-void
.end method

.method public final onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)V

    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)V

    return-void
.end method

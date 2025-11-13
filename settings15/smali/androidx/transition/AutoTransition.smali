.class public final Landroidx/transition/AutoTransition;
.super Landroidx/transition/TransitionSet;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/transition/TransitionSet;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/transition/TransitionSet;->setOrdering(I)V

    new-instance v1, Landroidx/transition/Fade;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/transition/Fade;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    new-instance v1, Landroidx/transition/ChangeBounds;

    invoke-direct {v1}, Landroidx/transition/Transition;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    new-instance v1, Landroidx/transition/Fade;

    invoke-direct {v1, v0}, Landroidx/transition/Fade;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)V

    return-void
.end method

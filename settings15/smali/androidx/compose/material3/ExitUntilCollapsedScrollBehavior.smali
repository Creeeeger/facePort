.class public final Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/material3/TopAppBarScrollBehavior;


# instance fields
.field public final canScroll:Lkotlin/jvm/functions/Function0;

.field public final flingAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

.field public final nestedScrollConnection:Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1;

.field public final snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

.field public final state:Landroidx/compose/material3/TopAppBarState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/TopAppBarState;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpecImpl;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->state:Landroidx/compose/material3/TopAppBarState;

    iput-object p2, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->snapAnimationSpec:Landroidx/compose/animation/core/AnimationSpec;

    iput-object p3, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->flingAnimationSpec:Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    iput-object p4, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->canScroll:Lkotlin/jvm/functions/Function0;

    new-instance p1, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1;-><init>(Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;)V

    iput-object p1, p0, Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior;->nestedScrollConnection:Landroidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1;

    return-void
.end method

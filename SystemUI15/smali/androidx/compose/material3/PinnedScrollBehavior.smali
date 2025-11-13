.class public final Landroidx/compose/material3/PinnedScrollBehavior;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/material3/TopAppBarScrollBehavior;


# instance fields
.field public final canScroll:Lkotlin/jvm/functions/Function0;

.field public final isPinned:Z

.field public final nestedScrollConnection:Landroidx/compose/material3/PinnedScrollBehavior$nestedScrollConnection$1;

.field public final state:Landroidx/compose/material3/TopAppBarState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/TopAppBarState;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/PinnedScrollBehavior;->state:Landroidx/compose/material3/TopAppBarState;

    iput-object p2, p0, Landroidx/compose/material3/PinnedScrollBehavior;->canScroll:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/material3/PinnedScrollBehavior;->isPinned:Z

    new-instance p1, Landroidx/compose/material3/PinnedScrollBehavior$nestedScrollConnection$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/PinnedScrollBehavior$nestedScrollConnection$1;-><init>(Landroidx/compose/material3/PinnedScrollBehavior;)V

    iput-object p1, p0, Landroidx/compose/material3/PinnedScrollBehavior;->nestedScrollConnection:Landroidx/compose/material3/PinnedScrollBehavior$nestedScrollConnection$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Landroidx/compose/material3/PinnedScrollBehavior$1;->INSTANCE:Landroidx/compose/material3/PinnedScrollBehavior$1;

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/compose/material3/PinnedScrollBehavior;-><init>(Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

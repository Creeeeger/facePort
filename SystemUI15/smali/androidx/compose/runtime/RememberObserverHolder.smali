.class public final Landroidx/compose/runtime/RememberObserverHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final after:Landroidx/compose/runtime/Anchor;

.field public final wrapped:Landroidx/compose/runtime/RememberObserver;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/RememberObserver;Landroidx/compose/runtime/Anchor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    iput-object p2, p0, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    return-void
.end method

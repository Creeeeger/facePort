.class public final Landroidx/lifecycle/LiveData$AlwaysActiveObserver;
.super Landroidx/lifecycle/LiveData$ObserverWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/LiveData$ObserverWrapper;-><init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method


# virtual methods
.method public final shouldBeActive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

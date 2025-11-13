.class public final Landroidx/navigation/compose/ComposeNavGraphNavigator;
.super Landroidx/navigation/NavGraphNavigator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "navigation"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    return-void
.end method


# virtual methods
.method public final createDestination()Landroidx/navigation/NavDestination;
    .locals 1

    new-instance v0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-direct {v0, p0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public final createDestination()Landroidx/navigation/NavGraph;
    .locals 1

    new-instance v0, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;

    invoke-direct {v0, p0}, Landroidx/navigation/compose/ComposeNavGraphNavigator$ComposeNavGraph;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

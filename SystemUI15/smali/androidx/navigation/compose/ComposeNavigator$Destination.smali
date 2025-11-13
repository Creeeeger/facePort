.class public final Landroidx/navigation/compose/ComposeNavigator$Destination;
.super Landroidx/navigation/NavDestination;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final content:Lkotlin/jvm/functions/Function4;

.field public enterTransition:Lkotlin/jvm/functions/Function1;

.field public exitTransition:Lkotlin/jvm/functions/Function1;

.field public popEnterTransition:Lkotlin/jvm/functions/Function1;

.field public popExitTransition:Lkotlin/jvm/functions/Function1;

.field public sizeTransform:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function3;)V
    .locals 3

    new-instance v0, Landroidx/navigation/compose/ComposeNavigator$Destination$1;

    invoke-direct {v0, p2}, Landroidx/navigation/compose/ComposeNavigator$Destination$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    new-instance p2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, 0x5ea6493e

    const/4 v2, 0x1

    invoke-direct {p2, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Landroidx/navigation/compose/ComposeNavigator$Destination;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function4;)V

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/compose/ComposeNavigator;",
            "Lkotlin/jvm/functions/Function4;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    iput-object p2, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;->content:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.class public final Landroidx/navigation/compose/ComposeNavigator$Destination;
.super Landroidx/navigation/NavDestination;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final content:Lkotlin/jvm/functions/Function4;

.field public enterTransition:Lkotlin/jvm/functions/Function1;

.field public exitTransition:Lkotlin/jvm/functions/Function1;

.field public popEnterTransition:Lkotlin/jvm/functions/Function1;

.field public popExitTransition:Lkotlin/jvm/functions/Function1;

.field public sizeTransform:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function4;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/navigation/NavDestination;-><init>(Landroidx/navigation/Navigator;)V

    iput-object p2, p0, Landroidx/navigation/compose/ComposeNavigator$Destination;->content:Lkotlin/jvm/functions/Function4;

    return-void
.end method

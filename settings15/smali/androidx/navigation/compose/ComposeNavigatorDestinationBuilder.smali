.class public final Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

.field public final content:Lkotlin/jvm/functions/Function4;

.field public enterTransition:Lkotlin/jvm/functions/Function1;

.field public exitTransition:Lkotlin/jvm/functions/Function1;

.field public popEnterTransition:Lkotlin/jvm/functions/Function1;

.field public popExitTransition:Lkotlin/jvm/functions/Function1;

.field public sizeTransform:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroidx/navigation/compose/ComposeNavigator;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

    iput-object p3, p0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->content:Lkotlin/jvm/functions/Function4;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/navigation/NavDestination;
    .locals 2

    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    iget-object v1, p0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->enterTransition:Lkotlin/jvm/functions/Function1;

    iput-object v1, v0, Landroidx/navigation/compose/ComposeNavigator$Destination;->enterTransition:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->exitTransition:Lkotlin/jvm/functions/Function1;

    iput-object v1, v0, Landroidx/navigation/compose/ComposeNavigator$Destination;->exitTransition:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->popEnterTransition:Lkotlin/jvm/functions/Function1;

    iput-object v1, v0, Landroidx/navigation/compose/ComposeNavigator$Destination;->popEnterTransition:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->popExitTransition:Lkotlin/jvm/functions/Function1;

    iput-object v1, v0, Landroidx/navigation/compose/ComposeNavigator$Destination;->popExitTransition:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->sizeTransform:Lkotlin/jvm/functions/Function1;

    iput-object p0, v0, Landroidx/navigation/compose/ComposeNavigator$Destination;->sizeTransform:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final instantiateDestination()Landroidx/navigation/NavDestination;
    .locals 2

    new-instance v0, Landroidx/navigation/compose/ComposeNavigator$Destination;

    iget-object v1, p0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->composeNavigator:Landroidx/navigation/compose/ComposeNavigator;

    iget-object p0, p0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->content:Lkotlin/jvm/functions/Function4;

    invoke-direct {v0, v1, p0}, Landroidx/navigation/compose/ComposeNavigator$Destination;-><init>(Landroidx/navigation/compose/ComposeNavigator;Lkotlin/jvm/functions/Function4;)V

    return-object v0
.end method

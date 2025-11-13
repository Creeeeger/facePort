.class public abstract Landroidx/navigation/compose/NavGraphBuilderKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 3

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    sget-object p4, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    new-instance v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;

    iget-object v1, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    const-class v2, Landroidx/navigation/compose/ComposeNavigator;

    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    check-cast v1, Landroidx/navigation/compose/ComposeNavigator;

    invoke-direct {v0, v1, p1, p3}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/ComposeNavigator;Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NamedNavArgument;

    iget-object p3, p2, Landroidx/navigation/NamedNavArgument;->name:Ljava/lang/String;

    iget-object v1, v0, Landroidx/navigation/NavDestinationBuilder;->arguments:Ljava/util/Map;

    iget-object p2, p2, Landroidx/navigation/NamedNavArgument;->argument:Landroidx/navigation/NavArgument;

    invoke-interface {v1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavDeepLink;

    iget-object p3, v0, Landroidx/navigation/NavDestinationBuilder;->deepLinks:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->enterTransition:Lkotlin/jvm/functions/Function1;

    iput-object p1, v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->exitTransition:Lkotlin/jvm/functions/Function1;

    iput-object p1, v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->popEnterTransition:Lkotlin/jvm/functions/Function1;

    iput-object p1, v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->popExitTransition:Lkotlin/jvm/functions/Function1;

    iput-object p1, v0, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->sizeTransform:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    invoke-virtual {v0}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

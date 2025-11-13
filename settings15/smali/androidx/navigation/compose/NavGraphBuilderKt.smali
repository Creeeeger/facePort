.class public abstract Landroidx/navigation/compose/NavGraphBuilderKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 3

    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_0

    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    and-int/lit8 v0, p9, 0x4

    if-eqz v0, :cond_1

    sget-object p3, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    and-int/lit8 v0, p9, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object p4, v1

    :cond_2
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_3

    move-object p5, v1

    :cond_3
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_4

    move-object p6, p4

    :cond_4
    and-int/lit8 p9, p9, 0x40

    if-eqz p9, :cond_5

    move-object p7, p5

    :cond_5
    new-instance p9, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;

    iget-object v0, p0, Landroidx/navigation/NavGraphBuilder;->provider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Landroidx/navigation/compose/ComposeNavigator;

    invoke-static {v2}, Landroidx/navigation/NavigatorProvider$Companion;->getNameForNavigator$navigation_common_release(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v0

    check-cast v0, Landroidx/navigation/compose/ComposeNavigator;

    invoke-direct {p9, v0, p1, p8}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;-><init>(Landroidx/navigation/compose/ComposeNavigator;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NamedNavArgument;

    iget-object p8, p2, Landroidx/navigation/NamedNavArgument;->name:Ljava/lang/String;

    iget-object v0, p9, Landroidx/navigation/NavDestinationBuilder;->arguments:Ljava/util/Map;

    iget-object p2, p2, Landroidx/navigation/NamedNavArgument;->argument:Landroidx/navigation/NavArgument;

    invoke-interface {v0, p8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavDeepLink;

    const-string p3, "navDeepLink"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p9, Landroidx/navigation/NavDestinationBuilder;->deepLinks:Ljava/util/List;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iput-object p4, p9, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->enterTransition:Lkotlin/jvm/functions/Function1;

    iput-object p5, p9, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->exitTransition:Lkotlin/jvm/functions/Function1;

    iput-object p6, p9, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->popEnterTransition:Lkotlin/jvm/functions/Function1;

    iput-object p7, p9, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->popExitTransition:Lkotlin/jvm/functions/Function1;

    iput-object v1, p9, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->sizeTransform:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Landroidx/navigation/NavGraphBuilder;->destinations:Ljava/util/List;

    invoke-virtual {p9}, Landroidx/navigation/compose/ComposeNavigatorDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object p1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

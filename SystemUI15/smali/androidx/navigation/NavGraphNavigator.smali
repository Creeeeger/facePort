.class public Landroidx/navigation/NavGraphNavigator;
.super Landroidx/navigation/Navigator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Landroidx/navigation/Navigator$Name;
    value = "navigation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/Navigator;"
    }
.end annotation


# instance fields
.field public final navigatorProvider:Landroidx/navigation/NavigatorProvider;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;)V
    .locals 0

    invoke-direct {p0}, Landroidx/navigation/Navigator;-><init>()V

    iput-object p1, p0, Landroidx/navigation/NavGraphNavigator;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDestination()Landroidx/navigation/NavDestination;
    .locals 0

    invoke-virtual {p0}, Landroidx/navigation/NavGraphNavigator;->createDestination()Landroidx/navigation/NavGraph;

    move-result-object p0

    return-object p0
.end method

.method public createDestination()Landroidx/navigation/NavGraph;
    .locals 1

    new-instance v0, Landroidx/navigation/NavGraph;

    invoke-direct {v0, p0}, Landroidx/navigation/NavGraph;-><init>(Landroidx/navigation/Navigator;)V

    return-object v0
.end method

.method public final navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    iget-object v1, v0, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    check-cast v1, Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iget v2, v1, Landroidx/navigation/NavGraph;->startDestId:I

    iget-object v3, v1, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "no start destination defined via app:startDestination for "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v1, Landroidx/navigation/NavDestination;->id:I

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "the root navigation"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    move-result-object v2

    goto :goto_3

    :cond_3
    iget-object v4, v1, Landroidx/navigation/NavGraph;->nodes:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v4, v2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    :goto_3
    if-nez v2, :cond_6

    iget-object p0, v1, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    if-nez p0, :cond_5

    iget-object p0, v1, Landroidx/navigation/NavGraph;->startDestinationRoute:Ljava/lang/String;

    if-nez p0, :cond_4

    iget p0, v1, Landroidx/navigation/NavGraph;->startDestId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :cond_4
    iput-object p0, v1, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    :cond_5
    iget-object p0, v1, Landroidx/navigation/NavGraph;->startDestIdName:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "navigation destination "

    const-string p3, " is not a direct child of this NavGraph"

    invoke-static {p2, p0, p3}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-eqz v3, :cond_9

    invoke-virtual {v2, v3}, Landroidx/navigation/NavDestination;->matchDeepLink(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v1, Landroidx/navigation/NavDestination$DeepLinkMatch;->matchingArgs:Landroid/os/Bundle;

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    if-eqz v0, :cond_8

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_8
    move-object v0, v3

    :cond_9
    iget-object v1, p0, Landroidx/navigation/NavGraphNavigator;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    iget-object v3, v2, Landroidx/navigation/NavDestination;->navigatorName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v3

    invoke-virtual {v2, v0}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroidx/navigation/NavigatorState;->createBackStackEntry(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0, p2, p3}, Landroidx/navigation/Navigator;->navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

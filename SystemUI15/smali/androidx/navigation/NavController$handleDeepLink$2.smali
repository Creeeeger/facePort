.class final Landroidx/navigation/NavController$handleDeepLink$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $node:Landroidx/navigation/NavDestination;

.field final synthetic this$0:Landroidx/navigation/NavController;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavDestination;Landroidx/navigation/NavController;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/NavController$handleDeepLink$2;->$node:Landroidx/navigation/NavDestination;

    iput-object p2, p0, Landroidx/navigation/NavController$handleDeepLink$2;->this$0:Landroidx/navigation/NavController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Landroidx/navigation/NavOptionsBuilder;

    sget-object v0, Landroidx/navigation/NavController$handleDeepLink$2$1;->INSTANCE:Landroidx/navigation/NavController$handleDeepLink$2$1;

    new-instance v1, Landroidx/navigation/AnimBuilder;

    invoke-direct {v1}, Landroidx/navigation/AnimBuilder;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController$handleDeepLink$2$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v1, Landroidx/navigation/AnimBuilder;->enter:I

    iget-object v2, p1, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    iput v0, v2, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    iget v0, v1, Landroidx/navigation/AnimBuilder;->exit:I

    iput v0, v2, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    iget v0, v1, Landroidx/navigation/AnimBuilder;->popEnter:I

    iput v0, v2, Landroidx/navigation/NavOptions$Builder;->popEnterAnim:I

    iget v0, v1, Landroidx/navigation/AnimBuilder;->popExit:I

    iput v0, v2, Landroidx/navigation/NavOptions$Builder;->popExitAnim:I

    iget-object v0, p0, Landroidx/navigation/NavController$handleDeepLink$2;->$node:Landroidx/navigation/NavDestination;

    instance-of v1, v0, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/navigation/NavDestination$Companion$hierarchy$1;->INSTANCE:Landroidx/navigation/NavDestination$Companion$hierarchy$1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt__SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/NavController$handleDeepLink$2;->this$0:Landroidx/navigation/NavController;

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    iget-object v3, v1, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v3}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v3, Landroidx/navigation/NavBackStackEntry;->destination:Landroidx/navigation/NavDestination;

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_2

    iget-object v4, v3, Landroidx/navigation/NavDestination;->parent:Landroidx/navigation/NavGraph;

    :cond_2
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_3
    sget-boolean v0, Landroidx/navigation/NavController;->deepLinkSaveState:Z

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    iget-object p0, p0, Landroidx/navigation/NavController$handleDeepLink$2;->this$0:Landroidx/navigation/NavController;

    iget-object p0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/navigation/NavGraph;->startDestId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p0, v1}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object p0

    sget-object v0, Landroidx/navigation/NavGraph$Companion$findStartDestination$1;->INSTANCE:Landroidx/navigation/NavGraph$Companion$findStartDestination$1;

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt__SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    invoke-static {p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->last(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavDestination;

    iget p0, p0, Landroidx/navigation/NavDestination;->id:I

    sget-object v0, Landroidx/navigation/NavController$handleDeepLink$2$2;->INSTANCE:Landroidx/navigation/NavController$handleDeepLink$2$2;

    iput p0, p1, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    iput-boolean v1, p1, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    new-instance p0, Landroidx/navigation/PopUpToBuilder;

    invoke-direct {p0}, Landroidx/navigation/PopUpToBuilder;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/navigation/NavController$handleDeepLink$2$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroidx/navigation/PopUpToBuilder;->inclusive:Z

    iput-boolean v0, p1, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    iget-boolean p0, p0, Landroidx/navigation/PopUpToBuilder;->saveState:Z

    iput-boolean p0, p1, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You must call setGraph() before calling getGraph()"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

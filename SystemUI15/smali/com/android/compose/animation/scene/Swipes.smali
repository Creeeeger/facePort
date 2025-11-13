.class public final Lcom/android/compose/animation/scene/Swipes;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final downOrRight:Lcom/android/compose/animation/scene/Swipe;

.field public final downOrRightNoSource:Lcom/android/compose/animation/scene/Swipe;

.field public downOrRightResult:Lcom/android/compose/animation/scene/UserActionResult;

.field public final upOrLeft:Lcom/android/compose/animation/scene/Swipe;

.field public final upOrLeftNoSource:Lcom/android/compose/animation/scene/Swipe;

.field public upOrLeftResult:Lcom/android/compose/animation/scene/UserActionResult;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/Swipe;Lcom/android/compose/animation/scene/Swipe;Lcom/android/compose/animation/scene/Swipe;Lcom/android/compose/animation/scene/Swipe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/Swipes;->upOrLeft:Lcom/android/compose/animation/scene/Swipe;

    iput-object p2, p0, Lcom/android/compose/animation/scene/Swipes;->downOrRight:Lcom/android/compose/animation/scene/Swipe;

    iput-object p3, p0, Lcom/android/compose/animation/scene/Swipes;->upOrLeftNoSource:Lcom/android/compose/animation/scene/Swipe;

    iput-object p4, p0, Lcom/android/compose/animation/scene/Swipes;->downOrRightNoSource:Lcom/android/compose/animation/scene/Swipe;

    return-void
.end method


# virtual methods
.method public final computeSwipesResults(Lcom/android/compose/animation/scene/Scene;)Lkotlin/Pair;
    .locals 3

    iget-object p1, p1, Lcom/android/compose/animation/scene/Scene;->_userActions$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/compose/animation/scene/Swipes;->upOrLeft:Lcom/android/compose/animation/scene/Swipe;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/compose/animation/scene/UserActionResult;

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/compose/animation/scene/Swipes;->upOrLeftNoSource:Lcom/android/compose/animation/scene/Swipe;

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/compose/animation/scene/UserActionResult;

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/compose/animation/scene/Swipes;->downOrRight:Lcom/android/compose/animation/scene/Swipe;

    if-nez v2, :cond_3

    move-object v2, v0

    goto :goto_2

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/compose/animation/scene/UserActionResult;

    :goto_2
    if-nez v2, :cond_5

    iget-object p0, p0, Lcom/android/compose/animation/scene/Swipes;->downOrRightNoSource:Lcom/android/compose/animation/scene/Swipe;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/compose/animation/scene/UserActionResult;

    :goto_3
    move-object v2, v0

    :cond_5
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final findUserActionResult(Lcom/android/compose/animation/scene/Scene;FZ)Lcom/android/compose/animation/scene/UserActionResult;
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/compose/animation/scene/Swipes;->updateSwipesResults(Lcom/android/compose/animation/scene/Scene;)V

    :cond_0
    iget-object p1, p0, Lcom/android/compose/animation/scene/Swipes;->upOrLeftResult:Lcom/android/compose/animation/scene/UserActionResult;

    if-nez p1, :cond_1

    iget-object p3, p0, Lcom/android/compose/animation/scene/Swipes;->downOrRightResult:Lcom/android/compose/animation/scene/UserActionResult;

    if-nez p3, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-gez p2, :cond_2

    if-nez p1, :cond_4

    :cond_2
    iget-object p0, p0, Lcom/android/compose/animation/scene/Swipes;->downOrRightResult:Lcom/android/compose/animation/scene/UserActionResult;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, p0

    :cond_4
    :goto_0
    return-object p1
.end method

.method public final updateSwipesResults(Lcom/android/compose/animation/scene/Scene;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/compose/animation/scene/Swipes;->computeSwipesResults(Lcom/android/compose/animation/scene/Scene;)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/animation/scene/UserActionResult;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/compose/animation/scene/UserActionResult;

    iput-object v0, p0, Lcom/android/compose/animation/scene/Swipes;->upOrLeftResult:Lcom/android/compose/animation/scene/UserActionResult;

    iput-object p1, p0, Lcom/android/compose/animation/scene/Swipes;->downOrRightResult:Lcom/android/compose/animation/scene/UserActionResult;

    return-void
.end method

.class public interface abstract Lcom/android/compose/animation/scene/UserAction;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public to(Lcom/android/compose/animation/scene/SceneKey;)Lkotlin/Pair;
    .locals 3

    new-instance v0, Lcom/android/compose/animation/scene/UserActionResult;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p1, v1, v2, v1}, Lcom/android/compose/animation/scene/UserActionResult;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

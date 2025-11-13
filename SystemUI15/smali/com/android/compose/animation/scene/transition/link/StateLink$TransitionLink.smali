.class public final Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final sourceFrom:Lcom/android/compose/animation/scene/SceneKey;

.field public final sourceTo:Lcom/android/compose/animation/scene/SceneKey;

.field public final targetFrom:Lcom/android/compose/animation/scene/SceneKey;

.field public final targetTo:Lcom/android/compose/animation/scene/SceneKey;

.field public final targetTransitionKey:Lcom/android/compose/animation/scene/TransitionKey;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;->sourceFrom:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p2, p0, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;->sourceTo:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p3, p0, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;->targetFrom:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p4, p0, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;->targetTo:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p5, p0, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;->targetTransitionKey:Lcom/android/compose/animation/scene/TransitionKey;

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "From and To can\'t be the same"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;)V

    return-void
.end method

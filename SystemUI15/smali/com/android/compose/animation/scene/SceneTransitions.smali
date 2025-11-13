.class public final Lcom/android/compose/animation/scene/SceneTransitions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/compose/animation/scene/SceneTransitions$Companion;

.field public static final DefaultSwipeSpec:Landroidx/compose/animation/core/SpringSpec;

.field public static final Empty:Lcom/android/compose/animation/scene/SceneTransitions;


# instance fields
.field public final defaultSwipeSpec:Landroidx/compose/animation/core/SpringSpec;

.field public final interruptionHandler:Lcom/android/compose/animation/scene/InterruptionHandler;

.field public final overscrollCache:Ljava/util/Map;

.field public final overscrollSpecs:Ljava/util/List;

.field public final transitionCache:Ljava/util/Map;

.field public final transitionSpecs:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/compose/animation/scene/SceneTransitions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/compose/animation/scene/SceneTransitions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/compose/animation/scene/SceneTransitions;->Companion:Lcom/android/compose/animation/scene/SceneTransitions$Companion;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x43c80000    # 400.0f

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Lcom/android/compose/animation/scene/SceneTransitions;->DefaultSwipeSpec:Landroidx/compose/animation/core/SpringSpec;

    new-instance v1, Lcom/android/compose/animation/scene/SceneTransitions;

    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sget-object v3, Lcom/android/compose/animation/scene/DefaultInterruptionHandler;->INSTANCE:Lcom/android/compose/animation/scene/DefaultInterruptionHandler;

    invoke-direct {v1, v0, v2, v2, v3}, Lcom/android/compose/animation/scene/SceneTransitions;-><init>(Landroidx/compose/animation/core/SpringSpec;Ljava/util/List;Ljava/util/List;Lcom/android/compose/animation/scene/InterruptionHandler;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/SpringSpec;Ljava/util/List;Ljava/util/List;Lcom/android/compose/animation/scene/InterruptionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/SpringSpec;",
            "Ljava/util/List<",
            "Lcom/android/compose/animation/scene/TransitionSpecImpl;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/compose/animation/scene/OverscrollSpecImpl;",
            ">;",
            "Lcom/android/compose/animation/scene/InterruptionHandler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/SceneTransitions;->defaultSwipeSpec:Landroidx/compose/animation/core/SpringSpec;

    iput-object p2, p0, Lcom/android/compose/animation/scene/SceneTransitions;->transitionSpecs:Ljava/util/List;

    iput-object p3, p0, Lcom/android/compose/animation/scene/SceneTransitions;->overscrollSpecs:Ljava/util/List;

    iput-object p4, p0, Lcom/android/compose/animation/scene/SceneTransitions;->interruptionHandler:Lcom/android/compose/animation/scene/InterruptionHandler;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/SceneTransitions;->transitionCache:Ljava/util/Map;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/SceneTransitions;->overscrollCache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final overscrollSpec$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;Landroidx/compose/foundation/gestures/Orientation;)Lcom/android/compose/animation/scene/OverscrollSpecImpl;
    .locals 7

    iget-object v0, p0, Lcom/android/compose/animation/scene/SceneTransitions;->overscrollCache:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/compose/animation/scene/SceneTransitions$overscrollSpec$2$1;

    invoke-direct {v0, p1}, Lcom/android/compose/animation/scene/SceneTransitions$overscrollSpec$2$1;-><init>(Lcom/android/compose/animation/scene/SceneKey;)V

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitions;->overscrollSpecs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    iget-object v6, v5, Lcom/android/compose/animation/scene/OverscrollSpecImpl;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v6, p2, :cond_2

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v3, :cond_1

    move-object v3, v5

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Found multiple overscroll specs for overscroll "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    :cond_4
    check-cast v0, Lcom/android/compose/animation/scene/OverscrollSpecImpl;

    return-object v0
.end method

.method public final transition(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/TransitionKey;Lkotlin/jvm/functions/Function1;)Lcom/android/compose/animation/scene/TransitionSpecImpl;
    .locals 5

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitions;->transitionSpecs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/compose/animation/scene/TransitionSpecImpl;

    iget-object v4, v3, Lcom/android/compose/animation/scene/TransitionSpecImpl;->key:Lcom/android/compose/animation/scene/TransitionKey;

    invoke-static {v4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Found multiple transition specs for transition "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " => "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

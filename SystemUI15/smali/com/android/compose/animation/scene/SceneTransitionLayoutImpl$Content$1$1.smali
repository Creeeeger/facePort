.class final Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$Content$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$Content$1$1;->this$0:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x1

    check-cast p1, Landroidx/compose/ui/layout/LookaheadScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    iget-object p3, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$Content$1$1;->this$0:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iput-object p1, p3, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->lookaheadScope:Landroidx/compose/ui/layout/LookaheadScope;

    const/4 p1, 0x0

    invoke-static {p3, p2, p1}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->access$BackHandler(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/runtime/Composer;I)V

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$Content$1$1;->this$0:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p3, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {p3}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getCurrentTransitions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getTransitionState()Lcom/android/compose/animation/scene/TransitionState;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/compose/animation/scene/TransitionState;->getCurrentScene()Lcom/android/compose/animation/scene/SceneKey;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Scene;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_0
    new-instance p3, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {p3}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_4

    :goto_0
    add-int/lit8 v4, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/compose/animation/scene/TransitionState$Transition;

    iget-object v5, v3, Lcom/android/compose/animation/scene/TransitionState$Transition;->toScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Scene;

    move-result-object v5

    invoke-virtual {p3, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, v3, Lcom/android/compose/animation/scene/TransitionState$Transition;->fromScene:Lcom/android/compose/animation/scene/SceneKey;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Lcom/android/compose/animation/scene/Scene;

    move-result-object v3

    invoke-virtual {p3, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_2
    if-gez v4, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p3}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    move v1, p1

    :goto_3
    if-ge v1, p3, :cond_5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/compose/animation/scene/Scene;

    iget-object v3, v2, Lcom/android/compose/animation/scene/Scene;->key:Lcom/android/compose/animation/scene/SceneKey;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/ComposerImpl;

    const v5, -0xbc73a28

    invoke-virtual {v4, v5, v3}, Landroidx/compose/runtime/ComposerImpl;->startMovableGroup(ILjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, p1, v0}, Lcom/android/compose/animation/scene/Scene;->Content(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v4, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    add-int/2addr v1, v0

    goto :goto_3

    :cond_5
    sget-object p0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

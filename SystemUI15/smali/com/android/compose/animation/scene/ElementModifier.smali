.class final Lcom/android/compose/animation/scene/ElementModifier;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement;"
    }
.end annotation


# instance fields
.field public final currentTransitions:Ljava/util/List;

.field public final key:Lcom/android/compose/animation/scene/ElementKey;

.field public final layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

.field public final scene:Lcom/android/compose/animation/scene/Scene;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Ljava/util/List;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/compose/animation/scene/TransitionState$Transition;",
            ">;",
            "Lcom/android/compose/animation/scene/Scene;",
            "Lcom/android/compose/animation/scene/ElementKey;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/ElementModifier;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iput-object p2, p0, Lcom/android/compose/animation/scene/ElementModifier;->currentTransitions:Ljava/util/List;

    iput-object p3, p0, Lcom/android/compose/animation/scene/ElementModifier;->scene:Lcom/android/compose/animation/scene/Scene;

    iput-object p4, p0, Lcom/android/compose/animation/scene/ElementModifier;->key:Lcom/android/compose/animation/scene/ElementKey;

    return-void
.end method


# virtual methods
.method public final create()Landroidx/compose/ui/Modifier$Node;
    .locals 4

    new-instance v0, Lcom/android/compose/animation/scene/ElementNode;

    iget-object v1, p0, Lcom/android/compose/animation/scene/ElementModifier;->currentTransitions:Ljava/util/List;

    iget-object v2, p0, Lcom/android/compose/animation/scene/ElementModifier;->key:Lcom/android/compose/animation/scene/ElementKey;

    iget-object v3, p0, Lcom/android/compose/animation/scene/ElementModifier;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p0, p0, Lcom/android/compose/animation/scene/ElementModifier;->scene:Lcom/android/compose/animation/scene/Scene;

    invoke-direct {v0, v3, v1, p0, v2}, Lcom/android/compose/animation/scene/ElementNode;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Ljava/util/List;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/ElementKey;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/compose/animation/scene/ElementModifier;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/compose/animation/scene/ElementModifier;

    iget-object v1, p1, Lcom/android/compose/animation/scene/ElementModifier;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v3, p0, Lcom/android/compose/animation/scene/ElementModifier;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/compose/animation/scene/ElementModifier;->currentTransitions:Ljava/util/List;

    iget-object v3, p1, Lcom/android/compose/animation/scene/ElementModifier;->currentTransitions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/compose/animation/scene/ElementModifier;->scene:Lcom/android/compose/animation/scene/Scene;

    iget-object v3, p1, Lcom/android/compose/animation/scene/ElementModifier;->scene:Lcom/android/compose/animation/scene/Scene;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/compose/animation/scene/ElementModifier;->key:Lcom/android/compose/animation/scene/ElementKey;

    iget-object p1, p1, Lcom/android/compose/animation/scene/ElementModifier;->key:Lcom/android/compose/animation/scene/ElementKey;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/compose/animation/scene/ElementModifier;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/compose/animation/scene/ElementModifier;->currentTransitions:Ljava/util/List;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lcom/android/compose/animation/scene/ElementModifier;->scene:Lcom/android/compose/animation/scene/Scene;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/compose/animation/scene/ElementModifier;->key:Lcom/android/compose/animation/scene/ElementKey;

    iget-object p0, p0, Lcom/android/compose/animation/scene/Key;->identity:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/compose/animation/scene/ElementModifier;->currentTransitions:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ElementModifier(layoutImpl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/compose/animation/scene/ElementModifier;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currentTransitions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", scene="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/compose/animation/scene/ElementModifier;->scene:Lcom/android/compose/animation/scene/Scene;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", key="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/compose/animation/scene/ElementModifier;->key:Lcom/android/compose/animation/scene/ElementKey;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 5

    check-cast p1, Lcom/android/compose/animation/scene/ElementNode;

    iget-object v0, p0, Lcom/android/compose/animation/scene/ElementModifier;->currentTransitions:Ljava/util/List;

    iget-object v1, p1, Lcom/android/compose/animation/scene/ElementNode;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v2, p0, Lcom/android/compose/animation/scene/ElementModifier;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/compose/animation/scene/ElementNode;->scene:Lcom/android/compose/animation/scene/Scene;

    iget-object v3, p0, Lcom/android/compose/animation/scene/ElementModifier;->scene:Lcom/android/compose/animation/scene/Scene;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p1, Lcom/android/compose/animation/scene/ElementNode;->currentTransitions:Ljava/util/List;

    iget-object v0, p1, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/compose/animation/scene/Element$SceneState;->nodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/compose/animation/scene/ElementNode;->_element:Lcom/android/compose/animation/scene/Element;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/compose/animation/scene/ElementModifier;->key:Lcom/android/compose/animation/scene/ElementKey;

    iput-object p0, p1, Lcom/android/compose/animation/scene/ElementNode;->key:Lcom/android/compose/animation/scene/ElementKey;

    invoke-virtual {p1}, Lcom/android/compose/animation/scene/ElementNode;->updateElementAndSceneValues()V

    iget-object p0, p1, Lcom/android/compose/animation/scene/ElementNode;->_sceneState:Lcom/android/compose/animation/scene/Element$SceneState;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/compose/animation/scene/Element$SceneState;->nodes:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/compose/ui/Modifier$Node;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    new-instance v3, Lcom/android/compose/animation/scene/ElementNode$addNodeToSceneState$1;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/compose/animation/scene/ElementNode$addNodeToSceneState$1;-><init>(Lcom/android/compose/animation/scene/ElementNode;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p0, v4, v4, v3, p1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lcom/android/compose/animation/scene/ElementNode;->Companion:Lcom/android/compose/animation/scene/ElementNode$Companion;

    invoke-static {p0, v2, v0, v1}, Lcom/android/compose/animation/scene/ElementNode$Companion;->access$maybePruneMaps(Lcom/android/compose/animation/scene/ElementNode$Companion;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Element;Lcom/android/compose/animation/scene/Element$SceneState;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

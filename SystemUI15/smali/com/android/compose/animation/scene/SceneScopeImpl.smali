.class public final Lcom/android/compose/animation/scene/SceneScopeImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/compose/animation/scene/SceneScope;


# instance fields
.field public final layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

.field public final layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

.field public final scene:Lcom/android/compose/animation/scene/Scene;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lcom/android/compose/animation/scene/Scene;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/animation/scene/SceneScopeImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iput-object p2, p0, Lcom/android/compose/animation/scene/SceneScopeImpl;->scene:Lcom/android/compose/animation/scene/Scene;

    iget-object p1, p1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iput-object p1, p0, Lcom/android/compose/animation/scene/SceneScopeImpl;->layoutState:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    return-void
.end method


# virtual methods
.method public final element(Landroidx/compose/ui/Modifier;Lcom/android/compose/animation/scene/ElementKey;)Landroidx/compose/ui/Modifier;
    .locals 3

    iget-object v0, p0, Lcom/android/compose/animation/scene/SceneScopeImpl;->layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneScopeImpl;->scene:Lcom/android/compose/animation/scene/Scene;

    iget-object v1, v0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v1}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->getCurrentTransitions()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/compose/animation/scene/ElementModifier;

    invoke-direct {v2, v0, v1, p0, p2}, Lcom/android/compose/animation/scene/ElementModifier;-><init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Ljava/util/List;Lcom/android/compose/animation/scene/Scene;Lcom/android/compose/animation/scene/ElementKey;)V

    invoke-interface {p1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    iget-object p1, p2, Lcom/android/compose/animation/scene/ElementKey;->testTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

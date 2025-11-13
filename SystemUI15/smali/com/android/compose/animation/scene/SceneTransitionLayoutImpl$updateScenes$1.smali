.class public final Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$updateScenes$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $scenesToRemove:Ljava/util/Set;

.field public final synthetic $zIndex:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic this$0:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/compose/animation/scene/SceneKey;",
            ">;",
            "Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$updateScenes$1;->$scenesToRemove:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$updateScenes$1;->this$0:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iput-object p3, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$updateScenes$1;->$zIndex:Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final scene(Lcom/android/compose/animation/scene/SceneKey;Ljava/util/Map;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 8

    iget-object v0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$updateScenes$1;->$scenesToRemove:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$updateScenes$1;->this$0:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v0, v3, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scenes:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/compose/animation/scene/Scene;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$updateScenes$1;->$zIndex:Lkotlin/jvm/internal/Ref$FloatRef;

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/android/compose/animation/scene/Scene;->content$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/android/compose/animation/scene/Scene;->checkValid(Ljava/util/Map;)V

    iget-object p1, v0, Lcom/android/compose/animation/scene/Scene;->_userActions$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget p1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object p2, v0, Lcom/android/compose/animation/scene/Scene;->zIndex$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->setFloatValue(F)V

    goto :goto_0

    :cond_0
    iget-object v0, v3, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->scenes:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    new-instance v7, Lcom/android/compose/animation/scene/Scene;

    iget v6, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    move-object v1, v7

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/compose/animation/scene/Scene;-><init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Lkotlin/jvm/functions/Function3;Ljava/util/Map;F)V

    invoke-virtual {v0, p1, v7}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget p1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    iput p1, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    return-void
.end method

.class final Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

.field final synthetic $state:Lcom/android/compose/animation/scene/SceneTransitionLayoutState;

.field final synthetic $swipeSourceDetector:Lcom/android/compose/animation/scene/SwipeSourceDetector;

.field final synthetic $transitionInterceptionThreshold:F


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;Landroidx/compose/ui/unit/Density;Lcom/android/compose/animation/scene/SwipeSourceDetector;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;->$state:Lcom/android/compose/animation/scene/SceneTransitionLayoutState;

    iput-object p2, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;->$layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iput-object p3, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;->$density:Landroidx/compose/ui/unit/Density;

    iput-object p4, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;->$swipeSourceDetector:Lcom/android/compose/animation/scene/SwipeSourceDetector;

    iput p5, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;->$transitionInterceptionThreshold:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;->$state:Lcom/android/compose/animation/scene/SceneTransitionLayoutState;

    iget-object v1, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;->$layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v1, v1, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;->$layoutImpl:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v1, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;->$density:Landroidx/compose/ui/unit/Density;

    iput-object v1, v0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->density:Landroidx/compose/ui/unit/Density;

    iget-object v1, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;->$swipeSourceDetector:Lcom/android/compose/animation/scene/SwipeSourceDetector;

    iput-object v1, v0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->swipeSourceDetector:Lcom/android/compose/animation/scene/SwipeSourceDetector;

    iget p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutKt$SceneTransitionLayoutForTesting$1;->$transitionInterceptionThreshold:F

    iput p0, v0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->transitionInterceptionThreshold:F

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This SceneTransitionLayout was bound to a different SceneTransitionLayoutState that was used when creating it, which is not supported"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

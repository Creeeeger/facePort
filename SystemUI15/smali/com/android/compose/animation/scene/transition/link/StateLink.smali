.class public final Lcom/android/compose/animation/scene/transition/link/StateLink;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final target:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

.field public final transitionLinks:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneTransitionLayoutState;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/compose/animation/scene/SceneTransitionLayoutState;",
            "Ljava/util/List<",
            "Lcom/android/compose/animation/scene/transition/link/StateLink$TransitionLink;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/compose/animation/scene/transition/link/StateLink;->transitionLinks:Ljava/util/List;

    check-cast p1, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iput-object p1, p0, Lcom/android/compose/animation/scene/transition/link/StateLink;->target:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    return-void
.end method

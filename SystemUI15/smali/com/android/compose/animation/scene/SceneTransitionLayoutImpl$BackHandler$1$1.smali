.class final Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$BackHandler$1$1;
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
.field final synthetic $targetSceneForBackOrNull:Lcom/android/compose/animation/scene/SceneKey;

.field final synthetic this$0:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/SceneKey;Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$BackHandler$1$1;->$targetSceneForBackOrNull:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p2, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$BackHandler$1$1;->this$0:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$BackHandler$1$1;->$targetSceneForBackOrNull:Lcom/android/compose/animation/scene/SceneKey;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl$BackHandler$1$1;->this$0:Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;

    iget-object v1, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    invoke-virtual {v1, v0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->canChangeScene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lcom/android/compose/animation/scene/SceneKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->state:Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;

    iget-object p0, p0, Lcom/android/compose/animation/scene/SceneTransitionLayoutImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v1, p0, v0}, Lcom/android/compose/animation/scene/BaseSceneTransitionLayoutState;->onChangeScene$frameworks__base__packages__SystemUI__compose__scene__android_common__PlatformComposeSceneTransitionLayout(Lkotlinx/coroutines/CoroutineScope;Lcom/android/compose/animation/scene/SceneKey;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

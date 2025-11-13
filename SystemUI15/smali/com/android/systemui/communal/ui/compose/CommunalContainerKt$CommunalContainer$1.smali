.class final Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $dataSourceDelegator:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;

.field final synthetic $state:Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;


# direct methods
.method public constructor <init>(Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1;->$state:Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;

    iput-object p2, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1;->$dataSourceDelegator:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance p1, Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1;->$state:Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;

    iget-object v1, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;-><init>(Lcom/android/compose/animation/scene/MutableSceneTransitionLayoutState;Lkotlinx/coroutines/CoroutineScope;)V

    iget-object v0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1;->$dataSourceDelegator:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;->setDelegate(Lcom/android/systemui/scene/ui/composable/SceneTransitionLayoutDataSource;)V

    iget-object p0, p0, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1;->$dataSourceDelegator:Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;

    new-instance p1, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1$invoke$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/communal/ui/compose/CommunalContainerKt$CommunalContainer$1$invoke$$inlined$onDispose$1;-><init>(Lcom/android/systemui/scene/shared/model/SceneDataSourceDelegator;)V

    return-object p1
.end method

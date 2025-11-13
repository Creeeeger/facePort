.class public final Lcom/android/systemui/bouncer/ui/composable/BouncerScene;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/scene/ui/composable/ComposableScene;


# instance fields
.field public final destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dialogFactory:Lcom/android/systemui/bouncer/ui/BouncerDialogFactory;

.field public final key:Lcom/android/compose/animation/scene/SceneKey;

.field public final viewModel:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;Lcom/android/systemui/bouncer/ui/BouncerDialogFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p2, Lcom/android/systemui/scene/shared/model/Scenes;->Bouncer:Lcom/android/compose/animation/scene/SceneKey;

    iput-object p2, p0, Lcom/android/systemui/bouncer/ui/composable/BouncerScene;->key:Lcom/android/compose/animation/scene/SceneKey;

    iget-object p1, p1, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/composable/BouncerScene;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getDestinationScenes()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/composable/BouncerScene;->destinationScenes:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getKey()Lcom/android/compose/animation/scene/SceneKey;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/composable/BouncerScene;->key:Lcom/android/compose/animation/scene/SceneKey;

    return-object p0
.end method

.class public final Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;
.super Lcom/android/systemui/util/kotlin/FlowDumperImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final currentGestureOverscrollConsumer:Lkotlin/jvm/functions/Function1;

.field public final expandFraction:Lkotlinx/coroutines/flow/Flow;

.field public final isDozing$delegate:Lkotlin/Lazy;

.field public final isScrollable:Lkotlinx/coroutines/flow/Flow;

.field public final maxAlpha:Lkotlinx/coroutines/flow/StateFlow;

.field public final sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

.field public final scrolledToTop:Lkotlinx/coroutines/flow/StateFlow;

.field public final shadeScrimClipping:Lkotlinx/coroutines/flow/Flow;

.field public final syntheticScrollConsumer:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/scene/domain/interactor/SceneInteractor;Ldagger/Lazy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;",
            "Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;",
            "Lcom/android/systemui/scene/domain/interactor/SceneInteractor;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;-><init>(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;->sceneInteractor:Lcom/android/systemui/scene/domain/interactor/SceneInteractor;

    check-cast p3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p1, p3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getShadeMode()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getQsExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    iget-object v4, p4, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->transitionState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    sget-object p1, Lcom/android/systemui/scene/shared/model/SceneFamilies;->QuickSettings:Lcom/android/compose/animation/scene/SceneKey;

    invoke-virtual {p4, p1}, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->resolveSceneFamily(Lcom/android/compose/animation/scene/SceneKey;)Lkotlinx/coroutines/flow/SafeFlow;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$expandFraction$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    const-string p3, "expandFraction"

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->dumpWhileCollecting(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->shadeScrimBounds:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p3, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$shadeScrimClipping$1;

    invoke-direct {p3, v0}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$shadeScrimClipping$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v1, p2, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->shadeScrimRounding:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, p1, v1, p3}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    const-string/jumbo p1, "stackClipping"

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->dumpWhileCollecting(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    const-string p1, "maxAlpha"

    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->alphaForBrightnessMirror:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->dumpValue(Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;

    const-string/jumbo p1, "scrolledToTop"

    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->scrolledToTop:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->dumpValue(Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;

    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$syntheticScrollConsumer$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$syntheticScrollConsumer$1;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$currentGestureOverscrollConsumer$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$currentGestureOverscrollConsumer$1;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$special$$inlined$map$1;

    iget-object p2, p4, Lcom/android/systemui/scene/domain/interactor/SceneInteractor;->currentScene:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;)V

    const-string p2, "isScrollable"

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->dumpWhileCollecting(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$isDozing$2;

    invoke-direct {p1, p0, p5}, Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel$isDozing$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationScrollViewModel;Ldagger/Lazy;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    return-void
.end method

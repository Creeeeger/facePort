.class public final Lcom/android/systemui/statusbar/notification/stack/ui/viewmodel/NotificationsPlaceholderViewModel;
.super Lcom/android/systemui/util/kotlin/FlowDumperImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final expandFraction:Lkotlinx/coroutines/flow/StateFlow;

.field public final interactor:Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;

.field public final isCurrentGestureOverscroll:Lkotlinx/coroutines/flow/Flow;

.field public final shadeScrimRounding:Lkotlinx/coroutines/flow/Flow;

.field public final syntheticScroll:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/flags/FeatureFlagsClassic;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;)V
    .locals 0

    const/4 p4, 0x0

    const/4 p5, 0x2

    invoke-direct {p0, p1, p4, p5, p4}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;-><init>(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object p1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->shadeScrimRounding:Lkotlinx/coroutines/flow/Flow;

    const-string/jumbo p4, "shadeScrimRounding"

    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->dumpWhileCollecting(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    check-cast p3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object p1, p3, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {p1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getAnyExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    const-string p3, "expandFraction"

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->dumpValue(Lkotlinx/coroutines/flow/StateFlow;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;

    const-string/jumbo p1, "syntheticScroll"

    iget-object p3, p2, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->syntheticScroll:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p0, p3, p1}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->dumpWhileCollecting(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    const-string p1, "isCurrentGestureOverScroll"

    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/stack/domain/interactor/NotificationStackAppearanceInteractor;->isCurrentGestureOverscroll:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/util/kotlin/FlowDumperImpl;->dumpWhileCollecting(Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final clock$receiver:Lcom/android/keyguard/ClockEventController;

.field public final clockShouldBeCentered:Lkotlinx/coroutines/flow/Flow;

.field public final clockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final currentClock:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final currentClockId:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$mapNotNull$1;

.field public final isOnAod:Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor$special$$inlined$map$1;

.field public final keyguardClockRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository;

.field public final previewClock:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$3;

.field public final selectedClockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/ActiveNotificationsInteractor;Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/statusbar/notification/domain/interactor/HeadsUpNotificationInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->currentKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor$special$$inlined$map$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast p8, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;

    iget-object p1, p8, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->selectedClockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;->selectedClockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p8, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->currentClockId:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$mapNotNull$1;

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;->currentClockId:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$mapNotNull$1;

    iget-object p1, p8, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->currentClock:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;->currentClock:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p8, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->previewClock:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$3;

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;->previewClock:Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl$special$$inlined$map$3;

    iget-object p1, p8, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->clockEventController:Lcom/android/keyguard/ClockEventController;

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;->clock$receiver:Lcom/android/keyguard/ClockEventController;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p1, p8, Lcom/android/systemui/keyguard/data/repository/KeyguardClockRepositoryImpl;->clockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;->clockSize:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object p1, p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->clockShouldBeCentered:Lkotlinx/coroutines/flow/Flow;

    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardClockInteractor;->clockShouldBeCentered:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

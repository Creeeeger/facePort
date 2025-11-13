.class public final Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final keyguardQuickAffordanceRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

.field public final observer:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;

.field public final ringerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/RingerModeTracker;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->userTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->ringerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    iput-object p3, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    iput-object p4, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->keyguardQuickAffordanceRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    iput-object p5, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p6, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->observer:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;

    return-void
.end method


# virtual methods
.method public final start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->keyguardQuickAffordanceRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->selections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    return-void
.end method

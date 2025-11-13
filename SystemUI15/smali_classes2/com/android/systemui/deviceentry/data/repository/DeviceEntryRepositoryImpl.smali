.class public final Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepository;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final isBypassEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final userRepository:Lcom/android/systemui/user/data/repository/UserRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/user/data/repository/UserRepository;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p3, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    iput-object p4, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p5, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;->keyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    sget-object p2, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p3, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl$isBypassEnabled$1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl$isBypassEnabled$1;-><init>(Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-virtual {p5}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;->isBypassEnabled:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final isLockscreenEnabled(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl$isLockscreenEnabled$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl$isLockscreenEnabled$2;-><init>(Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/deviceentry/data/repository/DeviceEntryRepositoryImpl;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {p0, v0, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

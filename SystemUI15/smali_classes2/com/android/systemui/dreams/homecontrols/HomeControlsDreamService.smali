.class public final Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;
.super Landroid/service/dreams/DreamService;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTIVITY_RESTART_DELAY:J

.field public static final CANCELLATION_DELAY_AFTER_DETACHED:J

.field public static final Companion:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$Companion;


# instance fields
.field public final controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

.field public final dreamServiceDelegate:Lcom/android/systemui/dreams/homecontrols/DreamServiceDelegate;

.field public final homeControlsComponentInteractor:Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;

.field public final logger:Lcom/android/systemui/dreams/DreamLogger;

.field public final serviceJob:Lkotlinx/coroutines/SupervisorJobImpl;

.field public final serviceScope:Lkotlinx/coroutines/internal/ContextScope;

.field public taskFragmentComponent:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;

.field public final taskFragmentFactory:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$Factory;

.field public final wakeLock$delegate:Lkotlin/Lazy;

.field public final wakeLockBuilder:Lcom/android/systemui/util/wakelock/WakeLock$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->Companion:Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$Companion;

    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v0, 0x5

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->CANCELLATION_DELAY_AFTER_DETACHED:J

    const/16 v0, 0x14e

    sget-object v1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->ACTIVITY_RESTART_DELAY:J

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/settings/ControlsSettingsRepository;Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$Factory;Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/dreams/homecontrols/DreamServiceDelegate;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    iput-object p2, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->taskFragmentFactory:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$Factory;

    iput-object p3, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->homeControlsComponentInteractor:Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;

    iput-object p4, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->wakeLockBuilder:Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    iput-object p5, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->dreamServiceDelegate:Lcom/android/systemui/dreams/homecontrols/DreamServiceDelegate;

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default()Lkotlinx/coroutines/SupervisorJobImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->serviceJob:Lkotlinx/coroutines/SupervisorJobImpl;

    invoke-static {p6, p1}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->serviceScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p1, Lcom/android/systemui/dreams/DreamLogger;

    const-string p2, "HomeControlsDreamService"

    invoke-direct {p1, p7, p2}, Lcom/android/systemui/dreams/DreamLogger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->logger:Lcom/android/systemui/dreams/DreamLogger;

    new-instance p1, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$wakeLock$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$wakeLock$2;-><init>(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->wakeLock$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final access$launchActivity(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->controlsSettingsRepository:Lcom/android/systemui/controls/settings/ControlsSettingsRepository;

    check-cast v0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/settings/ControlsSettingsRepositoryImpl;->allowActionOnTrivialControlsInLockscreen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->homeControlsComponentInteractor:Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;

    iget-object v1, v1, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->panelComponent:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->logger:Lcom/android/systemui/dreams/DreamLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Starting embedding "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4, v5}, Lcom/android/systemui/log/core/Logger;->d$default(Lcom/android/systemui/log/core/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.service.controls.extra.LOCKSCREEN_ALLOW_TRIVIAL_CONTROLS"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.service.controls.extra.CONTROLS_SURFACE"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->taskFragmentComponent:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;

    if-nez p0, :cond_0

    move-object p0, v5

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->organizer:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$organizer$1;

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->fragmentToken:Landroid/os/Binder;

    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, p0, v2, v5}, Landroid/window/WindowContainerTransaction;->startActivityInTaskFragment(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/window/TaskFragmentOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;IZ)V

    return-void
.end method


# virtual methods
.method public final endDream(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->homeControlsComponentInteractor:Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;

    iget-object v1, v0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->powerManager:Landroid/os/PowerManager;

    iget-object v2, v0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JII)V

    iget-object v0, v0, Lcom/android/systemui/dreams/homecontrols/domain/interactor/HomeControlsComponentInteractor;->taskFragmentFinished:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->tryEmit(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->dreamServiceDelegate:Lcom/android/systemui/dreams/homecontrols/DreamServiceDelegate;

    check-cast p1, Lcom/android/systemui/dreams/homecontrols/DreamServiceDelegateImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getRedirectWake()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->dreamServiceDelegate:Lcom/android/systemui/dreams/homecontrols/DreamServiceDelegate;

    check-cast p1, Lcom/android/systemui/dreams/homecontrols/DreamServiceDelegateImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->wakeUp()V

    iget-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->serviceScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$endDream$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$endDream$1;-><init>(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->dreamServiceDelegate:Lcom/android/systemui/dreams/homecontrols/DreamServiceDelegate;

    check-cast p1, Lcom/android/systemui/dreams/homecontrols/DreamServiceDelegateImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    :goto_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->dreamServiceDelegate:Lcom/android/systemui/dreams/homecontrols/DreamServiceDelegate;

    check-cast v0, Lcom/android/systemui/dreams/homecontrols/DreamServiceDelegateImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->serviceScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v2, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$onAttachedToWindow$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$onAttachedToWindow$1;-><init>(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    invoke-static {v1, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v1, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->taskFragmentFactory:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$Factory;

    new-instance v2, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$onAttachedToWindow$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$onAttachedToWindow$2;-><init>(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;)V

    new-instance v3, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$onAttachedToWindow$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$onAttachedToWindow$3;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$onAttachedToWindow$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$onAttachedToWindow$4;-><init>(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;)V

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$Factory;->create(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/window/TaskFragmentCreationParams$Builder;

    iget-object v2, v0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->organizer:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$organizer$1;

    invoke-virtual {v2}, Landroid/window/TaskFragmentOrganizer;->getOrganizerToken()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->fragmentToken:Landroid/os/Binder;

    iget-object v5, v0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v3, v4, v5}, Landroid/window/TaskFragmentCreationParams$Builder;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v3}, Landroid/window/TaskFragmentCreationParams$Builder;->setInitialRelativeBounds(Landroid/graphics/Rect;)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/window/TaskFragmentCreationParams$Builder;->setWindowingMode(I)Landroid/window/TaskFragmentCreationParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TaskFragmentCreationParams$Builder;->build()Landroid/window/TaskFragmentCreationParams;

    move-result-object v1

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v3, v1}, Landroid/window/WindowContainerTransaction;->createTaskFragment(Landroid/window/TaskFragmentCreationParams;)Landroid/window/WindowContainerTransaction;

    move-result-object v1

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/window/TaskFragmentOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;IZ)V

    iput-object v0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->taskFragmentComponent:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;

    iget-object p0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->wakeLock$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v0, "HomeControlsDreamService"

    invoke-interface {p0, v0}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 7

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->wakeLock$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v1, "HomeControlsDreamService"

    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->taskFragmentComponent:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->organizer:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$organizer$1;

    new-instance v3, Landroid/window/WindowContainerTransaction;

    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v4, v0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->fragmentToken:Landroid/os/Binder;

    new-instance v5, Landroid/window/TaskFragmentOperation$Builder;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/window/TaskFragmentOperation$Builder;-><init>(I)V

    invoke-virtual {v5}, Landroid/window/TaskFragmentOperation$Builder;->build()Landroid/window/TaskFragmentOperation;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/window/WindowContainerTransaction;->addTaskFragmentOperation(Landroid/os/IBinder;Landroid/window/TaskFragmentOperation;)Landroid/window/WindowContainerTransaction;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/window/TaskFragmentOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;IZ)V

    iget-object v0, v0, Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent;->organizer:Lcom/android/systemui/dreams/homecontrols/TaskFragmentComponent$organizer$1;

    invoke-virtual {v0}, Landroid/window/TaskFragmentOrganizer;->unregisterOrganizer()V

    iget-object v0, p0, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;->serviceScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v2, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$onDetachedFromWindow$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService$onDetachedFromWindow$1;-><init>(Lcom/android/systemui/dreams/homecontrols/HomeControlsDreamService;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

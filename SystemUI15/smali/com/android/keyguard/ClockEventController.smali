.class public final Lcom/android/keyguard/ClockEventController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public alarmData:Lcom/android/systemui/plugins/clocks/AlarmData;

.field public final batteryCallback:Lcom/android/keyguard/ClockEventController$batteryCallback$1;

.field public final batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final bgExecutor:Ljava/util/concurrent/Executor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public clock:Lcom/android/systemui/plugins/clocks/ClockController;

.field public final configListener:Lcom/android/keyguard/ClockEventController$configListener$1;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public disposableHandle:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

.field public dozeAmount:F

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

.field public isCharging:Z

.field public isDozing:Z

.field public isKeyguardVisible:Z

.field public isRegistered:Z

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;

.field public largeClockOnAttachStateChangeListener:Lcom/android/keyguard/ClockEventController$connectClock$10;

.field public largeClockOnSecondaryDisplay:Z

.field public largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

.field public final localeBroadcastReceiver:Lcom/android/keyguard/ClockEventController$localeBroadcastReceiver$1;

.field public final loggers:Ljava/util/List;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public final resources:Landroid/content/res/Resources;

.field public smallClockFrame:Landroid/view/ViewGroup;

.field public smallClockOnAttachStateChangeListener:Lcom/android/keyguard/ClockEventController$connectClock$9;

.field public smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

.field public weatherData:Lcom/android/systemui/plugins/clocks/WeatherData;

.field public zenData:Lcom/android/systemui/plugins/clocks/ZenData;

.field public final zenModeCallback:Lcom/android/keyguard/ClockEventController$zenModeCallback$1;

.field public final zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/ClockEventController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/ClockEventController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/res/Resources;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;Lcom/android/systemui/flags/FeatureFlagsClassic;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object p2, p0, Lcom/android/keyguard/ClockEventController;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    iput-object p3, p0, Lcom/android/keyguard/ClockEventController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p4, p0, Lcom/android/keyguard/ClockEventController;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p5, p0, Lcom/android/keyguard/ClockEventController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p6, p0, Lcom/android/keyguard/ClockEventController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p7, p0, Lcom/android/keyguard/ClockEventController;->resources:Landroid/content/res/Resources;

    iput-object p8, p0, Lcom/android/keyguard/ClockEventController;->context:Landroid/content/Context;

    iput-object p9, p0, Lcom/android/keyguard/ClockEventController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p10, p0, Lcom/android/keyguard/ClockEventController;->bgExecutor:Ljava/util/concurrent/Executor;

    iput-object p12, p0, Lcom/android/keyguard/ClockEventController;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    iput-object p13, p0, Lcom/android/keyguard/ClockEventController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-virtual {p11}, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->getInfraMessageBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p1

    invoke-virtual {p11}, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->getSmallClockMessageBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p2

    invoke-virtual {p11}, Lcom/android/systemui/plugins/clocks/ClockMessageBuffers;->getLargeClockMessageBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/log/core/MessageBuffer;

    new-instance p4, Lcom/android/systemui/log/core/Logger;

    const-string p5, "ClockEventController"

    invoke-direct {p4, p3, p5}, Lcom/android/systemui/log/core/Logger;-><init>(Lcom/android/systemui/log/core/MessageBuffer;Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/android/keyguard/ClockEventController;->loggers:Ljava/util/List;

    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    sget-object p2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/keyguard/ClockEventController$configListener$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$configListener$1;-><init>(Lcom/android/keyguard/ClockEventController;)V

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->configListener:Lcom/android/keyguard/ClockEventController$configListener$1;

    new-instance p1, Lcom/android/keyguard/ClockEventController$batteryCallback$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$batteryCallback$1;-><init>(Lcom/android/keyguard/ClockEventController;)V

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->batteryCallback:Lcom/android/keyguard/ClockEventController$batteryCallback$1;

    new-instance p1, Lcom/android/keyguard/ClockEventController$localeBroadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$localeBroadcastReceiver$1;-><init>(Lcom/android/keyguard/ClockEventController;)V

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->localeBroadcastReceiver:Lcom/android/keyguard/ClockEventController$localeBroadcastReceiver$1;

    new-instance p1, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/ClockEventController;)V

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;

    new-instance p1, Lcom/android/keyguard/ClockEventController$zenModeCallback$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1;-><init>(Lcom/android/keyguard/ClockEventController;)V

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->zenModeCallback:Lcom/android/keyguard/ClockEventController$zenModeCallback$1;

    return-void
.end method

.method public static final access$handleDoze(Lcom/android/keyguard/ClockEventController;F)V
    .locals 5

    iput p1, p0, Lcom/android/keyguard/ClockEventController;->dozeAmount:F

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz v0, :cond_0

    const-string v1, "ClockEventController#smallClock.animations.doze"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/clocks/ClockAnimations;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/ClockEventController;->dozeAmount:F

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/clocks/ClockAnimations;->doze(F)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v1, "ClockEventController#largeClock.animations.doze"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/clocks/ClockAnimations;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/ClockEventController;->dozeAmount:F

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/clocks/ClockAnimations;->doze(F)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3f7d70a4    # 0.99f

    if-eqz v0, :cond_2

    cmpg-float v4, p1, v3

    if-gez v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v0, v4}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    if-eqz p0, :cond_4

    cmpg-float p1, p1, v3

    if-gez p1, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    :cond_4
    return-void
.end method

.method public static synthetic getLargeClockOnAttachStateChangeListener$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getSmallClockOnAttachStateChangeListener$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getShouldTimeListenerRun()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/ClockEventController;->isKeyguardVisible:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/keyguard/ClockEventController;->dozeAmount:F

    const v0, 0x3f7d70a4    # 0.99f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final listenForAnyStateToAodTransition$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    new-instance v0, Lcom/android/keyguard/ClockEventController$listenForAnyStateToAodTransition$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/ClockEventController$listenForAnyStateToAodTransition$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForAnyStateToDozingTransition$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    new-instance v0, Lcom/android/keyguard/ClockEventController$listenForAnyStateToDozingTransition$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/ClockEventController$listenForAnyStateToDozingTransition$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForAnyStateToLockscreenTransition$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    new-instance v0, Lcom/android/keyguard/ClockEventController$listenForAnyStateToLockscreenTransition$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/ClockEventController$listenForAnyStateToLockscreenTransition$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForDozeAmount$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    new-instance v0, Lcom/android/keyguard/ClockEventController$listenForDozeAmount$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/ClockEventController$listenForDozeAmount$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForDozeAmountTransition$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    new-instance v0, Lcom/android/keyguard/ClockEventController$listenForDozeAmountTransition$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/ClockEventController$listenForDozeAmountTransition$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final listenForDozing$frameworks__base__packages__SystemUI__android_common__SystemUI_core(Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;
    .locals 2

    new-instance v0, Lcom/android/keyguard/ClockEventController$listenForDozing$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/ClockEventController$listenForDozing$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    return-object p0
.end method

.method public final registerListeners(Landroid/view/View;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/keyguard/ClockEventController;->isRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/ClockEventController;->isRegistered:Z

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/android/keyguard/ClockEventController;->localeBroadcastReceiver:Lcom/android/keyguard/ClockEventController$localeBroadcastReceiver$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x3c

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->configListener:Lcom/android/keyguard/ClockEventController$configListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->batteryCallback:Lcom/android/keyguard/ClockEventController$batteryCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->zenModeCallback:Lcom/android/keyguard/ClockEventController$zenModeCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/keyguard/ClockEventController$registerListeners$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/ClockEventController$registerListeners$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    sget-object v1, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->MAIN_DISPATCHER_SINGLETON:Lkotlin/coroutines/CoroutineContext;

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {p1, v1, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached(Landroid/view/View;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->disposableHandle:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->getShouldTimeListenerRun()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->getShouldTimeListenerRun()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->bgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/keyguard/ClockEventController$registerListeners$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/ClockEventController$registerListeners$2;-><init>(Lcom/android/keyguard/ClockEventController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setClock(Lcom/android/systemui/plugins/clocks/ClockController;)V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->smallClockOnAttachStateChangeListener:Lcom/android/keyguard/ClockEventController$connectClock$9;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->smallClockFrame:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/ClockEventController;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->largeClockOnAttachStateChangeListener:Lcom/android/keyguard/ClockEventController$connectClock$10;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-nez p1, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->loggers:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/log/core/Logger;

    sget-object v4, Lcom/android/keyguard/ClockEventController$connectClock$1$1;->INSTANCE:Lcom/android/keyguard/ClockEventController$connectClock$1$1;

    sget-object v5, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    invoke-virtual {v2}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/systemui/log/core/Logger;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5, v4, v3}, Lcom/android/systemui/log/core/MessageBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/systemui/log/core/LogMessage;->setStr1(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/log/core/Logger;->getBuffer()Lcom/android/systemui/log/core/MessageBuffer;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/android/systemui/log/core/MessageBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/keyguard/ClockEventController;->dozeAmount:F

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/plugins/clocks/ClockController;->initialize(Landroid/content/res/Resources;FF)V

    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->updateColors()V

    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->updateFontSizes()V

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/keyguard/ClockEventController$TimeListener;->stop()V

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/keyguard/ClockEventController$TimeListener;->stop()V

    :cond_6
    iput-object v3, p0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    iput-object v3, p0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/android/keyguard/ClockEventController$TimeListener;

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/ClockEventController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/ClockEventController$TimeListener;-><init>(Lcom/android/systemui/plugins/clocks/ClockFaceController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->getShouldTimeListenerRun()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    iput-object v1, p0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    new-instance v1, Lcom/android/keyguard/ClockEventController$TimeListener;

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lcom/android/keyguard/ClockEventController$TimeListener;-><init>(Lcom/android/systemui/plugins/clocks/ClockFaceController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->getShouldTimeListenerRun()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    iput-object v1, p0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->weatherData:Lcom/android/systemui/plugins/clocks/WeatherData;

    if-eqz v0, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pushing cached weather data to new clock: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClockEventController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onWeatherDataChanged(Lcom/android/systemui/plugins/clocks/WeatherData;)V

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->zenData:Lcom/android/systemui/plugins/clocks/ZenData;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onZenDataChanged(Lcom/android/systemui/plugins/clocks/ZenData;)V

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->alarmData:Lcom/android/systemui/plugins/clocks/AlarmData;

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockEvents;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/clocks/ClockEvents;->onAlarmDataChanged(Lcom/android/systemui/plugins/clocks/AlarmData;)V

    :cond_a
    new-instance v0, Lcom/android/keyguard/ClockEventController$connectClock$9;

    invoke-direct {v0, p1, p0}, Lcom/android/keyguard/ClockEventController$connectClock$9;-><init>(Lcom/android/systemui/plugins/clocks/ClockController;Lcom/android/keyguard/ClockEventController;)V

    iput-object v0, p0, Lcom/android/keyguard/ClockEventController;->smallClockOnAttachStateChangeListener:Lcom/android/keyguard/ClockEventController$connectClock$9;

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->smallClockOnAttachStateChangeListener:Lcom/android/keyguard/ClockEventController$connectClock$9;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v0, Lcom/android/keyguard/ClockEventController$connectClock$10;

    invoke-direct {v0, p1, p0}, Lcom/android/keyguard/ClockEventController$connectClock$10;-><init>(Lcom/android/systemui/plugins/clocks/ClockController;Lcom/android/keyguard/ClockEventController;)V

    iput-object v0, p0, Lcom/android/keyguard/ClockEventController;->largeClockOnAttachStateChangeListener:Lcom/android/keyguard/ClockEventController$connectClock$10;

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->largeClockOnAttachStateChangeListener:Lcom/android/keyguard/ClockEventController$connectClock$10;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_2
    return-void
.end method

.method public final unregisterListeners()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/ClockEventController;->isRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/ClockEventController;->isRegistered:Z

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->disposableHandle:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;->dispose()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->localeBroadcastReceiver:Lcom/android/keyguard/ClockEventController$localeBroadcastReceiver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->configListener:Lcom/android/keyguard/ClockEventController$configListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->batteryCallback:Lcom/android/keyguard/ClockEventController$batteryCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->zenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->zenModeCallback:Lcom/android/keyguard/ClockEventController$zenModeCallback$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/keyguard/ClockEventController$TimeListener;->stop()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/keyguard/ClockEventController$TimeListener;->stop()V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/ClockEventController;->smallClockOnAttachStateChangeListener:Lcom/android/keyguard/ClockEventController$connectClock$9;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->largeClockOnAttachStateChangeListener:Lcom/android/keyguard/ClockEventController$connectClock$10;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->smallClockFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_5
    return-void
.end method

.method public final updateColors()V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/ClockEventController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010590

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Region isDark: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClockEventController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onRegionDarknessChanged(Z)V

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object p0

    invoke-interface {p0, v3}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onRegionDarknessChanged(Z)V

    :cond_1
    return-void
.end method

.method public final updateFontSizes()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/clocks/ClockController;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getSmallClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/ClockEventController;->resources:Landroid/content/res/Resources;

    const v3, 0x7f07141a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onFontSettingChanged(F)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockController;->getLargeClock()Lcom/android/systemui/plugins/clocks/ClockFaceController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/clocks/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/clocks/ClockFaceEvents;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/ClockEventController;->largeClockOnSecondaryDisplay:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070d08

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->resources:Landroid/content/res/Resources;

    const v1, 0x7f070616

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :goto_1
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/clocks/ClockFaceEvents;->onFontSettingChanged(F)V

    :cond_1
    return-void
.end method

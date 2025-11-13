.class public final Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I = 0x0

.field private static final BG_SLOW_DELIVERY_THRESHOLD:J = 0x3e8L

.field private static final BG_SLOW_DISPATCH_THRESHOLD:J = 0x3e8L

.field private static final BROADCAST_SLOW_DELIVERY_THRESHOLD:J = 0x3e8L

.field private static final BROADCAST_SLOW_DISPATCH_THRESHOLD:J = 0x3e8L

.field public static final INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;

.field private static final LONG_SLOW_DELIVERY_THRESHOLD:J = 0x9c4L

.field private static final LONG_SLOW_DISPATCH_THRESHOLD:J = 0x9c4L

.field private static final NOTIFICATION_INFLATION_SLOW_DELIVERY_THRESHOLD:J = 0x3e8L

.field private static final NOTIFICATION_INFLATION_SLOW_DISPATCH_THRESHOLD:J = 0x3e8L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;

    invoke-direct {v0}, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;-><init>()V

    sput-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;->INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideBackPanelUiThreadContext(Landroid/os/Looper;Landroid/os/Handler;Ljava/util/concurrent/Executor;)Lcom/android/systemui/util/concurrency/UiThreadContext;
    .locals 1
    .annotation runtime Lcom/android/systemui/util/concurrency/BackPanelUiThread;
    .end annotation

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/util/concurrency/UiThreadContext;

    sget-object v0, Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule$provideBackPanelUiThreadContext$2;->INSTANCE:Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule$provideBackPanelUiThreadContext$2;

    invoke-static {p2, v0}, Lcom/android/systemui/util/concurrency/UiThreadContextKt;->runWithScissors(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Choreographer;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/util/concurrency/UiThreadContext;-><init>(Landroid/os/Looper;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/view/Choreographer;)V

    return-object p0
.end method

.method public final provideBackgroundDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public final provideBackgroundExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public final provideBackgroundRepeatableExecutor(Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/util/concurrency/RepeatableExecutor;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object p0
.end method

.method public final provideBgHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 0

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public final provideBgLooper()Landroid/os/Looper;
    .locals 3

    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "SysUiBg"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public final provideBroadcastRunningExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public final provideBroadcastRunningLooper()Landroid/os/Looper;
    .locals 3

    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "BroadcastRunning"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public final provideLongRunningDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public final provideLongRunningExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public final provideLongRunningLooper()Landroid/os/Looper;
    .locals 3

    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "SysUiLng"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public final provideMainRepeatableExecutor(Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/util/concurrency/RepeatableExecutor;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object p0
.end method

.method public final provideNotifInflationExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public final provideNotifInflationLooper(Landroid/os/Looper;)Landroid/os/Looper;
    .locals 2

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/os/HandlerThread;

    const-string p1, "NotifInflation"

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    return-object p0
.end method

.method public final provideTimeTickHandler()Landroid/os/Handler;
    .locals 1

    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "TimeTick"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public final providesBackgroundMessageRouter(Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/util/concurrency/MessageRouter;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object p0
.end method

.method public final providesMainMessageRouter(Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/util/concurrency/MessageRouter;
    .locals 0

    new-instance p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object p0
.end method

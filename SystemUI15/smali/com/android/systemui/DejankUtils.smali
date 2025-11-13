.class public final Lcom/android/systemui/DejankUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final STRICT_MODE_ENABLED:Z

.field public static final sAnimationCallbackRunnable:Lcom/android/systemui/DejankUtils$$ExternalSyntheticLambda0;

.field public static final sBlockingIpcs:Ljava/util/Stack;

.field public static final sChoreographer:Landroid/view/Choreographer;

.field public static final sHandler:Landroid/os/Handler;

.field public static sImmediate:Z

.field public static final sLock:Ljava/lang/Object;

.field public static final sPendingRunnables:Ljava/util/ArrayList;

.field public static final sProxy:Lcom/android/systemui/DejankUtils$1;

.field public static final sRandom:Ljava/util/Random;

.field public static sTemporarilyIgnoreStrictMode:Z

.field public static final sWhitelistedFrameworkClasses:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitorConstants;->STRICT_MODE_ENABLED:Z

    sput-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/DejankUtils;->sChoreographer:Landroid/view/Choreographer;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lcom/android/systemui/DejankUtils;->sRandom:Ljava/util/Random;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    sput-object v1, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/systemui/DejankUtils;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/DejankUtils$1;

    invoke-direct {v2}, Lcom/android/systemui/DejankUtils$1;-><init>()V

    if-eqz v0, :cond_0

    const-string v0, "android.view.IWindowSession"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.internal.policy.IKeyguardStateCallback"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "android.os.IPowerManager"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_0
    new-instance v0, Lcom/android/systemui/DejankUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/DejankUtils;->sAnimationCallbackRunnable:Lcom/android/systemui/DejankUtils$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyRendererOfExpensiveFrame(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/DejankUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const-string v3, "notifyRendererOfExpensiveFrame ("

    const-string v4, ")"

    invoke-static {v3, p1, v4}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "DejankUtils"

    invoke-static {v0, v1, v3, p1, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Lcom/android/systemui/DejankUtils$$ExternalSyntheticLambda1;

    invoke-direct {p1, v2}, Lcom/android/systemui/DejankUtils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfExpensiveFrame()V

    :goto_0
    return-void
.end method

.method public static postAfterTraversal(Ljava/lang/Runnable;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->sImmediate:Z

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    sget-object v0, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/systemui/DejankUtils;->sChoreographer:Landroid/view/Choreographer;

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/android/systemui/DejankUtils;->sAnimationCallbackRunnable:Lcom/android/systemui/DejankUtils$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v1, v2, v0}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static setImmediate(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/DejankUtils;->sImmediate:Z

    return-void
.end method

.method public static startDetectingBlockingIpcs(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static stopDetectingBlockingIpcs(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 3

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter v0

    :try_start_2
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    sget-object v2, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :cond_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static whitelistIpcs(Ljava/lang/Runnable;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-enter v0

    :try_start_2
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    sget-object v2, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

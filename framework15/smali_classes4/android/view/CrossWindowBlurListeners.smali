.class public final Landroid/view/CrossWindowBlurListeners;
.super Ljava/lang/Object;
.source "CrossWindowBlurListeners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;
    }
.end annotation


# static fields
.field private static final blacklist BLUR_PROPERTY:Ljava/lang/String; = "ro.surface_flinger.supports_background_blur"

.field public static final blacklist CROSS_WINDOW_BLUR_SUPPORTED:Z

.field private static final blacklist TAG:Ljava/lang/String; = "CrossWindowBlurListeners"

.field private static volatile blacklist sInstance:Landroid/view/CrossWindowBlurListeners;

.field private static final blacklist sLock:Ljava/lang/Object;


# instance fields
.field private blacklist mCrossWindowBlurEnabled:Z

.field private blacklist mInternalListenerAttached:Z

.field private final blacklist mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListeners(Landroid/view/CrossWindowBlurListeners;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCrossWindowBlurEnabled(Landroid/view/CrossWindowBlurListeners;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyListener(Landroid/view/CrossWindowBlurListeners;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/CrossWindowBlurListeners;->notifyListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    nop

    const-string/jumbo v0, "ro.surface_flinger.supports_background_blur"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;-><init>(Landroid/view/CrossWindowBlurListeners;Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal-IA;)V

    iput-object v0, p0, Landroid/view/CrossWindowBlurListeners;->mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/CrossWindowBlurListeners;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z

    return-void
.end method

.method private blacklist attachInternalListenerIfNeededLocked()V
    .locals 3

    iget-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CrossWindowBlurListeners"

    const-string v2, "Could not register ICrossWindowBlurEnabledListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static blacklist getInstance()Landroid/view/CrossWindowBlurListeners;
    .locals 3

    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sInstance:Landroid/view/CrossWindowBlurListeners;

    if-nez v0, :cond_1

    sget-object v1, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/view/CrossWindowBlurListeners;->sInstance:Landroid/view/CrossWindowBlurListeners;

    move-object v0, v2

    if-nez v0, :cond_0

    new-instance v2, Landroid/view/CrossWindowBlurListeners;

    invoke-direct {v2}, Landroid/view/CrossWindowBlurListeners;-><init>()V

    move-object v0, v2

    sput-object v0, Landroid/view/CrossWindowBlurListeners;->sInstance:Landroid/view/CrossWindowBlurListeners;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic blacklist lambda$notifyListener$0(Ljava/util/function/Consumer;Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist notifyListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Landroid/view/CrossWindowBlurListeners$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p3}, Landroid/view/CrossWindowBlurListeners$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist addListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/CrossWindowBlurListeners;->attachInternalListenerIfNeededLocked()V

    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    invoke-direct {p0, p2, p1, v1}, Landroid/view/CrossWindowBlurListeners;->notifyListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isCrossWindowBlurEnabled()Z
    .locals 2

    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/CrossWindowBlurListeners;->attachInternalListenerIfNeededLocked()V

    iget-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mCrossWindowBlurEnabled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist removeListener(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/view/CrossWindowBlurListeners;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/CrossWindowBlurListeners;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/CrossWindowBlurListeners;->mListenerInternal:Landroid/view/CrossWindowBlurListeners$BlurEnabledListenerInternal;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/CrossWindowBlurListeners;->mInternalListenerAttached:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "CrossWindowBlurListeners"

    const-string v3, "Could not unregister ICrossWindowBlurEnabledListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

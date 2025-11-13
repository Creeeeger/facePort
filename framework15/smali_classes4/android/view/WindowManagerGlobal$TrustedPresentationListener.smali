.class final Landroid/view/WindowManagerGlobal$TrustedPresentationListener;
.super Landroid/window/ITrustedPresentationListener$Stub;
.source "WindowManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrustedPresentationListener"
.end annotation


# static fields
.field private static blacklist sId:I


# instance fields
.field private final blacklist mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mTplLock:Ljava/lang/Object;

.field final synthetic blacklist this$0:Landroid/view/WindowManagerGlobal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddListener(Landroid/view/WindowManagerGlobal$TrustedPresentationListener;Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->addListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveListener(Landroid/view/WindowManagerGlobal$TrustedPresentationListener;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->removeListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->sId:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/WindowManagerGlobal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->this$0:Landroid/view/WindowManagerGlobal;

    invoke-direct {p0}, Landroid/window/ITrustedPresentationListener$Stub;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mListeners:Landroid/util/ArrayMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mTplLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/WindowManagerGlobal;Landroid/view/WindowManagerGlobal$TrustedPresentationListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;-><init>(Landroid/view/WindowManagerGlobal;)V

    return-void
.end method

.method private blacklist addListener(Landroid/os/IBinder;Landroid/window/TrustedPresentationThresholds;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/TrustedPresentationThresholds;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mTplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thresholds to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->removeListener(Ljava/util/function/Consumer;)V

    :cond_0
    sget v1, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->sId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->sId:I

    iget-object v2, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p3, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2, p1, p0, p2, v1}, Landroid/view/IWindowManager;->registerTrustedPresentationListener(Landroid/os/IBinder;Landroid/window/ITrustedPresentationListener;Landroid/window/TrustedPresentationThresholds;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

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

.method static synthetic blacklist lambda$onTrustedPresentationChanged$0(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTrustedPresentationChanged$1(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTrustedPresentationChanged$2(Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTrustedPresentationChanged$3(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 1

    new-instance v0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onTrustedPresentationChanged$4([ILjava/util/ArrayList;[ILjava/util/function/Consumer;Landroid/util/Pair;)V
    .locals 7

    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, p0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_0

    new-instance v6, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda1;

    invoke-direct {v6, v1, p3}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length v2, p2

    :goto_1
    if-ge v3, v2, :cond_3

    aget v4, p2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v4, :cond_2

    new-instance v5, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1, p3}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private blacklist removeListener(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mTplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-nez v1, :cond_0

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroid/view/IWindowManager;->unregisterTrustedPresentationListener(Landroid/window/ITrustedPresentationListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

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


# virtual methods
.method public blacklist onTrustedPresentationChanged([I[I)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mTplLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/view/WindowManagerGlobal$TrustedPresentationListener;->mListeners:Landroid/util/ArrayMap;

    new-instance v3, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v0, p2}, Landroid/view/WindowManagerGlobal$TrustedPresentationListener$$ExternalSyntheticLambda0;-><init>([ILjava/util/ArrayList;[I)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

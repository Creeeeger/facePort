.class public Landroid/window/ProxyOnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "ProxyOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;


# instance fields
.field private blacklist mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/window/OnBackInvokedCallback;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

.field private blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-direct {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    return-void
.end method

.method private blacklist clearCallbacksOnDispatcher()V
    .locals 4

    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v2, v3}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic blacklist lambda$unregisterOnBackInvokedCallback$0(Landroid/window/OnBackInvokedCallback;Landroid/util/Pair;)Z
    .locals 1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, p0}, Landroid/window/OnBackInvokedCallback;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V
    .locals 3

    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-gt p2, v1, :cond_0

    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {v1, p1}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {v1, p2, p1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist transferCallbacksToDispatcher()V
    .locals 5

    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V

    :cond_1
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v3, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v3, v2, v4}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/window/OnBackInvokedCallback;

    invoke-interface {v3, v4}, Landroid/window/OnBackInvokedDispatcher;->registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :goto_1
    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    return-void
.end method


# virtual methods
.method public whitelist registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p1}, Landroid/window/ProxyOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    :cond_0
    return-void
.end method

.method public blacklist registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/window/ProxyOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    return-void
.end method

.method public blacklist reset()V
    .locals 2

    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setActualDispatcher(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 2

    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-ne p1, v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/window/ProxyOnBackInvokedDispatcher;->clearCallbacksOnDispatcher()V

    iput-object p1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-direct {p0}, Landroid/window/ProxyOnBackInvokedDispatcher;->transferCallbacksToDispatcher()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V
    .locals 1

    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {v0, p1}, Landroid/window/OnBackInvokedDispatcher;->setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    :goto_0
    return-void
.end method

.method public whitelist unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mCallbacks:Ljava/util/List;

    new-instance v2, Landroid/window/ProxyOnBackInvokedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/window/ProxyOnBackInvokedDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/window/OnBackInvokedCallback;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/window/ProxyOnBackInvokedDispatcher;->mActualDispatcher:Landroid/window/OnBackInvokedDispatcher;

    invoke-interface {v1, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

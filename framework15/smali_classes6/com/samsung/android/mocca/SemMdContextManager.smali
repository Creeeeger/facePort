.class public Lcom/samsung/android/mocca/SemMdContextManager;
.super Ljava/lang/Object;
.source "SemMdContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;,
        Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;,
        Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;
    }
.end annotation


# static fields
.field public static final whitelist CONTEXT_TYPE_ALL:Ljava/lang/String; = "all-context type"

.field public static final whitelist CONTEXT_TYPE_CAR_CRASH:Ljava/lang/String; = "ccd"

.field private static final blacklist TAG:Ljava/lang/String; = "SemMdContextManager"


# instance fields
.field private blacklist mAvailabilityCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;",
            "Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContextEventCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;",
            "Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Lcom/samsung/android/mocca/IMoccaService;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/mocca/IMoccaService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mAvailabilityCallbacks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mContextEventCallbacks:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    return-void
.end method

.method static synthetic blacklist lambda$registerAvailabilityCallback$0(Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;)Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    .locals 2

    new-instance v0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;-><init>(Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$registerContextEventCallback$1(Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;)Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    .locals 2

    new-instance v0, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;-><init>(Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getSupportedTypes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    const-string v1, "SemMdContextManager"

    if-nez v0, :cond_0

    const-string v0, "SemMdContextService is not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    invoke-interface {v0}, Lcom/samsung/android/mocca/IMoccaService;->getSupportedTypes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportedTypes : RemoteException :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public whitelist registerAvailabilityCallback(Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemMdContextManager"

    const-string v2, "RegisterAvailabilityCallback - SemMdContextService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p1, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mAvailabilityCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mAvailabilityCallbacks:Ljava/util/HashMap;

    new-instance v3, Lcom/samsung/android/mocca/SemMdContextManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/mocca/SemMdContextManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;

    const-string v3, "all-context type"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/samsung/android/mocca/IMoccaService;->registerContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    invoke-interface {v3, v2, p2}, Lcom/samsung/android/mocca/IMoccaService;->registerContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SemMdContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerAvailabilityCallbackImpl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    :goto_1
    const-string v0, "SemMdContextManager"

    const-string v2, "RegisterAvailabilityCallback - callback or contextType is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public whitelist registerContextEventCallback(Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SemMdContextManager"

    const-string v2, "registerContextEventCallback- SemMdContextService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "all-context type"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mContextEventCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mContextEventCallbacks:Ljava/util/HashMap;

    new-instance v3, Lcom/samsung/android/mocca/SemMdContextManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/mocca/SemMdContextManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;

    iget-object v3, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    if-eqz p3, :cond_3

    new-instance v4, Lcom/samsung/android/mocca/ContextParam;

    invoke-direct {v4, p3}, Lcom/samsung/android/mocca/ContextParam;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3, v2, p2, v4}, Lcom/samsung/android/mocca/IMoccaService;->registerContextListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;Lcom/samsung/android/mocca/ContextParam;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "SemMdContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerContextEventCallback-registerContextListener : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return v1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :goto_2
    const-string v0, "SemMdContextManager"

    const-string v2, "registerContextEventCallback - callback or contextType is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public whitelist unregisterAvailabilityCallback(Lcom/samsung/android/mocca/SemMdContextManager$AvailabilityCallback;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    if-nez v0, :cond_0

    const-string v0, "SemMdContextManager"

    const-string v1, "unregisterAvailabilityCallback- SemMdContextService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mAvailabilityCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mAvailabilityCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    :try_start_2
    const-string v2, "all-context type"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/mocca/IMoccaService;->unregisterContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/mocca/IMoccaService;->unregisterContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    invoke-interface {v2, v1}, Lcom/samsung/android/mocca/IMoccaService;->hasContextAvailabilityListener(Lcom/samsung/android/mocca/IMoccaEventListener;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mAvailabilityCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SemMdContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterAvailabilityCallback : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_5
    :goto_3
    const-string v0, "SemMdContextManager"

    const-string v1, "UnregisterAvailabilityCallback - callback or contextType is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist unregisterContextEventCallback(Lcom/samsung/android/mocca/SemMdContextManager$ContextEventCallback;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    if-nez v0, :cond_0

    const-string v0, "SemMdContextManager"

    const-string v1, "unregisterContextEventCallback - SemMdContextService is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mContextEventCallbacks:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mContextEventCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mocca/SemMdContextManager$MoccaListenerTransport;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    :try_start_2
    const-string v2, "all-context type"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/mocca/IMoccaService;->unregisterContextListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    invoke-interface {v2, v1, p2}, Lcom/samsung/android/mocca/IMoccaService;->unregisterContextListener(Lcom/samsung/android/mocca/IMoccaEventListener;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mService:Lcom/samsung/android/mocca/IMoccaService;

    invoke-interface {v2, v1}, Lcom/samsung/android/mocca/IMoccaService;->hasContextListener(Lcom/samsung/android/mocca/IMoccaEventListener;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/mocca/SemMdContextManager;->mContextEventCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "SemMdContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterContextEventCallback : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_5
    :goto_3
    const-string v0, "SemMdContextManager"

    const-string v1, "unregisterContextEventCallback - callback or contextType is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

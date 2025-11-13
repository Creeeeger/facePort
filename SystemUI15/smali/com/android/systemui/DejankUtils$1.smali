.class public final Lcom/android/systemui/DejankUtils$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Binder$ProxyTransactListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTransactEnded(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final onTransactStarted(Landroid/os/IBinder;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onTransactStarted(Landroid/os/IBinder;II)Ljava/lang/Object;
    .locals 1

    sget-object p0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter p0

    const/4 p2, 0x1

    and-int/2addr p3, p2

    const/4 v0, 0x0

    if-eq p3, p2, :cond_2

    :try_start_0
    sget-object p2, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->empty()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result p2

    if-eqz p2, :cond_2

    sget-boolean p2, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    monitor-enter p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sget-object p2, Lcom/android/systemui/DejankUtils;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "IPC detected on critical path: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    return-object v0

    :catchall_1
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    :try_start_4
    monitor-exit p0

    return-object v0

    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

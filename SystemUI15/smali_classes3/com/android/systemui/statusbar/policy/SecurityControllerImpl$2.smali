.class public final Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAvailable "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecurityController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->-$$Nest$mupdateState(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V

    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SecurityController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCapabilitiesChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkProperties:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkProperties:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$NetworkProperties;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$NetworkProperties;->validated:Z

    if-eq v0, p2, :cond_2

    iput-boolean p2, p1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$NetworkProperties;->validated:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SecurityController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLinkPropertiesChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "SecurityController"

    const-string p1, "onLinkPropertiesChanged event with null interface"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkProperties:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkProperties:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$NetworkProperties;

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkProperties:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    new-instance v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$NetworkProperties;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$NetworkProperties;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    iput-object p2, v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$NetworkProperties;->interfaceName:Ljava/lang/String;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SecurityController"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLost "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkProperties:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->mNetworkProperties:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->-$$Nest$mupdateState(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->fireCallbacks()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.class public Lcom/samsung/android/knox/ddar/DualDarClientManager;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualDarClientManager"

.field private static mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;


# instance fields
.field private final mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgent$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;-><init>(Lcom/samsung/android/knox/ddar/IDualDARClient;I)V

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)Lcom/samsung/android/knox/ddar/DualDarClientManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/ddar/IDualDARClient;)V

    sput-object v0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mInstance:Lcom/samsung/android/knox/ddar/DualDarClientManager;

    return-object p0
.end method


# virtual methods
.method public initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->establishSecureSession()V

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "DualDarClientManager"

    const-string p1, "initializeSecureSession failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onAgentReconnected()V
    .locals 2

    const-string v0, "DualDarClientManager"

    const-string v1, "onAgentReconnected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ddar/DualDARManager;->onAgentReconnected()V

    return-void
.end method

.method public onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    invoke-virtual {p0, p1, p3, p4}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/DualDARManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/ddar/DualDARManager;->teardownSecureSession()V

    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager;->mClientAgentService:Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "DualDarClientManager"

    const-string/jumbo p1, "terminateSecureSession failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

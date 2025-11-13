.class Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;
.super Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;
.source "SharedConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;


# direct methods
.method public static synthetic blacklist $r8$lambda$6Bl_gizdZ8UmjT-Yi7wA4ogrCCs(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->lambda$forgetKnownNetwork$5(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$J45rwN2pAdFgkpvOVC9wAIf4nLE(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->lambda$connectKnownNetwork$4(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KCWQuTypadPBh4zCmMq5HQYYsxQ(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->lambda$connectHotspotNetwork$2(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TC0y9NERF7C1eSEUW-oKVXCGeg8(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->lambda$unregisterCallback$1(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WYBDYlU4qlVRJdp5hRAbEbhNAmo(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->lambda$disconnectHotspotNetwork$3(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ntaNSAQjoxb4nwywZt6-QDGspb4(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->lambda$registerCallback$0(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService$Stub;-><init>()V

    return-void
.end method

.method private blacklist checkPermissions()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    const-string v1, "android.permission.NETWORK_SETUP_WIZARD"

    invoke-virtual {v0, v1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Calling process must have NETWORK_SETTINGS or NETWORK_SETUP_WIZARD permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$connectHotspotNetwork$2(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-virtual {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->onConnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$connectKnownNetwork$4(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-virtual {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->onConnectKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$disconnectHotspotNetwork$3(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-virtual {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->onDisconnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$forgetKnownNetwork$5(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-virtual {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->onForgetKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    return-void
.end method

.method private synthetic blacklist lambda$registerCallback$0(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$monRegisterCallback(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$unregisterCallback$1(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$monUnregisterCallback(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    return-void
.end method


# virtual methods
.method public blacklist connectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->checkPermissions()V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fgetmHandler(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist connectKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->checkPermissions()V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fgetmHandler(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda5;-><init>(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist disconnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->checkPermissions()V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fgetmHandler(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist forgetKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->checkPermissions()V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fgetmHandler(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist getHotspotNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->checkPermissions()V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fgetmHotspotNetworkConnectionStatus(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHotspotNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->checkPermissions()V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fgetmHotspotNetworks(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKnownNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->checkPermissions()V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fgetmKnownNetworkConnectionStatus(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKnownNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->checkPermissions()V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fgetmKnownNetworks(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSettingsState()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    .locals 3

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->checkPermissions()V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fgetmSettingsState(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    new-instance v1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;

    invoke-direct {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;->setInstantTetherEnabled(Z)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;

    move-result-object v1

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;->setExtras(Landroid/os/Bundle;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;->build()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fputmSettingsState(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fgetmSettingsState(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->checkPermissions()V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fgetmHandler(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist unregisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->checkPermissions()V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;->this$0:Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-static {v0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->-$$Nest$fgetmHandler(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

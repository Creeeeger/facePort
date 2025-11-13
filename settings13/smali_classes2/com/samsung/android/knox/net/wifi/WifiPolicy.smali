.class public Lcom/samsung/android/knox/net/wifi/WifiPolicy;
.super Ljava/lang/Object;
.source "WifiPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = "WifiPolicy"


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "wifi_policy"

    .line 296
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 295
    invoke-static {v0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    .line 298
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    return-object p0
.end method


# virtual methods
.method public isOpenWifiApAllowed()Z
    .locals 2

    .line 737
    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 741
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with Wifi Policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isWifiApSettingUserModificationAllowed()Z
    .locals 2

    .line 706
    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->getService()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mService:Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy;->isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 710
    sget-object v0, Lcom/samsung/android/knox/net/wifi/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with Wifi Policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

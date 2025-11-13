.class Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/repository/WifiHotspotRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    return-void
.end method


# virtual methods
.method public final onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCapabilityChanged(), softApCapability:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->sSpeedMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iget-object v0, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mBand5g:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->hasCapability:Z

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iget-object v0, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mBand6g:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, v0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->hasCapability:Z

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->updateCapabilityChanged()V

    return-void
.end method

.method public final onStateChanged(II)V
    .locals 3

    const-string v0, "onStateChanged(), state:"

    const-string v1, ", failureReason:"

    const-string v2, "WifiHotspotRepository"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iput p1, p2, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mWifiApState:I

    iget-boolean v0, p2, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mIsRestarting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    iget-object p1, p2, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/settings/wifi/repository/WifiHotspotRepository$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/16 v0, 0xd

    if-ne p1, v0, :cond_2

    invoke-virtual {p2}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->refresh()V

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SoftApCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->setRestarting(Z)V

    :cond_2
    return-void
.end method

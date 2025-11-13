.class public final Lcom/android/settings/wifi/repository/WifiHotspotRepository$ActiveCountryCodeChangedCallback;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActiveCountryCodeChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/repository/WifiHotspotRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$ActiveCountryCodeChangedCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    return-void
.end method


# virtual methods
.method public final onActiveCountryCodeChanged(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$ActiveCountryCodeChangedCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActiveCountryCodeChanged(), country:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->log(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository$ActiveCountryCodeChangedCallback;->this$0:Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    iget-object p1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mBand5g:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsReady:Z

    iget-object p1, p0, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->mBand6g:Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;

    iput-boolean v0, p1, Lcom/android/settings/wifi/repository/WifiHotspotRepository$SapBand;->isUsableChannelsReady:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->refresh()V

    return-void
.end method

.method public final onCountryCodeInactive()V
    .locals 0

    return-void
.end method

.class public final Lcom/samsung/android/settings/wifi/WifiPickerHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DBG:Z


# instance fields
.field public final mIsFromLocation:Z

.field public mLastUserPickedNetwork:Lcom/android/wifitrackerlib/WifiEntry;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p1, "extra_location_services"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "location"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final getApIntent(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;
    .locals 7

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    const-string v0, "WifiSettings.Picker"

    if-nez p1, :cond_1

    const-string/jumbo p0, "return empty intent"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    return-object p0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ssid"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetBssid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, "any"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetBssid()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_0
    const-string v5, "bssid"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "security"

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity$1()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v5

    if-ne v5, v4, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v3}, Lcom/android/wifitrackerlib/WifiEntry;->semGetFrequency(Ljava/lang/String;)I

    move-result p1

    :goto_1
    const-string v3, "frequency"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->DBG:Z

    if-eqz v3, :cond_6

    if-eqz p0, :cond_6

    const-string/jumbo v3, "ssid:"

    const-string v4, ", ap.freq:"

    const-string v5, ", info.freq:"

    invoke-static {p1, v3, v2, v4, v5}, Landroidx/glance/appwidget/UnmanagedSessionReceiver$onReceive$2$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v1
.end method

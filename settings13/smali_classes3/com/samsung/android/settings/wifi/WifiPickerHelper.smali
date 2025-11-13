.class public Lcom/samsung/android/settings/wifi/WifiPickerHelper;
.super Ljava/lang/Object;
.source "WifiPickerHelper.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private mIsFromLocation:Z

.field private mLastUserPickedNetwork:Lcom/android/wifitrackerlib/WifiEntry;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$8JEQhrgTS4tkPE_tQdmbgdziFBE(ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->lambda$isUserPickedAp$0(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/content/Intent;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p1, "extra_location_services"

    .line 37
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "location"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$isUserPickedAp$0(ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 62
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getApIntent(Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;
    .locals 7

    if-nez p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    const-string v0, "WifiSettings.Picker"

    if-nez p1, :cond_1

    const-string p0, "return empty intent"

    .line 91
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    return-object p0

    .line 95
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ssid"

    .line 97
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 101
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-eqz p0, :cond_2

    .line 102
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetBssid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v5, "any"

    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 106
    :cond_3
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semGetBssid()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_0
    const-string v5, "bssid"

    .line 109
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v5

    const-string v6, "security"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v5

    if-ne v5, v4, :cond_5

    if-eqz p0, :cond_5

    .line 112
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v3}, Lcom/android/wifitrackerlib/WifiEntry;->semGetFrequency(Ljava/lang/String;)I

    move-result p1

    :goto_1
    const-string v3, "frequency"

    .line 113
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->DBG:Z

    if-eqz v3, :cond_6

    if-eqz p0, :cond_6

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ssid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ap.freq:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", info.freq:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v1
.end method

.method public isUserPickedAp()Z
    .locals 5

    .line 49
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    const-string v2, "WifiSettings.Picker"

    if-nez v0, :cond_1

    const-string p0, "user not picked any AP"

    .line 53
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEC PICKER from location, networkId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 61
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiPickerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/wifi/WifiPickerHelper$$ExternalSyntheticLambda0;-><init>(I)V

    .line 62
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->semMatches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "matched"

    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public needToHideContextMenu()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public userPickedAp(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 3

    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mIsFromLocation:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->mLastUserPickedNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

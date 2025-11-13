.class public Lcom/samsung/wifitrackerlib/EasySetupUtils;
.super Ljava/lang/Object;
.source "EasySetupUtils.java"


# instance fields
.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "sem_wifi"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/wifitrackerlib/EasySetupUtils;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method public static getMatchedSemEasySetupWifiScanSettings(Ljava/util/List;Ljava/lang/String;)Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    if-eqz v1, :cond_1

    .line 71
    iget-object v2, v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 72
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getEasySetupScanSettings()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lcom/samsung/wifitrackerlib/EasySetupUtils;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getEasySetupScanSettings()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

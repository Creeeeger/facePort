.class public final Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mNameOfUid:Ljava/lang/String;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;->mNameOfUid:Ljava/lang/String;

    const-string v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method


# virtual methods
.method public final reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 7

    if-eqz p1, :cond_4

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v2, :cond_2

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v2, :cond_3

    aget-object v2, v2, v4

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    move v4, v3

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "netid"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "ssid"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "apiName"

    const-string v1, "connect"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "callUid"

    iget-object p0, p0, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;->mNameOfUid:Ljava/lang/String;

    invoke-virtual {v3, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "hasPassword"

    invoke-virtual {v3, p0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "isPasspoint"

    invoke-virtual {v3, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p0, 0x67

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    :cond_4
    return-void
.end method

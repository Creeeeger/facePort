.class public Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;
.super Ljava/lang/Object;
.source "WifiIssueDetectorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;
    }
.end annotation


# instance fields
.field private final mNameOfUid:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mPackageName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mNameOfUid:Ljava/lang/String;

    const-string v0, "sem_wifi"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method

.method private hasPassword(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 45
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x8

    .line 46
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 48
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz p1, :cond_3

    aget-object p1, p1, p0

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_3

    :goto_0
    move p0, v1

    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    return p0
.end method

.method private reportAddOrUpdateNetwork(IZLjava/lang/String;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v1, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mNameOfUid:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mPackageName:Ljava/lang/String;

    .line 88
    invoke-static {p1, p2, p3, v1, p0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerAddOrUpdateApi(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/16 p1, 0x69

    .line 87
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    return-void
.end method

.method private reportForgetNetwork(ILjava/lang/String;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v1, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mNameOfUid:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mPackageName:Ljava/lang/String;

    .line 102
    invoke-static {p1, p2, v1, p0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/16 p1, 0x66

    .line 101
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public reportConnectNetwork(ILjava/lang/String;Z)V
    .locals 7

    .line 63
    iget-object v0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v4, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mNameOfUid:Ljava/lang/String;

    const-string v3, "connect"

    const/4 v6, -0x1

    move v1, p1

    move-object v2, p2

    move v5, p3

    .line 64
    invoke-static/range {v1 .. v6}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerConnectApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object p0

    const/16 p1, 0x67

    .line 63
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    return-void
.end method

.method public reportConnectNetwork(ILjava/lang/String;ZZ)V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v4, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mNameOfUid:Ljava/lang/String;

    const-string v3, "connect"

    move v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    .line 70
    invoke-static/range {v1 .. v6}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerConnectApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object p0

    const/16 p1, 0x67

    .line 69
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    return-void
.end method

.method public reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 57
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->hasPassword(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p1

    .line 57
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(ILjava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public reportDisconnectNetwork()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v1, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mNameOfUid:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->mPackageName:Ljava/lang/String;

    const/4 v2, -0x1

    const-string v3, "disconnect"

    .line 121
    invoke-static {v2, v3, v1, p0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/16 v1, 0x64

    .line 120
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    return-void
.end method

.method public reportForgetNetwork(I)V
    .locals 1

    const-string v0, "forget"

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportForgetNetwork(ILjava/lang/String;)V

    return-void
.end method

.method public reportRemoveNetwork(I)V
    .locals 1

    const-string v0, "removeNetwork"

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportForgetNetwork(ILjava/lang/String;)V

    return-void
.end method

.method public reportUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 82
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, p1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->hasPassword(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    const-string v1, "updateNetwork"

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;->reportAddOrUpdateNetwork(IZLjava/lang/String;)V

    :cond_0
    return-void
.end method

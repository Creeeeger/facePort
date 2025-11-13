.class Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;
.super Ljava/lang/Object;
.source "WifiIssueDetectorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportUtil"
.end annotation


# direct methods
.method public static getReportDataForWifiManagerAddOrUpdateApi(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 157
    invoke-static {p0, p2, p3, p4}, Lcom/samsung/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "hasPassword"

    .line 158
    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static getReportDataForWifiManagerApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "netid"

    .line 166
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "apiName"

    .line 167
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "callUid"

    .line 168
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "callBy"

    .line 169
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getReportDataForWifiManagerConnectApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Landroid/os/Bundle;
    .locals 2

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "netid"

    .line 145
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "ssid"

    .line 146
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "apiName"

    .line 147
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "callUid"

    .line 148
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "hasPassword"

    .line 149
    invoke-virtual {v0, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "isPasspoint"

    .line 150
    invoke-virtual {v0, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

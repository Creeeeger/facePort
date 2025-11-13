.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

.field final synthetic val$mac_addr:Ljava/lang/String;

.field final synthetic val$mhs_device:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1088
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->val$mac_addr:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->val$mhs_device:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 1090
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->val$mac_addr:Ljava/lang/String;

    const-string p2, "WifiApWarning"

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->val$mhs_device:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mcheckIfBleScanResultValid(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fputbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V

    .line 1096
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1097
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 1098
    new-instance p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const-string p1, "Autohotspot connect 2"

    .line 1115
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p1

    iget-object v1, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p1

    iget v2, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p1

    iget v3, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p1

    iget v4, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p1

    iget-object v5, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p1

    iget-object v6, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p1

    iget v7, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object p1

    iget-boolean v8, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/wifi/SemWifiManager;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    .line 1117
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "Autohotspot values are null"

    .line 1091
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

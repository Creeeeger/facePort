.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1101
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->val$mac_addr:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mcheckIfBleScanResultValid(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fputbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V

    .line 1102
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    const-string v1, "WifiApWarning"

    if-eqz v0, :cond_0

    const-string v0, "Autohotspot connect 1"

    .line 1103
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    iget-object v2, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    iget v3, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    iget v4, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    iget v5, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    iget-object v6, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    iget-object v7, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    iget v8, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$fgetbleAp(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    iget-boolean v9, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/wifi/SemWifiManager;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    .line 1105
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "Autohotspot is not found"

    .line 1108
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48$1;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void
.end method

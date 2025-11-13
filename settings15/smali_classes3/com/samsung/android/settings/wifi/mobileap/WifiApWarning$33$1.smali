.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->this$1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;B)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->this$1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;C)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->this$1:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->this$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->val$mac_addr:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$mcheckIfBleScanResultValid(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    const-string v1, "WifiApWarning"

    if-eqz v0, :cond_0

    const-string v0, "Autohotspot connect 1"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->this$1:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->bleAp:Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    iget-object v2, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget v3, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    iget v4, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    iget v5, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object v6, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iget v8, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    iget-boolean v9, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/wifi/SemWifiManager;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v0, "Autohotspot is not found"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33$1;->this$1:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

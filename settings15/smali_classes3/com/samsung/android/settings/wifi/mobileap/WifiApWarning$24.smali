.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;
.super Landroid/os/CountDownTimer;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 2

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const-wide/16 p1, 0x7530

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method

.method private final onTick$com$samsung$android$settings$wifi$mobileap$WifiApWarning$24(J)V
    .locals 0

    return-void
.end method

.method private final onTick$com$samsung$android$settings$wifi$mobileap$WifiApWarning$46(J)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "WifiApWarning"

    const-string v1, "isClientAcceptedWifiProfileSharing , onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/SemWifiManager;->isClientAcceptedWifiProfileSharing(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    :pswitch_0
    const-string v0, "WifiApWarning"

    const-string v1, "onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-$$Nest$msendIntentToAutoHotspotD2DFamilyUpdate(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onTick(J)V
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;->$r8$classId:I

    return-void
.end method

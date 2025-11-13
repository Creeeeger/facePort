.class public final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$HotspotControllerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$HotspotControllerReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$HotspotControllerReceiver;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$HotspotControllerReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    const-string v0, "STA_COUNT"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onReceive :ACTION_WIFI_AP_STA_STATE_CHANGED numsta:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$HotspotControllerReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget p2, p2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mNumConnectedDevices:I

    const-string v0, "HotspotController"

    invoke-static {p2, v0, p1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$HotspotControllerReceiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireUpdateDevicesCallback()V

    :cond_0
    return-void
.end method

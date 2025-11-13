.class public final Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;->this$0:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;->this$0:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->-$$Nest$mrefreshTitle(Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController;->mSemWifiApHandler:Lcom/samsung/android/settings/wifi/mobileap/smartpriority/WifiApSmartPrioritySpeedController$SemWifiApHandler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

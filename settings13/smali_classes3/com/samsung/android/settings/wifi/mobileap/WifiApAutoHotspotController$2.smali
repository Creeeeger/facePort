.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$2;
.super Ljava/lang/Object;
.source "WifiApAutoHotspotController.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSwitchEnabler$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3

    .line 77
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Family Sharing onStateChanged() - resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;->-$$Nest$fgetmWifiApAutoHotspotSwitchEnabler(Lcom/samsung/android/settings/wifi/mobileap/WifiApAutoHotspotController;)Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler;->updateSwitchState()V

    return-void
.end method

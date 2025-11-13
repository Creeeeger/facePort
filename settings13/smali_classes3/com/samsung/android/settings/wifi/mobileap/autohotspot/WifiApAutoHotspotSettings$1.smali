.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;
.super Ljava/lang/Object;
.source "WifiApAutoHotspotSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSwitchEnabler$OnStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3

    .line 67
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoHotspot onStateChanged() - resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFrameworkUtils;->isAutoHotspotSetOn(Landroid/content/Context;)Z

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 71
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoHotspot feature can`t be used: RESULT_ERROR_TETHERING_RESTRICTED"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 76
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoHotspot feature can`t be used: RESULT_ERROR_AIRPLANE_MODE_ON"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->flight_mode_enabled_toast:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 78
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 82
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutoHotspot feature can`t be used: RESULT_ERROR_NO_SIM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 85
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoHotspot feature can`t be used: RESULT_ERROR_NO_ACTIVE_NETWORK"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 91
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AutoHotspot feature can`t be used: RESULT_ERROR_DISABLED_NEARBY_SCANNING"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->smart_tethering_nearby_can_not_available:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 93
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 96
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$mupdateAutoHotspotSection(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)V

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;->-$$Nest$mupdateFamilySharingSection(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApAutoHotspotSettings;)V

    return-void
.end method

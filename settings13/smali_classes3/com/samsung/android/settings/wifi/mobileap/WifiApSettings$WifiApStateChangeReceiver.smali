.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiApStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 884
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 885
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating display config due to receiving broadcast action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 886
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string p1, "wifi_state"

    .line 887
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    .line 889
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshPreferenceStates(Z)V

    goto/16 :goto_1

    :cond_0
    const/16 p2, 0xd

    if-ne p1, p2, :cond_6

    .line 891
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshPreferenceStates(Z)V

    goto/16 :goto_1

    :cond_1
    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 893
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 894
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "airplane_mode_on"

    invoke-static {p1, p2, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 896
    :goto_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Airplane mode changed:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    .line 898
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->flight_mode_enabled_toast:I

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 899
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 900
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_1

    .line 902
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_4
    const-string p2, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 905
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 906
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$WifiApStateChangeReceiver;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->refreshConnectedPreferenceCategory()V

    :cond_6
    :goto_1
    return-void
.end method

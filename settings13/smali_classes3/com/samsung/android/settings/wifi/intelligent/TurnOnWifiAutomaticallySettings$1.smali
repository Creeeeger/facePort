.class Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "TurnOnWifiAutomaticallySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 346
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 347
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 348
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.location.MODE_CHANGED"

    .line 349
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/intelligent/TurnOnWifiAutomaticallySettings;->initSwitchBar()V

    :cond_1
    return-void
.end method

.class Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiModifyPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 251
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiModifyPrefCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    const-string v0, "wifi_state"

    .line 255
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    if-nez p1, :cond_2

    .line 257
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->-$$Nest$mexitActivity(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    :cond_2
    :goto_0
    return-void
.end method

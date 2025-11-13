.class Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileWIPSPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    const-string v0, "wifi_state"

    .line 47
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 49
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->-$$Nest$fgetmMobileWipsPref(Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWIPSPrefController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.class public final Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper;

.field public final synthetic val$key:Ljava/lang/String;

.field public final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper$1;->val$preference:Landroidx/preference/Preference;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper$1;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "wifi_state"

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper$1;->val$preference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper$1;->val$key:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper;->isNeedToGrayOut(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/PasspointPreferenceHelper$1;->val$preference:Landroidx/preference/Preference;

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

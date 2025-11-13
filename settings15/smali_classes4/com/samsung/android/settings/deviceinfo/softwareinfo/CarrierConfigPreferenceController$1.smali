.class public final Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "forced_config_udpate"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "request_status"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->setUpdateButtonVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/CarrierConfigPreference;->setUpdateButtonVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

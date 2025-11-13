.class Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "ConfigurationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "forced_config_udpate"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "request_status"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/deviceinfo/softwareinfo/ConfigurationPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

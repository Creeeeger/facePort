.class Lcom/samsung/android/settings/connection/AirplaneModeSettings$1;
.super Landroid/database/ContentObserver;
.source "AirplaneModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/AirplaneModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/AirplaneModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/AirplaneModeSettings;Landroid/os/Handler;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings$1;->this$0:Lcom/samsung/android/settings/connection/AirplaneModeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings$1;->this$0:Lcom/samsung/android/settings/connection/AirplaneModeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->-$$Nest$msetDescription(Lcom/samsung/android/settings/connection/AirplaneModeSettings;)V

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings$1;->this$0:Lcom/samsung/android/settings/connection/AirplaneModeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/AirplaneModeSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings$1;->this$0:Lcom/samsung/android/settings/connection/AirplaneModeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/AirplaneModeSettings;->-$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/connection/AirplaneModeSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/AirplaneModeSettings$1;->this$0:Lcom/samsung/android/settings/connection/AirplaneModeSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method

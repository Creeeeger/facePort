.class Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;
.super Ljava/lang/Object;
.source "EthernetEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->updateSwitch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

.field final synthetic val$ethernetStatus:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->val$ethernetStatus:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSwitch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->val$ethernetStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsEthEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->val$ethernetStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "Connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmEthCheckBoxPref(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmEthCheckBoxPref(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->radioInfo_data_connected:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object v2, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->summaryUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmEthCheckBoxPref(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->val$ethernetStatus:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "Disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmEthCheckBoxPref(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 118
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmEthCheckBoxPref(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->radioInfo_data_disconnected:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    :goto_0
    return-void
.end method

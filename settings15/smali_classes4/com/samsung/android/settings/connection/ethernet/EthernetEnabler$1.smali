.class public final Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

.field public final synthetic val$ethernetStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->val$ethernetStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateSwitch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->val$ethernetStatus:Ljava/lang/String;

    const-string v2, "SettingsEthEnabler"

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->val$ethernetStatus:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "Connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    const v2, 0x7f142e1f

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object v2, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->summaryUpdater:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->val$ethernetStatus:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "Disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    const v2, 0x7f142e1e

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_2
    :goto_0
    return-void
.end method

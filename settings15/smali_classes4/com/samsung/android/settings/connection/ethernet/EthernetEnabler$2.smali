.class public final Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " summaryUpdater - isEthernetConnected :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-boolean v1, v1, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    const-string v2, "SettingsEthEnabler"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-boolean v1, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    if-eqz v1, :cond_0

    const v2, 0x7f142e1f

    goto :goto_0

    :cond_0
    const v2, 0x7f14236f

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object v0, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

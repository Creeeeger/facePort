.class Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;
.super Ljava/lang/Object;
.source "EthernetEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " summaryUpdater - isEthernetConnected :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-boolean v1, v1, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsEthEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-boolean v1, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    .line 271
    invoke-static {v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmEthCheckBoxPref(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v0

    if-eqz v1, :cond_0

    sget v2, Lcom/android/settings/R$string;->radioInfo_data_connected:I

    goto :goto_0

    .line 272
    :cond_0
    sget v2, Lcom/android/settings/R$string;->sec_eth_toggle_summary_on:I

    .line 271
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmEthCheckBoxPref(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 274
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmEthCheckBoxPref(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

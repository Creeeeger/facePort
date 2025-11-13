.class public final Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final DevList:Ljava/util/List;

.field public isEthernetConnected:Z

.field public final mContext:Landroid/content/Context;

.field public final mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

.field public final mEthDeviceStateReceiver:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;

.field public final mEthManager:Landroid/net/EthernetManager;

.field public final mHandler:Landroid/os/Handler;

.field public mStartMode:I

.field public final summaryUpdater:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Landroid/net/EthernetManager;Landroidx/preference/SecSwitchPreference;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mStartMode:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->summaryUpdater:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;

    new-instance v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthDeviceStateReceiver:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {p2}, Landroid/net/EthernetManager;->getInterfaceList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->DevList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->DevList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->DevList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    invoke-virtual {p3}, Landroidx/preference/Preference;->setPersistent()V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo p2, "samsung.net.ethernet.ETH_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mStartMode:I

    return-void
.end method

.method public static getEthernetConnectedState(Ljava/lang/String;)Z
    .locals 2

    const-string v0, " getEthernetConnectedState - ethernet_state :"

    const-string v1, "SettingsEthEnabler"

    invoke-static {v0, p0, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v0, "Connected"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setCheckBox(I)V
    .locals 2

    const-string/jumbo v0, "setCheckBox  req state "

    const-string v1, "SettingsEthEnabler"

    invoke-static {p0, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "onPreferenceChange : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsEthEnabler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo p2, "setEthEnabled enable "

    const-string v1, " isEthernetConnected :"

    invoke-static {p2, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    invoke-static {p2, v1, v0}, Landroidx/appcompat/view/SeslContentViewInsetsCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    iget-boolean p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    new-instance p2, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return v0
.end method

.method public final postEnableTaskFinishedUIUpdate(Z)V
    .locals 6

    const-string/jumbo v0, "postEnableTaskFinishedUIUpdate : "

    const-string v1, "SettingsEthEnabler"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const v0, 0x7f14236f

    if-eqz p1, :cond_0

    const v2, 0x7f142290

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthCheckBoxPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setSummary(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "postEnableTaskFinishedUIUpdate isEthernetConnected: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    invoke-static {v2, v4, v1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "postEnableTaskFinishedUIUpdate newstate: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    if-nez v2, :cond_1

    invoke-virtual {v3, v0}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    const-string p1, "handleEthSummaryIfConnectionFailsLanNotConnected called"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->summaryUpdater:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$2;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.class public Lcom/android/settings/network/telephony/RoamingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "MobileDataDialog"

.field private static final TAG:Ljava/lang/String; = "RoamingController"


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field protected mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

.field private mMobileNetworkInfoEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

.field private mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$2z4PYzayeiCGJ9tE4oovB2-SCnU(Lcom/android/settings/network/telephony/RoamingPreferenceController;Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->lambda$onAllMobileNetworkInfoChanged$0(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntityList:Ljava/util/List;

    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-static {p1}, Lcom/android/settings/network/MobileNetworkRepository;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/MobileNetworkRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/RoamingPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput p5, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    iput-object p4, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAllMobileNetworkInfoChanged$0(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 2

    iget-object v0, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->update()V

    iget-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 4

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    new-instance v1, Lcom/android/settings/network/telephony/RoamingDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/network/telephony/RoamingDialogFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "sub_id_key"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "MobileDataDialog"

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/settingslib/RestrictedSwitchPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-boolean v1, v1, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "force_home_network_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public init(Landroidx/fragment/app/FragmentManager;ILcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    iput-object p3, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "fail to init in sub"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RoamingController"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isDataRoamingEnabled:Z

    :goto_0
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isDialogNeeded()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-boolean v0, v0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isDataRoamingEnabled:Z

    :goto_0
    iget-object v2, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    const-string v0, "disable_charge_indication_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onActiveSubInfoChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onAllMobileNetworkInfoChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntityList:Ljava/util/List;

    new-instance v0, Lcom/android/settings/network/telephony/RoamingPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/RoamingPreferenceController;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic onAllUiccInfoChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAvailableSubInfoChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCallStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onDataRoamingChanged(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-eq p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onDataRoamingChanged - wrong subId : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RoamingController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->update()V

    return-void
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    iget-object v1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/network/MobileNetworkRepository;->addRegister(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;I)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkRepository;->updateEntity()V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileNetworkRepository;->removeRegister(Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->isDialogNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->showDialog()V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setDataRoamingEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setMobileNetworkInfoEntity(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->update()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

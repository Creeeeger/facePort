.class public Lcom/android/settings/network/telephony/MobileDataPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "MobileDataDialog"


# instance fields
.field private mDefaultSubId:I

.field mDialogType:I

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

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

.field mNeedDialog:Z

.field private mPreference:Landroidx/preference/TwoStatePreference;

.field mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

.field private mSubscriptionInfoEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method public static synthetic $r8$lambda$A1EIosJwB0v7d0ZVQnHtPikKISA(Lcom/android/settings/network/telephony/MobileDataPreferenceController;Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->lambda$onAllMobileNetworkInfoChanged$1(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vMq85cghi46gEwoOKGPTUKRaK4k(Lcom/android/settings/network/telephony/MobileDataPreferenceController;Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->lambda$onActiveSubInfoChanged$0(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntityList:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkInfoEntityList:Ljava/util/List;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDefaultSubId:I

    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Lcom/android/settings/network/MobileNetworkRepository;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/MobileNetworkRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput p5, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    iput-object p4, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private synthetic lambda$onActiveSubInfoChanged$0(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result v0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    invoke-virtual {p1}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDefaultSubId:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAllMobileNetworkInfoChanged$1(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 2

    iget-object v0, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->update()V

    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 4

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    new-instance v1, Lcom/android/settings/network/telephony/MobileDataDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "dialog_type"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "subId"

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string p1, "MobileDataDialog"

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private update()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isOpportunistic:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    const v3, 0x7f141801

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    const v3, 0x7f141800

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isValidSubscription:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    const v0, 0x7f141802

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    :cond_3
    :goto_1
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

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    const/4 p0, 0x2

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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mNeedDialog:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDialogType:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->showDialog(I)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
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

.method public init(Landroidx/fragment/app/FragmentManager;ILcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iput-object p4, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    return-void
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isMobileDataEnabled:Z

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
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget v4, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDefaultSubId:I

    iget v5, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-eq v4, v5, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    iput v1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDialogType:I

    return v1

    :cond_2
    return v3
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onActiveSubInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntityList:Ljava/util/List;

    new-instance v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/MobileDataPreferenceController;I)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->update()V

    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onAllMobileNetworkInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkInfoEntityList:Ljava/util/List;

    new-instance v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/MobileDataPreferenceController;I)V

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

.method public bridge synthetic onDataRoamingChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/network/MobileNetworkRepository;->addRegister(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;I)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkRepository;->updateEntity()V

    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

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
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->isDialogNeeded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mNeedDialog:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "setMobileDataEnabled: "

    const-string v2, "MobileDataDialog"

    invoke-static {v0, v2, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v2, v0, p1, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setMobileDataEnabled(ILandroid/content/Context;ZZ)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->isCarrierNetworkProvisionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->setCarrierNetworkEnabled(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public setMobileNetworkInfoEntity(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    return-void
.end method

.method public setSubscriptionInfoEntity(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    return-void
.end method

.method public setWifiPickerTrackerHelper(Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->update()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

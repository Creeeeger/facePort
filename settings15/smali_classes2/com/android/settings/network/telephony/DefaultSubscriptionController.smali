.class public abstract Lcom/android/settings/network/telephony/DefaultSubscriptionController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;
.implements Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSubController"


# instance fields
.field private mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

.field private mIsRtlMode:Z

.field protected mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field protected mManager:Landroid/telephony/SubscriptionManager;

.field protected mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

.field protected mPreference:Landroidx/preference/ListPreference;

.field mSubInfoEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7X7iQkpYGUcsFV9FwWLCxELIiJA(Lcom/android/settings/network/telephony/DefaultSubscriptionController;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->lambda$refreshSummary$0(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FRGgLZxW0lW3IfLwWklHdW-yLrM(Ljava/util/List;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->lambda$updateEntries$1(Ljava/util/List;Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSubInfoEntityList:Ljava/util/List;

    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mIsRtlMode:Z

    invoke-static {p1}, Lcom/android/settings/network/MobileNetworkRepository;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/MobileNetworkRepository;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    new-instance p2, Lcom/android/settings/network/DefaultSubscriptionReceiver;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/DefaultSubscriptionReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$refreshSummary$0(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateEntries$1(Ljava/util/List;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

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

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDefaultSubscriptionId()I
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSubscriptionInfoList()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSubInfoEntityList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

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

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isAskEverytimeSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRtlMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mIsRtlMode:Z

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onActiveSubInfoChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSubInfoEntityList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onAllMobileNetworkInfoChanged(Ljava/util/List;)V
    .locals 0

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

.method public bridge synthetic onDefaultDataChanged(I)V
    .locals 0

    return-void
.end method

.method public onDefaultSmsChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic onDefaultSubInfoChanged(I)V
    .locals 0

    return-void
.end method

.method public onDefaultVoiceChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileNetworkRepository;->removeRegister(Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

    iget-object v0, p0, Lcom/android/settings/network/DefaultSubscriptionReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->setDefaultSubscription(I)V

    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->refreshSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    iget-object v1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/network/MobileNetworkRepository;->addRegister(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;I)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkRepository;->updateEntity()V

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

    invoke-virtual {p0}, Lcom/android/settings/network/DefaultSubscriptionReceiver;->registerReceiver()V

    return-void
.end method

.method public refreshSummary(Landroidx/preference/Preference;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSubInfoEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public abstract setDefaultSubscription(I)V
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateEntries()V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    new-instance v0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v4}, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getDefaultSubscriptionId()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v1

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-boolean v8, v7, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isOpportunistic:Z

    if-eqz v8, :cond_5

    goto :goto_0

    :cond_5
    iget-object v8, v7, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v7, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v8, v5, :cond_4

    move v6, v2

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->isAskEverytimeSupported()Z

    move-result v4

    const/4 v7, -0x1

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v8, 0x7f1408a7

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v4, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    new-array v4, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v6, :cond_8

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Landroidx/preference/ListPreference;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

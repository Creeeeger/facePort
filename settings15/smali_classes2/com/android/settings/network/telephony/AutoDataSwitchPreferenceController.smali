.class public Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# instance fields
.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mCrossSimCallingViewModel:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

.field private mManager:Landroid/telephony/TelephonyManager;

.field private mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

.field private mPreference:Landroidx/preference/TwoStatePreference;

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public static synthetic $r8$lambda$xOOY7ghYE0QJlhiayspoV-xPThs(Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->lambda$onResume$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->refreshPreference()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasMobileData()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public init(ILcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;)V
    .locals 2

    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mManager:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mCrossSimCallingViewModel:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isMobileDataPolicyEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/network/MobileDataContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    new-instance v1, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;)V

    iput-object v1, v0, Lcom/android/settings/network/MobileDataContentObserver;->mListener:Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$$ExternalSyntheticLambda0;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/android/settings/network/MobileDataContentObserver;->getObservableUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public refreshPreference()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-super {p0, v0}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->setMobileDataPolicyEnabled(IZ)V

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mCrossSimCallingViewModel:Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;

    if-eqz p0, :cond_1

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget-object p0, p0, Lcom/android/settings/network/telephony/wificalling/CrossSimCallingViewModel;->updateChannel:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

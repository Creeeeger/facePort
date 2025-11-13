.class public Lcom/android/settings/network/telephony/VideoCallingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/network/MobileDataEnabledListener$Client;
.implements Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallingPreference"


# instance fields
.field mCallState:Ljava/lang/Integer;

.field private mCallingPreferenceCategoryController:Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

.field private mDataContentObserver:Lcom/android/settings/network/MobileDataEnabledListener;

.field private mPreference:Landroidx/preference/Preference;

.field private mTelephonyCallback:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/MobileDataEnabledListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobileDataEnabledListener$Client;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/MobileDataEnabledListener;

    new-instance p1, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;

    invoke-direct {p1, p0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;-><init>(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;

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

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isVideoCallEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

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

.method public init(ILcom/android/settings/network/telephony/CallingPreferenceCategoryController;)Lcom/android/settings/network/telephony/VideoCallingPreferenceController;
    .locals 0

    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    iput-object p2, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCallingPreferenceCategoryController:Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

    return-object p0
.end method

.method public isChecked()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->queryImsState(I)Lcom/android/settings/network/ims/VtQueryImsState;

    move-result-object p0

    iget v0, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/network/ims/VtQueryImsState;->isEnabledByUser(I)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isImsSupported()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.telephony.ims"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isVideoCallEnabled(I)Z
    .locals 3

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v2, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isImsSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->queryImsState(I)Lcom/android/settings/network/ims/VtQueryImsState;

    move-result-object p0

    iget p1, p0, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ims/ImsQueryController;->isProvisionedOnDevice(I)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/network/ims/ImsQueryController;->isEnabledByPlatform(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/settings/network/ims/ImsQueryController;->isServiceStateReady(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fail to get Vt ready. subId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VtQueryImsState"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    return v1
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public on4gLteUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onMobileDataEnabledChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object v3, v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    iget-object v4, v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/MobileDataEnabledListener;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileDataEnabledListener;->start(I)V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;

    iget-object v1, v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;->this$0:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$PhoneTelephonyCallback;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/MobileDataEnabledListener;

    invoke-virtual {p0}, Lcom/android/settings/network/MobileDataEnabledListener;->stop()V

    return-void
.end method

.method public queryImsState(I)Lcom/android/settings/network/ims/VtQueryImsState;
    .locals 4

    new-instance v0, Lcom/android/settings/network/ims/VtQueryImsState;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/settings/network/ims/ImsQueryController;-><init>(III)V

    iput-object p0, v0, Lcom/android/settings/network/ims/VtQueryImsState;->mContext:Landroid/content/Context;

    iput p1, v0, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    return-object v0
.end method

.method public queryVoLteState(I)Lcom/android/settings/network/ims/VolteQueryImsState;
    .locals 1

    new-instance v0, Lcom/android/settings/network/ims/VolteQueryImsState;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ims/VolteQueryImsState;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsMmTelManager;->setVtSettingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    const-string v2, "Unable to set VT status "

    const-string v3, ". subId="

    invoke-static {v2, v3, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoCallingPreference"

    invoke-static {p1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isVideoCallEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v2, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCallingPreferenceCategoryController:Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/network/telephony/CallingPreferenceCategoryController;->updateChildVisible(Ljava/lang/String;Z)V

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->queryVoLteState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/network/ims/VolteQueryImsState;->isEnabledByUser()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->queryImsState(I)Lcom/android/settings/network/ims/VtQueryImsState;

    move-result-object v1

    iget v4, v1, Lcom/android/settings/network/ims/VtQueryImsState;->mSubId:I

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lcom/android/settings/network/ims/VtQueryImsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/settings/network/ims/VtQueryImsState;->isTtyEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Lcom/android/settings/network/ims/ImsQueryController;->isTtyOnVolteEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skip update under mCallState="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoCallingPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

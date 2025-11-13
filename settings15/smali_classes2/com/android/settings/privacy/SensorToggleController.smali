.class public abstract Lcom/android/settings/privacy/SensorToggleController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private mFlag:Z

.field private mIgnoreDeviceConfig:Z

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field protected final mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmFlag(Lcom/android/settings/privacy/SensorToggleController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/privacy/SensorToggleController;->mFlag:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmFlag(Lcom/android/settings/privacy/SensorToggleController;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mFlag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/privacy/SensorToggleController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/utils/SensorPrivacyManagerHelper;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/utils/SensorPrivacyManagerHelper;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/settings/privacy/SensorToggleController;->mFlag:Z

    iput-boolean p4, p0, Lcom/android/settings/privacy/SensorToggleController;->mIgnoreDeviceConfig:Z

    iput-object p3, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacy/SensorToggleController;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private showSensorWarningDialog()V
    .locals 3

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f142fd4

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v1, 0x7f142fd3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const v1, 0x7f142fd2

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    const v1, 0x7f142fd1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/settings/privacy/SensorToggleController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/privacy/SensorToggleController$1;-><init>(Lcom/android/settings/privacy/SensorToggleController;)V

    const v2, 0x7f140679

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/android/settings/privacy/SensorToggleController$2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const v2, 0x7f1408bf

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/android/settings/privacy/SensorToggleController$3;

    invoke-direct {v1, p0}, Lcom/android/settings/privacy/SensorToggleController$3;-><init>(Lcom/android/settings/privacy/SensorToggleController;)V

    iget-object p0, v0, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/privacy/SensorToggleController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getRestriction()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-static {v0, p0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;ILjava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result v1

    iget-object v0, v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mIgnoreDeviceConfig:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getDeviceConfigKey()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "privacy"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

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

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDeviceConfigKey()Ljava/lang/String;
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getRestriction()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getSensor()I
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417cc

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

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

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result p0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->isSensorBlocked(II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onSensorPrivacyChanged(IIZ)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/privacy/SensorToggleController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p2, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/privacy/SensorToggleController;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->addSensorBlockedListener(IILjava/util/concurrent/Executor;Lcom/android/settings/privacy/SensorToggleController;)V

    return-void
.end method

.method public onStop()V
    .locals 7
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->callbacks:Ljava/util/Map;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    new-instance v6, Lcom/android/settings/utils/SensorPrivacyManagerHelper$removeSensorBlockedListener$1$1$1;

    invoke-direct {v6, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper$removeSensorBlockedListener$1$1$1;-><init>(Lcom/android/settings/privacy/SensorToggleController;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    iget-object v3, v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->callbacks:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    monitor-exit v2

    return-void

    :goto_2
    monitor-exit v2

    throw p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/privacy/SensorToggleController;->mFlag:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/privacy/SensorToggleController;->showSensorWarningDialog()V

    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mFlag:Z

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const v1, 0xe741

    goto :goto_0

    :cond_1
    const v1, 0xe740

    :goto_0
    if-eqz p1, :cond_2

    const-wide/16 v3, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    :goto_1
    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result p0

    xor-int/2addr p1, v2

    iget-object v0, v0, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->sensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZ)V

    return v2
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

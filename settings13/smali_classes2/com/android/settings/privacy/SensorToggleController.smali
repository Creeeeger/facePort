.class public abstract Lcom/android/settings/privacy/SensorToggleController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SensorToggleController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# instance fields
.field mCallback:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private mFlag:Z

.field protected final mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFlag(Lcom/android/settings/privacy/SensorToggleController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/privacy/SensorToggleController;->mFlag:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFlag(Lcom/android/settings/privacy/SensorToggleController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/privacy/SensorToggleController;->mFlag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lcom/android/settings/privacy/SensorToggleController;->mFlag:Z

    .line 55
    invoke-static {p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacy/SensorToggleController;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/privacy/SensorToggleController;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method private showSensorWarningDialog()V
    .locals 3

    .line 122
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 124
    sget v1, Lcom/android/settings/R$string;->turn_off_microphone_dialog_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 125
    sget v1, Lcom/android/settings/R$string;->turn_off_microphone_dialog_message:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 127
    sget v1, Lcom/android/settings/R$string;->turn_off_camera_dialog_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 128
    sget v1, Lcom/android/settings/R$string;->turn_off_camera_dialog_message:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 130
    :cond_1
    :goto_0
    sget v1, Lcom/android/settings/R$string;->turn_off_button:I

    new-instance v2, Lcom/android/settings/privacy/SensorToggleController$2;

    invoke-direct {v2, p0}, Lcom/android/settings/privacy/SensorToggleController$2;-><init>(Lcom/android/settings/privacy/SensorToggleController;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 136
    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/android/settings/privacy/SensorToggleController$3;

    invoke-direct {v2, p0}, Lcom/android/settings/privacy/SensorToggleController$3;-><init>(Lcom/android/settings/privacy/SensorToggleController;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 141
    new-instance v1, Lcom/android/settings/privacy/SensorToggleController$4;

    invoke-direct {v1, p0}, Lcom/android/settings/privacy/SensorToggleController$4;-><init>(Lcom/android/settings/privacy/SensorToggleController;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getRestriction()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 101
    :cond_0
    new-instance v0, Lcom/android/settings/privacy/SensorToggleController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/privacy/SensorToggleController$1;-><init>(Lcom/android/settings/privacy/SensorToggleController;Landroidx/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mCallback:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;

    .line 109
    iget-object p1, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/privacy/SensorToggleController;->mCallback:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;

    iget-object p0, p0, Lcom/android/settings/privacy/SensorToggleController;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 109
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->addSensorBlockedListener(ILcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected getRestriction()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getSensor()I
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 117
    sget p0, Lcom/android/settings/R$string;->menu_key_privacy:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->isSensorBlocked(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    if-eqz v0, :cond_0

    .line 155
    iget-object p0, p0, Lcom/android/settings/privacy/SensorToggleController;->mCallback:Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;

    invoke-virtual {v0, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->removeBlockedListener(Lcom/android/settings/utils/SensorPrivacyManagerHelper$Callback;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 76
    iget-boolean v1, p0, Lcom/android/settings/privacy/SensorToggleController;->mFlag:Z

    if-nez v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/settings/privacy/SensorToggleController;->showSensorWarningDialog()V

    return v0

    .line 80
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mFlag:Z

    const v0, 0xdae8

    .line 82
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

    .line 81
    :goto_1
    invoke-static {v0, v1, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/privacy/SensorToggleController;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/settings/privacy/SensorToggleController;->getSensor()I

    move-result p0

    xor-int/2addr p1, v2

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->setSensorBlockedForProfileGroup(IIZ)V

    return v2
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

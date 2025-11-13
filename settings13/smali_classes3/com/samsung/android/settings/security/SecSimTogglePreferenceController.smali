.class public Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecSimTogglePreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/settings/security/SecIccLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    if-eqz v0, :cond_1

    .line 55
    sget v0, Lcom/android/settings/R$string;->sim_pin_toggle_kor:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 56
    move-object v0, p1

    check-cast v0, Landroidx/preference/SecSwitchPreference;

    sget v1, Lcom/android/settings/R$string;->sim_lock_on_kor:I

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setSummaryOn(I)V

    .line 57
    sget v1, Lcom/android/settings/R$string;->sim_lock_off_kor:I

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setSummaryOn(I)V

    .line 60
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaCTCModel()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->isCTCSlot1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sim_pin_toggle:I

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SIM"

    const-string v1, "UIM"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    sget p0, Lcom/android/settings/R$string;->ruim_sim_lock_on:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 66
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sim_pin_toggle:I

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    sget p0, Lcom/android/settings/R$string;->sim_lock_on:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
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

.method public init(Lcom/samsung/android/settings/security/SecIccLockManager;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->isIccLockEnabled()Z

    move-result p0

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

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 81
    sget-object v0, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FEATURE_SIM_LOCK_KOR:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string p1, "ril.initPB"

    .line 83
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 84
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->getSlotIndex()I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string p1, "ril.initPB2"

    .line 85
    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    :cond_0
    if-eq p1, v2, :cond_1

    .line 88
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->on_reading_usim:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1

    .line 91
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.samsung.android.settings.security.SimPinLockSettings"

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "checkbox"

    .line 94
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/security/SecIccLockManager;->getSlotIndex()I

    move-result v0

    const-string v1, "slotId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return v2

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v0

    const/16 v3, 0x1198

    invoke-static {v0, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/security/SecIccLockManager;->setIccLockMode(I)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/security/SecIccLockManager;->setIccToState(Z)V

    .line 107
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/security/SecSimPinDialog;->show(Landroid/content/Context;Lcom/samsung/android/settings/security/SecIccLockManager;)V

    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 76
    iget-object p0, p0, Lcom/samsung/android/settings/security/SecSimTogglePreferenceController;->mIccLockManager:Lcom/samsung/android/settings/security/SecIccLockManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/SecIccLockManager;->iccMenuEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

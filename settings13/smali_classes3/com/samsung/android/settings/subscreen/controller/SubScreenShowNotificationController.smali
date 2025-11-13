.class public Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SubScreenShowNotificationController.java"

# interfaces
.implements Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsChecked:Z

.field private mLockScreenNotificationSwitchValue:I

.field private mParentFragment:Landroidx/fragment/app/Fragment;

.field private mPreferenceKey:Ljava/lang/String;

.field private mShowNotificationSwitch:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "SubScreenShowNotificationController"

    .line 19
    iput-object v0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->TAG:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 52
    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mShowNotificationSwitch:Landroidx/preference/SwitchPreference;

    .line 53
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 71
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->FRONT_COVER_SCREEN_ENABLE_TO_SHOW_SETTINGS:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isCameraCoverAttached(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
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

.method public init(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mParentFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cover_screen_show_notification"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
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

.method public onNegativeClick()V
    .locals 2

    .line 86
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cover_screen_show_notification"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onPositiveClick()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mShowNotificationSwitch:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cover_screen_show_notification"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_notifications"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 91
    iget-object p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_screen_show_notifications"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mLockScreenNotificationSwitchValue:I

    .line 93
    iget-boolean v0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mIsChecked:Z

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    .line 94
    invoke-static {v1}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->newInstance(I)Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;

    move-result-object p1

    .line 95
    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment;->setListener(Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationWarningFragment$DialogFragmentListener;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value of mParentFragment: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "selva "

    invoke-static {v2, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "SubScreenShowNotificationController"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "cover_screen_show_notification"

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mShowNotificationSwitch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 101
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mShowNotificationSwitch:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 105
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v1
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mIsChecked:Z

    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 42
    iget-object p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_screen_show_notifications"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mLockScreenNotificationSwitchValue:I

    if-nez p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mShowNotificationSwitch:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 45
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/controller/SubScreenShowNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "cover_screen_show_notification"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

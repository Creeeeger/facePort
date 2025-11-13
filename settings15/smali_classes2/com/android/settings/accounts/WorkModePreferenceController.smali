.class public Lcom/android/settings/accounts/WorkModePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$QuietModeChangeListener;


# instance fields
.field protected mPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

.field private final mQuietModeEnabler:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$QuietModeChangeListener;)V

    iput-object p2, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mQuietModeEnabler:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mQuietModeEnabler:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;

    iget-object p0, p0, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417b2

    return p0
.end method

.method public getSliceType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mQuietModeEnabler:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;

    xor-int/lit8 p2, p2, 0x1

    iget-object v0, p1, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->isQuietModeEnabled()Z

    move-result v0

    if-eq v0, p2, :cond_1

    iget-object v0, p1, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mUserManager:Landroid/os/UserManager;

    iget-object p1, p1, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v0, p2, p1}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/WorkModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onPause(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onQuietModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/WorkModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onResume(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mQuietModeEnabler:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mQuietModeEnabler:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iget-object p0, p0, Lcom/android/settings/accounts/WorkModePreferenceController;->mQuietModeEnabler:Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler;->isQuietModeEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iget-object v0, p1, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/settings/widget/SettingsMainSwitchPreference;->mMainSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

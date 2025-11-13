.class public Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OwnerInfoPreferenceController.java"


# static fields
.field private static final CHANGE_OWNERINFO_TEXT:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "OwnerInfoPreferenceController"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mParentFragment:Landroidx/fragment/app/Fragment;

.field private mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

.field private mRequestCode:I

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 36
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mUserId:I

    return-void
.end method

.method private setSummaryColorToPrimaryColor(Z)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 99
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->setSummaryColorToPrimaryColor(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->setSummaryColorToPrimaryColor(Z)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 85
    :cond_0
    sget v0, Lcom/android/settings/R$string;->contact_info_settings_title:I

    .line 86
    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/ContactInformation;->newInstance(I)Lcom/samsung/android/settings/lockscreen/ContactInformation;

    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    const/16 v3, 0xc8

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 88
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 91
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
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

.method public init(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 57
    iput p2, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mRequestCode:I

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

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

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updatePreference()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/controller/OwnerInfoPreferenceController;->mPreference:Lcom/samsung/android/settings/widget/SecRestrictedPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 69
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

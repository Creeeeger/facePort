.class public Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NotiInverseTextPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final KEY:Ljava/lang/String; = "noti_inverse_text"


# instance fields
.field mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mParentScreen:Landroidx/preference/PreferenceScreen;

.field mPreference:Landroidx/preference/SwitchPreferenceCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;)V
    .locals 1

    const-string v0, "noti_inverse_text"

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    .line 34
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private updateVisibility(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mParentScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mParentScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const-string v0, "com.android.systemui"

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "lock_screen_show_notifications"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string p2, "notification_details"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 47
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->updateVisibility(I)V

    goto :goto_2

    .line 50
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 51
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "current_sec_active_themepackage"

    invoke-static {p2, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    move p2, v2

    .line 55
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "theme_designer_quick_panel_turned_on"

    const-string v5, "bool"

    .line 56
    invoke-virtual {v3, v4, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v0, v2

    .line 60
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mPreference:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    if-nez v0, :cond_3

    move v2, v1

    .line 61
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mPreference:Landroidx/preference/SwitchPreferenceCompat;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mParentScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 39
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    .line 40
    invoke-interface {p0}, Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;->isNeedRedaction()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
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

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 87
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 88
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 89
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "notification_text_color_inversion"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 p2, 0x114c

    const/16 v0, 0x1167

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 90
    :goto_0
    invoke-static {p2, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 92
    iget-object p2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mContextDashBoard:Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;->notifyChange(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
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

.method public bridge synthetic updateConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;->updateConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 76
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "notification_text_color_inversion"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 78
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "current_sec_active_themepackage"

    invoke-static {p1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 80
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/controller/NotiInverseTextPreferenceController;->mPreference:Landroidx/preference/SwitchPreferenceCompat;

    xor-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

.class public Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;
.implements Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentListener;
.implements Landroidx/appcompat/widget/SeslToggleSwitch$OnBeforeCheckedChangeListener;
.implements Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field public isCheckedCoverScreenShowNotificationCheckBox:Z

.field public mAODSummary:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field public final mContentPreferenceClickListener:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$1;

.field public mForBiometrics:Z

.field public mFromSetupWizard:Z

.field public mHandler:Landroid/os/Handler;

.field public mHideContentPreference:Lcom/samsung/android/settings/notification/RadioPreference;

.field public mIsLockScreenDisabled:Z

.field public mJustPPP:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNeedRedaction:Z

.field public final mSecControllers:Ljava/util/List;

.field public mSettingsObserver:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;

.field public mShowContentPreference:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

.field public mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "LockScreenNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$2;

    const v1, 0x7f1701bd

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->isCheckedCoverScreenShowNotificationCheckBox:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mContentPreferenceClickListener:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$1;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mNeedRedaction:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSecControllers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;

    const-string v2, "lock_screen_notifications"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/lockscreen/controller/ShowOnLockScreenNotificationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/LockScreenNotificationStyleController;

    const-string v2, "lock_screen_notifications_style"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenNotificationStyleController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/LockScreenNotificationStyleDotDescriptionController;

    const-string v2, "lockscreen_notification_style_description"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenNotificationStyleDotDescriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/ShowContentWhenUnlockedController;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/lockscreen/controller/ShowContentWhenUnlockedController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/ShowAlertNotificationsController;

    const-string v2, "lockscreen_alert_notification"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/lockscreen/controller/ShowAlertNotificationsController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/NotiStyleDividerController;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/lockscreen/controller/NotiStyleDividerController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/settings/lockscreen/controller/SensitiveWorkProfileNotificationPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/settings/lockscreen/controller/SensitiveWorkProfileNotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/lockscreen/SecConceptBehavior;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v2, v1, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSecControllers:Ljava/util/List;

    check-cast v1, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLockscreenAllowPrivateNotifications()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_allow_private_notifications"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getLockscreenNotificationsEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_screen_show_notifications"

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

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1153

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string/jumbo v0, "needRedaction"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    :cond_0
    return v1
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701bd

    return p0
.end method

.method public final isPreferenceAnimationAllowed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final masterSwitchChanged(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSecControllers:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "lock_screen_show_notifications"

    invoke-interface {v1, v3, v2}, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;->accept(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mShowContentPreference:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->setEnabled(Z)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mHideContentPreference:Lcom/samsung/android/settings/notification/RadioPreference;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public final notifyChange(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSecControllers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;->accept(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onBeforeCheckedChanged(Z)Z
    .locals 8

    const-string v0, "LockScreenNotificationSettings"

    const-string/jumbo v1, "onBeforeCheckedChanged: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    const-string v2, "arg_switch_checked_state"

    const-string v3, "dialog_type"

    const/4 v4, -0x2

    const-string v5, "lock_screen_show_notifications"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5, v7, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v7, :cond_0

    const-string/jumbo v1, "onBeforeCheckedChanged:1 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object p0, v1, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    invoke-virtual {v1, v6}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return v7

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v5, v7, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "onBeforeCheckedChanged:2 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iput-object p0, v1, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mDialogFragmentListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentListener;

    invoke-virtual {v1, v6}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    iput-object p0, v1, Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment;->mDialogFragmentCheckListener:Lcom/samsung/android/settings/lockscreen/SubScreenShowNotificationWarningFragment$DialogFragmentCheckListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return v6
.end method

.method public final onChanged(Z)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->masterSwitchChanged(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getMetricsCategory()I

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    const/16 v2, 0x1153

    const/16 v3, 0x1163

    invoke-static {v2, v3, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->masterSwitchChanged(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mIsLockScreenDisabled:Z

    if-eqz v0, :cond_2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lockscreen_notifications_option"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lock_screen_show_notifications"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getMetricsCategory()I

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const/16 p1, 0x1153

    const/16 v2, 0x1163

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->masterSwitchChanged(Z)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mIsLockScreenDisabled:Z

    if-eqz p1, :cond_1

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "lockscreen_notifications_option"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onConfigurationChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const-string v2, "LockScreenNotificationSettings"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSecControllers:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/lockscreen/SecConceptControllerBehavior;->updateConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSettingsObserver:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mIsLockScreenDisabled:Z

    const-string p1, "LockScreenNotificationSettings"

    const-string/jumbo v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "needRedaction"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mNeedRedaction:Z

    const-string v0, "fromSetupWizard"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mFromSetupWizard:Z

    const-string v0, "justPPP"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mJustPPP:Z

    const-string v0, "for_biometrics"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mForBiometrics:Z

    const-string p1, "description_pref"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mAODSummary:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "fromFragment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "configure_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :cond_1
    const-string/jumbo p1, "show_content"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mShowContentPreference:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    const-string p1, "hide_content"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mHideContentPreference:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mShowContentPreference:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mContentPreferenceClickListener:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$1;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mHideContentPreference:Lcom/samsung/android/settings/notification/RadioPreference;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mContentPreferenceClickListener:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$1;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mHideContentPreference:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    sget-boolean p1, Lcom/samsung/android/settings/Rune;->COVERSCREEN_SETTINGS:Z

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mHideContentPreference:Lcom/samsung/android/settings/notification/RadioPreference;

    const p1, 0x7f142534

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mHideContentPreference:Lcom/samsung/android/settings/notification/RadioPreference;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mForBiometrics:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public final onPositiveClick()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->onChanged(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "cover_screen_show_notification"

    const/4 v2, -0x2

    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSettingsObserver:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;->setListening(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->updateVisible$1()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mShowContentPreference:Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    instance-of v2, v0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;->mIsAllAppChecked:Ljava/lang/Boolean;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$GetAppListAsyncTask;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference$GetAppListAsyncTask;-><init>(Lcom/samsung/android/settings/lockscreen/ShowNotificationContentPreference;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "sensitive_work_profile"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/16 v4, 0xc

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v5, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->masterSwitchChanged(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->masterSwitchChanged(Z)V

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v4

    invoke-static {v0, v2, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mIsLockScreenDisabled:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mAODSummary:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    const-string v0, "lockscreen_notification_style_description"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v0, "locksreen_notification_style_editor_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string/jumbo v0, "show_content"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v0, "hide_content"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const-string v0, "divider"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    const-string v0, "advanced_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mAODSummary:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSettingsObserver:Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p1, "LockScreenNotificationSettings"

    const-string/jumbo p2, "onViewCreated"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object p1, p1, Lcom/android/settings/SettingsActivity;->mMainSwitch:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    sget-boolean p1, Lcom/samsung/android/settings/Rune;->COVERSCREEN_SETTINGS:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isCameraCoverAttached(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->getSwitch()Landroidx/appcompat/widget/SeslToggleSwitch;

    move-result-object p1

    iput-object p0, p1, Landroidx/appcompat/widget/SeslToggleSwitch;->mOnBeforeListener:Landroidx/appcompat/widget/SeslToggleSwitch$OnBeforeCheckedChangeListener;

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    iget-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mNeedRedaction:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f0a0299

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d096d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings$3;-><init>(Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const v2, 0x800005

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/settings/knox/KnoxUtils;->lockscreenAttrs:[I

    const v1, 0x7f15029d

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getThemeResId()I

    move-result p1

    if-ne v1, p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a041e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07036d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0, p2, p2, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockScreenNotificationSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    iput-boolean p2, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    :goto_0
    return-void
.end method

.method public final updateVisible$1()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v2, v1, Lcom/samsung/android/settings/lockscreen/controller/LockScreenNotificationStyleDotDescriptionController;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/settings/lockscreen/controller/LockScreenNotificationStyleDotDescriptionController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/controller/LockScreenNotificationStyleDotDescriptionController;->updateVisible()V

    goto :goto_0

    :cond_2
    return-void
.end method

.class public final Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/RebootConfirmationDialogHost;


# static fields
.field static final ANGLE_DRIVER_SUFFIX:Ljava/lang/String; = "angle"

.field static final PROPERTY_DEBUG_ANGLE_DEVELOPER_OPTION:Ljava/lang/String; = "debug.graphics.angle.developeroption.enable"

.field static final PROPERTY_PERSISTENT_GRAPHICS_EGL:Ljava/lang/String; = "persist.graphics.egl"


# instance fields
.field public final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field public mShouldToggleSwitchBackOnRebootDialogDismiss:Z

.field public final mSystemProperties:Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 1

    new-instance v0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector;

    invoke-direct {v0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mSystemProperties:Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector$1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mShouldToggleSwitchBackOnRebootDialogDismiss:Z

    const-string p0, "persist.graphics.egl"

    const-string p1, ""

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Value of persist.graphics.egl is: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GraphicsEnableAngleCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_angle_as_system_driver"

    return-object p0
.end method

.method public final onDeveloperOptionsSwitchDisabled()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/GraphicsEnvironment;->toggleAngleAsSystemDriver(Z)V

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/GraphicsEnvironment;->toggleAngleAsSystemDriver(Z)V

    invoke-virtual {p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->showRebootDialog()V

    const/4 p0, 0x1

    return p0
.end method

.method public final onRebootCancelled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mShouldToggleSwitchBackOnRebootDialogDismiss:Z

    return-void
.end method

.method public final onRebootConfirmed(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mShouldToggleSwitchBackOnRebootDialogDismiss:Z

    invoke-virtual {p0, p1}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->rebootDevice(Landroid/content/Context;)V

    return-void
.end method

.method public final onRebootDialogDismissed()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mShouldToggleSwitchBackOnRebootDialogDismiss:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mSystemProperties:Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "persist.graphics.egl"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "angle"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/GraphicsEnvironment;->toggleAngleAsSystemDriver(Z)V

    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/GraphicsEnvironment;->getInstance()Landroid/os/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/GraphicsEnvironment;->toggleAngleAsSystemDriver(Z)V

    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "GraphicsEnableAngleCtrl"

    const-string v2, "Invalid persist.graphics.egl property value"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mShouldToggleSwitchBackOnRebootDialogDismiss:Z

    return-void
.end method

.method public rebootDevice(Landroid/content/Context;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.REBOOT"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showRebootDialog()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const-string v1, "FreeformPrefRebootDlg"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/settings/development/RebootConfirmationDialogFragment;

    const v3, 0x7f141e16

    const v4, 0x7f1408bf

    invoke-direct {v2, v3, v4, p0}, Lcom/android/settings/development/RebootConfirmationDialogFragment;-><init>(IILcom/android/settings/development/RebootConfirmationDialogHost;)V

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController;->mSystemProperties:Lcom/android/settings/development/graphicsdriver/GraphicsDriverEnableAngleAsSystemDriverController$Injector$1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "persist.graphics.egl"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "angle"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "debug.graphics.angle.developeroption.enable"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

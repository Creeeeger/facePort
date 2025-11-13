.class public final Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final mFailureCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController$$ExternalSyntheticLambda0;

.field public mNextPowerRole:I

.field public mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field public mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)V

    new-instance p1, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController$$ExternalSyntheticLambda0;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "usb_details_power_role"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    new-instance v0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const p1, 0x7f1430bc

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "usb_use_power_only"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const v0, 0x7f1430bb

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "usb_details_power_role"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    sget-object p0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    iget-object v2, v1, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v2

    :goto_1
    if-eq v2, p1, :cond_7

    iget v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "user set : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UsbDetailsCtrlPowerRole"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v4

    if-nez v4, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, p2, :cond_4

    move p2, v3

    goto :goto_2

    :cond_2
    move p2, v0

    goto :goto_2

    :cond_3
    move p2, v2

    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p2}, Landroid/hardware/usb/UsbPort;->setRoles(II)V

    :cond_5
    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result p2

    if-eqz p2, :cond_6

    const-wide/16 v0, 0xfa0

    goto :goto_3

    :cond_6
    const-wide/16 v0, 0x3a98

    :goto_3
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return v3
.end method

.method public final refresh(ZJII)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refresh() connected : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", functions : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", powerRole : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", dataRole : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "UsbDetailsCtrlPowerRole"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p5, "1: "

    invoke-direct {p2, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, ", 2: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p5}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    if-eqz p1, :cond_1

    invoke-virtual {p5}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object p5, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p5}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p5

    if-nez p5, :cond_2

    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object p5, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :cond_2
    :goto_0
    const/4 p2, 0x0

    const/4 p5, 0x1

    if-ne p4, p5, :cond_3

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, p5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p4, v0, :cond_4

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    if-nez p4, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_6
    :goto_1
    iget p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-eqz p1, :cond_8

    if-eqz p4, :cond_8

    if-eq p1, p4, :cond_7

    const-string p1, "refresh, switch failed"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iput p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

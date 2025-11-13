.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsPowerRoleController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mFailureCallback:Ljava/lang/Runnable;

.field private mNextPowerRole:I

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mSwitchPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$F2-cBzYSuLqMvB9Uf0q4OLZsBMg(Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 55
    new-instance p1, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 56
    iget v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-eqz v0, :cond_0

    const-string v0, "UsbDetailsCtrlPowerRole"

    const-string v1, "FailureCallback, switch failed"

    .line 58
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 75
    new-instance p1, Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 76
    sget v0, Lcom/android/settings/R$string;->usb_use_power_only:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    sget v0, Lcom/android/settings/R$string;->usb_use_power_description:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 85
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "usb_details_power_role"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 177
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 148
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 150
    :goto_0
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result p2

    if-eq p2, p1, :cond_2

    iget p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-nez p2, :cond_2

    .line 151
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p2

    if-nez p2, :cond_2

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "user set : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UsbDetailsCtrlPowerRole"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p2, p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setPowerRole(I)V

    .line 157
    iput p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 162
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Ljava/lang/Runnable;

    .line 163
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v0, 0xfa0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x3a98

    .line 162
    :goto_1
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected refresh(ZJII)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refresh() connected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 97
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "1: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, ", 2: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p5}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result p5

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 101
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 102
    :cond_0
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object p5, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 104
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 105
    iget-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p2}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    iget-object p5, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    const/4 p2, 0x0

    const/4 p5, 0x1

    if-ne p4, p5, :cond_3

    .line 109
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 110
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne p4, v0, :cond_4

    .line 112
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    if-nez p4, :cond_6

    .line 115
    :cond_5
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 124
    :cond_6
    :goto_1
    iget p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-eqz p1, :cond_8

    if-eqz p4, :cond_8

    if-eq p1, p4, :cond_7

    const-string/jumbo p1, "refresh, switch failed"

    .line 135
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_7
    iput p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 138
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

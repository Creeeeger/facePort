.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsTranscodeMtpController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mSwitchPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    return-void
.end method

.method private static isDeviceInFileTransferMode(JI)Z
    .locals 4

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const-wide/16 v0, 0x4

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    const-wide/16 v0, 0x10

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 62
    new-instance p1, Landroidx/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 63
    sget v0, Lcom/android/settings/R$string;->usb_transcode_files:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    sget v0, Lcom/android/settings/R$string;->sec_usb_transcode_files_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "usb_transcode_mtp"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 114
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_DISABLE_TRANSCODE_MTP_MENU"

    .line 115
    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 119
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 91
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 92
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sys.fuse.transcode_mtp"

    .line 91
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onClick() - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UsbDetailsCtrlMtp"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getCurrentFunctions()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    .line 103
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setCurrentFunctions(J)V

    .line 104
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "enable_mtp_settings"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setCurrentFunctions(J)V

    return v3
.end method

.method protected refresh(ZJII)V
    .locals 3

    .line 74
    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    const-wide/16 v0, 0x14

    invoke-virtual {p4, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result p4

    const-string/jumbo v0, "sys.fuse.transcode_mtp"

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 75
    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p4}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p4

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p4, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 77
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refresh() "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v2, "UsbDetailsCtrlMtp"

    invoke-static {v2, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_0
    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {p4}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p4

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p4, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 83
    :goto_0
    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 84
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    invoke-virtual {p4, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 85
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    .line 86
    invoke-static {p2, p3, p5}, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->isDeviceInFileTransferMode(JI)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 85
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

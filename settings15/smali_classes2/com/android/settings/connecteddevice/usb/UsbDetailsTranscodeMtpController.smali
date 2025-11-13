.class public final Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field public mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "usb_transcode_mtp"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    new-instance v0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const p1, 0x7f1430b1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "usb_transcode_files"

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    const v0, 0x7f142825

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "usb_transcode_mtp"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_DISABLE_TRANSCODE_MTP_MENU"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    new-instance p1, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->requireAuthAndExecute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final refresh(ZJII)V
    .locals 3

    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    const-wide/16 v0, 0x14

    invoke-virtual {p4, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsSupported(J)Z

    move-result p4

    const-string v0, "sys.fuse.transcode_mtp"

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p4

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p4, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "refresh() "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "UsbDetailsCtrlMtp"

    invoke-static {v1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p4

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p4, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    iget-object p4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mSwitchPreference:Landroidx/preference/SwitchPreferenceCompat;

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p4, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsTranscodeMtpController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    if-ne p5, p1, :cond_2

    const-wide/16 p4, 0x4

    and-long/2addr p4, p2

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-nez p1, :cond_1

    const-wide/16 p4, 0x10

    and-long p1, p2, p4

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

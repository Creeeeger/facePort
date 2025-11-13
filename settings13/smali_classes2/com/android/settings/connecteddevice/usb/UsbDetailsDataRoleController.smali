.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsDataRoleController.java"

# interfaces
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevicePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field private final mFailureCallback:Ljava/lang/Runnable;

.field private mHostPref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field private mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public static synthetic $r8$lambda$pCOMMoWIZqZ3p9YxUch0SCv9pZQ(Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 55
    new-instance p2, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkSmartSwitchTransfer()Z
    .locals 2

    const-string v0, "UsbDetailsCtrlDataRole"

    .line 176
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.sec.android.easyMover.statusProvider/isOtgTransferring"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "TRUE"

    .line 177
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "checkSmartSwitchTransfer - return true"

    .line 178
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const-string p0, "checkSmartSwitchTransfer - return false"

    .line 183
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v0, :cond_0

    .line 57
    sget v1, Lcom/android/settings/R$string;->usb_switching_failed:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    :cond_0
    return-void
.end method

.method private makeRadioPreference(Ljava/lang/String;I)Lcom/android/settingslib/widget/SelectorWithWidgetPreference;
    .locals 2

    .line 164
    new-instance v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 165
    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 168
    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setOnClickListener(Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V

    .line 169
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    .line 74
    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->usb_control_host:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const/4 p1, 0x2

    .line 76
    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->usb_control_device:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "usb_details_data_role"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 152
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDataRole()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 155
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 3

    .line 124
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleFromString(Ljava/lang/String;)I

    move-result v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick() - click current mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbDetailsCtrlDataRole"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-nez v1, :cond_2

    .line 129
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->checkSmartSwitchTransfer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->unable_to_change_usb_options_via_smart_switch:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 135
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDataRole(I)V

    .line 140
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    .line 141
    sget v0, Lcom/android/settings/R$string;->usb_switching:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 143
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Ljava/lang/Runnable;

    .line 144
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v1, 0xfa0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x3a98

    .line 143
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method protected refresh(ZJII)V
    .locals 2

    .line 83
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDataRole()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
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

    const-string p3, "UsbDetailsCtrlDataRole"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    const-string p3, ""

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p5, p2, :cond_1

    .line 93
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 94
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, p4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-ne p5, v0, :cond_2

    .line 97
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, p4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    if-nez p5, :cond_4

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-nez p1, :cond_4

    .line 104
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz p1, :cond_6

    if-eqz p5, :cond_6

    .line 110
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleFromString(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p5, :cond_5

    .line 112
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 115
    :cond_5
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    sget p2, Lcom/android/settings/R$string;->usb_switching_failed:I

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    .line 118
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

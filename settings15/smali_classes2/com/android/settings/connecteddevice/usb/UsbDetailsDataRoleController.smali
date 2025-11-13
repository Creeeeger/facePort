.class public final Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDevicePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field public final mFailureCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda1;

.field public mHostPref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field public mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field public mPreferenceCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbBackend;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;)V

    new-instance p2, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda1;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "usb_details_data_role"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const p1, 0x7f143089

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    iput-object p0, v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const p1, 0x7f143088

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    iput-object p0, v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->mListener:Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "usb_details_data_role"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDataRole()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->requireAuthAndExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final refresh(ZJII)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportDataRole()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
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

    const-string p3, "UsbDetailsCtrlDataRole"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    const-string p3, ""

    const/4 p4, 0x0

    const/4 v0, 0x1

    if-ne p5, p2, :cond_1

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, p4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-ne p5, v0, :cond_2

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, p4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    if-nez p5, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz p1, :cond_6

    if-eqz p5, :cond_6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, p5, :cond_5

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const p2, 0x7f1430a1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method

.class public final synthetic Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

.field public final synthetic f$1:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController$$ExternalSyntheticLambda1;->f$1:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    iget-object v4, v3, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide v4

    sget-boolean v6, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->DEBUG:Z

    const-string v7, "UsbDetailsCtrlFunction"

    if-eqz v6, :cond_0

    const-string v6, "onRadioButtonClicked() function : "

    const-string v8, ", toString() : "

    invoke-static {v1, v2, v6, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1, v2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", previousFunction : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "onClick() - UsbBackend.usbFunctionsFromString() - click current mode : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "onClick() - mUsbBackend.getCurrentFunctions() - previousFunction : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v6, v1, v4

    if-eqz v6, :cond_d

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v6

    if-nez v6, :cond_d

    const-wide/16 v6, 0x2

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    const-wide/16 v9, 0x4

    if-eqz v6, :cond_2

    cmp-long v6, v1, v9

    if-nez v6, :cond_2

    goto/16 :goto_5

    :cond_2
    iput-wide v4, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mPreviousFunction:J

    const-wide/16 v4, 0x20

    cmp-long v4, v1, v4

    if-eqz v4, :cond_8

    const-wide/16 v4, 0x400

    cmp-long v4, v1, v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    move v5, v7

    :goto_1
    if-ge v5, v4, :cond_5

    iget-object v6, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    instance-of v11, v6, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    if-eqz v11, :cond_4

    check-cast v6, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v6, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v8}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    cmp-long p0, v1, v9

    if-nez p0, :cond_6

    iget-object p0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "enable_mtp_settings"

    invoke-static {p0, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    const-wide/32 v4, 0x40000

    cmp-long p0, v1, v4

    if-nez p0, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adb_enabled"

    invoke-static {p0, v0, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    iget-object p0, v3, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    goto :goto_5

    :cond_8
    :goto_2
    iget-object p0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_9

    :goto_3
    move p0, v7

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    :goto_4
    if-eqz p0, :cond_b

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->startUsbTethering()V

    goto :goto_5

    :cond_b
    iget-object p0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/tether/SecTetherUtils;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_c

    iget-object p0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mProfilesContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v7}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1070125

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-object v2, p0, v7

    aget-object p0, p0, v8

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "TETHER_TYPE"

    invoke-virtual {v1, p0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->mActivityResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, v1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFunctionsController;->startUsbTethering()V

    :cond_d
    :goto_5
    return-void
.end method

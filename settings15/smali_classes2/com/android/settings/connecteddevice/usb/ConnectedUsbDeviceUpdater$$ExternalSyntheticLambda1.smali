.class public final synthetic Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$UsbConnectionListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/4 v0, 0x0

    const v2, 0x7f143093

    invoke-virtual {p1, v2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    iput p0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public onUsbConnectionChanged(ZJIIZ)V
    .locals 18

    move/from16 v0, p4

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    iget-object v2, v1, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    if-eqz p1, :cond_d

    iget-object v3, v1, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v4, 0x2

    move/from16 v5, p5

    if-ne v5, v4, :cond_0

    move-wide/from16 v5, p2

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    const/4 v7, 0x1

    const-wide/16 v8, 0x80

    const-wide/16 v10, 0x8

    const-wide/16 v12, 0x10

    const-wide/16 v14, 0x20

    const-wide/16 v16, 0x4

    if-eq v0, v7, :cond_6

    const v7, 0x7f143098

    if-eq v0, v4, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v0, v5, v16

    if-nez v0, :cond_2

    const v7, 0x7f143099

    goto :goto_1

    :cond_2
    cmp-long v0, v5, v14

    if-nez v0, :cond_3

    const v7, 0x7f14309e

    goto :goto_1

    :cond_3
    cmp-long v0, v5, v12

    if-nez v0, :cond_4

    const v7, 0x7f14309b

    goto :goto_1

    :cond_4
    cmp-long v0, v5, v10

    if-nez v0, :cond_5

    const v7, 0x7f143094

    goto :goto_1

    :cond_5
    cmp-long v0, v5, v8

    if-nez v0, :cond_c

    const v7, 0x7f143096

    goto :goto_1

    :cond_6
    cmp-long v0, v5, v16

    if-nez v0, :cond_7

    const v7, 0x7f14309a

    goto :goto_1

    :cond_7
    cmp-long v0, v5, v14

    if-nez v0, :cond_8

    const v7, 0x7f14309f

    goto :goto_1

    :cond_8
    cmp-long v0, v5, v12

    if-nez v0, :cond_9

    const v7, 0x7f14309c

    goto :goto_1

    :cond_9
    cmp-long v0, v5, v10

    if-nez v0, :cond_a

    const v7, 0x7f143095

    goto :goto_1

    :cond_a
    cmp-long v0, v5, v8

    if-nez v0, :cond_b

    const v7, 0x7f143097

    goto :goto_1

    :cond_b
    const v7, 0x7f14309d

    :cond_c
    :goto_1
    invoke-virtual {v3, v7}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object v0, v1, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-interface {v2, v0}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceAdded(Landroidx/preference/Preference;)V

    goto :goto_2

    :cond_d
    iget-object v0, v1, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->mUsbPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-interface {v2, v0}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceRemoved(Landroidx/preference/Preference;)V

    :goto_2
    return-void
.end method

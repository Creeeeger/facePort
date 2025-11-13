.class public Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ConnectedDeviceGroupController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;


# static fields
.field private static final KEY:Ljava/lang/String; = "connected_device_list"


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

.field private mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

.field private mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPreferenceGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "connected_device_list"

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private hasBluetoothFeature()Z
    .locals 1

    .line 167
    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.hardware.bluetooth"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private hasUsbFeature()Z
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.usb.accessory"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "android.hardware.usb.host"

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "connected_device_list"

    .line 92
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 97
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->forceUpdate()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0, p1}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->initUsbPreference(Landroid/content/Context;)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {v0, p1}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->setPreferenceContext(Landroid/content/Context;)V

    .line 107
    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {p0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->forceUpdate()V

    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->hasBluetoothFeature()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->hasUsbFeature()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "connected_device_list"

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method init(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;Lcom/android/settings/connecteddevice/dock/DockUpdater;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 147
    iput-object p2, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    .line 148
    iput-object p3, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    return-void
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 5

    .line 152
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    move-result-object v1

    .line 156
    invoke-interface {v1, v0, p0}, Lcom/android/settings/overlay/DockUpdaterFeatureProvider;->getConnectedDockUpdater(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)Lcom/android/settings/connecteddevice/dock/DockUpdater;

    move-result-object v1

    .line 157
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->hasBluetoothFeature()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 158
    new-instance v2, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;

    invoke-direct {v2, v0, p1, p0}, Lcom/android/settings/bluetooth/ConnectedBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 160
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->hasUsbFeature()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    new-instance v3, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-direct {v3, v0, p1, p0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    .line 157
    :cond_1
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->init(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;Lcom/android/settings/connecteddevice/dock/DockUpdater;)V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 130
    :cond_0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 136
    iget-object p1, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 137
    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    .line 65
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->refreshPreference()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->registerCallback()V

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {p0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->registerCallback()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->unregisterCallback()V

    .line 85
    :cond_1
    iget-object p0, p0, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->mConnectedDockUpdater:Lcom/android/settings/connecteddevice/dock/DockUpdater;

    invoke-interface {p0}, Lcom/android/settings/connecteddevice/dock/DockUpdater;->unregisterCallback()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

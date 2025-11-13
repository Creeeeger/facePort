.class public Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final TAG:Ljava/lang/String; = "StylusUsbFirmwareController"


# instance fields
.field private mPreference:Landroidx/preference/PreferenceCategory;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mStylusUsbDevice:Landroid/hardware/usb/UsbDevice;

.field mUsbConnectionListener:Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver$UsbStylusConnectionListener;

.field private final mUsbStylusBroadcastReceiver:Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$ZdOatcqLXIcmF44uVz18yWdki64(Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;Landroid/hardware/usb/UsbDevice;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->lambda$new$0(Landroid/hardware/usb/UsbDevice;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver$UsbStylusConnectionListener;

    new-instance p2, Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver$UsbStylusConnectionListener;

    invoke-direct {p2}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p2, Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;->mContext:Landroid/content/Context;

    iput-object v0, p2, Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;->mUsbConnectionListener:Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver$UsbStylusConnectionListener;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mUsbStylusBroadcastReceiver:Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;

    return-void
.end method

.method private getStylusUsbDevice()Landroid/hardware/usb/UsbDevice;
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/usb/UsbDevice;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->hasUsbStylusFirmwareUpdateFeature(Landroid/hardware/usb/UsbDevice;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static hasUsbStylusFirmwareUpdateFeature(Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->stylusFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/connecteddevice/stylus/StylusFeatureProviderImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$new$0(Landroid/hardware/usb/UsbDevice;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->refresh()V

    return-void
.end method

.method private refresh()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->getStylusUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mStylusUsbDevice:Landroid/hardware/usb/UsbDevice;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mStylusUsbDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mPreference:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    iget-object p0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mStylusUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->hasUsbStylusFirmwareUpdateFeature(Landroid/hardware/usb/UsbDevice;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->stylusFeatureProvider$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/connecteddevice/stylus/StylusFeatureProviderImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->refresh()V

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onStart()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mUsbStylusBroadcastReceiver:Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;

    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;->mListeningToUsbEvents:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;->mListeningToUsbEvents:Z

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/connecteddevice/stylus/StylusUsbFirmwareController;->mUsbStylusBroadcastReceiver:Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;

    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;->mListeningToUsbEvents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/stylus/UsbStylusBroadcastReceiver;->mListeningToUsbEvents:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

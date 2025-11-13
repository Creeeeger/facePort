.class public Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SecBluetoothDetailsHeaderController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecBluetoothDetailsHeaderController"


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mIsRegisterCallback:Z

.field mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
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

.method public init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

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

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->refresh()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->refresh()V

    return-void
.end method

.method refresh()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 92
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->bluetooth_header_title:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 98
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->bluetooth_header_summary:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->bluetooth_header_icon:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
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

.class public abstract Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field public mAlertDialog:Landroid/app/AlertDialog;

.field public mAnimResource:Landroid/graphics/drawable/Drawable;

.field public final mCancelListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$4;

.field public final mClickListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;

.field public mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field public mDialogCallback:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$1;

.field public final mDismissListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;

.field public mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

.field public final mHandler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;

.field public mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mHandler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$2;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mClickListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$3;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mCancelListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$4;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mDismissListener:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$5;

    return-void
.end method


# virtual methods
.method public final getDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public final onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0f99

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    goto :goto_0

    :cond_0
    const-string p1, "BluetoothFunctionSettingsBase"

    const-string/jumbo v0, "setupSwitchBar :: mSwitchBar is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a06af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f060738

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    :cond_1
    return-void
.end method

.method public final onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public final onBluetoothStateChanged(I)V
    .locals 1

    const-string/jumbo p0, "onBluetoothStateChanged :: state ="

    const-string v0, "BluetoothFunctionSettingsBase"

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "onConfigurationChanged :: "

    const-string v1, "BluetoothFunctionSettingsBase"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    const p1, 0x7f0d0842

    invoke-virtual {v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_1
    const p1, 0x7f0d0841

    invoke-virtual {v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a06af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060738

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/FrameLayout;->semSetRoundedCornerColor(II)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a0f99

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchBar;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->show()V

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "setupSwitchBar :: mSwitchBar is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->resume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->updateContentsView()V

    return-void
.end method

.method public final onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    const-string/jumbo p0, "onConnectionStateChanged :: connection state ="

    const-string p1, "BluetoothFunctionSettingsBase"

    invoke-static {p2, p0, p1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "BluetoothFunctionSettingsBase"

    const-string/jumbo v0, "onCreateView()"

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/settings/Rune;->isSamsungDexMode(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p0, p3, :cond_1

    const p0, 0x7f0d0842

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    const p0, 0x7f0d0841

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mFunctionEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$FunctionEnabler;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/SeslSwitchBar;->hide()V

    goto :goto_0

    :cond_1
    const-string v0, "BluetoothFunctionSettingsBase"

    const-string/jumbo v1, "teardownSwitchBar :: mSwitchBar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mAnimResource:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public final onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public final onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "BluetoothFunctionSettingsBase"

    const-string/jumbo v0, "onPause :: mLocalBluetoothManager is null, can not unregister bluetooth callback"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    goto :goto_0

    :cond_1
    const-string p0, "BluetoothFunctionSettingsBase"

    const-string/jumbo v0, "onResume :: mLocalBluetoothManager is null, can not register bluetooth callback"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public abstract switchStateChange(Z)V
.end method

.method public abstract updateContentsView()V
.end method

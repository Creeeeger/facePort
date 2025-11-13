.class public final Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    sget-boolean v4, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->DBG:Z

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x10103bd

    const v5, 0x10103be

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getBluetoothFeatureProvider()Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;

    move-result-object v3

    const-string/jumbo v4, "settings_ui"

    const-string v5, "bt_slice_settings_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v5, v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getControlUriMetaData(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "SecBluetoothDeviceDetailsSettings"

    const-string/jumbo v3, "unable to parse uri"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v2, v6

    :goto_0
    const-class v3, Lcom/android/settings/slices/SlicePreferenceController;

    invoke-virtual {v1, v3}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    check-cast v3, Lcom/android/settings/slices/SlicePreferenceController;

    if-eqz v4, :cond_3

    move-object v6, v2

    :cond_3
    invoke-virtual {v3, v6}, Lcom/android/settings/slices/SlicePreferenceController;->setSliceUri(Landroid/net/Uri;)V

    invoke-virtual {v3}, Lcom/android/settings/slices/SlicePreferenceController;->onStart()V

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/settings/slices/SlicePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->checkHearingAidByUuid()Z

    move-result v2

    if-eqz v2, :cond_4

    const-class v2, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-class v2, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mOnGlobalLayoutListener:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

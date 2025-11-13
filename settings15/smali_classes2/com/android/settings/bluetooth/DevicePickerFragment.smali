.class public final Lcom/android/settings/bluetooth/DevicePickerFragment;
.super Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mCallFromHeadset:Z

.field public mCallFromHearingAid:Z

.field mCallingAppPackageName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field public final mDeviceProfilesListener:Lcom/android/settings/bluetooth/DevicePickerFragment$1;

.field public mFilterType:I

.field mLaunchClass:Ljava/lang/String;

.field mLaunchPackage:Ljava/lang/String;

.field public mNeedAuth:Z

.field public mProgressItem:Landroid/view/MenuItem;

.field public mScan:Landroid/view/MenuItem;

.field public mScreenId:Ljava/lang/String;

.field public mStartScanOnResume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/settings/bluetooth/DevicePickerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DevicePickerFragment$1;-><init>(Lcom/android/settings/bluetooth/DevicePickerFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mDeviceProfilesListener:Lcom/android/settings/bluetooth/DevicePickerFragment$1;

    return-void
.end method


# virtual methods
.method public final addPreferencesForActivity()V
    .locals 9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    sget-boolean v3, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v3, :cond_0

    const v3, 0x7f1407dc

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v3, 0x7f140cab

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    :goto_0
    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled()V

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1406c0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object v4, v4, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mGuideView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v2, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x14

    iput v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    goto :goto_1

    :cond_2
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    iget-object v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->mAvailableListAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothAvailableListAdapter;

    iget v4, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->setFilter(I)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedAdapter:Lcom/samsung/android/settings/bluetooth/adapter/BluetoothListAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->addCachedDevices$1()V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setVisibleCastGroup(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setVisiblePairedGroup(I)V

    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/16 v5, 0x6a

    const/16 v6, 0x69

    const/4 v7, 0x6

    const/4 v8, 0x5

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_4

    if-ne v2, v5, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    goto :goto_3

    :cond_4
    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    :goto_3
    if-ne v2, v4, :cond_5

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHearingAid:Z

    goto :goto_4

    :cond_5
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHearingAid:Z

    :goto_4
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    const-string v2, "android.bluetooth.devicepicker.extra.CALLING_APP_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallingAppPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "DevicePickerFragment"

    const-string v2, "sendDevicePickedIntent() launch package name is not equivalent to calling package name!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f1407ca

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_7
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v0, v8, :cond_8

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f1407cb

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_8
    return-void
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x19

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170092

    return p0
.end method

.method public final initDevicePreference(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mDeviceProfilesListener:Lcom/android/settings/bluetooth/DevicePickerFragment$1;

    iput-object p0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final onBluetoothStateChanged(I)V
    .locals 2

    const-string v0, "onBluetoothStateChanged :: bluetoothState = "

    const-string v1, "DevicePickerFragment"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mListController:Lcom/samsung/android/settings/bluetooth/BluetoothListController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothListController;->setLayoutParams()V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    const p1, 0x7f141fc5

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const v0, 0x7f0f0015

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a0bca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    const v1, 0x7f0d084c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, 0x7f142ab3

    goto :goto_0

    :cond_0
    const v2, 0x7f1407c4

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v5, 0x2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDeviceBondStateChanged :: device = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bondState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallFromHeadset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    const-string v2, "DevicePickerFragment"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHearingAid:Z

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public final onDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V
    .locals 4

    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDevicePreferenceClick :: mSelectedDevice = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallFromHeadset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    const-string v2, "DevicePickerFragment"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bluetooth_settings"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_selected_device"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_selected_device_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const v0, 0x7f141fba

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140e88

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1f00

    :goto_0
    const v1, 0x7f140ecd

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    if-eq v0, v2, :cond_3

    const/16 v2, 0x200

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForSAlogging()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, "Personal Device"

    :goto_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    if-ne v0, v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V

    goto :goto_6

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_6

    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHearingAid:Z

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;)V

    goto :goto_6

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_6

    :cond_a
    :goto_5
    const-string p0, "DeviceListPreferenceFragment"

    const-string v0, "inside onDevicePreferenceClickForHeadset"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v0, 0xb

    if-eq p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect$1()V

    :cond_b
    :goto_6
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    const v0, 0x7f140ece

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    const-string v0, "DevicePickerFragment"

    if-eqz p1, :cond_2

    const-string p1, "onOptionsItemSelected :: Stop scanning"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    const p1, 0x7f140c4a

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Button"

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "onOptionsItemSelected :: Start scanning"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    const p1, 0x7f140c49

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    const v2, 0x7f140ecf

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v1
.end method

.method public final onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onProfileStateChanged :: profile = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", newState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", oldState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "DevicePickerFragment"

    invoke-static {p1, p4, v0}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    instance-of p1, p2, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    const/4 p4, 0x2

    if-eqz p1, :cond_1

    if-ne p3, p4, :cond_4

    iget p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/16 p2, 0x69

    if-ne p1, p2, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_1
    instance-of p1, p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p1, :cond_3

    if-ne p3, p4, :cond_4

    iget p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/16 p2, 0x6a

    if-ne p1, p2, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_3
    instance-of p1, p2, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz p1, :cond_4

    if-ne p3, p4, :cond_4

    iget p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public final onScanningStateChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    const-string v0, "onScanningStateChanged :: is start scanning "

    const-string v1, "DevicePickerFragment"

    invoke-static {v0, v1, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const v1, 0x7f142ab3

    goto :goto_0

    :cond_0
    const v1, 0x7f1407c4

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->removeSelectedGroupDevices()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->addCachedDevices$1()V

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/bluetooth/SecDeviceListPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz p0, :cond_1

    const v0, 0x7f1407c4

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method public final sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendDevicePickedIntent :: device = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePickerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MacAddress"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallingAppPackageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

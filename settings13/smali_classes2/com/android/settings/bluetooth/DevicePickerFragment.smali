.class public final Lcom/android/settings/bluetooth/DevicePickerFragment;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# static fields
.field private static final DEBUG:Z

.field private static mLocalAdapterName:Ljava/lang/String;


# instance fields
.field private mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mCallFromHeadset:Z

.field mCallingAppPackageName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mFilterType:I

.field mLaunchClass:Ljava/lang/String;

.field mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mProgressItem:Landroid/view/MenuItem;

.field private mScan:Landroid/view/MenuItem;

.field private mScreenId:Ljava/lang/String;

.field private mStartScanOnResume:Z

.field private mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->DEBUG:Z

    const/4 v0, 0x0

    .line 102
    sput-object v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapterName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;II)V
    .locals 0

    .line 527
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    .line 529
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(I)V

    .line 530
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    .line 532
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->clearNonBondedDevices()V

    .line 534
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    return-void
.end method

.method private addVisibleGuidePreferenceGroup()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 513
    sget v1, Lcom/android/settings/R$layout;->sec_preference_bt_visibility:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setLayoutResource(I)V

    .line 517
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->bluetooth_check_visibility_help_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    .line 523
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mVisibleGuidePreferenceGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 544
    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDevicePickedIntent :: device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePickerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v0, :cond_1

    .line 547
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 548
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semGetAliasName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MacAddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 552
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 553
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 554
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 555
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallingAppPackageName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 556
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 p1, 0x10000000

    .line 559
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 560
    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected addPreferencesForActivity()V
    .locals 8

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0xc

    .line 136
    invoke-virtual {v2, v3, v3}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    .line 137
    sget-boolean v3, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v3, :cond_0

    .line 138
    sget v3, Lcom/android/settings/R$string;->bluetooth_settings:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_0

    .line 140
    :cond_0
    sget v3, Lcom/android/settings/R$string;->device_picker:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 142
    :goto_0
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 143
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v3, 0x0

    .line 149
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 151
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addVisibleGuidePreferenceGroup()V

    .line 153
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v2, :cond_2

    .line 154
    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-direct {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>()V

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    goto :goto_1

    .line 156
    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->removeAll()V

    .line 162
    :goto_1
    sget-boolean v2, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    .line 163
    iput v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    goto :goto_2

    :cond_3
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    .line 165
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    .line 169
    :goto_2
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    sget v4, Lcom/android/settings/R$string;->bluetooth_preference_found_devices:I

    iget v5, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;II)V

    .line 172
    iget v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/16 v4, 0x6a

    const/16 v5, 0x69

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_5

    if-ne v2, v4, :cond_4

    goto :goto_3

    .line 178
    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    goto :goto_4

    .line 176
    :cond_5
    :goto_3
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    :goto_4
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    .line 182
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    .line 183
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    const-string v2, "android.bluetooth.devicepicker.extra.CALLING_APP_PACKAGE"

    .line 184
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallingAppPackageName:Ljava/lang/String;

    .line 186
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "DevicePickerFragment"

    const-string/jumbo v2, "sendDevicePickedIntent() launch package name is not equivalent to calling package name!"

    .line 187
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v0, "device_policy"

    .line 192
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    .line 194
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_7

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->bluetooth_security_mode_disable:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 198
    :cond_7
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v0, v7, :cond_8

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_8

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->bluetooth_security_mode_handsfree:I

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_8
    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x19

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 486
    sget p0, Lcom/android/settings/R$xml;->device_picker:I

    return p0
.end method

.method protected initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 226
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListDivider(Landroid/graphics/drawable/InsetDrawable;)V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2

    .line 467
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBluetoothStateChanged :: bluetoothState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePickerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 363
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 310
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 312
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 315
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 317
    sget p1, Lcom/android/settings/R$string;->screen_device_picker:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 278
    sget v0, Lcom/android/settings/R$menu;->sec_bt_picker_progress:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 279
    sget v0, Lcom/android/settings/R$id;->progress:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    .line 280
    sget v1, Lcom/android/settings/R$layout;->sec_bluetooth_progressbar:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 282
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    sget v2, Lcom/android/settings/R$string;->service_stop:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/settings/R$string;->bluetooth_scan_for_devices:I

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v5, 0x2

    .line 284
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 285
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 293
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 296
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 297
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 300
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 540
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDeviceBondStateChanged :: device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bondState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallFromHeadset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePickerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 454
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 455
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 456
    iget-boolean p2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-nez p2, :cond_0

    .line 457
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method protected onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3

    .line 370
    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDevicePreferenceClick :: mSelectedDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallFromHeadset = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePickerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 375
    sget v0, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->event_bluetooth_bdcc_picker:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    .line 378
    sget v1, Lcom/android/settings/R$string;->event_device_picker_device_list:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    if-eq v0, v2, :cond_2

    const/16 v2, 0x200

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForSAlogging()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "Personal Device"

    .line 382
    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-boolean v0, Lcom/android/settings/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_5

    .line 385
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 386
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 390
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_4

    .line 387
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_4

    .line 392
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-eqz v0, :cond_6

    .line 393
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClickForHeadset(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_4

    .line 395
    :cond_6
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    if-eq v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_7

    goto :goto_3

    .line 400
    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_4

    .line 397
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_4
    return-void
.end method

.method protected onFinishListAnimation()V
    .locals 1

    .line 210
    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 237
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const v2, 0x102002c

    if-eq v0, v2, :cond_0

    .line 267
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    sget v0, Lcom/android/settings/R$string;->event_device_picker_navigate_button:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return v1

    .line 239
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_4

    .line 241
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    const-string v0, "DevicePickerFragment"

    if-eqz p1, :cond_3

    const-string/jumbo p1, "onOptionsItemSelected :: Stop scanning"

    .line 242
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 244
    :cond_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 245
    sget p1, Lcom/android/settings/R$string;->detail_bluetooth_scan_stop:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Button"

    .line 246
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "onOptionsItemSelected :: Start scanning"

    .line 248
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->startScanning()Z

    .line 250
    sget p1, Lcom/android/settings/R$string;->detail_bluetooth_scan_start:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 253
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    sget v2, Lcom/android/settings/R$string;->event_device_picker_scan_button:I

    .line 254
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 253
    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 1

    .line 492
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V

    .line 493
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onProfileStateChanged :: profile = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", newState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", oldState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "DevicePickerFragment"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    instance-of p1, p2, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    const/4 p4, 0x2

    if-eqz p1, :cond_1

    if-ne p3, p4, :cond_3

    .line 496
    iget p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const/16 p2, 0x69

    if-ne p1, p2, :cond_3

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 501
    :cond_1
    instance-of p1, p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p1, :cond_3

    if-ne p3, p4, :cond_3

    .line 502
    iget p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/16 p2, 0x6a

    if-ne p1, p2, :cond_3

    .line 505
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 324
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 326
    iget-object p0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 4

    .line 408
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onScanningStateChanged :: is start scanning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePickerFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 413
    sget v2, Lcom/android/settings/R$string;->service_stop:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/settings/R$string;->bluetooth_scan_for_devices:I

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 417
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez p1, :cond_2

    const-string p0, "mAvailableDevicesCategory is null!"

    .line 418
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 421
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    const/4 v1, 0x1

    if-nez p1, :cond_6

    move p1, v0

    .line 423
    :goto_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 424
    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreference(I)Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 425
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 430
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_5

    move v0, v1

    .line 431
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    goto :goto_2

    .line 433
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz p1, :cond_7

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 434
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object p1

    iput-boolean v1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    goto :goto_2

    .line 438
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeSelectedGroupDevices()V

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    .line 445
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 332
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 340
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 347
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 350
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 352
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 353
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    sget v2, Lcom/android/settings/R$string;->bluetooth_scan_for_devices:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 358
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    return-void
.end method

.method protected onStopScanningState()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_0

    const-string p0, "DevicePickerFragment"

    const-string v0, "mAvailableDevicesCategory is null!"

    .line 216
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 220
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    return-void
.end method

.method public startScanning()Z
    .locals 1

    .line 271
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    move-result p0

    return p0
.end method

.class public Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AndroidAutoCarDetailsFragment.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isFinished:Z

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mContentHeader:Landroid/widget/LinearLayout;

.field private mDeviceNameEditText:Landroid/widget/EditText;

.field private mHeaderTitleText:Landroid/widget/TextView;

.field private mIsCalledDestory:Z

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mNameEditedButtonEnabled:Z

.field private mProfileContainer:Landroidx/preference/PreferenceGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public static synthetic $r8$lambda$2BH5KpLadqx-bPhgNbunPmBf-O4(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->lambda$initBottomButtonBar$2(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3xfP-6sv6tOyu5rfEtbyHedyhxU(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->lambda$onResume$1(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$WvMZRlJQB-HHgTO5kuZE3Dqor8M(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->lambda$onResume$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCachedDevice(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    .line 79
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->isFinished:Z

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mIsCalledDestory:Z

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mReceiverRegistered:Z

    .line 105
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$1;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addEmptyView()V
    .locals 2

    .line 304
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 305
    sget v1, Lcom/android/settings/R$layout;->sec_bluetooth_device_profile_empty:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 306
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 5

    .line 483
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 484
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "addPreferencesForProfiles :: Device is restored. It is not support container"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->showOrHideProfileGroup()V

    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 490
    instance-of v2, v1, Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 493
    :cond_1
    sget-object v2, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPreferencesForProfiles :: profile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v1

    .line 496
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 499
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->showOrHideProfileGroup()V

    return-void
.end method

.method private changeMargin(II)V
    .locals 3

    .line 644
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 645
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mContentHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    const/4 v2, 0x0

    .line 647
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 648
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mContentHeader:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mHeaderTitleText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p2, p2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 651
    invoke-virtual {p1, v2, v2, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 p2, 0x1

    .line 652
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 653
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mHeaderTitleText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 4

    .line 523
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createProfileSwitchPreference :: profile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->PreferenceThemeOverlay:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 525
    new-instance v1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {v1, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 526
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x0

    .line 528
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 529
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->getProfilePreferenceIndex(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 530
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 532
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 534
    instance-of v2, p1, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v2, :cond_0

    .line 535
    sget v2, Lcom/android/settings/R$drawable;->list_ic_call_audio:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 540
    sget v3, Lcom/android/settings/R$color;->bt_device_icon_tint_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 541
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 544
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->refreshProfileSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-object v1
.end method

.method private getProfileOf(Landroidx/preference/Preference;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .locals 3

    .line 469
    instance-of v0, p1, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PAN"

    if-eq v0, v2, :cond_0

    return-object v1

    .line 472
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 476
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method private getProfilePreferenceIndex(I)I
    .locals 0

    .line 550
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result p0

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p0, p1

    return p0
.end method

.method private initBottomButtonBar()V
    .locals 4

    .line 310
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "initBottomButtonBar"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->sec_android_auto_car_details_bottom_btn:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 315
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 316
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 318
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;)V

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method private isBluetoothProfileAllowedByMDM(I)Z
    .locals 0

    .line 460
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object p0

    .line 461
    invoke-virtual {p0, p1}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 464
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string p1, "isBluetoothProfileAllowedByMDM false"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initBottomButtonBar$2(Landroid/view/MenuItem;)Z
    .locals 2

    .line 319
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->un_pair_btn:I

    if-ne p1, v0, :cond_1

    .line 320
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 321
    sget-object p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v0, "onNavigationItemSelected() : Device Connected"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BottomNavigationItemSelected:: Unpair to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isConneceted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->unpairDevice()V

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onResume$0()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 263
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private synthetic lambda$onResume$1(Landroid/view/View;Z)V
    .locals 0

    .line 270
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 272
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 273
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private onProfileClicked(Landroidx/preference/Preference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 7

    .line 374
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onProfileClicked :: "

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 377
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PBAP Server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 378
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v2

    if-ne v2, v5, :cond_0

    move v5, v4

    .line 380
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProfileClicked :: [KEY_PBAP_SERVER] newPermission = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 382
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->isBluetoothProfileAllowedByMDM(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 384
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    invoke-interface {p2, v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_0

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    if-ne v5, v4, :cond_2

    .line 391
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    invoke-interface {p2, v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 395
    :cond_2
    :goto_0
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->refreshProfileSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void

    .line 397
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v6, "MAP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 398
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v2

    if-ne v2, v5, :cond_4

    move v5, v4

    .line 400
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProfileClicked :: [KEY_PROFILE_MAP] newPermission = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, v4, :cond_5

    .line 402
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 403
    invoke-interface {p2, v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 405
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 406
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->refreshProfileSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void

    .line 408
    :cond_6
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v6, "SAP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 409
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v2

    if-ne v2, v5, :cond_7

    move v5, v4

    .line 411
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProfileClicked :: [KEY_PROFILE_SAP] newPermission = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, v4, :cond_8

    .line 413
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 414
    invoke-interface {p2, v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 416
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSimPermissionChoice(I)V

    .line 417
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->refreshProfileSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void

    .line 421
    :cond_9
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 423
    sget-boolean v2, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->DBG:Z

    if-eqz v2, :cond_a

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProfileClicked :: device : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profile : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", getstate : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-ne p1, v4, :cond_b

    move p1, v5

    goto :goto_1

    :cond_b
    move p1, v3

    :goto_1
    if-eqz p1, :cond_c

    .line 428
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling disconnect of "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    move v3, v5

    .line 434
    :goto_2
    new-instance p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$2;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$2;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 449
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 450
    iput v3, p2, Landroid/os/Message;->what:I

    const-wide/16 v0, 0x64

    .line 451
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string p1, "service.bt.security.policy.mode"

    .line 453
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 454
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    :cond_d
    return-void
.end method

.method private refresh()V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 685
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 689
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mHeaderTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->refreshProfiles()V

    return-void
.end method

.method private refreshProfileSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 7

    .line 555
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 556
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshProfileSwitchPreference : device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", profile = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    .line 561
    :goto_1
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 563
    instance-of v6, p2, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v6, :cond_3

    .line 564
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result p2

    if-ne p2, v5, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "refreshProfileSwitchPreference : MapProfile, setchecked = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 568
    :cond_3
    instance-of v6, p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v6, :cond_6

    .line 571
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p2

    .line 572
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    invoke-static {p2}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "PBAP service blocked by MDM policy"

    .line 573
    invoke-static {v1, p2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 580
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result p2

    if-ne p2, v5, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "refreshProfileSwitchPreference : PbapServerProfile, setchecked = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 583
    :cond_6
    instance-of v6, p2, Lcom/android/settingslib/bluetooth/SapProfile;

    if-eqz v6, :cond_8

    .line 584
    iget-object p2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result p2

    if-ne p2, v5, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 586
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "refreshProfileSwitchPreference : SapProfile, setchecked = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 588
    :cond_8
    instance-of p0, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz p0, :cond_9

    .line 589
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 590
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_9
    if-eq v2, v3, :cond_b

    if-ne v2, v5, :cond_a

    goto :goto_2

    .line 595
    :cond_a
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 593
    :cond_b
    :goto_2
    invoke-virtual {p1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    return-void
.end method

.method private refreshProfiles()V
    .locals 6

    .line 700
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    sget-object p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v0, "refreshProfiles :: Device is restored. It is not support container"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 705
    instance-of v2, v1, Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 707
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v2, :cond_4

    .line 709
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v2

    .line 710
    instance-of v3, v1, Lcom/android/settingslib/bluetooth/SapProfile;

    if-nez v3, :cond_1

    instance-of v3, v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-nez v3, :cond_1

    instance-of v1, v1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v1, :cond_3

    goto :goto_0

    .line 714
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 717
    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->refreshProfileSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v0

    .line 722
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v1

    const-string v2, "Refresh profile preference : "

    if-eqz v1, :cond_6

    .line 723
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_6

    if-eqz v0, :cond_6

    .line 725
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    .line 726
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 730
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v0

    .line 731
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 732
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/MapProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_7

    if-eqz v0, :cond_7

    .line 734
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    .line 735
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/MapProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 739
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v0

    .line 740
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getSapProfile()Lcom/android/settingslib/bluetooth/SapProfile;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 741
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/SapProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_8

    if-eqz v0, :cond_8

    .line 743
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    .line 744
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/SapProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 748
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 749
    instance-of v2, v1, Lcom/android/settingslib/bluetooth/SapProfile;

    if-nez v2, :cond_9

    instance-of v2, v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-nez v2, :cond_9

    instance-of v2, v1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v2, :cond_a

    goto :goto_1

    .line 754
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 756
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from profile list"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 760
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->showOrHideProfileGroup()V

    return-void
.end method

.method private setupDeviceHeader()V
    .locals 5

    .line 604
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_android_auto_device_profile_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 606
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$id;->collapsing_app_bar:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 607
    new-instance v2, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;-><init>(II)V

    .line 610
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->seslSetIsTitleCustom(Ljava/lang/Boolean;)V

    if-eqz v1, :cond_0

    .line 612
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->seslSetCustomTitleView(Landroid/view/View;Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;)V

    .line 614
    :cond_0
    sget v1, Lcom/android/settings/R$id;->aa_content_header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mContentHeader:Landroid/widget/LinearLayout;

    .line 616
    sget v1, Lcom/android/settings/R$id;->aa_header_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 617
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 618
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 620
    sget v1, Lcom/android/settings/R$id;->aa_header_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mHeaderTitleText:Landroid/widget/TextView;

    .line 621
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 625
    invoke-direct {p0, v0, v0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->changeMargin(II)V

    .line 631
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 632
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mHeaderTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 633
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mHeaderTitleText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 637
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    .line 639
    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_2
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 505
    iget-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileGroupIsRemoved:Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 510
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileGroupIsRemoved:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private unpairDevice()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onNavigationItemSelected() : Device Connected"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 658
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 660
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    .line 661
    invoke-direct {p0, p1, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->changeMargin(II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/16 p1, 0x8

    const/16 v0, 0xa

    .line 663
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->changeMargin(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 120
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "device"

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    const-string v3, "remote_device_rename_edited"

    .line 126
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mNameEditedButtonEnabled:Z

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 132
    :goto_0
    sget v2, Lcom/android/settings/R$xml;->sec_car_details_prefs:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v2, "profile_container"

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 146
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 147
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 151
    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez p1, :cond_3

    const-string p1, "Device not found, cannot connect to it"

    .line 156
    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-boolean v3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->isFinished:Z

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 163
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->addPreferencesForProfiles()V

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->setupDeviceHeader()V

    .line 166
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 167
    instance-of v0, p1, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_4

    .line 168
    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string p1, "Activity started without a remote bluetooth device or bluetooth is not ready"

    .line 138
    invoke-static {v0, p1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-boolean v3, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->isFinished:Z

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 174
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 176
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->initBottomButtonBar()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mNameEditedButtonEnabled:Z

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    :cond_0
    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mIsCalledDestory:Z

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 4

    .line 669
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDeviceAttributesChanged() bond state is BOND_NONE"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 675
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceAttributesChanged() catch IllegalStateException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->refresh()V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    .line 798
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDeviceDeleted()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSyncedDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 800
    sget-boolean p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->DBG:Z

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 203
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mReceiverRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    iput-boolean v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mReceiverRegistered:Z

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_2

    .line 213
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_2
    const-string v0, "input_method"

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    .line 220
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    if-eqz p0, :cond_3

    .line 221
    invoke-virtual {p0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 358
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange() : key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    instance-of p2, p1, Landroidx/preference/SwitchPreferenceCompat;

    if-eqz p2, :cond_1

    .line 360
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->getProfileOf(Landroidx/preference/Preference;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 362
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 363
    move-object v0, p1

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->detail_switch_off:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->detail_switch_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 366
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->onProfileClicked(Landroidx/preference/Preference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 343
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unpair"

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 346
    sget-object p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v0, "onPreferenceTreeClick() : Device Connected"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceTreeClick :: Unpair to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isConneceted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->unpairDevice()V

    .line 350
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 353
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 1

    .line 765
    sget-object p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProfileStateChanged(), profile - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", newState - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", oldState - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 239
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 241
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->isFinished:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 247
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    sget-object v0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume() bond state is BOND_NONE"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 254
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() catch IllegalStateException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->refresh()V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mDeviceNameEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 269
    new-instance v1, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 279
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e

    if-le v1, v2, :cond_5

    const/4 v1, 0x0

    .line 282
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 285
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mReceiverRegistered:Z

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 296
    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mProfileGroupIsRemoved:Z

    if-eqz v0, :cond_6

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->addEmptyView()V

    :cond_6
    return-void

    .line 243
    :cond_7
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 227
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 233
    iget-boolean p0, p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->mNameEditedButtonEnabled:Z

    const-string v0, "remote_device_rename_edited"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 229
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/usefulfeature/androidauto/AndroidAutoCarDetailsFragment;->TAG:Ljava/lang/String;

    const-string p1, "mCachedDevice is null during saving"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSyncDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.class public Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "SecBluetoothDetailsProfilesController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private mAllOfCachedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mMCFFeature:I

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mProfileContainer:Landroidx/preference/PreferenceGroup;

.field private mProfileDeviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfileGroupIsRemoved:Z

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$DpYeOZEF1lZulyVxSKxHF_46rLA(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->lambda$refreshProfileSwitchPreference$0(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$T1Z7VW8EKCMsFWo-Do3fzr0Z7j8(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->lambda$isLeAudioEnabled$1(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 84
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 114
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileDeviceMap:Ljava/util/Map;

    .line 120
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 121
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 122
    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->getAllOfCachedBluetoothDevices()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mAllOfCachedDevices:Ljava/util/List;

    .line 125
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private addAutoSwitchPreference()V
    .locals 2

    .line 285
    iget v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mMCFFeature:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    const-string v1, "AUTOSWITCH"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v0, :cond_1

    .line 291
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->createAutoSwitchPreference(Ljava/lang/String;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    .line 292
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 294
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->refreshAutoSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private createAutoSwitchPreference(Ljava/lang/String;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 3

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createGeneralSwitchPreference :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothDetailsProfilesController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->PreferenceThemeOverlay:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 260
    new-instance v1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {v1, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 261
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 262
    sget p1, Lcom/android/settings/R$string;->sec_bluetooth_detail_auto_switching:I

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 p1, 0x0

    .line 263
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    const/16 p1, 0x3e7

    .line 264
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 265
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 267
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 269
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$drawable;->sec_bluetooth_autoswitch:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    sget v2, Lcom/android/settings/R$color;->bt_device_icon_tint_color:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 272
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 275
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->refreshAutoSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;)V

    return-object v1
.end method

.method private createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreferenceCompat;
    .locals 4

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createProfileSwitchPreference :: profile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothDetailsProfilesController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->PreferenceThemeOverlay:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 228
    new-instance v1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {v1, v0}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x0

    .line 231
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 232
    invoke-interface {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getOrdinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->getProfilePreferenceIndex(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 233
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 235
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v0, :cond_0

    .line 236
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_details_summary_leaudio:I

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 241
    instance-of v2, p1, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v2, :cond_1

    .line 242
    sget v2, Lcom/android/settings/R$drawable;->list_ic_call_audio:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 244
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 247
    sget v3, Lcom/android/settings/R$color;->bt_device_icon_tint_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 248
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->refreshProfileSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-object v1
.end method

.method private getAllOfCachedBluetoothDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v1, :cond_0

    return-object v0

    .line 582
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 584
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 585
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getProfileOf(Landroidx/preference/Preference;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .locals 3

    .line 488
    instance-of v0, p1, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PAN"

    if-eq v0, v2, :cond_0

    return-object v1

    .line 491
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 495
    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

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

    .line 281
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOrder()I

    move-result p0

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p0, p1

    return p0
.end method

.method private getProfiles()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 596
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileDeviceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 597
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mAllOfCachedDevices:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "SecBluetoothDetailsProfilesController"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 601
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v4

    .line 602
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 603
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileDeviceMap:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 604
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileDeviceMap:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getProfiles: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " add device "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 605
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 608
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 610
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileDeviceMap:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 616
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProfiles:result:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-object v0
.end method

.method private isBluetoothProfileAllowedByMDM(I)Z
    .locals 0

    .line 568
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;

    move-result-object p0

    .line 569
    invoke-virtual {p0, p1}, Landroid/sec/enterprise/BluetoothPolicy;->isProfileEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "SecBluetoothDetailsProfilesController"

    const-string p1, "isBluetoothProfileAllowedByMDM false"

    .line 572
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private isLeAudioEnabled()Z
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileDeviceMap:Ljava/util/Map;

    .line 438
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    .line 440
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 441
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$isLeAudioEnabled$1(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    .line 441
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$refreshProfileSwitchPreference$0(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3

    .line 425
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 426
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private onProfileClicked(Landroidx/preference/Preference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 8

    const-string v0, "SecBluetoothDetailsProfilesController"

    const-string v1, "onProfileClicked :: "

    .line 502
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 505
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PBAP Server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    .line 506
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v2

    if-ne v2, v5, :cond_0

    move v5, v4

    .line 508
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProfileClicked :: [KEY_PBAP_SERVER] newPermission = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 510
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->isBluetoothProfileAllowedByMDM(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 512
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    invoke-interface {p2, v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_0

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    if-ne v5, v4, :cond_2

    .line 519
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    invoke-interface {p2, v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 523
    :cond_2
    :goto_0
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->refreshProfileSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void

    .line 525
    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v6, "MAP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 526
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v2

    if-ne v2, v5, :cond_4

    move v5, v4

    .line 528
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProfileClicked :: [KEY_PROFILE_MAP] newPermission = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, v4, :cond_5

    .line 530
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 531
    invoke-interface {p2, v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 533
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 534
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->refreshProfileSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void

    .line 536
    :cond_6
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v6, "SAP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 537
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v2

    if-ne v2, v5, :cond_7

    move v5, v4

    .line 539
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProfileClicked :: [KEY_PROFILE_SAP] newPermission = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, v4, :cond_8

    .line 541
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_8

    .line 542
    invoke-interface {p2, v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 544
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSimPermissionChoice(I)V

    .line 545
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->refreshProfileSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void

    .line 549
    :cond_9
    invoke-interface {p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 550
    sget-boolean v6, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->DBG:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onProfileClicked :: device : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", profile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", getstate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isChecked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p1

    check-cast v7, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v7}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-ne v2, v4, :cond_b

    move v3, v5

    .line 553
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileDeviceMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    xor-int/lit8 p1, v3, 0x1

    .line 554
    invoke-interface {p2, v1, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_2

    .line 556
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileDeviceMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 557
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-interface {p2, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setEnabled(Landroid/bluetooth/BluetoothDevice;Z)Z

    goto :goto_1

    :cond_d
    :goto_2
    const-string p1, "service.bt.security.policy.mode"

    .line 561
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 562
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    :cond_e
    return-void
.end method

.method private refreshAutoSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;)V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/bluetooth/Utils;->isSamsungAccountLogged(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 457
    :goto_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->isSamsungAccountLogged(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 458
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 459
    sget p0, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sign_in_galaxy_acount:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 461
    :cond_2
    sget p0, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sign_in_sacount:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 464
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 465
    sget p0, Lcom/android/settings/R$string;->sec_bluetooth_detail_auto_switching_descript_japan:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 467
    :cond_4
    sget p0, Lcom/android/settings/R$string;->sec_bluetooth_detail_auto_switching_descript:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 470
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "refreshAutoSwitchPreference:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecBluetoothDetailsProfilesController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refreshProfileSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 7

    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshProfileSwitchPreference : device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", profile = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecBluetoothDetailsProfilesController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v5

    .line 376
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->isLeAudioEnabled()Z

    .line 378
    instance-of v6, p2, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-eqz v6, :cond_3

    .line 379
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->isLeAudioDualMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 380
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 381
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 383
    :cond_2
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 384
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 387
    :cond_3
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 390
    :goto_2
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v1, :cond_5

    .line 391
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result p2

    if-ne p2, v5, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "refreshProfileSwitchPreference : MapProfile, setchecked = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 395
    :cond_5
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_8

    .line 398
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {p2}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object p2

    .line 399
    invoke-static {p2}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object p2

    invoke-static {p2}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "PBAP service blocked by MDM policy"

    .line 400
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 407
    :cond_6
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result p2

    if-ne p2, v5, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "refreshProfileSwitchPreference : PbapServerProfile, setchecked = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 410
    :cond_8
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/SapProfile;

    if-eqz v1, :cond_a

    .line 411
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result p2

    if-ne p2, v5, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "refreshProfileSwitchPreference : SapProfile, setchecked = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 415
    :cond_a
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_b

    .line 416
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 417
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 420
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileDeviceMap:Ljava/util/Map;

    .line 421
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_c

    .line 424
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 425
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 427
    invoke-virtual {p1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 429
    :cond_c
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    return-void
.end method

.method private refreshProfiles()V
    .locals 6

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    const-string v1, "SecBluetoothDetailsProfilesController"

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->addAutoSwitchPreference()V

    .line 302
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->showOrHideProfileGroup()V

    const-string p0, "refreshProfiles :: Device is restored. It is not support container"

    .line 303
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 307
    instance-of v3, v2, Lcom/samsung/android/settingslib/bluetooth/SppProfile;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 309
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/SwitchPreferenceCompat;

    if-nez v3, :cond_4

    .line 311
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v3

    .line 312
    instance-of v4, v2, Lcom/android/settingslib/bluetooth/SapProfile;

    if-nez v4, :cond_1

    instance-of v4, v2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-nez v4, :cond_1

    instance-of v2, v2, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 319
    :cond_4
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->refreshProfileSwitchPreference(Landroidx/preference/SwitchPreferenceCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v0

    .line 324
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v2

    const-string v3, "Refresh profile preference : "

    if-eqz v2, :cond_6

    .line 325
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-nez v4, :cond_6

    if-eqz v0, :cond_6

    .line 327
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    .line 328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 332
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v0

    .line 333
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 334
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/MapProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-nez v4, :cond_7

    if-eqz v0, :cond_7

    .line 336
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/MapProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 341
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSimPermissionChoice()I

    move-result v0

    .line 342
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getSapProfile()Lcom/android/settingslib/bluetooth/SapProfile;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 343
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/SapProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    if-nez v4, :cond_8

    if-eqz v0, :cond_8

    .line 345
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->createProfileSwitchPreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroidx/preference/SwitchPreferenceCompat;

    move-result-object v0

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/SapProfile;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 350
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 351
    instance-of v3, v2, Lcom/android/settingslib/bluetooth/SapProfile;

    if-nez v3, :cond_9

    instance-of v3, v2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-nez v3, :cond_9

    instance-of v3, v2, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v3, :cond_a

    goto :goto_1

    .line 356
    :cond_a
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from profile list"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 363
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->addAutoSwitchPreference()V

    .line 365
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->showOrHideProfileGroup()V

    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 475
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 476
    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x1

    .line 478
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileGroupIsRemoved:Z

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    .line 481
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileGroupIsRemoved:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_profiles"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_device_profiles_setting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mScreenId:Ljava/lang/String;

    const-string v0, "bluetooth_profiles"

    .line 135
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    .line 136
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p1

    const-string v0, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mMCFFeature:I

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 641
    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_0

    .line 643
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->getAllOfCachedBluetoothDevices()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mAllOfCachedDevices:Ljava/util/List;

    .line 644
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 645
    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_1

    .line 648
    :cond_1
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->onDeviceAttributesChanged()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 622
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->onPause()V

    .line 623
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 624
    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 165
    instance-of p2, p1, Landroidx/preference/SwitchPreferenceCompat;

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 166
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AUTOSWITCH"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 167
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-static {p2, v1}, Lcom/samsung/android/settings/account/AccountUtils;->addSamsungAccount(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    .line 168
    check-cast p1, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Change Autoswitch :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecBluetoothDetailsProfilesController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mScreenId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 172
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->event_device_profiles_setting_auto_switch:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {p2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->semSetAutoSwitchMode(I)Z

    move-result p0

    return p0

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->getProfileOf(Landroidx/preference/Preference;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 178
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    move-object v2, p1

    check-cast v2, Landroidx/preference/SwitchPreferenceCompat;

    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->detail_switch_off:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->detail_switch_on:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mScreenId:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 186
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->event_device_profiles_setting_on_off_profile_switch:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 185
    invoke-static {v4, v5, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Off"

    goto :goto_1

    :cond_2
    const-string v3, "On"

    .line 190
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DetailProfiles -- profileId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PAN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 196
    move-object v1, p2

    check-cast v1, Lcom/android/settingslib/bluetooth/PanProfile;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 197
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 198
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 199
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->sec_bluetooth_tethering_cannot_connect_while_connected_to_wifi:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 201
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 204
    invoke-virtual {v2, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return p2

    .line 210
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->onProfileClicked(Landroidx/preference/Preference;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    :cond_4
    return v0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 631
    invoke-super {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->onResume()V

    .line 632
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 633
    invoke-virtual {v1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method protected refresh()V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->getProfiles()Ljava/util/List;

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->refreshProfiles()V

    return-void
.end method

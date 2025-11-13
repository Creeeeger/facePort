.class public Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BluetoothCastSettings.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final LOG_DEBUG:Z

.field private static final TIMEOUT_ARRAY:[Ljava/lang/Integer;


# instance fields
.field private emptyCategory1:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private handler:Landroid/os/Handler;

.field private isBindingTileRequested:Z

.field private isTablet:Z

.field private mAnimPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mAvailableDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

.field private mDisallowedDevices:Lorg/json/JSONObject;

.field private final mHandler:Landroid/os/Handler;

.field private mInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field private mIsEnabled:Z

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mModePreference:Landroidx/preference/SecDropDownPreference;

.field private mPermPreference:Landroidx/preference/SecDropDownPreference;

.field private mSAScreenId:Ljava/lang/String;

.field private final mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private mTimeoutPreference:Landroidx/preference/SecDropDownPreference;

.field private pref:Landroid/content/SharedPreferences;


# direct methods
.method public static synthetic $r8$lambda$GnEOAqV0Bl2gUxbjupFt2iGBxXE(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->lambda$buildAvailableDeviceList$2(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YD7f7yyrcd2Dy5WId7Ub7_GAOsQ(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->lambda$buildAvailableDeviceList$1(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_Juxv4mO98tGljVmun__o5uo7fU(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->lambda$buildAvailableDeviceList$0(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisallowedDevices(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModePreference(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Landroidx/preference/SecDropDownPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mModePreference:Landroidx/preference/SecDropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPermPreference(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Landroidx/preference/SecDropDownPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mPermPreference:Landroidx/preference/SecDropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwitchBar(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeoutPreference(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Landroidx/preference/SecDropDownPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mTimeoutPreference:Landroidx/preference/SecDropDownPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 67
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->LOG_DEBUG:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x493e0

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x927c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x1b7740

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->TIMEOUT_ARRAY:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 107
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory1:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 108
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    .line 120
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->isTablet:Z

    .line 121
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->isBindingTileRequested:Z

    .line 125
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->handler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$buildAvailableDeviceList$0(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    .line 373
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$buildAvailableDeviceList$1(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    .line 386
    invoke-virtual {p0}, Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$buildAvailableDeviceList$2(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)Z
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getLocalBluetoothCastProfileManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->getAudioCastProfile()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectionState(Lcom/samsung/android/bluetooth/SemBluetoothCastDevice;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public buildAvailableDeviceList(Z)V
    .locals 10

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAvailableDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 364
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 365
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 367
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)V

    .line 373
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda2;-><init>()V

    .line 374
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 375
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 378
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 379
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    .line 378
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getA2dpBondDevices(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Ljava/util/List;

    move-result-object v0

    .line 382
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz p1, :cond_3

    .line 384
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getLocalBluetoothCastProfileManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->getAudioCastProfile()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 385
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getLocalBluetoothCastProfileManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfileManager;->getAudioCastProfile()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/AudioCastProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda3;-><init>()V

    .line 386
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;)V

    .line 387
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticLambda3;-><init>()V

    .line 388
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 389
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_2

    .line 391
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 395
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePreferences - Available : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BluetoothCastSettings"

    invoke-static {v6, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v5, Landroidx/preference/SecSwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroidx/preference/SecSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 397
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 399
    invoke-virtual {v5, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v7, v3, 0x1

    add-int/lit16 v3, v3, 0x3e8

    .line 400
    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setOrder(I)V

    if-eqz p1, :cond_5

    const/4 v3, 0x2

    .line 402
    iget-object v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 403
    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    if-ne v3, v8, :cond_5

    .line 405
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is connected for Music Share"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 409
    :cond_4
    sget v3, Lcom/android/settings/R$string;->bluetooth_a2dp_profile_summary_connected:I

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 414
    :cond_5
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/settings/bluetooth/Utils;->getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 415
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;

    if-eqz v3, :cond_6

    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    invoke-virtual {v5, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 416
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-nez v3, :cond_7

    .line 417
    new-instance v3, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const/16 v4, 0x2bc

    .line 418
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 419
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 422
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAvailableDevices:Ljava/util/List;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 423
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAvailableDevices:Ljava/util/List;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_8
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v3, v7

    goto/16 :goto_3

    .line 429
    :cond_9
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 430
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAvailableDevices:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 431
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->pref:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "bluetooth_cast_available_devices"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 178
    sget p0, Lcom/android/settings/R$string;->sec_bluetooth_cast_title:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 173
    const-class p0, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_connections"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 206
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "BluetoothCastSettings"

    const-string v0, "onActivityCreated"

    .line 207
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mContext:Landroid/content/Context;

    .line 210
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 212
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    const-string v1, "bluetooth_cast_pref"

    .line 213
    invoke-virtual {p1, v1, v0}, Lcom/android/settings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->pref:Landroid/content/SharedPreferences;

    .line 216
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 217
    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 218
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 219
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    const-string p1, "bluetooth_cast_description"

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    .line 223
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 224
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setPositionMode(I)V

    .line 226
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->isTablet:Z

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_cast_description_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_cast_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p1, "mode_sharing_setting"

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mModePreference:Landroidx/preference/SecDropDownPreference;

    .line 235
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "perm_sharing_setting"

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mPermPreference:Landroidx/preference/SecDropDownPreference;

    .line 237
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "timeout_sharing_setting"

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecDropDownPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mTimeoutPreference:Landroidx/preference/SecDropDownPreference;

    .line 239
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_cast_disallowed_devices"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 244
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;

    goto :goto_1

    .line 246
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 249
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 252
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAvailableDevices:Ljava/util/List;

    .line 253
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->pref:Landroid/content/SharedPreferences;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const-string v1, "bluetooth_cast_available_devices"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 443
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "BluetoothCastSettings"

    const-string v0, "onConfigurationChanged"

    .line 444
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->updateHelpPreferences(Z)V

    .line 446
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->updatePreferences(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 183
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "BluetoothCastSettings"

    const-string v0, "onCreate"

    .line 184
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 185
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_bluetooth_music_share_setting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSAScreenId:Ljava/lang/String;

    .line 191
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    sget v0, Lcom/android/settings/R$xml;->sec_bluetooth_cast_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_cast_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move p1, v2

    .line 198
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    const-string p1, "bluetooth_cast_help_image"

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAnimPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 201
    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    xor-int/2addr p0, v2

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "BluetoothCastSettings"

    const-string v1, "onDestroyView"

    .line 598
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 601
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->hide()V

    .line 603
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 604
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->setListening(Z)V

    .line 606
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 525
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSAScreenId:Ljava/lang/String;

    .line 528
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_bluetooth_music_share_setting_navigate_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 5

    const-string v0, "BluetoothCastSettings"

    const-string v1, "onPause"

    .line 567
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 569
    sget-boolean v1, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->LOG_DEBUG:Z

    if-eqz v1, :cond_2

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLUETOOTH_CAST_MODE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "bluetooth_cast_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLUETOOTH_CAST_RANGE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_cast_range"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLUETOOTH_CAST_PERMISSION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_cast_permission"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLUETOOTH_CAST_TIMEOUT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const v3, 0x927c0

    const-string v4, "bluetooth_cast_timeout"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "bluetooth_cast_disallowed_devices"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 578
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 580
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object p0, v1

    .line 582
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 584
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 586
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BLUETOOTH_CAST_DISALLOWED : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 589
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLUETOOTH_CAST_DISALLOWED size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 591
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , checked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCastSettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    instance-of v0, p1, Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 453
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 454
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 455
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_0

    .line 459
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 461
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 468
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSAScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->event_bluetooth_music_share_setting_device:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "bluetooth_cast_disallowed_devices"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 470
    move-object v1, p1

    check-cast v1, Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 471
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->requestTileBinding()V

    if-nez v0, :cond_4

    .line 474
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 475
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    .line 474
    invoke-static {p2, v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getA2dpBondDevices(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Ljava/util/List;

    move-result-object p2

    .line 476
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 477
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 478
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/Utils;->getHostOverlayIconDrawable(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 483
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/settings/bluetooth/Utils;->getHostOverlayIconDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 485
    :cond_5
    instance-of v0, p1, Landroidx/preference/SecDropDownPreference;

    if-eqz v0, :cond_a

    .line 486
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 489
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mode_sharing_setting"

    .line 490
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 491
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bluetooth_cast_range"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 492
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$array;->bluetooth_cast_mode_entry_values:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 494
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSAScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->event_bluetooth_music_share_setting_share_with:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_6
    const-string v2, "perm_sharing_setting"

    .line 497
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 498
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bluetooth_cast_permission"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 499
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$array;->bluetooth_cast_perm_entry_values:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 501
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSAScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->event_bluetooth_music_share_setting_ask_permission:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    const-string v2, "timeout_sharing_setting"

    .line 504
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x927c0

    const-string v2, "bluetooth_cast_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 506
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_8

    .line 508
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSAScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->event_bluetooth_music_share_setting_disconnect_timeout:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->TIMEOUT_ARRAY:[Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    :cond_8
    :goto_2
    move-object p0, p1

    check-cast p0, Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    const/4 p0, 0x1

    return p0

    :cond_a
    return v1
.end method

.method public onResume()V
    .locals 7

    const-string v0, "BluetoothCastSettings"

    const-string v1, "onResume"

    .line 536
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 540
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 542
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$$ExternalSyntheticLambda0;-><init>()V

    .line 543
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 544
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 545
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 547
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 548
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 549
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    const-string v1, "a disallowed device is removed in bonded list"

    .line 550
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v1, v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 557
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDisallowedDevices:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "bluetooth_cast_disallowed_devices"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 559
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings$SettingsObserver;->setListening(Z)V

    .line 561
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->updateHelpPreferences(Z)V

    .line 562
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->updatePreferences(Z)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSwitchChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothCastSettings"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iput-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mIsEnabled:Z

    .line 613
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_cast_mode"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 614
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mSAScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->event_bluetooth_music_share_setting_on_off_switch:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->updateHelpPreferences(Z)V

    .line 616
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->updatePreferences(Z)V

    .line 617
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->requestTileBinding()V

    return-void
.end method

.method public requestTileBinding()V
    .locals 4

    .line 435
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->isBindingTileRequested:Z

    if-nez v0, :cond_0

    .line 436
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/samsung/android/settings/bluetooth/BluetoothCastTile;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Landroid/service/quicksettings/TileService;->requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V

    const/4 v0, 0x1

    .line 437
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->isBindingTileRequested:Z

    :cond_0
    return-void
.end method

.method public updateHelpPreferences(Z)V
    .locals 5

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHelpPreferences : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCastSettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAnimPreference:Lcom/android/settingslib/widget/LayoutPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecUnclickablePreference;->setPositionMode(I)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory1:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory1:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 264
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory1:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 268
    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-nez p1, :cond_4

    .line 274
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAnimPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->bluetooth_cast_help_case_off_landscape:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAnimPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->bluetooth_cast_help_case_on_view:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 277
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 278
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAnimPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->bluetooth_cast_help_text_landscape:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 281
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->isTablet:Z

    if-eqz v0, :cond_2

    .line 282
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_cast_description_tablet:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 284
    :cond_2
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_cast_description:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 287
    :goto_0
    new-instance p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory1:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 288
    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 289
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory1:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 290
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory1:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAnimPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 291
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory1:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 293
    new-instance p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 294
    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 295
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 296
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAnimPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 297
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->emptyCategory2:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 299
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAnimPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->bluetooth_cast_help_case_off_landscape_layout:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    const/16 v0, 0xf

    .line 301
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 302
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 302
    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    goto :goto_1

    .line 307
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAnimPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->bluetooth_cast_help_case_off_landscape:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAnimPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->bluetooth_cast_help_case_on_view:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 310
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 311
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result p1

    if-nez p1, :cond_4

    .line 314
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mDescPreference:Lcom/samsung/android/settings/widget/SecUnclickablePreference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public updatePreferences(Z)V
    .locals 5

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreferences : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothCastSettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAvailableDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mAvailableDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mModePreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mPermPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mTimeoutPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz p1, :cond_2

    .line 334
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mModePreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->bluetooth_cast_mode_entry_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_cast_range"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    .line 334
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 336
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mModePreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mModePreference:Landroidx/preference/SecDropDownPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 339
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mPermPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$array;->bluetooth_cast_perm_entry_values:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "bluetooth_cast_permission"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    .line 339
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 341
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mPermPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mPermPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 344
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mTimeoutPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const v2, 0x927c0

    const-string v3, "bluetooth_cast_timeout"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 345
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mTimeoutPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 346
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mTimeoutPreference:Landroidx/preference/SecDropDownPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/SecDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 348
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->buildAvailableDeviceList(Z)V

    goto :goto_1

    .line 350
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz p1, :cond_3

    .line 351
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 352
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothCastSettings;->mInset:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    :cond_3
    :goto_1
    return-void
.end method

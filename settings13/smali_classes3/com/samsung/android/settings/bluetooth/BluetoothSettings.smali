.class public final Lcom/samsung/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

.field private static final mAdvancedDeltaTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInteractiveHelp:Z = false

.field private static mIsDeviceProfileShown:Z = false

.field public static mIsForegroundBtSettings:Z = false

.field private static mLocalAdapterName:Ljava/lang/String;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAppBarView:Landroid/view/View;

.field private mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field mBluetoothCastAdapterCallback:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$BluetoothCastAdapterStateCallback;

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mCastDevicesCategory:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

.field private mContactUsView:Landroid/widget/TextView;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field mHandler:Landroid/os/Handler;

.field private mInitiateDiscoverable:Z

.field private mInitiateScan:Z

.field private mIsBtScanDialog:Z

.field private mIsEmergencyMode:Z

.field private mIsRegistered:Z

.field private mIsSupportTips:Z

.field private mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mPolicyEnabled:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRelLayout:Landroid/widget/RelativeLayout;

.field private mResumeTime:J

.field private mScan:Landroid/view/MenuItem;

.field private mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

.field private mScanTipsMark:Landroid/view/MenuItem;

.field private mScreenId:Ljava/lang/String;

.field private final mSettingsHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field mTipHandler:Landroid/os/Handler;

.field private mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

.field tipTimerRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$66UGiJT8ILjaOwbVPXNYk70PK5E(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->lambda$showSemTipPopup$1(ZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$8e-B6fac-75MBY8gUgIUvEhMivY(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->lambda$showSemTipPopup$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAvailableDevicesCategory(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPolicyEnabled(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTipsDescriptionPopup(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/widget/SemTipPopup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmInitiateScan(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$monStartProfileSettings(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->onStartProfileSettings(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveCastDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->removeCastDeviceCategory(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateContent(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->updateContent(IZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "SPR"

    const-string v2, "VMU"

    const-string v3, "BST"

    const-string v4, "XAS"

    const-string v5, "VZW"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAdvancedDeltaTargets:Ljava/util/List;

    .line 1500
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 1583
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    .line 1680
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$8;

    invoke-direct {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$8;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "no_config_bluetooth"

    .line 276
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 174
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 175
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsRegistered:Z

    .line 182
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    .line 186
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    .line 190
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    .line 218
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 255
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothCastAdapterCallback:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$BluetoothCastAdapterStateCallback;

    .line 1055
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    .line 1322
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 1549
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSettingsHandler:Landroid/os/Handler;

    .line 1550
    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;

    .line 1611
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$7;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->tipTimerRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mIsPickerDialog:Z

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method private addCastDeviceCategory(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;IZ)V
    .locals 1

    .line 1094
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1095
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->containsGroup(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1097
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->containsGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroupPosition(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result p2

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addCastPreferenceGroup(ILcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)Z

    goto :goto_0

    .line 1102
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addCastPreferenceGroup(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)Z

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 1106
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedCastDevices()V

    :cond_2
    return-void
.end method

.method private addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 0

    .line 861
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->setTitle(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    .line 863
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 864
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    if-eqz p4, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    :cond_0
    return-void
.end method

.method private static isUseDeltaOptionMenu()Z
    .locals 2

    .line 658
    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    sget-object v1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAdvancedDeltaTargets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$showSemTipPopup$0(Landroid/view/View;)V
    .locals 2

    .line 1657
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->launchMoreTips(Landroid/content/Context;)V

    .line 1658
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "bluetooth_bubble_tips_count"

    const/16 v1, 0xa

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1659
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    .line 1660
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->event_bluetooth_setting_launch_more_tips:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1659
    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showSemTipPopup$1(ZI)V
    .locals 6

    .line 1630
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "BluetoothSettings"

    const-string p1, "activity not created, can\'t create popup"

    .line 1631
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1635
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    add-int/2addr p2, v0

    const-string v1, "bluetooth_bubble_tips_count"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1637
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->app_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    .line 1638
    new-instance p1, Lcom/samsung/android/widget/SemTipPopup;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    invoke-direct {p1, p2}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 1639
    invoke-virtual {p1, v0}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    const/4 p1, 0x2

    new-array p2, p1, [I

    const/high16 v1, 0x420c0000    # 35.0f

    .line 1641
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, 0x41900000    # 18.0f

    .line 1643
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    mul-float/2addr v4, v2

    float-to-int v2, v4

    .line 1646
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->sec_bluetooth_tips_bubble_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 1647
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v3, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1650
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    aget v3, p2, v4

    .line 1651
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    goto :goto_0

    :cond_2
    aget v3, p2, v4

    add-int/2addr v3, v1

    .line 1655
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    aget p2, p2, v0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    sub-int/2addr p2, v2

    invoke-virtual {v1, v3, p2}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 1656
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_tips_bubble_link:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;)V

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1662
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 1663
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAppBarView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x3

    .line 1662
    :goto_1
    invoke-virtual {p2, p1}, Lcom/samsung/android/widget/SemTipPopup;->show(I)V

    return-void
.end method

.method private onStartProfileSettings(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1474
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 1475
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_address"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device"

    .line 1476
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "isCalledFromSetting"

    const/4 v2, 0x1

    .line 1477
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1479
    sput-boolean v2, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    .line 1482
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/SettingsActivity;

    if-eqz p1, :cond_0

    .line 1483
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1484
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;

    .line 1485
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1486
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1487
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    .line 1489
    :cond_0
    sget-boolean p1, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "BluetoothSettings"

    const-string v2, "moveToBtOptionMenu() :: Launching with intent"

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.settings.DEVICE_PROFILES_SETTINGS"

    .line 1491
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1494
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/Utils;->launchActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private removeCastDeviceCategory(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)V
    .locals 1

    .line 1112
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->containsGroup(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removeCastPreferenceGroup(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)V

    .line 1115
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->updateContent(IZZ)V

    :cond_0
    return-void
.end method

.method private setEmptyView(I)V
    .locals 2

    .line 1462
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListViewVisible(I)V

    .line 1464
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mRelLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->removeAll()V

    .line 1468
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1470
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private setGuideMessage()Ljava/lang/String;
    .locals 5

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;

    if-eqz v1, :cond_0

    .line 833
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->bluetooth_check_visibility_help_text:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 835
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->bluetooth_settings_guide_pairing_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 836
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 839
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 840
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->bluetooth_is_visible_message_mdm_policy_enable_tablet:I

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 842
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->bluetooth_is_visible_message_mdm_policy_enable:I

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 845
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 846
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->bluetooth_is_visible_message_tablet:I

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 848
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->bluetooth_is_visible_message:I

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGuideMessage :: my device name set to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BluetoothSettings"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setOffMessage()V
    .locals 5

    .line 1074
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 1077
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    sget v1, Lcom/android/settings/R$string;->bluetooth_empty_list_bluetooth_off:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1081
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->semSetRoundedCorners(I)V

    .line 1082
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    .line 1083
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 1082
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->semSetRoundedCornerColor(II)V

    .line 1084
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1085
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1086
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removeAll()V

    return-void
.end method

.method private updateContent(IZZ)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v3

    .line 873
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateContent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", startScan = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BluetoothSettings"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    move v1, v7

    goto/16 :goto_8

    .line 1013
    :pswitch_0
    sget v1, Lcom/android/settings/R$string;->bluetooth_turning_off:I

    goto/16 :goto_8

    .line 877
    :pswitch_1
    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->removeAll()V

    .line 878
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 879
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 881
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListViewVisible(I)V

    .line 883
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mRelLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 885
    :cond_1
    iget-object v1, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 887
    iget-object v1, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mCastDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 890
    sget v1, Lcom/android/settings/R$string;->bluetooth_empty_list_user_restricted:I

    goto/16 :goto_8

    .line 895
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->updateDeviceName()V

    .line 896
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->updateLocalAdapterName()V

    if-eqz p3, :cond_3

    .line 901
    iget-object v1, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readRestoredDevices()V

    .line 906
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->setGuideMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setGuideGroupMessage(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGuidePreferenceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    .line 911
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mCastDevicesCategory:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    if-nez v1, :cond_4

    .line 912
    new-instance v1, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    invoke-direct {v1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mCastDevicesCategory:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    goto :goto_0

    .line 914
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->removeAll()V

    .line 919
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v1, :cond_5

    .line 920
    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-direct {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    goto :goto_1

    .line 922
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->removeAll()V

    .line 926
    :goto_1
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v1, :cond_6

    .line 927
    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-direct {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    goto :goto_2

    .line 929
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->removeAll()V

    .line 933
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 934
    iget-object v1, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 935
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedCastDeviceManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->getCachedCastDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 936
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 937
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mCastDevicesCategory:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    sget v3, Lcom/android/settings/R$string;->sec_bluetooth_cast_title:I

    invoke-direct {v0, v1, v3, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->addCastDeviceCategory(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;IZ)V

    .line 943
    :cond_7
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    sget v3, Lcom/android/settings/R$string;->sec_bluetooth_preference_paired_devices:I

    sget-object v4, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {v0, v1, v3, v4, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 947
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    sget-object v4, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->RESTORED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {v0, v1, v3, v4, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 951
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    sget v3, Lcom/android/settings/R$string;->bluetooth_preference_found_devices:I

    sget-object v4, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    xor-int/lit8 v8, v2, 0x1

    invoke-direct {v0, v1, v3, v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V

    .line 955
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_8

    if-nez v2, :cond_8

    .line 957
    iget-object v1, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v6

    goto :goto_3

    :cond_8
    move v1, v7

    .line 958
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    if-eqz v2, :cond_c

    const-string v1, "updateContent :: startScanning()"

    .line 961
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 963
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeSelectedGroupDevices()V

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    .line 966
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 967
    iput v7, v1, Landroid/os/Message;->what:I

    .line 968
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 970
    :cond_9
    iget-object v1, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->startScanning()Z

    move-result v1

    if-nez v1, :cond_b

    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    .line 972
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    move v6, v7

    .line 974
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    .line 976
    :cond_b
    iput-boolean v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 981
    :cond_c
    :goto_5
    iget-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    const/16 v2, 0x17

    if-nez v1, :cond_d

    iget-boolean v1, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mIsPickerDialog:Z

    if-nez v1, :cond_d

    .line 982
    iget-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-eqz v1, :cond_e

    const-string v1, "updateContent :: set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    .line 983
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v1, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 986
    iput-boolean v7, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 992
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const/4 v9, 0x5

    const/4 v10, 0x5

    const/4 v11, 0x0

    .line 993
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v15

    const-string v14, " User Interaction: User actionDiscoverable mode status has changed to discoverable succeeded"

    .line 992
    invoke-static/range {v8 .. v15}, Lcom/android/settings/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    .line 1001
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v16

    const/16 v17, 0x5

    const/16 v18, 0x5

    const/16 v19, 0x0

    .line 1002
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v20

    const-class v1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v21

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v23

    const-string v22, " User Interaction: User actionDiscoverable mode status has changed to discoverable failed Reason: MDM policy"

    .line 1001
    invoke-static/range {v16 .. v23}, Lcom/android/settings/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1003
    iget-object v1, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v1

    if-ne v1, v2, :cond_e

    .line 1004
    iget-object v1, v0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 1009
    :cond_e
    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    .line 1031
    :pswitch_2
    sget v1, Lcom/android/settings/R$string;->bluetooth_turning_on:I

    .line 1032
    iput-boolean v6, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 1033
    iput-boolean v6, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    goto :goto_8

    .line 1017
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListViewVisible(I)V

    .line 1019
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mRelLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1021
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->setOffMessage()V

    .line 1023
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1024
    sget v1, Lcom/android/settings/R$string;->bluetooth_empty_list_user_restricted:I

    goto :goto_7

    :cond_10
    move v1, v7

    .line 1027
    :goto_7
    iget-object v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1037
    :cond_11
    :goto_8
    invoke-virtual {v0, v6}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllGroupDevices(Z)V

    if-eqz v1, :cond_12

    .line 1039
    invoke-direct {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->setEmptyView(I)V

    .line 1041
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v1

    if-nez v1, :cond_13

    iget-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_13

    .line 1042
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1043
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1047
    :cond_13
    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_14

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_14

    .line 1048
    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setProgressBarVisible(Z)V

    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateDeviceName()V
    .locals 2

    .line 1453
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1454
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1455
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1456
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 1457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDeviceName :: change device name to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateLocalAdapterName()V
    .locals 3

    .line 818
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const-string v1, "\u200e"

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    .line 823
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "device_name"

    invoke-static {p0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mLocalAdapterName:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method protected addPreferencesForActivity()V
    .locals 0

    return-void
.end method

.method public getHelpResource()I
    .locals 0

    .line 1449
    sget p0, Lcom/android/settings/R$string;->help_url_bluetooth:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1178
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1179
    const-class p0, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1181
    :cond_0
    const-class p0, Lcom/samsung/android/settings/connection/ConnectionsSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 1188
    sget p0, Lcom/android/settings/R$xml;->bluetooth_settings:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1169
    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "top_level_bluetooth_upsm"

    return-object p0

    :cond_0
    const-string p0, "top_level_connections"

    return-object p0
.end method

.method protected initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3

    .line 1383
    sget-boolean v0, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init pref:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 1385
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBondingCountExceed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1387
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 2

    .line 1437
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 1438
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    .line 1439
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1440
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method makeTalkback(I)V
    .locals 3

    const/16 v0, 0x4000

    .line 1595
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1596
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1597
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1598
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1599
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    .line 1601
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1603
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalStateException"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method moveToBluetoothOptionMenu(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1535
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/SettingsActivity;

    if-eqz p1, :cond_0

    .line 1536
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1537
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    .line 1538
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_title:I

    .line 1539
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1540
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_0

    .line 1544
    :cond_0
    sget-boolean p1, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "BluetoothSettings"

    const-string p2, "moveToBtOptionMenu() :: Launching with intent"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/Utils;->launchActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 293
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 295
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityCreated :: mInitiateScan : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothSettings"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/android/settings/R$id;->contact_us_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    const/16 v1, 0x30

    .line 299
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 300
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 301
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->description_text:I

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 302
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mContactUsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_description_link_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/android/settings/R$id;->relative_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mRelLayout:Landroid/widget/RelativeLayout;

    .line 307
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez p1, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListDivider(Landroid/graphics/drawable/InsetDrawable;)V

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 311
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 313
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {v2, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SettingsMainSwitchBar;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 314
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setupSwitchBar()V

    .line 315
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->getSwitch()Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->requestFocus()Z

    .line 319
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    goto :goto_1

    .line 321
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->initListViewForDialog()V

    .line 324
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ro.build.scafe.size"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "tall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->bluetooth_preference_height_tablet_tall:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListMinimumHeight(I)V

    .line 328
    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 329
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 332
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    .line 337
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 281
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 282
    instance-of v0, p1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/samsung/android/settings/bluetooth/SecDevicePickerDialog;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAttach, mIsBtScanDialog : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 4

    .line 1193
    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    const/16 v0, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 1196
    iget-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsSupportTips:Z

    if-eqz v3, :cond_1

    .line 1197
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1198
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v3, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 1200
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->showSemTipPopup(Z)V

    .line 1203
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    if-ne p1, v0, :cond_2

    .line 1205
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1207
    :cond_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    .line 1211
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsSupportTips:Z

    if-eqz v0, :cond_5

    .line 1212
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->reset()V

    .line 1213
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getRestoredRetryDetector()Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->reset()V

    .line 1214
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1215
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 1220
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->updateContent(IZZ)V

    return-void
.end method

.method public onCastDeviceAdded(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getCastDevicePreferenceGroup()Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mCastDevicesCategory:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_cast_title:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->addCastDeviceCategory(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "BluetoothSettings"

    const-string v1, "cast device Group -- already added"

    .line 1128
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCastDeviceAdded(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V

    return-void
.end method

.method protected onCastDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    .line 805
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 806
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCastDevicePreferenceClick(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V

    return-void
.end method

.method public onCastDeviceRemoved(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V
    .locals 1

    .line 1136
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCastDeviceRemoved(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;)V

    if-eqz p1, :cond_1

    .line 1138
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getCastDevicePreferenceGroup()Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1139
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1140
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->removeCastDeviceCategory(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)V

    goto :goto_0

    :cond_0
    const-string p0, "BluetoothSettings"

    const-string p1, "cast device Group -- already removed"

    .line 1142
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCastDiscoveryStateChanged(Z)V
    .locals 1

    if-nez p1, :cond_1

    .line 1150
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getCastDevicePreferenceGroup()Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1151
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1152
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->removeCastDeviceCategory(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)V

    goto :goto_0

    :cond_0
    const-string p0, "BluetoothSettings"

    const-string p1, "cast device Group -- already removed"

    .line 1154
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onCastProfileStateChanged(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastProfile;II)V
    .locals 0

    const/4 p0, 0x2

    if-ne p3, p0, :cond_0

    .line 811
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isBusy()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 812
    invoke-virtual {p1, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->setErrorMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 559
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 560
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 561
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipsDescriptionPopup:Lcom/samsung/android/widget/SemTipPopup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/widget/SemTipPopup;->dismiss(Z)V

    .line 562
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->showSemTipPopup(Z)V

    :cond_0
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "com.samsung.helphub"

    const-string v1, "BluetoothSettings"

    const-string v2, "onCreate"

    .line 1393
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 1395
    sput-boolean p1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    const/4 v1, 0x1

    .line 1398
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1399
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1401
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1406
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1407
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 1408
    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1409
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    .line 1410
    sput-boolean p1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInteractiveHelp:Z

    .line 1414
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->screen_bluetooth_scan_dialog:I

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->screen_bluetooth_setting:I

    :goto_2
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    .line 1417
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipHandler:Landroid/os/Handler;

    .line 1418
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/32 v2, 0x7bfa480

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/wifi/WifiTipsUtils;->isSupportWifiTips(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsEmergencyMode:Z

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, p1

    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsSupportTips:Z

    if-eqz v0, :cond_5

    .line 1420
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    sget-object v2, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;->SCANNING_FAILURE:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;-><init>(Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector$FailCase;Z)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    .line 1421
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez p1, :cond_4

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->showSemTipPopup(Z)V

    .line 1423
    :cond_4
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1424
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->resetCachedDevices()V

    :cond_5
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    .line 581
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 586
    :goto_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v2

    .line 588
    iget-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsSupportTips:Z

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 589
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/settings/R$drawable;->sec_bluetooth_qmark_scan:I

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 590
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$color;->bt_tips_icon_tint_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const-string v6, ""

    .line 591
    invoke-interface {p1, v1, v5, v1, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanTipsMark:Landroid/view/MenuItem;

    .line 592
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 593
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanTipsMark:Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->sec_bluetooth_tips_title:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 594
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanTipsMark:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v3, 0x6

    .line 596
    invoke-interface {p1, v1, v3, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    .line 597
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    if-eqz v2, :cond_4

    .line 600
    sget v2, Lcom/android/settings/R$string;->service_stop:I

    goto :goto_1

    :cond_4
    sget v2, Lcom/android/settings/R$string;->bluetooth_scan_for_devices:I

    :goto_1
    invoke-interface {p1, v1, v4, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 601
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    .line 603
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 604
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-eqz v0, :cond_5

    .line 605
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 607
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 612
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_3
    move v0, v5

    goto :goto_4

    .line 616
    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->isUseDeltaOptionMenu()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    .line 619
    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ChinaNalSecurity"

    .line 622
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    const-string v0, "persist.bluetooth.enableinbandringing"

    .line 625
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110201

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 627
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 629
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    if-nez v2, :cond_6

    const-string v0, "Softphone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    move v0, v1

    .line 635
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/bluetooth/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_c

    const/4 v2, 0x3

    const/4 v4, 0x4

    if-eqz v0, :cond_b

    .line 637
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_advanced_title:I

    invoke-interface {p1, v1, v3, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 638
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 640
    sget v0, Lcom/android/settings/R$string;->contact_us_title:I

    invoke-interface {p1, v1, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 641
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    .line 643
    :cond_b
    sget v0, Lcom/android/settings/R$string;->contact_us_title:I

    invoke-interface {p1, v1, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 644
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    :cond_c
    if-eqz v0, :cond_d

    .line 648
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_advanced_title:I

    invoke-interface {p1, v1, v3, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 649
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 653
    :cond_d
    :goto_5
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 360
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsSupportTips:Z

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->reset()V

    .line 362
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getRestoredRetryDetector()Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->reset()V

    .line 364
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 342
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->teardownSwitchBar()V

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->cancelDiscovery()V

    :cond_1
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 7

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeviceBondStateChanged :: bondState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 1282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/16 v4, 0xc

    if-eq p2, v4, :cond_0

    if-ne p2, v3, :cond_9

    .line 1283
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 1284
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    if-ne v5, v4, :cond_9

    if-eq p2, v4, :cond_1

    .line 1285
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBondingCountExceed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1286
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 1289
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result p1

    if-nez p1, :cond_b

    if-ne p2, v4, :cond_3

    .line 1290
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    :goto_0
    if-ne p2, v4, :cond_4

    .line 1291
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 1293
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v6

    invoke-virtual {v6, v0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->readyToInsertAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result p1

    .line 1294
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->readyToDeleteAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v5

    if-nez p1, :cond_8

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    if-eq p2, v4, :cond_6

    if-ne p2, v3, :cond_b

    .line 1301
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez p1, :cond_7

    .line 1303
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    iget-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->updateContent(IZZ)V

    goto :goto_3

    .line 1306
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    goto :goto_3

    .line 1296
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setInsertDeleteAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_3

    .line 1312
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez p1, :cond_a

    .line 1314
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    iget-boolean p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->updateContent(IZZ)V

    goto :goto_3

    .line 1317
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    :cond_b
    :goto_3
    return-void
.end method

.method protected onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 6

    .line 751
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    if-eqz p1, :cond_b

    .line 759
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 767
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v1, 0x1f00

    goto :goto_0

    .line 768
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    :goto_0
    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    const/16 v2, 0x200

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 769
    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForSAlogging()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    const-string v1, "Personal Device"

    .line 771
    :goto_2
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-nez v2, :cond_5

    .line 774
    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz v2, :cond_4

    .line 775
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->event_bluetooth_bdcc_scan_dialog:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 777
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->event_bluetooth_bdcc_setting:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 780
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 781
    :cond_5
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSppOnlyDevice()Z

    move-result v2

    if-nez v2, :cond_6

    .line 783
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 784
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->event_bluetooth_bddc:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 785
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->detail_bluetooth_bddc_settings:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 783
    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_6
    :goto_4
    iget-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    const/16 v3, 0xc

    if-eqz v2, :cond_8

    .line 788
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->event_bluetooth_scan_dialog_device_list_paired:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 789
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->event_bluetooth_scan_dialog_device_list_available:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 791
    :cond_8
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    if-ne v0, v3, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->event_bluetooth_setting_device_list_paired:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 792
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->event_bluetooth_setting_device_list_available:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 795
    :goto_5
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_a
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return-void

    :cond_b
    const-string p0, "BluetoothSettings"

    const-string p1, "onDevicePreferenceClick() - preference is null"

    .line 761
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onFinishListAnimation()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 666
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const-string v1, "BluetoothSettings"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    .line 726
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_bluetooth_setting_navigate_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 725
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 668
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->launchMoreTips(Landroid/content/Context;)V

    .line 669
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->event_bluetooth_setting_more_tips:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 714
    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-eqz p1, :cond_4

    const-string p0, "It is not user action!"

    .line 715
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 719
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->event_bluetooth_setting_more_advanced:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-class p1, Lcom/samsung/android/settings/bluetooth/BluetoothAdvancedSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_advanced_title:I

    const-string v1, "com.samsung.settings.BLUETOOTH_ADVANCED_SETTINGS"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->moveToBluetoothOptionMenu(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 708
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->event_bluetooth_setting_more_contact_us:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->startContactUs(Landroid/content/Context;)V

    return v2

    .line 677
    :cond_6
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_a

    .line 679
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "onOptionsItemSelected :: Stop scanning"

    .line 680
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->detail_bluetooth_scan_stop:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_7

    .line 684
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 686
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 688
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 689
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    :cond_8
    const-string v0, "Button"

    .line 692
    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanFinishAction:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string p1, "onOptionsItemSelected :: Start scanning"

    .line 694
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 696
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->detail_bluetooth_scan_start:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 697
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->startScanning()Z

    .line 700
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    .line 701
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->event_bluetooth_setting_scan_button:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 700
    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return v2

    :cond_b
    const-string p1, "onOptionItemSelected() called for tips"

    .line 672
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->fireTips(Landroid/content/Context;)V

    .line 674
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->event_bluetooth_setting_scan_button_tips:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public onPause()V
    .locals 5

    .line 498
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const-string v0, "BluetoothSettings"

    const-string v1, "onPause"

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v0, :cond_0

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mResumeTime:J

    sub-long/2addr v0, v2

    .line 504
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->event_bluetooth_bsrt:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 504
    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 568
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsSupportTips:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanTipsMark:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->isCountMax()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 570
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 571
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanTipsMark:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanTipsMark:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 576
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 2

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProfileStateChanged :: cachedDevice - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", profile - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newState - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldState - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    if-ne p4, v0, :cond_3

    if-nez p3, :cond_3

    .line 1351
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p3

    if-nez p3, :cond_5

    .line 1353
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedMembers()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 1356
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->addDetectorCount()V

    .line 1359
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "PAN"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "HID"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 1363
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$string;->bluetooth_settings_guide_pairing_fail_remote_down:I

    new-array p3, v0, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, p4

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 p0, 0x2

    if-ne p3, p0, :cond_5

    .line 1366
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    .line 1367
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    .line 1369
    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->resetRetryDetector()V

    :cond_5
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 8

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mResumeTime:J

    .line 427
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    const-string v0, "BluetoothSettings"

    const-string v1, "onResume"

    .line 428
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "content://com.sec.knox.provider/BluetoothPolicy"

    .line 431
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isDiscoverableEnabled"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 437
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "isDiscoverableEnabled"

    .line 439
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 443
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorIndexOutOfBoundsException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 441
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CursorWindowAllocationException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 446
    throw p0

    :cond_0
    :goto_2
    move v3, v2

    :goto_3
    if-nez v3, :cond_1

    .line 450
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    .line 452
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDiscoverableEnabled = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mPolicyEnabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 459
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllGroupDevices(Z)V

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setListViewVisible(I)V

    .line 463
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mRelLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 466
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_3

    .line 467
    sget v0, Lcom/android/settings/R$string;->bluetooth_empty_list_user_restricted:I

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->setEmptyView(I)V

    .line 470
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 471
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 473
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 474
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    .line 479
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDataSetChanged()V

    return-void

    .line 483
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_6

    .line 485
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->updateContent(IZZ)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_6

    .line 488
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setProgressBarVisible(Z)V

    .line 492
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScreenId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    .line 493
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSettingsObserver:Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$SettingsObserver;->setListening(Z)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 5

    .line 1226
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanningStateChanged :: is start scanning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1231
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_scan_inprogress:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_scan_stop:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->makeTalkback(I)V

    .line 1234
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_2

    .line 1235
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setProgressBarVisible(Z)V

    .line 1238
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    .line 1239
    sget v1, Lcom/android/settings/R$string;->service_stop:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/android/settings/R$string;->bluetooth_scan_for_devices:I

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1242
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1244
    iget-boolean v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    const/4 v3, 0x1

    if-nez v2, :cond_6

    .line 1246
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v4, 0xc

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v2, :cond_5

    .line 1247
    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_5

    move v1, v3

    .line 1248
    :cond_5
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    goto :goto_2

    .line 1250
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v2, :cond_7

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1251
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListController()Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;

    move-result-object v1

    iput-boolean v3, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    .line 1253
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_a

    .line 1254
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 1255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_3

    .line 1259
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v2, :cond_9

    .line 1260
    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->addPreferenceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    .line 1263
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)V

    .line 1264
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeSelectedGroupDevices()V

    .line 1266
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    .line 1270
    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1271
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_b
    if-eqz p1, :cond_c

    .line 1274
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    :cond_c
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 386
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 387
    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 388
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mInitiateScan:Z

    .line 389
    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsDeviceProfileShown:Z

    .line 392
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 393
    sput-boolean v1, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_2

    .line 399
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume(Landroid/content/Context;)V

    .line 403
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothCastAdapterCallback:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$BluetoothCastAdapterStateCallback;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->registerCallback(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$BluetoothCastAdapterStateCallback;)V

    .line 408
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 412
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsRegistered:Z

    if-nez v0, :cond_5

    .line 413
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.settings.DEVICE_NAME_CHANGED"

    .line 414
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 415
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 417
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsRegistered:Z

    :cond_5
    return-void
.end method

.method public onStop()V
    .locals 9

    .line 512
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    const-string v0, "BluetoothSettings"

    const-string v1, "onStop"

    .line 513
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 517
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mPolicyEnabled:Z

    .line 521
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 522
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-class v2, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x0

    const-string v7, " User Interaction: User actionDiscoverable mode status has changed to not discoverable succeeded"

    .line 521
    invoke-static/range {v1 .. v8}, Lcom/android/settings/bluetooth/Utils;->insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 527
    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsBtScanDialog:Z

    if-nez v1, :cond_1

    .line 528
    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsForegroundBtSettings:Z

    .line 530
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setProgressBarVisible(Z)V

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScan:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 535
    sget v2, Lcom/android/settings/R$string;->bluetooth_scan_for_devices:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 539
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v1, :cond_2

    .line 540
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 543
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsRegistered:Z

    if-eqz v1, :cond_3

    .line 544
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 545
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mIsRegistered:Z

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 552
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->suspendDiscovery()V

    .line 553
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mBluetoothCastAdapterCallback:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$BluetoothCastAdapterStateCallback;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->unregisterCallback(Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter$BluetoothCastAdapterStateCallback;)V

    :cond_4
    return-void
.end method

.method protected onStopScanningState()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 381
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->setNoDeviceLayout(Z)V

    return-void
.end method

.method showSemTipPopup(Z)V
    .locals 5

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showTipPopup_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 1623
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    return-void

    .line 1625
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "bluetooth_bubble_tips_count"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    return-void

    .line 1628
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1629
    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothSettings;ZI)V

    if-eqz p1, :cond_2

    const-wide/16 v3, 0x258

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    if-eqz p1, :cond_4

    .line 1668
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->tipTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    const-wide/16 v0, 0x1b58

    if-eqz p1, :cond_3

    .line 1669
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->tipTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1670
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->tipTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1672
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mTipHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->tipTimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public startScanning()Z
    .locals 2

    .line 732
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 736
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->isSupportBluetoothCast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;->startDiscovery()V

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothSettings;->mScanDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->addCount()V

    :cond_2
    return v0
.end method

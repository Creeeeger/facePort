.class public Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController$Callback;


# static fields
.field public static final AUDIO_MIRRORING_CONTENT_URI:Landroid/net/Uri;

.field public static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public connectedCategory:Landroidx/preference/PreferenceCategory;

.field public mActiveDeviceChangedReceiver:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$ActiveDeviceChangedReceiver;

.field public mAudioManager:Landroid/media/AudioManager;

.field public final mBassConnectedDevices:Ljava/util/Set;

.field public mBottomButtonLayout:Landroid/widget/RelativeLayout;

.field public mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public final mBroadcastAssistantCallback:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$7;

.field public final mBroadcastCallback:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$6;

.field public mBroadcastCode:Ljava/lang/String;

.field public mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

.field public mBroadcastId:I

.field public mBroadcastName:Ljava/lang/String;

.field public mBroadcastNameController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

.field public mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

.field public mContext:Landroid/content/Context;

.field public mDeviceAdapter:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;

.field public mDeviceController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;

.field public mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mEmptyCategory:Landroidx/preference/PreferenceCategory;

.field public mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$8;

.field public mHeaderAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field public mHeaderLayout:Lcom/android/settingslib/widget/LayoutPreference;

.field public mInfoMark:Landroid/view/MenuItem;

.field public mIsBroadcasting:Z

.field public mIsRegisterReceiver:Z

.field public mIsRegisterServiceCallback:Z

.field public mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

.field public mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field public mLocalAdapterName:Ljava/lang/String;

.field public mLocalLeAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field public mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

.field public mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mLocalSourceAddedDevices:Ljava/util/Set;

.field public final mMainThreadHandler:Landroid/os/Handler;

.field public mMenuStartBroadcast:Landroid/view/MenuItem;

.field public mMenuStopBroadcast:Landroid/view/MenuItem;

.field public mNoDeviceCategory:Landroidx/preference/PreferenceCategory;

.field public mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field public mScreen:Landroidx/preference/PreferenceScreen;

.field public mScreenId:Ljava/lang/String;

.field public final mServiceListener:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$1;

.field public mSettingsActivity:Lcom/android/settings/SettingsActivity;

.field public final mSyncedDevicesLock:Ljava/lang/Object;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->DEBUG:Z

    const-string v0, "content://com.samsung.android.audiomirroring"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->AUDIO_MIRRORING_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$9;

    invoke-direct {v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterServiceCallback:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterReceiver:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastId:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalSourceAddedDevices:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBassConnectedDevices:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mSyncedDevicesLock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$1;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mServiceListener:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$1;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$6;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCallback:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$6;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$7;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastAssistantCallback:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$7;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$8;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mHandler:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$8;

    return-void
.end method


# virtual methods
.method public final clearOperationTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mHandler:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$8;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecBluetoothLeBroadcastSourceSetting"

    const-string v2, "clearOperationTimeout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mHandler:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$8;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    const-string v0, "SecBluetoothLeBroadcastSourceSetting"

    const-string v1, "createPreferenceControllers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    const-string v2, "key_broadcast_name"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastNameController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    const-string v2, "key_broadcast_code"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    const-string v2, "key_compatibility_switch"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastNameController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final displayDescription()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->getConnectedLeAudioDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "displayDescription, isNoLeAudioConnected:"

    const-string v2, "SecBluetoothLeBroadcastSourceSetting"

    invoke-static {v1, v2, v0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->connectedCategory:Landroidx/preference/PreferenceCategory;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mNoDeviceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final getLocalProfile()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    :cond_2
    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecBluetoothLeBroadcastSourceSetting"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17015b

    return p0
.end method

.method public final isBroadcasting$1()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez p0, :cond_0

    const-string p0, "SecBluetoothLeBroadcastSourceSetting"

    const-string v0, "getBroadcastName: LE Audio Broadcast is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p0, "SecBluetoothLeBroadcastSourceSetting"

    const-string/jumbo p1, "onActivityCreated"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "SecBluetoothLeBroadcastSourceSetting"

    const-string/jumbo v0, "onAttach"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class p1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceHeaderController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->setRoundedCornerColorBottom()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "SecBluetoothLeBroadcastSourceSetting"

    const-string/jumbo v0, "onCreate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreen:Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoAddFooterPreference(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "onCreate: mLocalManager is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->getLocalProfile()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-nez v0, :cond_2

    const-string v0, "Not support Broadcast source"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f141fc0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreenId:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "key_broadcast_source_header"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mHeaderLayout:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0264

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mHeaderLayout:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a10fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mHeaderAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "key_no_device_category"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mNoDeviceCategory:Landroidx/preference/PreferenceCategory;

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->sharedPrefs:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "key_no_device_description"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0a81

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1420eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1420ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "key_connected_devices_title"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->connectedCategory:Landroidx/preference/PreferenceCategory;

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "key_broadcast_source_info"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->connectedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "key_compatibility_empty_category"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mEmptyCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "key_compatibility_preference_category"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    new-instance p1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mInfoMark:Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080394

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mInfoMark:Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1420e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mInfoMark:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const-string v0, "SecBluetoothLeBroadcastSourceSetting"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f150206

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTheme(I)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    const p3, 0x7f060559

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v1, 0x7f0a0421

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const v1, 0x7f0a041b

    invoke-virtual {p2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, "can not set actionbar"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lcom/android/settings/core/SettingsBaseActivity;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar()V

    :cond_4
    move-object v0, p2

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a038f

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    const v1, 0x7f0a0299

    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0823

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p2, p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const v1, 0x7f0f0011

    invoke-virtual {p2, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->inflateMenu(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p2, p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const v1, 0x7f0a0ef5

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMenuStartBroadcast:Landroid/view/MenuItem;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p2, p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const v1, 0x7f0a0f0c

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMenuStopBroadcast:Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f140ec9

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$4;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$4;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    :cond_6
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomColor(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance v0, Landroidx/appcompat/util/SeslRoundedCorner;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/util/SeslRoundedCorner;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroidx/appcompat/util/SeslRoundedCorner;->setRoundedCornerColor(II)V

    new-instance p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$3;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$3;-><init>(Landroidx/appcompat/util/SeslRoundedCorner;)V

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    :cond_7
    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    const-string v0, "SecBluetoothLeBroadcastSourceSetting"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->clearOperationTimeout()V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140eb7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140ec6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1420e3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0828

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;I)V

    const v2, 0x7f1409d0

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string/jumbo v0, "onResume()"

    const-string v1, "SecBluetoothLeBroadcastSourceSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMenuStartBroadcast:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "onResume() stop scanning"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo v0, "onResume() BT is no enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMenuStartBroadcast:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->isBroadcasting$1()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastNameController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->dismissAlertDialog()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->dismissAlertDialog()V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method public final onStart()V
    .locals 8

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    const-string v0, "SecBluetoothLeBroadcastSourceSetting"

    const-string/jumbo v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    const-string v0, "SecBluetoothLeBroadcastSourceSetting"

    const-string/jumbo v1, "onStart: mLocalManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBassConnectedDevices:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mSyncedDevicesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalSourceAddedDevices:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->updateBroadcastName()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->updateBroadcastCode()V

    const-string v0, "initBroadcastSourceController"

    const-string v1, "SecBluetoothLeBroadcastSourceSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastNameController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->init()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->init()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->sharedPrefs:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;->init(Landroid/content/SharedPreferences;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1421bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1421bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;->setSubText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastNameController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14222a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastNameController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u200e"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Display Broadcast Name: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->setSubText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f142233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->isEncryptedBroadcast()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->setSubText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1420ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->setSubText(Ljava/lang/String;)V

    :goto_0
    new-instance v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mConnectedLeAudioDevices:Ljava/util/List;

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    iput-object v2, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLeAudioBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iput-object v1, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->initConnectedList()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;

    const-string v0, "initLeAudioDeviceAdapter"

    const-string v1, "SecBluetoothLeBroadcastSourceSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->getConnectedLeAudioDeviceList()Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-boolean v3, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->mIsFirstTime:Z

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->mClickedByUserMap:Ljava/util/Map;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->mLeAudioConnectedDeviceLists:Ljava/util/List;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->mLeAudioConnectedDeviceLists:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iput-object v4, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceAdapter:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLeAudioProfile:Lcom/android/settingslib/bluetooth/LeAudioProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceAdapter:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initAdapter - "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_5

    const-string/jumbo v6, "null"

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddressForLogging()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SecBluetoothLeBroadcastSourceDeviceAdapter"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->setActiveLeAudioDevice(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v0, 0x1

    iput-boolean v0, v4, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->mIsFirstTime:Z

    iget-object v4, v4, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->mClickedByUserMap:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "initBroadcastController() setFirst Time FALSE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceAdapter:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;

    iput-boolean v3, v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->mIsFirstTime:Z

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceAdapter:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;

    new-instance v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$2;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;)V

    iput-object v2, v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->mItemClickListener:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$2;

    const-string v1, "SecBluetoothLeBroadcastSourceSetting"

    const-string v2, "initDeviceRecyclerView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "key_connected_devices_list"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0507

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceAdapter:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v2, 0x7f060561

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDevicesRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060559

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->updateBassConnectedDevices()V

    const-string v1, "SecBluetoothLeBroadcastSourceSetting"

    const-string/jumbo v2, "updateSyncedDevicesWithLocalBroadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mSyncedDevicesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalSourceAddedDevices:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBassConnectedDevices:Ljava/util/Set;

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v5, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mSyncedDevicesLock:Ljava/lang/Object;

    monitor-enter v5

    if-nez v4, :cond_a

    goto :goto_6

    :cond_a
    :try_start_2
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getPaSyncState()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_c

    sget-boolean v4, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "SecBluetoothLeBroadcastSourceSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Add local source added device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_b
    :goto_5
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalSourceAddedDevices:Ljava/util/Set;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_6
    monitor-exit v5

    goto :goto_4

    :goto_7
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "SecBluetoothLeBroadcastSourceDeviceController"

    const-string/jumbo v4, "start"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    iput-object p0, v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mCallback:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController$Callback;

    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->initConnectedList()V

    iget-object v2, v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mCallback:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController$Callback;

    iget-object v1, v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mConnectedLeAudioDevices:Ljava/util/List;

    check-cast v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->updateDeviceList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->isBroadcasting$1()Z

    move-result v1

    if-eqz v1, :cond_e

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsBroadcasting:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastId:I

    iput v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastId:I

    goto :goto_8

    :cond_e
    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsBroadcasting:Z

    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->refreshUI()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mServiceListener:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$1;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterReceiver:Z

    if-nez v1, :cond_f

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    const-string v2, "android.bluetooth.action.LE_AUDIO_ACTIVE_DEVICE_CHANGED"

    invoke-static {v1, v2}, Lcom/android/settings/accounts/ManagedProfileQuietModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$ActiveDeviceChangedReceiver;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$ActiveDeviceChangedReceiver;-><init>(Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mActiveDeviceChangedReceiver:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$ActiveDeviceChangedReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterReceiver:Z

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_9

    :cond_10
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterServiceCallback:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->registerServiceCallback()V

    :cond_11
    return-void

    :cond_12
    :goto_9
    const-string p0, "SecBluetoothLeBroadcastSourceSetting"

    const-string/jumbo v0, "onStart() BT is no enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public final onStop()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    const-string v0, "SecBluetoothLeBroadcastSourceSetting"

    const-string/jumbo v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mServiceListener:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$1;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterServiceCallback:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->unregisterServiceCallback()V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterReceiver:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mActiveDeviceChangedReceiver:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$ActiveDeviceChangedReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterReceiver:Z

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SecBluetoothLeBroadcastSourceDeviceController"

    const-string/jumbo v2, "stop"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mCallback:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController$Callback;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SecBluetoothLeBroadcastSourceSetting"

    const-string/jumbo v1, "onViewCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->setRoundedCornerColorBottom()V

    return-void
.end method

.method public final refreshUI()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    const-string v1, "SecBluetoothLeBroadcastSourceSetting"

    if-nez v0, :cond_0

    const-string p0, "Do not refresh, it is already destroyed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsBroadcasting:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "refreshUI - broadcast started"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastNameController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->disableEditImageButton()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->disableEditImageButton()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f1421bc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;->setSubText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;->updateImproveCompatibilitySwitchState()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;->disableQualityButton()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mEmptyCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMenuStartBroadcast:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMenuStopBroadcast:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMenuStopBroadcast:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mHeaderAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->displayDescription()V

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "refreshUI - broadcasts stopped"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastNameController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->enableEditImageButton()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->enableEditImageButton()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->connectedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mNoDeviceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMenuStartBroadcast:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMenuStopBroadcast:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mHeaderAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mHeaderAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mEmptyCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1421bb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;->setSubText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;->disableAutoSwitchIfNeeded()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;->enableQualityButton()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMenuStartBroadcast:Landroid/view/MenuItem;

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "BT is disabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMenuStartBroadcast:Landroid/view/MenuItem;

    invoke-interface {p0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    return-void
.end method

.method public final registerServiceCallback()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const-string v1, "SecBluetoothLeBroadcastSourceSetting"

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mIsBroadcastProfileReady:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->mIsProfileReady:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    const-string/jumbo v0, "registerServiceCallBack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCallback:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$6;

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastAssistantCallback:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$7;

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterServiceCallback:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Fail register callback"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BRST-Can\'t register callback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterServiceCallback:Z

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string/jumbo p0, "registerServiceCallback : LocalLeAssistant is not ready"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :goto_2
    const-string/jumbo p0, "registerServiceCallback : LocalLeBroadcast is not ready"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setRoundedCornerColorBottom()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0a0cc6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f060559

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    goto :goto_0

    :cond_0
    const-string p0, "SecBluetoothLeBroadcastSourceSetting"

    const-string/jumbo v0, "roundCornerView is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final startLeBroadcast()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceAdapter:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->mIsFirstTime:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->clearOperationTimeout()V

    const-string/jumbo v0, "setOperationTimeout"

    const-string v2, "SecBluetoothLeBroadcastSourceSetting"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mHandler:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$8;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mHandler:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$8;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string/jumbo v0, "startLeBroadcast"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "The broadcast profile is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsBroadcasting:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->clearOperationTimeout()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterServiceCallback:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "register before start"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->registerServiceCallback()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;->enableAutoSwitchIfNeeded()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;->disableQualityButton()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->updateBroadcastName()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->updateBroadcastCode()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastNameController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->disableEditImageButton()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->disableEditImageButton()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastNameController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->dismissAlertDialog()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->dismissAlertDialog()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mMenuStartBroadcast:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    new-instance v3, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    invoke-direct {v3}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const-string v5, "LocalBluetoothLeBroadcast"

    const/4 v6, 0x0

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    if-nez v4, :cond_3

    const-string v4, "The BluetoothLeBroadcast is null when get current media metadata"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothLeBroadcast;->getCurrentMediaMetadata()Landroid/media/MediaMetadata;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_4

    const-string v7, "android.media.metadata.TITLE"

    invoke-virtual {v4, v7}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v6

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    move-object v6, v4

    :goto_2
    const-string v4, "getCurrentTitle: "

    invoke-static {v4, v6, v2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    new-instance v2, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    invoke-direct {v2}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;-><init>()V

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1420f3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setProgramInfo(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->setBroadcastName(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothLeAudioContentMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeAudioContentMetadata;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->setContentMetadata(Landroid/bluetooth/BluetoothLeAudioContentMetadata;)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastQualityController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceCompatibilityController;->getPreferredQuality()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->setPreferredQuality(I)Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;

    move-result-object v2

    new-instance v3, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    invoke-direct {v3}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setBroadcastName(Ljava/lang/String;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setPublicBroadcast(Z)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->isEncryptedBroadcast()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCode:Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    :cond_7
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->addSubgroupSettings(Landroid/bluetooth/BluetoothLeBroadcastSubgroupSettings;)Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeBroadcastSettings$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastSettings;

    move-result-object p0

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mServiceBroadcast:Landroid/bluetooth/BluetoothLeBroadcast;

    if-nez v0, :cond_8

    const-string p0, "The BluetoothLeBroadcast is null when starting the broadcast."

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothLeBroadcast;->startBroadcast(Landroid/bluetooth/BluetoothLeBroadcastSettings;)V

    :goto_5
    return-void
.end method

.method public final unregisterServiceCallback()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    const-string v1, "SecBluetoothLeBroadcastSourceSetting"

    if-nez v0, :cond_0

    const-string/jumbo p0, "unregisterServiceCallback : LocalLeBroadcast is not ready"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_1

    const-string/jumbo p0, "unregisterServiceCallback : LocalLeAssistant is not ready"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v0, "unregisterServiceCallBack"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCallback:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$6;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcast$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastAssistantCallback:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting$7;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterServiceCallback:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Fail unregister callback"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "BRST-Can\'t unregister callback"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsRegisterServiceCallback:Z

    :goto_0
    return-void
.end method

.method public final updateBassConnectedDevices()V
    .locals 6

    const-string/jumbo v0, "updateBassConnectedDevices"

    const-string v1, "SecBluetoothLeBroadcastSourceSetting"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBassConnectedDevices:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceController;->getConnectedLeAudioDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    sget-boolean v3, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->DEBUG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add Main device: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBassConnectedDevices:Ljava/util/Set;

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :cond_3
    sget-boolean v4, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->DEBUG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "add Sub device: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBassConnectedDevices:Ljava/util/Set;

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final updateBroadcastCode()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCodeController:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController;->isEncryptedBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_le_broadcast_code"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCode:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalLeBroadcast:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->mBroadcastCode:[B

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastCode:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final updateBroadcastName()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_le_broadcast_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    const-string v2, "SecBluetoothLeBroadcastSourceSetting"

    if-nez v0, :cond_6

    const-string/jumbo v0, "updateBroadcastName from adapter"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "device_name"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v4, v4, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    const-string/jumbo v4, "updateDeviceName :: change device name to "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapterName:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapterName:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapterName:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mLocalAdapterName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x20

    if-le v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "splitBroadcastName before : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    if-ge v0, v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v4, v3, :cond_4

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "verifyBroadcastName: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateBroadcastName() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mBroadcastName:Ljava/lang/String;

    invoke-static {v0, p0, v2}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateDeviceList(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mDeviceAdapter:Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceDeviceAdapter;->updateDeviceList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->updateBassConnectedDevices()V

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->mIsBroadcasting:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceSetting;->displayDescription()V

    :cond_0
    return-void
.end method

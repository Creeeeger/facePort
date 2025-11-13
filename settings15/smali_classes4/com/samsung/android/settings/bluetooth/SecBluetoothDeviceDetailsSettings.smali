.class public Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# static fields
.field public static final DBG:Z


# instance fields
.field public isFinished:Z

.field public mAdvancedController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

.field public mAudioTypeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;

.field public mBottomButtonLayout:Landroid/widget/RelativeLayout;

.field public mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public mBroadcastAssistantController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;

.field public mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field public mCodecController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

.field public mDeviceAddress:Ljava/lang/String;

.field public mGroupController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;

.field public final mHandler:Landroid/os/Handler;

.field public mHearingAidController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

.field public mIsCalledFromSetting:Z

.field public mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mNaviButton:Lcom/google/android/material/navigation/NavigationBarItemView;

.field public mNaviDrawable:Landroid/graphics/drawable/Drawable;

.field public mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

.field public final mOnGlobalLayoutListener:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;

.field public mProfilesController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

.field public final mReceiver:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;

.field public mReceiverRegistered:Z

.field public mRenameColor:I

.field public mScreenId:Ljava/lang/String;

.field public mSettingsActivity:Lcom/android/settings/SettingsActivity;

.field public mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

.field public mUnpairDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string/jumbo v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mRenameColor:I

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mIsCalledFromSetting:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->isFinished:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiverRegistered:Z

    new-instance v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiver:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mOnGlobalLayoutListener:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$6;-><init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final canSetRename()Z
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->CUSTOM_CONNECTED_WITH_PROFILE:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    array-length v3, v0

    if-le v3, v2, :cond_0

    aget-byte v0, v0, v2

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->CUSTOM_SUPPORT_RENAME:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-static {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/bluetooth/SmepTag;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    if-le v0, v2, :cond_1

    aget-byte p0, p0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v2, p1, p0, v4, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mIsLeAudioToggleEnabled:Z

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileDeviceMap:Ljava/util/Map;

    iput-boolean v5, v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mIsWorkingSwitchAnimation:Z

    iput-boolean v5, v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mNeedUiUpdate:Z

    iput-boolean v5, v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mIsPaused:Z

    new-instance v5, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$1;

    invoke-direct {v5, v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$1;-><init>(Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;)V

    iput-object v5, v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mHandler:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController$1;

    iput-object v3, v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object v3, v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object v4, v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->getAllOfCachedBluetoothDevices()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;->mAllOfCachedDevices:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mProfilesController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

    new-instance v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCodecController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mProfilesController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCodecController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    new-instance v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAdvancedController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAdvancedController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mHearingAidController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAudioTypeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBroadcastAssistantController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidsPresetsController;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidsPresetsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "userdebug"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v2, p1, p0, v4, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iget-object p1, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object p1, v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iput-object v4, v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mGroupController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final finishActivity()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecBluetoothDeviceDetailsSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f1

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17015e

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141fc6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mScreenId:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settings/bluetooth/Utils$2;

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v1, "SecBluetoothDeviceDetailsSettings"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "Activity started without bluetooth is not ready"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->isFinished:Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "device_address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mDeviceAddress:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "device"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mIsCalledFromSetting:Z

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "Activity started without a remote bluetooth device is not ready"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->isFinished:Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "isCalledFromSetting"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mIsCalledFromSetting:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v3, v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_5

    const-string/jumbo v0, "onAttach() CachedDevice is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->isFinished:Z

    :cond_5
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->isFinished:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->finishActivity()V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedForGroup()Z

    move-result p1

    if-nez p1, :cond_7

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    iput v2, p1, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->checkHearingAidByUuid()Z

    move-result p1

    const-class v0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;

    if-eqz p1, :cond_8

    const-class p1, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1, v1, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecLeAudioBluetoothDetailsHeaderController;->init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;)V

    goto :goto_2

    :cond_8
    const-class p1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;)V

    :goto_2
    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getBluetoothFeatureProvider()Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;

    move-result-object p1

    const-string/jumbo v0, "settings_ui"

    const-string v1, "bt_slice_settings_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-class v1, Lcom/android/settings/slices/BlockingSlicePrefController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/slices/BlockingSlicePrefController;

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->getMetadata(I)[B

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :cond_a
    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/settings/slices/SlicePreferenceController;->setSliceUri(Landroid/net/Uri;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    invoke-virtual {p1}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->updateLayout()V

    :cond_0
    return-void
.end method

.method public final onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onConnectionStateChanged :: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SecBluetoothDeviceDetailsSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAdvancedController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of v0, p1, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p3, p2, Lcom/android/settings/core/SettingsBaseActivity;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/android/settings/core/SettingsBaseActivity;

    invoke-virtual {p2}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    const p3, 0x7f0a0299

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f060738

    invoke-virtual {p3, v0}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0d083d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    invoke-virtual {p2}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setBottomLayout(Landroid/widget/RelativeLayout;)V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p2, p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->clear()V

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const p3, 0x7f0f0013

    invoke-virtual {p2, p3}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->inflateMenu(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    iget-object p3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    const-string v0, "buttons"

    invoke-virtual {p3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/material/navigation/NavigationBarItemView;

    array-length p3, p2

    if-lez p3, :cond_2

    aget-object p2, p2, v1

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNaviButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNaviDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNaviButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string/jumbo v0, "navigation_bar_item_small_label_view"

    const-string v1, "id"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mRenameColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "SecBluetoothDeviceDetailsSettings"

    const-string p3, "Button library is not available"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance p3, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$3;

    invoke-direct {p3, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$3;-><init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V

    iput-object p3, p2, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mOnGlobalLayoutListener:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;

    invoke-virtual {p2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_4
    return-object p1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mUnpairDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mUnpairDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final onDeviceAttributesChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget-boolean v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-nez v0, :cond_0

    const-string v0, "SecBluetoothDeviceDetailsSettings"

    const-string/jumbo v1, "onDeviceAttributesChanged() bond state is BOND_NONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->finishActivity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDeviceAttributesChanged() catch IllegalStateException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->refresh$2$1()V

    return-void
.end method

.method public final onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-boolean v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsSynced:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "SecBluetoothDeviceDetailsSettings"

    const-string/jumbo v0, "onDeviceDeleted()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->finishActivity()V

    :cond_1
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140ede

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiver:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiver:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiverRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_2
    return-void
.end method

.method public final onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onProfileStateChanged(), profile - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newState - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldState - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SecBluetoothDeviceDetailsSettings"

    invoke-static {v0, p4, v1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    instance-of v0, p2, Lcom/android/settingslib/bluetooth/LeAudioProfile;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mHearingAidController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isHearingAidDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p3, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mHearingAidController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mHearingAidContainer:Landroidx/preference/PreferenceCategory;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mHearingAidController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->isAnyLeDeviceConnected(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mHearingAidController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    iget-object v0, v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;->mHearingAidContainer:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    if-eq p3, v2, :cond_2

    if-nez p3, :cond_4

    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne p3, v2, :cond_3

    const-string v0, "User has changed the bluetooth profile %s, on bluetooth device %s, to enabled."

    goto :goto_1

    :cond_3
    const-string v0, "User has changed the bluetooth profile %s, on bluetooth device %s, to disabled."

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p2, v3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x1

    const-string v7, "DeviceProfilesSettings"

    const/4 v3, 0x5

    const/4 v4, 0x1

    const-string v9, ""

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-ne p4, v1, :cond_5

    if-nez p3, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedMembers()Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondingDetector:Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;

    if-eqz p2, :cond_6

    iget p3, p2, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    add-int/2addr p3, v1

    iput p3, p2, Lcom/samsung/android/settingslib/bluetooth/detector/BluetoothRetryDetector;->mCount:I

    goto :goto_2

    :cond_5
    if-ne p3, v2, :cond_6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->resetRetryDetector()V

    :cond_6
    :goto_2
    iget-object p2, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAdvancedController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setEnabled(Z)V

    iget-object p2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Z)V

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mGroupController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->refresh$2$1()V

    :cond_8
    return-void
.end method

.method public final onResourceUpdated()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->isFinished:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v1, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    iget-boolean v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-nez v0, :cond_2

    const-string v0, "SecBluetoothDeviceDetailsSettings"

    const-string/jumbo v1, "onResume() bond state is BOND_NONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->finishActivity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onResume() catch IllegalStateException"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-boolean v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const v1, 0x7f0a0c88

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItem(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->refresh$2$1()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiver:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiverRegistered:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->finishActivity()V

    return-void
.end method

.method public final onSyncDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public final refresh$2$1()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const v1, 0x7f0a03ea

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedForGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080388

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1421e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080386

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1421db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAudioTypeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->refresh()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mGroupController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->refresh()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBroadcastAssistantController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothBroadcastAssistantController;->refresh()V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->canSetRename()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->setEnabledMenuItem(Z)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->setEnabledMenuItem(Z)V

    :goto_1
    return-void
.end method

.method public final setEnabledMenuItem(Z)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const v1, 0x7f0a0c88

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mRenameColor:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06051e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_0
    if-eqz p1, :cond_1

    const/16 v2, 0xff

    goto :goto_1

    :cond_1
    const/16 v2, 0x66

    :goto_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v5, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-direct {v4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f080393

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNaviButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNaviDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    return-void
.end method

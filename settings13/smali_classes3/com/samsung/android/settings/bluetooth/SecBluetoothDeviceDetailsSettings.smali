.class public Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "SecBluetoothDeviceDetailsSettings.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$TestDataFactory;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static EDIT_DEVICE_NAME_ITEM_ID:I

.field static sTestDataFactory:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$TestDataFactory;


# instance fields
.field private isFinished:Z

.field private mAdvancedController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

.field private mAudioTypeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;

.field private mBottomButtonLayout:Landroid/widget/RelativeLayout;

.field private mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mCodecController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

.field mDeviceAddress:Ljava/lang/String;

.field private mGroupController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;

.field private final mHandler:Landroid/os/Handler;

.field private mHearingAidController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

.field private mIsCalledFromSetting:Z

.field mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mNaviButton:Lcom/google/android/material/navigation/NavigationBarItemView;

.field private mNaviDrawable:Landroid/graphics/drawable/Drawable;

.field private mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

.field private mProfilesController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRenameColor:I

.field private mRenameTv:Landroid/widget/TextView;

.field private mScreenId:Ljava/lang/String;

.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;

.field private mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

.field mTempName:Ljava/lang/String;

.field private mUnpairDialog:Landroid/app/AlertDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdvancedController(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAdvancedController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNoiseController(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenId(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mScreenId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcanSetRename(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->canSetRename()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mfinishActivity(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->finishActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnabledMenuItem(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->setEnabledMenuItem(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowUnpairDialog(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->showUnpairDialog(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munpairDevice(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->unpairDevice()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 112
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->DBG:Z

    const/4 v0, 0x1

    .line 118
    sput v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->EDIT_DEVICE_NAME_ITEM_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "no_config_bluetooth"

    .line 186
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mRenameColor:I

    .line 158
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mIsCalledFromSetting:Z

    .line 159
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->isFinished:Z

    .line 160
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiverRegistered:Z

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mTempName:Ljava/lang/String;

    .line 189
    new-instance v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 628
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$5;-><init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private canSetRename()Z
    .locals 4

    .line 731
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 732
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 733
    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->CUSTOM_CONNECTED_WITH_PROFILE:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v0

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    .line 734
    array-length v3, v0

    if-le v3, v2, :cond_0

    aget-byte v0, v0, v2

    if-eq v0, v1, :cond_1

    .line 735
    :cond_0
    sget-object v0, Lcom/samsung/android/bluetooth/SmepTag;->CUSTOM_SUPPORT_RENAME:Lcom/samsung/android/bluetooth/SmepTag;

    invoke-virtual {v0}, Lcom/samsung/android/bluetooth/SmepTag;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/smep/SppByteUtil;->intToBytes(I)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 736
    array-length v0, p0

    if-le v0, v2, :cond_1

    aget-byte p0, p0, v2

    if-lez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method private finishActivity()V
    .locals 2

    .line 616
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 619
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 620
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    .line 621
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    .line 623
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initBottomNavigation()V
    .locals 4

    .line 510
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    .line 512
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 513
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 514
    sget v1, Lcom/android/settings/R$layout;->sec_bluetooth_device_profile_bottom_layout:I

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 516
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 517
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    sget v1, Lcom/android/settings/R$menu;->sec_bluetooth_device_detail_bottom_menu:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarView;->inflateMenu(I)V

    .line 518
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 519
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 522
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->reflectNavigationLibrary()V

    .line 525
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method private reflectNavigationLibrary()V
    .locals 5

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 748
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "buttons"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 749
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 750
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 752
    array-length v2, v0

    if-lez v2, :cond_0

    .line 753
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNaviButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNaviDrawable:Landroid/graphics/drawable/Drawable;

    .line 757
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNaviButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "navigation_bar_item_small_label_view"

    const-string v3, "id"

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mRenameTv:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mRenameColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SecBluetoothDeviceDetailsSettings"

    const-string v0, "Button library is not available"

    .line 764
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private refresh()V
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->connect_button:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 668
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->ic_bluetooth_disconnect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 670
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_bluetooth_disconnect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 672
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$drawable;->ic_bluetooth_connect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 673
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_bluetooth_connect:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 678
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAudioTypeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;

    if-eqz v0, :cond_2

    .line 679
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->refresh()V

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mGroupController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;

    if-eqz v0, :cond_3

    .line 683
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->refresh()V

    .line 686
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->setRenameStatus()V

    return-void
.end method

.method private setController()V
    .locals 3

    .line 644
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 645
    iput v1, v0, Landroid/os/Message;->what:I

    .line 646
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setEnabledMenuItem(IZ)V
    .locals 6

    .line 700
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_3

    .line 701
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 703
    iget v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mRenameColor:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->sec_app_button_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    const/16 v1, 0xff

    goto :goto_1

    :cond_1
    const/16 v1, 0x66

    .line 707
    :goto_1
    new-instance v2, Landroid/text/SpannableString;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 708
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v1, v4, v5, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 709
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 712
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$drawable;->ic_bluetooth_edit:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 713
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 714
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 717
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNaviButton:Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 719
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNaviDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_3

    .line 720
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    .line 723
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private setRenameStatus()V
    .locals 2

    .line 691
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->canSetRename()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    sget v0, Lcom/android/settings/R$id;->rename_button:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->setEnabledMenuItem(IZ)V

    goto :goto_0

    .line 694
    :cond_0
    sget v0, Lcom/android/settings/R$id;->rename_button:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->setEnabledMenuItem(IZ)V

    :goto_0
    return-void
.end method

.method private showUnpairDialog(Z)V
    .locals 8

    .line 581
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_profile_popup_unpair_description_jpn:I

    goto :goto_0

    .line 583
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_profile_popup_unpair_description:I

    .line 584
    :goto_0
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_profile_popup_unpair_description_common:I

    .line 586
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 587
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->sec_bluetooth_profile_popup_unpair_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 588
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->bluetooth_device_context_unpair:I

    new-instance v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$4;-><init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V

    .line 589
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->common_cancel:I

    new-instance v1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$3;-><init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;)V

    .line 596
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 601
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mUnpairDialog:Landroid/app/AlertDialog;

    .line 602
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 603
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mUnpairDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->sec_bluetooth_dialog_button_color_unpair:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private unpairDevice()V
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_bluetooth_global:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_bluetooth_bddc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->detail_bluetooth_bddc_settings:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 608
    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    return-void
.end method

.method private updateSmepFeatures(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    .line 828
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isSupportSmep(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p1

    .line 831
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAdvancedController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;->setEnabled(Z)V

    .line 832
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 479
    new-instance v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mProfilesController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

    .line 482
    new-instance v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCodecController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    .line 485
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mProfilesController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsProfilesController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCodecController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsCodecController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    .line 489
    new-instance v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;Landroidx/lifecycle/Lifecycle;)V

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAdvancedController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    .line 490
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mNoiseController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailNoiseController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAdvancedController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAdvancedController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v2, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mHearingAidController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHearingAidController;

    .line 494
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v2, v8

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroidx/lifecycle/Lifecycle;)V

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mAudioTypeController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;

    .line 497
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "userdebug"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    :cond_0
    new-instance v8, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v8, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mGroupController:Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;

    .line 502
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method finishFragmentIfNecessary()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 240
    sget-object v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->sTestDataFactory:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$TestDataFactory;

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {v0, p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$TestDataFactory;->getDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 244
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 245
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 223
    sget-object p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->sTestDataFactory:Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$TestDataFactory;

    if-eqz p0, :cond_0

    .line 224
    invoke-interface {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings$TestDataFactory;->getManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0

    .line 226
    :cond_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecBluetoothDeviceDetailsSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f1

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 454
    sget p0, Lcom/android/settings/R$xml;->sec_bluetooth_device_details_fragment:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 280
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 284
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .line 290
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_device_profiles_setting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mScreenId:Ljava/lang/String;

    .line 292
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string v1, "SecBluetoothDeviceDetailsSettings"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "Activity started without bluetooth is not ready"

    .line 295
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->isFinished:Z

    .line 299
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "device_address"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mDeviceAddress:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 303
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "device"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 305
    iget-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mIsCalledFromSetting:Z

    if-nez v4, :cond_1

    .line 306
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "Activity started without a remote bluetooth device is not ready"

    .line 312
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->isFinished:Z

    goto :goto_1

    .line 314
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 315
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_1

    .line 319
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "isCalledFromSetting"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mIsCalledFromSetting:Z

    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 323
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_5

    const-string v0, "onAttach() CachedDevice is null!"

    .line 325
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iput-boolean v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->isFinished:Z

    .line 329
    :cond_5
    new-instance v0, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    .line 331
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 332
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->isFinished:Z

    if-eqz v0, :cond_6

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->finishActivity()V

    return-void

    .line 337
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->setController()V

    .line 341
    :cond_7
    const-class v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsHeaderController;->init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 342
    const-class v0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSmepReceiver:Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/settings/bluetooth/controller/SecAdvancedBluetoothDetailsHeaderController;->init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/samsung/android/settingslib/bluetooth/smep/BluetoothSmepReceiver;)V

    .line 344
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 345
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    move-result-object p1

    const-string v0, "settings_ui"

    const-string v1, "bt_slice_settings_enabled"

    .line 346
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 349
    const-class v1, Lcom/android/settings/slices/BlockingSlicePrefController;

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/slices/BlockingSlicePrefController;

    if-eqz v0, :cond_8

    .line 350
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/settings/bluetooth/BluetoothFeatureProvider;->getBluetoothDeviceSettingsUri(Landroid/bluetooth/BluetoothDevice;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_2

    :cond_8
    const/4 p0, 0x0

    .line 349
    :goto_2
    invoke-virtual {v1, p0}, Lcom/android/settings/slices/SlicePreferenceController;->setSliceUri(Landroid/net/Uri;)V

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChanged :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 810
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->updateSmepFeatures(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 254
    instance-of v0, p1, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 255
    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 459
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 262
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    .line 264
    instance-of p3, p2, Lcom/android/settings/core/SettingsBaseActivity;

    if-eqz p3, :cond_0

    .line 265
    check-cast p2, Lcom/android/settings/core/SettingsBaseActivity;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/samsung/android/settings/core/SecSettingsBaseActivity;->disableExtendedAppBar(Z)V

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 268
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->initBottomNavigation()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 422
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mUnpairDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mUnpairDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 431
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 4

    .line 652
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SecBluetoothDeviceDetailsSettings"

    const-string v1, "onDeviceAttributesChanged() bond state is BOND_NONE"

    .line 653
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->finishActivity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceAttributesChanged() catch IllegalStateException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->refresh()V

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSyncedDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 822
    sget-boolean p1, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "SecBluetoothDeviceDetailsSettings"

    const-string v0, "onDeviceDeleted()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->finishActivity()V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 464
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 466
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mScreenId:Ljava/lang/String;

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->event_device_profiles_setting_navigate_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 402
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 403
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiverRegistered:Z

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 409
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_2
    return-void
.end method

.method public onProfileStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;II)V
    .locals 9

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProfileStateChanged(), profile - "

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

    const-string v1, "SecBluetoothDeviceDetailsSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    .line 778
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-eq p3, v1, :cond_1

    if-nez p3, :cond_3

    :cond_1
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 782
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User has changed the bluetooth profile "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    .line 784
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    invoke-virtual {v6, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", on bluetooth device "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p3, v1, :cond_2

    const-string p2, "enabled."

    goto :goto_0

    :cond_2
    const-string p2, "disabled."

    .line 788
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v6, "DeviceProfilesSettings"

    const-string v8, ""

    .line 781
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p2, 0x1

    if-ne p4, p2, :cond_4

    if-nez p3, :cond_4

    .line 794
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedMembers()Z

    move-result p2

    if-nez p2, :cond_5

    .line 795
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->addDetectorCount()V

    goto :goto_1

    :cond_4
    if-ne p3, v1, :cond_5

    .line 797
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p2

    if-nez p2, :cond_5

    .line 798
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->resetRetryDetector()V

    .line 802
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->updateSmepFeatures(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 356
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 358
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->isFinished:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 364
    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 366
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SecBluetoothDeviceDetailsSettings"

    const-string v1, "onResume() bond state is BOND_NONE"

    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->finishActivity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() catch IllegalStateException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isRestoredDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 377
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->rename_button:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 381
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->refresh()V

    .line 383
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 384
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.bluetooth.device.action.META_DATA_CHANGED"

    .line 385
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mReceiverRegistered:Z

    .line 389
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_4

    .line 390
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerSemCallback(Lcom/samsung/android/settingslib/bluetooth/SemBluetoothCallback;)V

    .line 392
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 397
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->mScreenId:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;)V

    return-void

    .line 360
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothDeviceDetailsSettings;->finishActivity()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 275
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSyncDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

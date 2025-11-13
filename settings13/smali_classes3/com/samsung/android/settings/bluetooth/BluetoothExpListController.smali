.class public Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;,
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;
    }
.end annotation


# instance fields
.field private mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

.field private mBottomView:Landroid/view/View;

.field private mCastInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

.field private mContext:Landroid/content/Context;

.field private mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

.field private mDeletePreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

.field private mExpandableAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mExpandableListView:Landroid/widget/SemExpandableListView;

.field private mHandler:Landroid/os/Handler;

.field private mInsertCastGroup:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

.field private mInsertCastPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

.field private mInsertPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mIsListTop:Z

.field private mListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mNeedUpdateUi:Z

.field private mNestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private mTempDeletePreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTempInsertCastPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTempInsertPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchPosDiff:F

.field private mTouchStartY:F

.field private mView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCastInsertPosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mCastInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeleteGroup(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeletePosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeletePreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceListAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExpandableListView(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/widget/SemExpandableListView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsertCastGroup(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastGroup:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastPreference:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsertGroup(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsertPosition(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsListTop(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mIsListTop:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalAdapter(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalManager(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNestedScrollView(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempDeletePreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertCastPreference:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchPosDiff(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTouchPosDiff:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchStartY(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)F
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTouchStartY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsListTop(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mIsListTop:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempDeletePreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempInsertCastPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertCastPreference:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTempInsertPreference(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTouchPosDiff(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTouchPosDiff:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTouchStartY(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTouchStartY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCalculateAppbarExpanded(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->setCalculateAppbarExpanded()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 3

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    .line 87
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    .line 88
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mIsListTop:Z

    const/4 v2, 0x0

    .line 90
    iput v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTouchStartY:F

    .line 91
    iput v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTouchPosDiff:F

    .line 95
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mBottomView:Landroid/view/View;

    .line 98
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    .line 100
    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    .line 107
    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition-IA;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    .line 108
    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition-IA;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    .line 114
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    .line 122
    new-instance v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition-IA;)V

    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mCastInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastPreference:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertCastPreference:Ljava/util/ArrayList;

    .line 130
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    .line 140
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mHandler:Landroid/os/Handler;

    .line 269
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    .line 262
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    .line 263
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mView:Landroid/view/View;

    .line 264
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 265
    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 266
    invoke-virtual {p4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getLocalCastAdapter()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalCastAdapter:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/LocalBluetoothCastAdapter;

    return-void
.end method

.method private clearSummary()V
    .locals 3

    .line 880
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 881
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 882
    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 886
    :cond_0
    invoke-static {}, Lcom/samsung/android/bluetooth/SemBluetoothCastAdapter;->isBluetoothCastSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedCastDeviceManager()Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->getCachedCastDevicesCopy()Ljava/util/Collection;

    move-result-object p0

    .line 888
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    .line 889
    invoke-virtual {v0, v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 1

    .line 851
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_preference_paired_devices:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setCalculateAppbarExpanded()V
    .locals 4

    .line 564
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v0, :cond_0

    const-string p0, "BluetoothExpListController"

    const-string v0, "setCalculateAppbarExpanded: mExpandableAppBarLayout is null"

    .line 565
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 569
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 571
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v3}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_2

    if-ge v0, v1, :cond_2

    sub-int/2addr v1, v2

    .line 573
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    .line 575
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    goto :goto_0

    .line 577
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public binarySearch(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 709
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result p0

    if-eqz p0, :cond_0

    .line 710
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public binarySearch(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)I
    .locals 0

    .line 761
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceCount()I

    move-result p0

    if-eqz p0, :cond_0

    .line 762
    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public cleanUp()V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 858
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 859
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 861
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 862
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 864
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 865
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 868
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mCastInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    .line 869
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastPreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 870
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertCastPreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 873
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iput-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 874
    iput-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    .line 875
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->clearSummary()V

    return-void
.end method

.method public getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
    .locals 0

    .line 847
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    return-object p0
.end method

.method public init()V
    .locals 4

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->initScrollView()V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->tw_expandable_listview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    .line 349
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->list_bottom_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mBottomView:Landroid/view/View;

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    if-nez v0, :cond_0

    const-string p0, "BluetoothExpListController"

    const-string v0, "init :: mExpandableListView is null"

    .line 353
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 358
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2}, Landroid/widget/SemExpandableListView;->getDividerHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;-><init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 378
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->semSetRoundedCorners(I)V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemExpandableListView;->semSetRoundedCornerColor(II)V

    .line 381
    new-instance v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/16 v1, 0x258

    .line 383
    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setTransitionDuration(I)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V

    .line 413
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$5;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V

    return-void
.end method

.method public initListViewForDialog()V
    .locals 3

    .line 785
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 786
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 787
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    sget v2, Lcom/android/settings/R$drawable;->sec_bluetooth_scandialog_listview_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/SemExpandableListView;->setSelector(I)V

    .line 788
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/SemExpandableListView;->setScrollIndicators(I)V

    .line 789
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/SemExpandableListView;->semSetRoundedCorners(I)V

    .line 790
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 792
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->sec_bluetooth_list_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setBackgroundColor(I)V

    .line 793
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mBottomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-nez v0, :cond_1

    const-string p0, "BluetoothExpListController"

    const-string v0, "initListViewForDialog :: mNestedScrollView is null"

    .line 801
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$11;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public initScrollView()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/settings/bluetooth/DevicePickerActivity;

    if-eqz v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->bluetooth_fragment_settings:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_0

    .line 424
    :cond_0
    instance-of v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->nested_scrollview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->nested_scrollview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    :goto_0
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 2

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanningStateChanged :: started = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothExpListController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 841
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    if-eqz p0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public readyToCastInsertAnimation(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)Z
    .locals 4

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readyToCastInsertAnimation :: mIsOnProgressAddVI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothExpListController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "readyToCastInsertAnimation :: exist preference already"

    .line 720
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastGroup:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    goto :goto_0

    .line 727
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readyToCastInsertAnimation :: contains device = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez p1, :cond_2

    .line 731
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastPreference:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertCastPreference:Ljava/util/ArrayList;

    .line 732
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastPreference:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 733
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastGroup:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public readyToDeleteAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 4

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readyToDeleteAnimation :: mIsOnProgressAddVI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothExpListController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "readyToDeleteAnimation :: not exist preference already"

    .line 607
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 613
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readyToDeleteAnimation :: contains device = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez p1, :cond_2

    .line 617
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    .line 618
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 619
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public readyToInsertAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 4

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readyToInsertAnimation :: mIsOnProgressAddVI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v1, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothExpListController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "readyToInsertAnimation :: exist preference already"

    .line 586
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 592
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readyToInsertAnimation :: contains device = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean p1, p1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez p1, :cond_2

    .line 596
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    .line 597
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 598
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public removeInsertCastPreference(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)V
    .locals 1

    .line 769
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 770
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertCastPreference:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeInsertPreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 897
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAppbarLayoutListener(Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .locals 1

    .line 437
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const-string v0, "BluetoothExpListController"

    if-nez p1, :cond_0

    const-string p0, "mExpandableAppBarLayout is null"

    .line 440
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-nez p1, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->initScrollView()V

    .line 446
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    if-nez p1, :cond_1

    const-string p0, "mNestedScrollView is null"

    .line 447
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p2, :cond_4

    .line 454
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 455
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 456
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-nez p2, :cond_2

    .line 458
    new-instance p2, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    .line 460
    :cond_2
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$6;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setDragCallback(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$BaseDragCallback;)V

    .line 469
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 472
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance p2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$7;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 484
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance p2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$8;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {p1, p2}, Landroid/widget/SemExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 525
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance p2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$9;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {p1, p2}, Landroid/widget/SemExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 539
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNestedScrollView:Landroidx/core/widget/NestedScrollView;

    new-instance p2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$10;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$10;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setCastInsertAnimation()V
    .locals 6

    const-string v0, "BluetoothExpListController"

    const-string v1, "setCastInsertAnimation"

    .line 740
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    if-nez v1, :cond_0

    const-string p0, "setCastInsertAnimation: mDeviceListAdapter is null"

    .line 742
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 745
    iput-boolean v2, v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 746
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastGroup:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;->getCastPreferenceList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 747
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertCastPreference:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v1, 0x0

    .line 749
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertCastPreference:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 750
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastGroup:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertCastPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->binarySearch(Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreference;)I

    move-result v2

    add-int/2addr v2, v1

    .line 751
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertCastGroup:Lcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedCastFlatCount(ILcom/samsung/android/settings/bluetooth/bluetoothcast/BluetoothCastDevicePreferenceGroup;)I

    move-result v3

    .line 752
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mCastInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v4, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCastInsertAnimation: insert index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , sortedIndex = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mCastInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsert(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setInsertAnimation(Z)V
    .locals 4

    .line 627
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-eqz p1, :cond_1

    .line 632
    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    if-nez p1, :cond_1

    return-void

    .line 635
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 636
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 638
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->binarySearch(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I

    move-result v0

    add-int/2addr v0, p1

    .line 640
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v1

    .line 641
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInsertAnimation :: insert index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , sortedIndex = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothExpListController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 645
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsert(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setInsertDeleteAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 7

    .line 649
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    const-string v1, "BluetoothExpListController"

    if-nez v0, :cond_0

    const-string p0, "setInsertDeleteAnimation: mDeviceListAdapter is null"

    .line 650
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 653
    iput-boolean v2, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    .line 654
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 657
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 658
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v2

    .line 659
    :goto_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 660
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object v3

    :goto_1
    const/4 v4, -0x1

    if-eqz v3, :cond_3

    .line 662
    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->findDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    if-eq v0, v4, :cond_4

    .line 665
    iput-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 666
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v4, v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v4

    .line 668
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInsertDeleteAnimation: delete deleteIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , deleteSortedIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v5, v0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    .line 672
    :cond_4
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->binarySearch(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I

    move-result p1

    .line 673
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v0

    if-eqz v3, :cond_5

    .line 675
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v0, v0, -0x1

    .line 678
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInsertDeleteAnimation: insert insertIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , insertSortedIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    .line 681
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    .line 682
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public setListDivider(Landroid/graphics/drawable/InsetDrawable;)V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 780
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 781
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView;->setDividerHeight(I)V

    return-void
.end method

.method public setListMinimumHeight(I)V
    .locals 0

    .line 775
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView;->setMinimumHeight(I)V

    return-void
.end method

.method public setListViewVisible(I)V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {p0, p1}, Landroid/widget/SemExpandableListView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    return-void
.end method

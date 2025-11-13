.class public final Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mAvailable:Landroid/view/ViewGroup;

.field public mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

.field public final mAvailableItemList:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

.field public final mDetailListening:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsHavingConvertView:Z

.field public mIsSatelliteModeOn:Z

.field public mItems:Lcom/android/systemui/qs/QSDetailItems;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mMusicShare:Landroid/view/ViewGroup;

.field public mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

.field public mMusicShareTitleDivider:Landroid/view/View;

.field public mPairedDevices:Landroid/view/ViewGroup;

.field public final mPairedItemList:Ljava/util/ArrayList;

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public mTransientEnabling:Z

.field public final sBluetoothTile:Lcom/android/systemui/qs/tiles/SBluetoothTile;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BluetoothDetailAdapter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/SettingsHelper;ZLjava/util/ArrayList;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/statusbar/policy/SBluetoothController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/qs/tiles/SBluetoothTile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSDetailItems$Item;",
            ">;",
            "Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;",
            "Lcom/android/systemui/statusbar/policy/SBluetoothController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/qs/tiles/SBluetoothTile;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mPairedItemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mTransientEnabling:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mIsSatelliteModeOn:Z

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-boolean p5, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mDetailListening:Z

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailableItemList:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p9, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mIsHavingConvertView:Z

    iput-object p11, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->sBluetoothTile:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    return-void
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mIsHavingConvertView:Z

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d02f7

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a08ac

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mPairedDevices:Landroid/view/ViewGroup;

    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mPairedDevices:Landroid/view/ViewGroup;

    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p3, 0x7f0a0131

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v1, "Bluetooth.Available"

    invoke-virtual {p3, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailable:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-boolean p3, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    const v1, 0x7f0a07ad

    if-eqz p3, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShare:Landroid/view/ViewGroup;

    invoke-static {p1, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShare:Landroid/view/ViewGroup;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShare:Landroid/view/ViewGroup;

    const p3, 0x7f0a07ae

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShareTitleDivider:Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShare:Landroid/view/ViewGroup;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mIsHavingConvertView:Z

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->sBluetoothTile:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    iget-object v1, p3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    if-eqz v1, :cond_3

    const v1, 0x7f130eb3

    goto :goto_1

    :cond_3
    const v1, 0x7f130ead

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v1, "Bluetooth"

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v1, 0x7f130eaa

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v1, "Bluetooth.InstantSession"

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    :cond_4
    new-instance p1, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mTransientEnabling:Z

    iget-object p1, p3, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->setItemsVisible(Z)V

    return-object p2
.end method

.method public final disallowStartSettingsIntent()Z
    .locals 1

    const-string p0, "BluetoothDetailAdapter"

    const-string v0, "disallowStartSettingsIntent"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x96

    return p0
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/tiles/SBluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f130eb2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getToggleEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mTransientEnabling:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mIsSatelliteModeOn:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->sBluetoothTile:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 2

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->disconnect()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->connect()V

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scan(Z)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v0

    if-nez v0, :cond_4

    check-cast p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scan(Z)V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect$1()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final setItemsVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "setItemsVisible = "

    const-string v1, "BluetoothDetailAdapter"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    :cond_1
    new-instance p1, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$2;-><init>(Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final setToggleState(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mContext:Landroid/content/Context;

    const/16 v1, 0x9a

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setToggleState state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDetailAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mIsSatelliteModeOn:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isBluetoothTileBlocked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->sBluetoothTile:Lcom/android/systemui/qs/tiles/SBluetoothTile;

    if-nez v0, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isBlockedByEASPolicy$1()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {p1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->forceCollapsePanels()V

    new-instance p1, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/tileimpl/SQSTileImpl;->fireToggleStateChanged(Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    if-nez p1, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scan(Z)V

    sget-boolean v3, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mDetailListening:Z

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {v4, v0, v3}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->scanMusicShareDevices(ZZ)V

    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mTransientEnabling:Z

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->onToggleStateChange(Z)V

    check-cast v2, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {v2, p1, v0}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->setBluetoothEnabled(ZZ)V

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->isBlockedByEASPolicy$1()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/tiles/SBluetoothTile;->onToggleStateChange(Z)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    if-eqz p1, :cond_5

    const p1, 0x7f130eb3

    goto :goto_0

    :cond_5
    const p1, 0x7f130ead

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(I)V

    return-void

    :cond_6
    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showItPolicyToast()V

    return-void
.end method

.method public final updateItems$1()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "BluetoothDetailAdapter"

    const-string/jumbo v1, "updateItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->getDevices$1()Ljava/util/Collection;

    move-result-object v3

    sget-boolean v4, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->DEBUG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateItems devices: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v3, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mController.getDevices() list: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, v3, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget v4, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBondState:I

    new-instance v5, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v5}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    sget-boolean v6, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mContext:Landroid/content/Context;

    sget-boolean v8, Lcom/android/settingslib/bluetooth/BluetoothUtils;->DEBUG:Z

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.android.systemui"

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const v9, 0x7f06058b

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f06007f

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    :goto_1
    invoke-virtual {v3, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getIconDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isBtCastConnectedAsHost(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const v8, 0x7f081242

    const v11, 0x7f081243

    invoke-static {v10, v6, v8, v11}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getOverlayIconTintableDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_2

    :cond_5
    invoke-virtual {v10, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_2
    iput-object v10, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClassDrawable()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    :goto_3
    iput-boolean v7, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->updateIconSize:Z

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getDeviceForGroupConnectionState(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mPrefixName:Ljava/lang/String;

    if-nez v9, :cond_7

    const-string v9, ""

    :cond_7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    check-cast v9, Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v10}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    move v9, v7

    :goto_5
    iput-boolean v9, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    iput-object v3, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    const/16 v6, 0xc

    if-eq v4, v6, :cond_c

    iget-boolean v3, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsRestored:Z

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    :goto_6
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_7
    if-eq v8, v7, :cond_d

    const/4 v3, 0x3

    if-ne v8, v3, :cond_3

    :cond_d
    iput-boolean v7, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isInProgress:Z

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v3, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$4;-><init>(Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v3, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$5;-><init>(Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mPairedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mPairedItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailableItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mAvailableItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final updateMusicShareItems()V
    .locals 6

    const-string v0, "BluetoothDetailAdapter"

    const-string/jumbo v1, "updateMusicShareItems()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_BLUETOOTH_MUSIC_SHARE:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mController:Lcom/android/systemui/statusbar/policy/SBluetoothController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/SBluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedCastDeviceManager:Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDeviceManager;->getCachedCastDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    const-string p0, "getCachedCastDevices() is null."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;

    new-instance v3, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v3}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getBtCastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getMaxConnectionState()I

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->isConnected()Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/bluetooth/bluetoothcast/CachedBluetoothCastDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    iput-object v2, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->updateIconSize:Z

    if-eq v4, v2, :cond_3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    :cond_3
    iput-boolean v2, v3, Lcom/android/systemui/qs/QSDetailItems$Item;->isInProgress:Z

    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSDetailItems$Item;

    iget-object v2, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;->mMusicShareItems:Lcom/android/systemui/qs/QSDetailItems;

    new-instance v1, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter$3;-><init>(Lcom/android/systemui/qs/tiles/detail/BluetoothDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

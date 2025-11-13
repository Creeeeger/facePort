.class public Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static final BATTERY_ESTIMATE:Ljava/lang/String; = "battery_estimate"

.field private static final CASE_DEVICE_ID:I = 0x3

.field private static final CASE_LOW_BATTERY_LEVEL:I = 0x13

.field private static final DATABASE_BLUETOOTH:Ljava/lang/String; = "Bluetooth"

.field private static final DATABASE_ID:Ljava/lang/String; = "id"

.field private static final DEBUG:Z

.field private static final ESTIMATE_READY:Ljava/lang/String; = "estimate_ready"

.field private static final HALF_ALPHA:F = 0.5f

.field private static final LEFT_DEVICE_ID:I = 0x1

.field private static final LOW_BATTERY_LEVEL:I = 0xf

.field private static final MAIN_DEVICE_ID:I = 0x4

.field private static final PATH:Ljava/lang/String; = "time_remaining"

.field private static final QUERY_PARAMETER_ADDRESS:Ljava/lang/String; = "address"

.field private static final QUERY_PARAMETER_BATTERY_ID:Ljava/lang/String; = "battery_id"

.field private static final QUERY_PARAMETER_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final QUERY_PARAMETER_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final RIGHT_DEVICE_ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AdvancedBtHeaderCtrl"

.field private static final TIME_OF_HOUR:J

.field private static final TIME_OF_MINUTE:J


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mHandler:Landroid/os/Handler;

.field final mIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mIsLeftDeviceEstimateReady:Z

.field mIsRightDeviceEstimateReady:Z

.field mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field final mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;


# direct methods
.method public static synthetic $r8$lambda$1QYWtRmlaoYOFifApir8_vZa2YA(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;IILandroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$showBatteryPredictionIfNecessary$14(IILandroid/widget/LinearLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6SrZI3BSq4qkltzfrp_MAHm1c9M(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$refresh$5()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$81OX3t1-3OQHdzEvu0EY20OVPDI(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateSubLayout$12(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Csb0x5YFqGGsl1c-eWUx7eKFbN0(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$refresh$4()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XYWpay_nmEiqDFsW0GD_bvkOldw(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$refresh$3()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$d6vlAePAUVWysmMR3G36Y2_ee0k(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/util/Set;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$registerBluetoothDevice$1(Ljava/util/Set;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e0RoDp1kfRqUJeFq_1gaZW-u8Ug(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateIcon$18(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hCYzVxNJms3VeG3vHW7kTZh6vWE(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateSubLayout$9(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hIr1tOKM-Qlkptj_KW9zhdz03Nw(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$unRegisterBluetoothDevice$2(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k2Pr4NXGTDCt17yHr-ZDGRp4Yg8(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Landroid/widget/LinearLayout;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$showBatteryPredictionIfNecessary$15(Landroid/widget/LinearLayout;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$oojiD6bngoQ9HUmxsr58EXRL4ao(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$registerBluetoothDevice$0(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q9Oi8E9HVApRLCyGdubAuFfkUk0(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$refresh$6(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qEDKzefVg4Tex-WQAWVYPxKu2tE(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateSubLayout$10(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$s3sXm-G1_zF7GivVWQaLTOggWvc(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateIcon$17(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYkBUsfAsiYmuB-LCnQTpMpfslg(Landroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$showBothDevicesBatteryPredictionIfNecessary$16(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xfVzzYIfvP2Tu_dFOeGOgVk9q0E(Landroid/bluetooth/BluetoothDevice;II)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateSubLayout$11(Landroid/bluetooth/BluetoothDevice;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z82lFScRM6rK4XSNNwhhYbo_QdQ(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateSubLayout$8(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "AdvancedBtHeaderCtrl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->DEBUG:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe10

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->TIME_OF_HOUR:J

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->TIME_OF_MINUTE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$1;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    return-void
.end method

.method private isUntetheredHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    const/4 p0, 0x6

    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x11

    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Untethered Headset"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$refresh$3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$refresh$4()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private lambda$refresh$5()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->isUntetheredHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private lambda$refresh$6(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 p2, 0x12

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private lambda$refresh$7(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a05cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a05cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateDisconnectLayout()V

    return-void

    :cond_0
    invoke-interface {p4}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const p4, 0x7f0a0896

    const v0, 0x7f0a0890

    const v1, 0x7f0a088f

    if-eqz p2, :cond_1

    invoke-interface {p3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/LinearLayout;

    const v7, 0x7f14074f

    const/4 v8, 0x1

    const/4 v3, 0x7

    const/16 v4, 0xa

    const/16 v5, 0x15

    const/16 v6, 0xd

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateSubLayout(Landroid/widget/LinearLayout;IIIIII)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    const v6, 0x7f14075d

    const/4 v7, 0x3

    const/16 v2, 0x9

    const/16 v3, 0xc

    const/16 v4, 0x17

    const/16 v5, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateSubLayout(Landroid/widget/LinearLayout;IIIIII)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    const v6, 0x7f1407ba

    const/4 v7, 0x2

    const/16 v2, 0x8

    const/16 v3, 0xb

    const/16 v4, 0x16

    const/16 v5, 0xe

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateSubLayout(Landroid/widget/LinearLayout;IIIIII)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->showBothDevicesBatteryPredictionIfNecessary()V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p2, p2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p2, p2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p3}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v2, 0x5

    const/16 v3, 0x12

    const/16 v4, 0x14

    const/16 v5, 0x13

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateSubLayout(Landroid/widget/LinearLayout;IIIIII)V

    :goto_0
    return-void
.end method

.method private lambda$registerBluetoothDevice$0(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothDevices:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$registerBluetoothDevice$1(Ljava/util/Set;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    const-string v0, ":"

    const-string v1, "AdvancedBtHeaderCtrl"

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    invoke-virtual {v2, p2, v3, p0}, Landroid/bluetooth/BluetoothAdapter;->addOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": add into Listener failed"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    return-void
.end method

.method private lambda$showBatteryPredictionIfNecessary$14(IILandroid/widget/LinearLayout;)V
    .locals 8

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1409fe

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "time_remaining"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "Bluetooth"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "battery_id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "battery_level"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string p2, "battery_estimate"

    const-string v6, "estimate_ready"

    filled-new-array {p2, v6}, [Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "AdvancedBtHeaderCtrl"

    if-nez v0, :cond_0

    const-string p0, "showBatteryPredictionIfNecessary() cursor is null!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    sget-boolean v5, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->DEBUG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showBatteryTimeIfNecessary() batteryId : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", ESTIMATE_READY : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", BATTERY_ESTIMATE : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v3, v4, p3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->showBatteryPredictionIfNecessary(IJLandroid/widget/LinearLayout;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    if-ne v2, v4, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsLeftDeviceEstimateReady:Z

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_5

    if-ne v2, v4, :cond_4

    move v3, v4

    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsRightDeviceEstimateReady:Z

    :cond_5
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0
.end method

.method private synthetic lambda$showBatteryPredictionIfNecessary$15(Landroid/widget/LinearLayout;IJ)V
    .locals 1

    const v0, 0x7f0a026d

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    long-to-double p2, p3

    const/4 p4, 0x0

    invoke-static {p0, p2, p3, p4, p4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showBothDevicesBatteryPredictionIfNecessary$16(Landroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$unRegisterBluetoothDevice$2(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const-string v0, ":"

    const-string v1, "AdvancedBtHeaderCtrl"

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    invoke-virtual {v2, p1, p0}, Landroid/bluetooth/BluetoothAdapter;->removeOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private synthetic lambda$updateIcon$17(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$updateIcon$18(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4

    const-string v0, "AdvancedBtHeaderCtrl"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, p1, v2, p2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda15;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to take persistable permission for: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Failed to get bitmap for: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private static synthetic lambda$updateSubLayout$10(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateSubLayout$11(Landroid/bluetooth/BluetoothDevice;II)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    const/16 p0, 0xc

    if-ne p2, p0, :cond_0

    const/16 p0, 0x13

    goto :goto_0

    :cond_0
    const/16 p0, 0xf

    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateSubLayout$12(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->isUntetheredHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateSubLayout$13(Landroid/widget/LinearLayout;IIIIIILcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateSubLayoutUi(Landroid/widget/LinearLayout;IIIIIILcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method private static synthetic lambda$updateSubLayout$8(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateSubLayout$9(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private registerBluetoothDevice()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "AdvancedBtHeaderCtrl"

    if-nez v0, :cond_0

    const-string p0, "No mBluetoothAdapter"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothDevices:Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothDevices:Ljava/util/Set;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothDevices:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMemberDevices:Ljava/util/Set;

    new-instance v2, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;I)V

    invoke-interface {v0, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "No BT device to register."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothDevices:Ljava/util/Set;

    new-instance v3, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/util/Set;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothDevices:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mBluetoothDevices remove "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-void
.end method

.method private showBatteryIcon(Landroid/widget/LinearLayout;IIZ)V
    .locals 2

    const/4 v0, 0x0

    if-gt p2, p3, :cond_0

    if-nez p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    const v1, 0x7f0a026a

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p3, 0x7f08035f

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070058

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object p4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v1, 0x7f070054

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f070057

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p2, p4}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->createBtBatteryIcon(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p0, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showBatteryPredictionIfNecessary(Landroid/widget/LinearLayout;II)V
    .locals 1

    new-instance v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda9;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;IILandroid/widget/LinearLayout;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method private unRegisterBluetoothDevice()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "AdvancedBtHeaderCtrl"

    if-nez v0, :cond_0

    const-string p0, "No mBluetoothAdapter"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothDevices:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothDevices:Ljava/util/Set;

    new-instance v1, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothDevices:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "No BT device to unregister."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDisconnectLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a088f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0896

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0890

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0a0723

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a0270

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a026a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "updateDisconnectLayout() iconUri : "

    const-string v3, "AdvancedBtHeaderCtrl"

    invoke-static {v2, v1, v3}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    const v2, 0x7f0a0716

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateSubLayout(Landroid/widget/LinearLayout;IIIIII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v3, p3

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v4, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda3;

    move/from16 v5, p2

    invoke-direct {v4, v2, v5, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-static {v4}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v12

    new-instance v4, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda3;

    const/4 v6, 0x1

    invoke-direct {v4, v2, v3, v6}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-static {v4}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v13

    new-instance v4, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda3;

    const/4 v6, 0x2

    move/from16 v14, p5

    invoke-direct {v4, v2, v14, v6}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-static {v4}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v15

    new-instance v4, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda6;

    move/from16 v11, p4

    invoke-direct {v4, v2, v11, v3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda6;-><init>(Landroid/bluetooth/BluetoothDevice;II)V

    invoke-static {v4}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v16

    new-instance v4, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda7;

    invoke-direct {v4, v0, v2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v4}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v17

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;

    invoke-direct {v4, v1, v2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-static {v4}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v18

    move-object v6, v12

    move-object v7, v13

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    invoke-static/range {v6 .. v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    sget-boolean v1, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v12

    move-object v9, v13

    move-object v10, v15

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    invoke-direct/range {v0 .. v13}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateSubLayout$13(Landroid/widget/LinearLayout;IIIIIILcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method private updateSubLayoutUi(Landroid/widget/LinearLayout;IIIIIILcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "IIIIII",
            "Lcom/google/common/base/Supplier;",
            "Lcom/google/common/base/Supplier;",
            "Lcom/google/common/base/Supplier;",
            "Lcom/google/common/base/Supplier;",
            "Lcom/google/common/base/Supplier;",
            "Lcom/google/common/base/Supplier;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p7

    iget-object v3, v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v3, v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface/range {p8 .. p8}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const v5, 0x7f0a0716

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v6, v7}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtRainbowDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v6

    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-interface/range {p9 .. p9}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface/range {p10 .. p10}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface/range {p11 .. p11}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "buletoothDevice: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", updateSubLayout() icon : "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", battery : "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p3

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", charge : "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p5

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", batteryLevel : "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", charging : "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", iconUri : "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", lowBatteryLevel : "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AdvancedBtHeaderCtrl"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-direct {p0, p1, v2, v5}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->showBatteryPredictionIfNecessary(Landroid/widget/LinearLayout;II)V

    :cond_2
    const v3, 0x7f0a0270

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface/range {p12 .. p12}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v8, 0x4

    const/4 v9, -0x1

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-eqz v4, :cond_6

    if-eq v5, v9, :cond_3

    invoke-virtual {p1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v5}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, v5, v7, v6}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->showBatteryIcon(Landroid/widget/LinearLayout;IIZ)V

    goto :goto_1

    :cond_3
    if-ne v2, v8, :cond_5

    invoke-virtual {p1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a026a

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-interface/range {p13 .. p13}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v9, :cond_4

    const/16 v4, -0x64

    if-eq v0, v4, :cond_4

    invoke-static {v0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_6
    if-eq v5, v9, :cond_7

    invoke-virtual {p1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v5}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, p1, v5, v7, v6}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->showBatteryIcon(Landroid/widget/LinearLayout;IIZ)V

    goto :goto_1

    :cond_7
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0a0723

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-ne v2, v8, :cond_8

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public createBtBatteryIcon(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    new-instance p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    const v0, 0x7f060454

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;-><init>(Landroid/content/Context;III)V

    invoke-virtual {p0, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setBatteryLevel(I)V

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x1010429

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iput-boolean p3, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->charging:Z

    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    new-instance p2, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    invoke-direct {p2, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->invalidateRunnable:Lkotlin/jvm/functions/Function0;

    new-instance p2, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;

    invoke-direct {p2, p1}, Lcom/android/settingslib/graph/ThemedBatteryDrawable$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->refresh()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->registerBluetoothDevice()V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->refresh()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->unRegisterBluetoothDevice()V

    return-void
.end method

.method public refresh()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-static {v2}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v2

    new-instance v3, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda14;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    invoke-static {v3}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    sget-boolean v4, Lcom/android/settings/bluetooth/Utils;->DEBUG:Z

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$refresh$7(Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public showBatteryPredictionIfNecessary(IJLandroid/widget/LinearLayout;)V
    .locals 7

    new-instance v6, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda16;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda16;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Landroid/widget/LinearLayout;IJ)V

    invoke-static {v6}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showBothDevicesBatteryPredictionIfNecessary()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a088f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v2, v2, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0896

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsLeftDeviceEstimateReady:Z

    if-eqz v2, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsRightDeviceEstimateReady:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    new-instance v2, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda10;

    invoke-direct {v2, v0, p0, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda10;-><init>(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    new-instance v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

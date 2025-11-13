.class public Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# static fields
.field static final BLUETOOTH_DEVICE_HASH_CODE:Ljava/lang/String; = "bluetooth_device_hash_code"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final COMPARATOR:Ljava/util/Comparator;

.field static final DEFAULT_EXPANDED_ROW_COUNT:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_ENABLE_BLUETOOTH:Ljava/lang/String; = "enable_bluetooth"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static sBluetoothEnabling:Z


# instance fields
.field public mAvailableMediaBtDeviceUpdater:Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;

.field public final mContext:Landroid/content/Context;

.field public mSavedBtDeviceUpdater:Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    sget-object p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->sLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->-$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;

    move-result-object p0

    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler;->mLoadBtManagerTask:Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker$LoadBtManagerHandler$$ExternalSyntheticLambda0;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public buildBluetoothDetailDeepLinkAction(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroidx/slice/builders/SliceAction;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->getBluetoothDetailIntent(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f0805ce

    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, v1, p1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    return-object p0
.end method

.method public buildPrimaryBluetoothAction(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroidx/slice/builders/SliceAction;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_DEVICES_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v1

    const-string v2, "bluetooth_device_hash_code"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v2

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->getBluetoothDeviceIcon(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroidx/slice/builders/SliceAction;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2, p1}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    return-object v1
.end method

.method public final getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;

    return-object p0
.end method

.method public getBluetoothDetailIntent(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/app/PendingIntent;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_address"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v2, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 v0, 0x0

    const v2, 0x7f140c79

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/16 v0, 0x3f1

    iput v0, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result p1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getBluetoothDeviceIcon(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtRainbowDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const p1, 0x10805c0

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f140a6a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f1417b9

    const-string v5, ""

    const/16 v1, 0x579

    invoke-static/range {v1 .. v6}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_DEVICES_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getPairedBluetoothDevices()Ljava/util/List;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const-string v1, "BluetoothDevicesSlice"

    if-nez v0, :cond_0

    const-string v0, "Cannot get Bluetooth devices, Bluetooth is disabled."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;->sLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_1

    const-string v0, "Cannot get Bluetooth devices, Bluetooth is not ready."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    iget-object p0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->COMPARATOR:Ljava/util/Comparator;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getSlice()Landroidx/slice/Slice;
    .locals 10

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "BluetoothDevicesSlice"

    const-string v0, "Bluetooth is not supported on this hardware platform"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance v2, Landroidx/slice/builders/ListBuilder;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_DEVICES_SLICE_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v3, v2, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    const/4 v5, -0x1

    invoke-interface {v3, v5}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v3, 0xb

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v3, :cond_1

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    const/high16 v3, 0x4000000

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->sBluetoothEnabling:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f080387

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const v7, 0x1010429

    invoke-static {v1, v7}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v7

    invoke-static {v1, v7}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const v7, 0x7f1406f7

    invoke-virtual {v1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const v8, 0x7f1406f6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v8, v4, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const-string v8, "enable_bluetooth"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-static {p0, v6, v4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    new-instance v3, Landroidx/slice/builders/SliceAction;

    invoke-direct {v3, p0, v0, v6, v1}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    new-instance p0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    iput-object v1, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v6, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iput-object v7, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-boolean v6, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    iput-object v3, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iget-object v0, v2, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p0}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    invoke-virtual {v2}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_2
    sput-boolean v6, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->sBluetoothEnabling:Z

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const v4, 0x10805c0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const v5, 0x1010435

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const v7, 0x7f1406f5

    invoke-virtual {v4, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {v7, v6, v8, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-static {v7, v0, v6, v4}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v7

    new-instance v8, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {v8, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    iput-object v4, v8, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v6, v8, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iput-object v7, v8, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const v4, 0x7f080333

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v0}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const v5, 0x7f140783

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v7, Lcom/android/settings/bluetooth/BluetoothPairingDetail;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v5, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v7, v9, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const v7, 0x7f14077f

    invoke-virtual {v5, v7, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const/16 v7, 0x3fa

    iput v7, v9, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v5}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v7, v9, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v3, v0, v6, v4}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)V

    invoke-virtual {v2, v8}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->getPairedBluetoothDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mAvailableMediaBtDeviceUpdater:Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;

    if-nez v4, :cond_4

    new-instance v4, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1, v6}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;I)V

    iput-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mAvailableMediaBtDeviceUpdater:Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;

    :cond_4
    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mSavedBtDeviceUpdater:Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;

    if-nez v4, :cond_5

    new-instance v4, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1, v6, v6}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;ZI)V

    iput-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mSavedBtDeviceUpdater:Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    const v5, 0x7f140a5e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_7
    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->getBluetoothDeviceIcon(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v6, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iput-object v4, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-boolean v6, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mAvailableMediaBtDeviceUpdater:Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;

    invoke-virtual {v4, v3}, Lcom/android/settings/bluetooth/AvailableMediaBluetoothDeviceUpdater;->isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mSavedBtDeviceUpdater:Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;

    invoke-virtual {v4, v3}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;->isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->buildBluetoothDetailDeepLinkAction(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroidx/slice/builders/SliceAction;

    move-result-object v3

    iput-object v3, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    goto :goto_3

    :cond_9
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->buildPrimaryBluetoothAction(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    iput-object v4, v5, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {p0, v3}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->buildBluetoothDetailDeepLinkAction(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroidx/slice/builders/SliceAction;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)V

    :goto_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    :goto_4
    new-instance p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice$$ExternalSyntheticLambda1;

    invoke-direct {p0, v2}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice$$ExternalSyntheticLambda1;-><init>(Landroidx/slice/builders/ListBuilder;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v2}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public final getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417b9

    return p0
.end method

.method public final getUri$1()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_DEVICES_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public final onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "enable_bluetooth"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->sBluetoothEnabling:Z

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_DEVICES_SLICE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "bluetooth_device_hash_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->getPairedBluetoothDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setActive()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect$1()V

    :cond_4
    :goto_0
    return-void
.end method

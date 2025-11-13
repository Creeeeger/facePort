.class public Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessKeyboardShareFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field final DB_OBSERVER_SWITCH_TIMEOUT:I

.field private final MSG_PAIRING_UPDATE:I

.field private final MSG_SWITCH_UPDATE:I

.field private final MSG_UI_UPDATE:I

.field final PAIRING_TIMEOUT:I

.field final SWITCH_TIMEOUT:I

.field private final WKS_CONNECTED:I

.field private final WKS_FOCUSED_DEVICE:I

.field private final WKS_HOST:I

.field private final WKS_HOSTLIST:I

.field private final WKS_MODE:I

.field private final WKS_REGISTERED:I

.field private isBluetoothOn:Z

.field private mBlueToothReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mProgressItem:Landroid/view/MenuItem;

.field private mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

.field private mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

.field private mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

.field private mWirelessKeyboardShareUiHandler:Landroid/os/Handler;

.field private onWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;

.field private switchPosition:I


# direct methods
.method public static synthetic $r8$lambda$-ITnFyOS_2XDJre7ekwhOlQeW1o(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->lambda$updateWirelessKeyboardShare$0(JILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisBluetoothOn(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->isBluetoothOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIm(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/hardware/input/InputManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mIm:Landroid/hardware/input/InputManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoteDevice(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWirelessKeyboardShareDBUtil(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetswitchPosition(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->switchPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisBluetoothOn(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->isBluetoothOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputswitchPosition(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->switchPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msyncStatus(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->syncStatus()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 466
    new-instance v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$6;

    invoke-direct {v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$6;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    .line 63
    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const/4 v1, 0x0

    .line 74
    iput v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->MSG_UI_UPDATE:I

    const/4 v2, 0x1

    .line 75
    iput v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->MSG_SWITCH_UPDATE:I

    const/4 v3, 0x2

    .line 76
    iput v3, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->MSG_PAIRING_UPDATE:I

    const/16 v4, 0x64

    .line 77
    iput v4, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->DB_OBSERVER_SWITCH_TIMEOUT:I

    const/16 v4, 0xbb8

    .line 78
    iput v4, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->SWITCH_TIMEOUT:I

    const v4, 0xea60

    .line 79
    iput v4, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->PAIRING_TIMEOUT:I

    .line 81
    iput v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->WKS_CONNECTED:I

    .line 82
    iput v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->WKS_HOST:I

    .line 83
    iput v3, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->WKS_FOCUSED_DEVICE:I

    const/4 v2, 0x3

    .line 84
    iput v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->WKS_HOSTLIST:I

    .line 85
    iput v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->WKS_MODE:I

    const/4 v0, 0x5

    .line 86
    iput v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->WKS_REGISTERED:I

    .line 88
    iput-boolean v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->isBluetoothOn:Z

    .line 89
    iput v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->switchPosition:I

    return-void
.end method

.method private synthetic lambda$updateWirelessKeyboardShare$0(JILjava/lang/String;)V
    .locals 2

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "whenNanos : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " index : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " contents : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WirelessKeyboardShareFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->syncData()V

    const-string p1, "true"

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    if-eq p3, p2, :cond_4

    const/4 p2, 0x2

    if-eq p3, p2, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_2

    const/4 p2, 0x4

    if-eq p3, p2, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    .line 322
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 321
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(IZ)V

    goto :goto_0

    .line 317
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    .line 318
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 317
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(IZ)V

    goto :goto_0

    .line 313
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {p0, p2, p4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(ILjava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(ILjava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {p0, p2, p4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(ILjava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    const/4 p2, 0x0

    .line 302
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 301
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->save(IZ)V

    :goto_0
    return-void
.end method

.method private syncStatus()V
    .locals 12

    .line 336
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x3

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 337
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    move v0, v3

    :goto_0
    if-gt v0, v1, :cond_5

    .line 339
    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    .line 340
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->remote_device:I

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 339
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v5, v5, v0

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 342
    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v5, v5, v0

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->setCheckImageVisibility(Z)V

    .line 343
    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v5, v5, v0

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->setLongClickable(Z)V

    .line 344
    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {v5}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->gethostlist()[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v0, -0x1

    .line 347
    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 348
    iget-object v7, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 349
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    move-object v7, v2

    .line 351
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v8, v8, v0

    aget-object v5, v5, v6

    invoke-virtual {v8, v5}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->setHostName(Ljava/lang/String;)V

    .line 352
    iget-object v5, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v5, v5, v0

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    invoke-virtual {v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->gethostlist()[Ljava/lang/String;

    move-result-object v0

    move v5, v3

    :goto_2
    if-gt v5, v1, :cond_4

    add-int/lit8 v6, v5, -0x1

    .line 358
    iget-object v7, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v7, v7, v5

    iget-object v8, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    .line 359
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settings/R$string;->remote_device:I

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 358
    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    array-length v7, v0

    if-lt v7, v5, :cond_3

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 369
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 370
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    iget-object v8, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    const/4 v10, 0x7

    .line 376
    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByString(I)Ljava/lang/String;

    move-result-object v9

    aget-object v11, v0, v6

    .line 377
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 375
    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 379
    iget-object v8, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v8, v8, v5

    iget-object v9, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    .line 380
    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByString(I)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v0, v6

    .line 381
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 379
    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->setCheckImageVisibility(Z)V

    .line 383
    iget-object v8, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v8, v8, v5

    invoke-virtual {v8, v5}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->setIndex(I)V

    .line 384
    iget-object v8, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v8, v8, v5

    aget-object v6, v0, v6

    invoke-virtual {v8, v6}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->setHostName(Ljava/lang/String;)V

    .line 385
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v6, v6, v5

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->setLongClickable(Z)V

    .line 386
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v6, v6, v5

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v6, v6, v5

    new-instance v7, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;

    invoke-direct {v7, p0, v5}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$5;-><init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;I)V

    iput-object v7, v6, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_4

    .line 372
    :catch_0
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_4

    .line 361
    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 362
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->setCheckImageVisibility(Z)V

    .line 363
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v6, v6, v5

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->setHostName(Ljava/lang/String;)V

    .line 364
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;->setLongClickable(Z)V

    .line 365
    iget-object v6, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v6, v6, v5

    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 438
    :cond_4
    invoke-static {v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 440
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    :cond_5
    const/4 v0, 0x6

    .line 443
    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->loadByBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 444
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    :cond_6
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 95
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    .line 96
    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mIm:Landroid/hardware/input/InputManager;

    .line 98
    sget p1, Lcom/android/settings/R$layout;->sec_wireless_keyboard_share:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->updateWirelessKeyboardShare()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 132
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    sget v0, Lcom/android/settings/R$menu;->sec_wireless_keyboard_share_progress:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    sget v0, Lcom/android/settings/R$id;->progress:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mProgressItem:Landroid/view/MenuItem;

    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->progressVisibled(Z)V

    .line 137
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->unregisterWKSObserver()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBlueToothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->onWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;

    if-eqz v0, :cond_1

    .line 124
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, v0}, Landroid/hardware/input/InputManager;->unregisterOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;)V

    .line 127
    :cond_1
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 110
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 111
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->syncData()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 104
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->syncStatus()V

    return-void
.end method

.method progressVisibled(Z)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mProgressItem:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 452
    sget v1, Lcom/android/settings/R$layout;->sec_wireless_keyboard_share_progressbar:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 454
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 456
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 457
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mProgressItem:Landroid/view/MenuItem;

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method registerWKSObserver()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    const-string v0, "WirelessKeyboardShareFragment"

    const-string v1, "create Observer"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$1;-><init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

    const-string v1, "registerWKSObserver"

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    .line 181
    invoke-virtual {v1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 180
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    return-void
.end method

.method remoteDeviceEnabled(Z)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 463
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const/4 v0, 0x3

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method unregisterWKSObserver()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    const-string v0, "WirelessKeyboardShareFragment"

    const-string v1, "unregisterWKSObserver"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeybaordShareContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method updateWirelessKeyboardShare()V
    .locals 4

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 196
    new-instance v1, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareDBUtil:Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    .line 197
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 198
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const-string v2, "remote_device1"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aput-object v2, v1, v0

    .line 199
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const-string v2, "remote_device2"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 200
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const-string v2, "remote_device3"

    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    :goto_0
    if-gt v0, v3, :cond_0

    .line 204
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mRemoteDevice:[Lcom/samsung/android/settings/inputmethod/WirelessKeyboardSharePopupPreference;

    aget-object v1, v1, v0

    new-instance v2, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$2;-><init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;I)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 240
    new-instance v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$3;-><init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mWirelessKeyboardShareUiHandler:Landroid/os/Handler;

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBlueToothReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 259
    new-instance v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$4;-><init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBlueToothReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mBlueToothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->registerWKSObserver()V

    .line 295
    new-instance v0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->onWirelessKeyboardShareChangedListener:Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;

    .line 329
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->registerOnWirelessKeyboardShareChangedListener(Landroid/hardware/input/InputManager$OnWirelessKeyboardShareChangedListener;Landroid/os/Handler;)V

    .line 331
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->updateWirelessKeyboardShareStatus()V

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareFragment;->syncStatus()V

    return-void
.end method

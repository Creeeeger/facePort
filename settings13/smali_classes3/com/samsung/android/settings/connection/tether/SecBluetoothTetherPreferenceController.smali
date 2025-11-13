.class public Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecBluetoothTetherPreferenceController.java"

# interfaces
.implements Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$OnStartTetheringCallback;,
        Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;,
        Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PANEL_COLLAPSED:Ljava/lang/String; = "com.samsung.systemui.statusbar.COLLAPSED"

.field private static final DIALOG_BT_TETHER_NO_SIM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SecBluetoothTetherPreferenceController"


# instance fields
.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

.field private mHandler:Landroid/os/Handler;

.field private mIsEnabledForTether:Z

.field private mPreference:Landroidx/preference/SecSwitchPreference;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

.field private mStartTetheringCallback:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$OnStartTetheringCallback;

.field private mTm:Landroid/net/TetheringManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothPan(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Lcom/samsung/android/settings/connection/tether/SecTetherSettings;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEnabledForTether(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mIsEnabledForTether:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)Landroidx/preference/SecSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsEnabledForTether(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mIsEnabledForTether:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBluetoothTethering(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->setBluetoothTethering(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBluetoothSubText(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->updateBluetoothSubText()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 704
    new-instance p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$1;-><init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method private setBluetoothTethering(Z)V
    .locals 5

    .line 500
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->isBluetoothTetheringOn()Z

    move-result v0

    .line 501
    sget-object v1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothTethering : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, p1, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 506
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 511
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bluetooth tethering : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 513
    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mStartTetheringCallback:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$OnStartTetheringCallback;

    iget-object v4, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 515
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 518
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->updateController()V

    .line 519
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_3
    :goto_1
    const-string p0, "setBluetoothTethering - adapter is null or BT is off"

    .line 507
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showDialog(I)V
    .locals 3

    .line 608
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;->show(Landroidx/fragment/app/Fragment;Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;I)Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BtTetherDialog;

    return-void
.end method

.method private updateBluetoothSubText()V
    .locals 11

    .line 389
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "updateBluetoothSubText"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "updateBluetoothSubText - unexpected null adapter"

    .line 395
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 399
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 401
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_tethering_off_subtext_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_tethering_off_subtext_phone:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 408
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_turning_off:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 411
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_turning_on:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    const/16 v1, 0xc

    if-ne v0, v1, :cond_10

    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->isBluetoothTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 419
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v4, v2, :cond_7

    aget-object v7, v0, v4

    .line 420
    array-length v8, v1

    move v9, v3

    :goto_1
    if-ge v9, v8, :cond_6

    aget-object v10, v1, v9

    .line 421
    invoke-virtual {v7, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    move v5, v6

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    if-eqz v5, :cond_8

    .line 428
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_tethering_errored_subtext:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 430
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->getConnectedBtPanDevices()I

    move-result v0

    .line 431
    sget-object v1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevices : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_a

    .line 433
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 434
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_tethering_available_subtext_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 436
    :cond_9
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_tethering_available_subtext_phone:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    if-ne v0, v6, :cond_c

    .line 439
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 440
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_tethering_device_connected_subtext_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 442
    :cond_b
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_tethering_device_connected_subtext_phone:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 445
    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 446
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->bluetooth_tethering_devices_connected_subtext_tablet:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 448
    :cond_d
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->bluetooth_tethering_devices_connected_subtext_phone:I

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 451
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 456
    :cond_e
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 457
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_tethering_off_subtext_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 459
    :cond_f
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_tethering_off_subtext_phone:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_10
    const-string v0, ""

    .line 463
    :goto_3
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 280
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 7

    .line 616
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/TetheringManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/TetheringManager;

    .line 617
    invoke-virtual {p0}, Landroid/net/TetheringManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    .line 619
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "persist.sys.tether_data"

    const/4 v3, -0x1

    .line 620
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 621
    sget-object v4, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tetheredData for sprint : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    if-ge v2, v5, :cond_1

    move p0, v1

    :cond_1
    const-string v2, "persist.sys.tether_data_bt"

    .line 626
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 627
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tetheredDataBluetooth for sprint : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v3, :cond_3

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 634
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothTetherAvailable : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    :cond_3
    if-eqz p0, :cond_5

    .line 642
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_2
    const/4 p0, 0x4

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getConnectedBtPanDevices()I
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothPan;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method isBluetoothTetheringOn()Z
    .locals 3

    .line 175
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothPan;

    if-eqz p0, :cond_0

    .line 177
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result p0

    .line 178
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothTetheringOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method maybeEnforceRestrictions()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "no_bluetooth"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "no_config_bluetooth"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/RestrictionUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 537
    sget-object v1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v2, "maybeEnforceRestrictions :: restrict by admin"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 540
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "maybeEnforceRestrictions :: can not get restriction policy"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(II)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->startTethering()V

    goto :goto_0

    .line 551
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 105
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    .line 112
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "tethering"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    .line 113
    new-instance p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$OnStartTetheringCallback;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$OnStartTetheringCallback;-><init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mStartTetheringCallback:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$OnStartTetheringCallback;

    .line 115
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 116
    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 118
    new-instance p1, Lcom/android/settings/bluetooth/RestrictionUtils;

    invoke-direct {p1}, Lcom/android/settings/bluetooth/RestrictionUtils;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mRestrictionUtils:Lcom/android/settings/bluetooth/RestrictionUtils;

    .line 120
    new-instance p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver;-><init>(Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$BluetoothTetherReceiver-IA;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBluetoothTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.statusbar.COLLAPSED"

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.action.TETHERING_STATE_CHANGED"

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBluetoothTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBluetoothTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 3

    .line 286
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataSaverChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 291
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 158
    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mStartTetheringCallback:Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController$OnStartTetheringCallback;

    .line 160
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBluetoothTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothProfile;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x5

    .line 165
    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 168
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    .line 169
    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    .line 170
    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    .line 171
    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 147
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    .line 149
    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 150
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "set Discoverable mode to SCAN_MODE_CONNECTABLE"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 135
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->isBluetoothTetheringOn()Z

    move-result p0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result p0

    const/16 v1, 0x17

    if-eq p0, v1, :cond_0

    .line 139
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 140
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 7

    .line 562
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0xd66

    invoke-static {v0, v1, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 563
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 564
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 565
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v2

    .line 566
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 576
    iget-object v3, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 578
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VZW"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 579
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v5, 0x5

    if-eq v0, v5, :cond_1

    .line 580
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 581
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->showDialog(I)V

    return v1

    :cond_1
    if-eqz v3, :cond_2

    .line 585
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "WIFI connected :: disable PAN NAP (VZW requirement)"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_tethering_cannot_connect_while_connected_to_wifi:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 588
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 594
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V

    return v4

    .line 597
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->setBluetoothTethering(Z)V

    return v1

    .line 569
    :cond_4
    :goto_0
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "Internet Sharing is restricted by MDM."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 571
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const v0, 0x104045a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method public setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    return-void
.end method

.method public bridge synthetic startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;->startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V

    return-void
.end method

.method public startTethering()V
    .locals 4

    .line 483
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 485
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "startTethering - unexpected null adapter"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 489
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 491
    sget-object v1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v2, "startTethering - turn on BT for enabling tethering"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iput-boolean v3, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mIsEnabledForTether:Z

    .line 493
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    if-ne v1, v0, :cond_2

    .line 495
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->setBluetoothTethering(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .line 331
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBluetoothState - available : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", tethered : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", errored : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {p1}, Landroid/net/TetheringManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object p1

    .line 336
    array-length p2, p3

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, p2, :cond_2

    aget-object v4, p3, v1

    .line 337
    array-length v5, p1

    move v6, v0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    .line 338
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-nez p1, :cond_3

    .line 346
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string p1, "BluetoothAdapter is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 350
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p2

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->isBluetoothTetheringOn()Z

    move-result p3

    const/16 v1, 0xc

    if-ne p2, v1, :cond_4

    if-eqz p3, :cond_4

    if-nez v2, :cond_5

    .line 353
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result p2

    const/16 v1, 0x17

    if-eq p2, v1, :cond_5

    .line 354
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 355
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string p2, "set Discoverable mode to SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 358
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result p2

    const/16 v1, 0x15

    if-eq p2, v1, :cond_5

    .line 359
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 360
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string p2, "set Discoverable mode to SCAN_MODE_CONNECTABLE"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    iget-object p2, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p2}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 365
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "false"

    .line 369
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 370
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p3, "content://com.sec.knox.provider/BluetoothPolicy"

    const-string v1, "isBluetoothEnabled"

    invoke-static {p2, p3, v1, p1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 372
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p3, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v1, "isBluetoothTetheringEnabled"

    invoke-static {p2, p3, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 376
    :cond_6
    sget-object p3, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth Enabled Policy :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Tethering state:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 379
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 383
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->maybeEnforceRestrictions()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->updateBluetoothSubText()V

    return-void
.end method

.method public updateController()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    if-nez v0, :cond_0

    .line 319
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "TetheringManager is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_0
    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v1}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 325
    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v2}, Landroid/net/TetheringManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/connection/tether/SecBluetoothTetherPreferenceController;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

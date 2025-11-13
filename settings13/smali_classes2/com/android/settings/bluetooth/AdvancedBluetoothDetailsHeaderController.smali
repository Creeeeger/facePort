.class public Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AdvancedBluetoothDetailsHeaderController.java"

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

.field mIsRegisterCallback:Z

.field mIsRightDeviceEstimateReady:Z

.field mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field final mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;


# direct methods
.method public static synthetic $r8$lambda$Fbclch8ro2deKV5QmXHZ9A4tn6U(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateIcon$3(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IQorCb13Se-IPHniWS_SDsCP00M(Landroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$showBothDevicesBatteryPredictionIfNecessary$2(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OQw--MPYOZka3eDcIoHRPjA4IBc(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$updateIcon$4(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lGbCHWYZQsd3L6WMc7RSNz_UkPs(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Landroid/widget/LinearLayout;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$showBatteryPredictionIfNecessary$1(Landroid/widget/LinearLayout;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lq2i-hJXt0C4MofW55EahhWE3Z0(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;IILandroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->lambda$showBatteryPredictionIfNecessary$0(IILandroid/widget/LinearLayout;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "AdvancedBtHeaderCtrl"

    const/4 v1, 0x3

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->DEBUG:Z

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe10

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->TIME_OF_HOUR:J

    const-wide/16 v1, 0x3c

    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->TIME_OF_MINUTE:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    new-instance p1, Landroid/os/Handler;

    .line 98
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    .line 105
    new-instance p1, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$1;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    .line 120
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 121
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    return-void
.end method

.method private isUntetheredHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    const/4 p0, 0x6

    .line 332
    invoke-static {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0x11

    .line 334
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

.method private synthetic lambda$showBatteryPredictionIfNecessary$0(IILandroid/widget/LinearLayout;)V
    .locals 8

    .line 342
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 343
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->config_battery_prediction_authority:I

    .line 344
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "time_remaining"

    .line 345
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "id"

    .line 346
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "Bluetooth"

    .line 347
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 348
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 349
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "battery_id"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 351
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "battery_level"

    .line 350
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timestamp"

    .line 352
    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 354
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string p2, "battery_estimate"

    const-string v6, "estimate_ready"

    .line 356
    filled-new-array {p2, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 357
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 358
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "AdvancedBtHeaderCtrl"

    if-nez v0, :cond_0

    const-string/jumbo p0, "showBatteryPredictionIfNecessary() cursor is null!"

    .line 360
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 364
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    .line 366
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 368
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 369
    sget-boolean v5, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showBatteryTimeIfNecessary() batteryId : "

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

    .line 375
    :cond_1
    invoke-virtual {p0, v2, v3, v4, p3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->showBatteryPredictionIfNecessary(IJLandroid/widget/LinearLayout;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    if-ne v2, v4, :cond_2

    move v3, v4

    .line 377
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsLeftDeviceEstimateReady:Z

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    if-ne p1, v5, :cond_5

    if-ne v2, v4, :cond_4

    move v3, v4

    .line 379
    :cond_4
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsRightDeviceEstimateReady:Z

    .line 364
    :cond_5
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 383
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 384
    throw p0
.end method

.method private synthetic lambda$showBatteryPredictionIfNecessary$1(Landroid/widget/LinearLayout;IJ)V
    .locals 1

    .line 392
    sget v0, Lcom/android/settings/R$id;->bt_battery_prediction:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 394
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    long-to-double p2, p3

    const/4 p4, 0x0

    .line 395
    invoke-static {p0, p2, p3, p4, p4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    .line 394
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 401
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$showBothDevicesBatteryPredictionIfNecessary$2(Landroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    .line 419
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$updateIcon$3(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 p0, 0x3f800000    # 1.0f

    .line 494
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 495
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$updateIcon$4(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4

    const-string v0, "AdvancedBtHeaderCtrl"

    .line 485
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 487
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 490
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 491
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 490
    invoke-static {v2, v1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 492
    new-instance v3, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1, v2, p2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    invoke-static {v3}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to take persistable permission for: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 498
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get bitmap for: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
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

    .line 427
    :goto_0
    sget v1, Lcom/android/settings/R$id;->bt_battery_icon:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p3, :cond_1

    .line 429
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$drawable;->ic_battery_alert_24dp:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 431
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$dimen;->advanced_bluetooth_battery_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object p4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 433
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcom/android/settings/R$dimen;->advanced_bluetooth_battery_height:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-direct {p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 435
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/android/settings/R$dimen;->advanced_bluetooth_battery_right_margin:I

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 437
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 439
    :cond_1
    iget-object p3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p2, p4}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->createBtBatteryIcon(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 440
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p0, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 442
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showBatteryPredictionIfNecessary(Landroid/widget/LinearLayout;II)V
    .locals 1

    .line 341
    new-instance v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;IILandroid/widget/LinearLayout;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateDisconnectLayout()V
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_left:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->layout_right:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->layout_middle:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 453
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 454
    sget v2, Lcom/android/settings/R$id;->header_title:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 455
    sget v2, Lcom/android/settings/R$id;->bt_battery_summary:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    sget v2, Lcom/android/settings/R$id;->bt_battery_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x5

    .line 460
    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    .line 462
    sget-boolean v2, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDisconnectLayout() iconUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdvancedBtHeaderCtrl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    .line 466
    sget v2, Lcom/android/settings/R$id;->header_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 467
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateSubLayout(Landroid/widget/LinearLayout;IIIIII)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 264
    invoke-static {v0, p2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    .line 265
    sget v2, Lcom/android/settings/R$id;->header_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 267
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 270
    invoke-static {v3, v4}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtRainbowDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v3

    .line 271
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    :goto_0
    invoke-static {v0, p3}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v2

    .line 275
    invoke-static {v0, p5}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v3

    .line 276
    sget-boolean v4, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSubLayout() icon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", battery : "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", charge : "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", batteryLevel : "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", charging : "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", iconUri : "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "AdvancedBtHeaderCtrl"

    invoke-static {p5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p2, 0x1

    if-eq p7, p2, :cond_3

    const/4 p2, 0x2

    if-ne p7, p2, :cond_4

    .line 282
    :cond_3
    invoke-direct {p0, p1, p7, v2}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->showBatteryPredictionIfNecessary(Landroid/widget/LinearLayout;II)V

    .line 284
    :cond_4
    sget p2, Lcom/android/settings/R$id;->bt_battery_summary:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 285
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->isUntetheredHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p5

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz p5, :cond_a

    const/4 p5, -0x1

    if-eq v2, p5, :cond_7

    .line 287
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 289
    invoke-static {v2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v6

    .line 288
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    invoke-static {v0, p4}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getIntMetaData(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p2

    if-ne p2, p5, :cond_6

    const/16 p2, 0xc

    if-ne p3, p2, :cond_5

    const/16 p2, 0x13

    goto :goto_1

    :cond_5
    const/16 p2, 0xf

    .line 300
    :cond_6
    :goto_1
    invoke-direct {p0, p1, v2, p2, v3}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->showBatteryIcon(Landroid/widget/LinearLayout;IIZ)V

    goto :goto_2

    :cond_7
    if-ne p7, v1, :cond_9

    .line 303
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 304
    sget p0, Lcom/android/settings/R$id;->bt_battery_icon:I

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result p0

    if-eq p0, p5, :cond_8

    const/16 p3, -0x64

    if-eq p0, p3, :cond_8

    .line 309
    invoke-static {p0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0

    .line 308
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 312
    :cond_8
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 316
    :cond_9
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 320
    :cond_a
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :goto_2
    sget p0, Lcom/android/settings/R$id;->header_title:I

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-ne p7, v1, :cond_b

    .line 324
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 326
    :cond_b
    invoke-virtual {p0, p6}, Landroid/widget/TextView;->setText(I)V

    .line 327
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method createBtBatteryIcon(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 241
    new-instance p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    sget v0, Lcom/android/settings/R$color;->meter_background_color:I

    .line 243
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->advanced_bluetooth_battery_meter_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$dimen;->advanced_bluetooth_battery_meter_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;-><init>(Landroid/content/Context;III)V

    .line 248
    invoke-virtual {p0, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setBatteryLevel(I)V

    .line 249
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x1010429

    .line 250
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 249
    invoke-virtual {p0, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 253
    invoke-virtual {p0, p3}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setCharging(Z)V

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 126
    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

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

.method public init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 167
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

    .line 169
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 172
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->refresh()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    .line 146
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    .line 147
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->addOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->refresh()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 155
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mMetadataListener:Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->removeOnMetadataChangedListener(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothAdapter$OnMetadataChangedListener;)Z

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    return-void
.end method

.method refresh()V
    .locals 9

    .line 181
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_5

    .line 182
    sget v1, Lcom/android/settings/R$id;->entity_header_title:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->entity_header_summary:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/16 v1, 0x11

    .line 192
    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getStringMetaData(Landroid/bluetooth/BluetoothDevice;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Watch"

    .line 194
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Default"

    .line 195
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "Untethered Headset"

    .line 206
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x6

    .line 208
    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBooleanMetaData(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_left:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x7

    const/16 v4, 0xa

    const/16 v5, 0x15

    const/16 v6, 0xd

    sget v7, Lcom/android/settings/R$string;->bluetooth_left_name:I

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateSubLayout(Landroid/widget/LinearLayout;IIIIII)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_middle:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x9

    const/16 v4, 0xc

    const/16 v5, 0x17

    const/16 v6, 0xf

    sget v7, Lcom/android/settings/R$string;->bluetooth_middle_name:I

    const/4 v8, 0x3

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateSubLayout(Landroid/widget/LinearLayout;IIIIII)V

    .line 226
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_right:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    const/16 v4, 0xb

    const/16 v5, 0x16

    const/16 v6, 0xe

    sget v7, Lcom/android/settings/R$string;->bluetooth_right_name:I

    const/4 v8, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateSubLayout(Landroid/widget/LinearLayout;IIIIII)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->showBothDevicesBatteryPredictionIfNecessary()V

    goto :goto_2

    .line 196
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_left:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->layout_right:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_middle:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x5

    const/16 v4, 0x12

    const/16 v5, 0x14

    const/16 v6, 0x13

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateSubLayout(Landroid/widget/LinearLayout;IIIIII)V

    goto :goto_2

    .line 188
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->updateDisconnectLayout()V

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method showBatteryPredictionIfNecessary(IJLandroid/widget/LinearLayout;)V
    .locals 7

    .line 391
    new-instance v6, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda3;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Landroid/widget/LinearLayout;IJ)V

    invoke-static {v6}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method showBothDevicesBatteryPredictionIfNecessary()V
    .locals 4

    .line 408
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->layout_left:I

    .line 409
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/settings/R$id;->bt_battery_prediction:I

    .line 410
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 411
    iget-object v2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v3, Lcom/android/settings/R$id;->layout_right:I

    .line 412
    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 413
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 415
    iget-boolean v2, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsLeftDeviceEstimateReady:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIsRightDeviceEstimateReady:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 418
    :goto_1
    new-instance p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda1;-><init>(Landroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 478
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 479
    iget-object p0, p0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;->mIconCache:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 483
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 484
    new-instance v0, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/AdvancedBluetoothDetailsHeaderController;Ljava/lang/String;Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method

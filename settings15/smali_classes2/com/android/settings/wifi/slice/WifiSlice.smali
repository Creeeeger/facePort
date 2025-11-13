.class public Lcom/android/settings/wifi/slice/WifiSlice;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/slices/CustomSliceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
.end annotation


# static fields
.field static final DEFAULT_EXPANDED_ROW_COUNT:I = 0x3

.field public static final STATE_NONE:[I

.field public static final STATE_SECURED:[I

.field public static final STATE_WIFI6E_NONE:[I

.field public static final STATE_WIFI6E_SECURED:[I

.field public static final STATE_WIFI6_NONE:[I

.field public static final STATE_WIFI6_SECURED:[I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDefaultIconResId:I

.field public final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWifiRestriction:Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x7f0405dd

    filled-new-array {v0}, [I

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_SECURED:[I

    const/4 v1, 0x0

    new-array v1, v1, [I

    sput-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_NONE:[I

    const v1, 0x7f0405e7

    filled-new-array {v1, v0}, [I

    move-result-object v2

    sput-object v2, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6_SECURED:[I

    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6_NONE:[I

    const v1, 0x7f0405e8

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6E_SECURED:[I

    filled-new-array {v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6E_NONE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;

    invoke-direct {v0}, Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/slice/WifiSlice;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0806a2

    iput v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mDefaultIconResId:I

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiRestriction:Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;

    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    const p2, 0x7f080e25

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    return-void
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/android/settings/wifi/slice/WifiScanWorker;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f14368c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f1417c9

    const-string v5, "wifi"

    const/16 v1, 0x25b

    invoke-static/range {v1 .. v6}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSearchResultPageIntent(IILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final getListBuilder(ZZ)Landroidx/slice/builders/ListBuilder;
    .locals 7

    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getUri$1()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v1, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f141435

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/settings/display/AlwaysOnDisplaySlice$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object v2, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v2, v1}, Landroidx/slice/builders/impl/ListBuilder;->setKeywords(Ljava/util/Set;)V

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v2, 0x7f080611

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v3, 0x7f14368c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x4000000

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v3, v1, v5, v2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v1

    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iput-object v2, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v5, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iput-object v1, v3, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiRestriction:Lcom/android/settings/wifi/slice/WifiSlice$WifiRestriction;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isChangeWifiStateAllowed(Landroid/content/Context;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v4, 0x7f141a51

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v1, v3}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isChangeWifiStateAllowed(Landroid/content/Context;)Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_5

    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const-string v2, "executor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Landroid/telephony/satellite/SatelliteManager;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/satellite/SatelliteManager;

    if-nez p2, :cond_3

    const-string p2, "SatelliteRepository"

    const-string v1, "SatelliteManager is null"

    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ImmediateFuture;

    move-result-object p2

    goto :goto_2

    :cond_3
    new-instance v2, Lcom/android/settings/network/SatelliteRepository$requestIsEnabled$1;

    invoke-direct {v2, p2, v1}, Lcom/android/settings/network/SatelliteRepository$requestIsEnabled$1;-><init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;)V

    invoke-static {v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->getFuture(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    move-result-object p2

    :goto_2
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-interface {p2, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    const-string v1, "Error to get satellite status : "

    const-string v2, "WifiSlice"

    invoke-static {v1, p2, v2}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_3
    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-interface {p0, p2}, Lcom/android/settings/slices/CustomSliceable;->getBroadcastIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    new-instance p2, Landroidx/slice/builders/SliceAction;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1, p1}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    iget-object p0, v0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {p0, p2}, Landroidx/slice/builders/impl/ListBuilder;->addAction(Landroidx/slice/builders/SliceAction;)V

    :cond_5
    :goto_4
    return-object v0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 11

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v5, 0x7f150687

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f03009d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "calling uid name : "

    const-string v7, "WifiSlice"

    invoke-static {v6, v1, v7}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    array-length v6, v5

    move v8, v2

    :goto_1
    const/4 v9, 0x0

    if-ge v8, v6, :cond_2

    aget-object v10, v5, v8

    invoke-static {v1, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    :try_start_0
    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "android.permission.CHANGE_WIFI_STATE"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-virtual {v7, v8, v10, v5}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_3

    move v7, v4

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    new-instance v8, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    invoke-direct {v8, v1, v9, v9}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    invoke-virtual {v8, v5, v6}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(ILjava/lang/String;)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v1

    iget v5, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->appOpMode:I

    iget-boolean v1, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->staticPermissionGranted:Z

    if-eqz v7, :cond_6

    if-ne v5, v3, :cond_4

    goto :goto_3

    :cond_4
    if-nez v5, :cond_5

    move v1, v4

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    :goto_4
    move v1, v4

    goto :goto_5

    :catch_0
    const-string v1, "Cannot create Context for package: "

    invoke-static {v1, v6, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v1, v2

    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/slice/WifiSlice;->getListBuilder(ZZ)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    if-eqz v0, :cond_f

    if-nez v1, :cond_7

    goto/16 :goto_a

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getUri$1()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->getInstance(Landroid/net/Uri;)Lcom/android/settings/slices/SliceBackgroundWorker;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/slice/WifiScanWorker;

    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/android/settings/slices/SliceBackgroundWorker;->mCachedResults:Ljava/util/List;

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    new-instance v9, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/settings/slices/SliceBackgroundWorker;->mCachedResults:Ljava/util/List;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_9
    :goto_6
    if-nez v9, :cond_a

    move v0, v2

    goto :goto_7

    :cond_a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    :goto_7
    if-lez v0, :cond_b

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/slice/WifiSliceItem;

    iget v1, v1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mConnectedState:I

    if-eqz v1, :cond_b

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-virtual {p0, v4, v4}, Lcom/android/settings/wifi/slice/WifiSlice;->getListBuilder(ZZ)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v4, 0x7f142e0a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    move v4, v2

    :goto_8
    if-ge v4, v3, :cond_e

    if-ge v4, v0, :cond_c

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/wifi/slice/WifiSliceItem;

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    goto :goto_9

    :cond_c
    if-ne v4, v0, :cond_d

    iget-object v6, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const v7, 0x7f14355c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v7, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v7}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    new-instance v8, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {v8, v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    iput-object v1, v8, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v2, v8, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iput-object v6, v8, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-boolean v2, v8, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    invoke-virtual {v5, v8}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    goto :goto_9

    :cond_d
    new-instance v6, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iput-object v1, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    iput-boolean v2, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iput-object v1, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-boolean v2, v6, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    invoke-virtual {v5, v6}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)V

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_a
    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public final getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417c9

    return p0
.end method

.method public getUri$1()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->WIFI_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public getWifiIconResId(Lcom/android/settings/wifi/slice/WifiSliceItem;)I
    .locals 3

    iget-boolean p0, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mIsInstantHotspotNetwork:Z

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mInstantHotspotDeviceType:I

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiUtils;->getHotspotIconResource(I)I

    move-result p0

    goto :goto_1

    :cond_0
    iget p0, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    const-string v0, "Wi-Fi level is out of range! level:"

    const-string v1, "WifiUtils"

    if-gez p0, :cond_1

    invoke-static {p0, v0, v1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-lt p0, v2, :cond_2

    invoke-static {p0, v0, v1}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x4

    :cond_2
    :goto_0
    iget-boolean p1, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldShowXLevelIcon:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/settingslib/wifi/WifiUtils;->NO_INTERNET_WIFI_PIE:[I

    aget p0, p1, p0

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    aget p0, p1, p0

    :goto_1
    return p0
.end method

.method public getWifiSliceItemLevelIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 7

    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mDefaultIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/4 v5, 0x6

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_NONE:[I

    if-nez p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/4 p1, -0x1

    goto :goto_3

    :cond_0
    iget-boolean v2, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mIsWifi6ENetwork:Z

    iget v3, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSecurity:I

    if-eqz v2, :cond_2

    invoke-static {v3}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6E_SECURED:[I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6E_NONE:[I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    :cond_2
    iget-boolean v2, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mIsWifi6Network:Z

    if-eqz v2, :cond_4

    invoke-static {v3}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6_SECURED:[I

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_WIFI6_NONE:[I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_2

    :cond_4
    invoke-static {v3}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isSecured(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/android/settings/wifi/slice/WifiSlice;->STATE_SECURED:[I

    :cond_5
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :goto_2
    iget p1, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    :goto_3
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    const/4 v5, 0x6

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_6
    invoke-static {v6}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public final getWifiSliceItemRow(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 12

    iget-object v0, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;->getWifiSliceItemLevelIcon(Lcom/android/settings/wifi/slice/WifiSliceItem;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    new-instance v2, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;)V

    iput-object v0, v2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitle:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mTitleLoading:Z

    iget-object v4, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSummary:Ljava/lang/String;

    iput-object v4, v2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitle:Ljava/lang/CharSequence;

    iput-boolean v3, v2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mSubtitleLoading:Z

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    const-string v7, ","

    const/4 v8, 0x1

    const/4 v9, 0x3

    iget-object v10, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mTitle:Ljava/lang/String;

    if-nez v5, :cond_0

    new-array v5, v9, [Ljava/lang/CharSequence;

    aput-object v10, v5, v3

    aput-object v7, v5, v8

    aput-object v4, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    :cond_0
    iget v4, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mLevel:I

    if-ltz v4, :cond_1

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    new-array v5, v9, [Ljava/lang/CharSequence;

    aput-object v10, v5, v3

    aput-object v7, v5, v8

    iget-object v10, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/settings/wifi/slice/WifiSliceItem;->WIFI_CONNECTION_STRENGTH:[I

    aget v4, v11, v4

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    :cond_1
    new-array v4, v9, [Ljava/lang/CharSequence;

    aput-object v10, v4, v3

    aput-object v7, v4, v8

    iget v5, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mSecurity:I

    if-nez v5, :cond_2

    iget-object v5, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mContext:Landroid/content/Context;

    const v7, 0x7f14021f

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    iget-object v5, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mContext:Landroid/content/Context;

    const v7, 0x7f140220

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_0
    aput-object v5, v4, v6

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v4, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mKey:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/high16 v6, 0x4000000

    iget v7, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mConnectedState:I

    const-string v8, "key_chosen_wifientry_key"

    if-eqz v7, :cond_3

    invoke-static {v8, v4}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    new-instance v4, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v7, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    const v8, 0x7f141c9a

    invoke-virtual {v4, v8, v7}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    const-class v7, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v4, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v7, v8, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object p1, v8, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 p1, 0x67

    iput p1, v8, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {v4}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {p0, v5, p1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {p0, v1, v3, v0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-boolean p1, p1, Lcom/android/settings/wifi/slice/WifiSliceItem;->mShouldEditBeforeConnect:Z

    if-eqz p1, :cond_4

    new-instance p1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/settings/wifi/WifiDialogActivity;

    invoke-direct {p1, v7, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {p0, v5, p1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {p0, v1, v3, v0}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p0

    goto :goto_1

    :cond_4
    new-instance p1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/settings/wifi/slice/ConnectToWifiHandler;

    invoke-direct {p1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v4, "key_wifi_slice_uri"

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getUri$1()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v4, 0x10000000

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/high16 v4, 0xc000000

    invoke-static {p0, v5, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    new-instance p1, Landroidx/slice/builders/SliceAction;

    invoke-direct {p1, p0, v1, v3, v0}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    move-object p0, p1

    :goto_1
    iput-object p0, v2, Landroidx/slice/builders/ListBuilder$RowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object v2
.end method

.method public onNotifyChange(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void
.end method

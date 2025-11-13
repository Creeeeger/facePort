.class public final Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;
.super Ljava/lang/Object;
.source "SecurityDashboardUtils.java"


# static fields
.field private static final FMM_SUPPORT_URI:Landroid/net/Uri;

.field private static final SAMSUNG_ACCOUNT_PROVIDER_URI:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$XqW19TYudH4GJmnWEDcfmvIY7qw(Landroid/content/Context;Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->lambda$getStatusForSamsungAccountCheckupMenuAsync$0(Landroid/content/Context;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$beWpqFLefJqgGoHcAj22qUZ5zhw([Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->lambda$saveOverallStatusToSA$1([Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.samsungaccount.accountmanagerprovider"

    .line 71
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->SAMSUNG_ACCOUNT_PROVIDER_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.fmm/fmmsupport"

    .line 73
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static checkIfSALoggedIn(Landroid/content/Context;)Z
    .locals 0

    .line 409
    invoke-static {p0}, Lcom/samsung/android/settings/account/AccountUtils;->isSamsungAccountExists(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static checkIfSASupportsSecurityInfo(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "SecurityDashboardUtils"

    const/4 v1, 0x0

    .line 393
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.osp.app.signin"

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 395
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v3, "SecurityInfoProvider"

    .line 397
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkIfSASupportsSecurityInfo: version = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x40400000    # 3.0f

    cmpl-float p0, v2, p0

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catch_0
    const-string p0, "Couldn\'t find Samsung Account Package "

    .line 401
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static convertPixelsToDp(FLandroid/content/Context;)F
    .locals 1

    .line 528
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    div-float/2addr p0, p1

    return p0
.end method

.method public static getDate(JLandroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 366
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object v2

    .line 368
    invoke-virtual {v2, p0, p1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 369
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 370
    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {p2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 371
    :cond_0
    invoke-static {p2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 373
    :cond_1
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDaysCountSinceLastGPSystemUpdate(Landroid/content/Context;)J
    .locals 4

    .line 430
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 431
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 432
    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getGPSystemUpdateDate(Landroid/content/Context;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    .line 433
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 434
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDaysCountSinceLastSecurityUpdate()J
    .locals 4

    .line 438
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 439
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 440
    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getSecurityLastUpdatedDate()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 441
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v2, v0

    .line 442
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getGPPStatus(Landroid/content/Context;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$VerifyAppsUserResponse;",
            ">;)V"
        }
    .end annotation

    .line 268
    invoke-static {p0}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object p0

    .line 269
    invoke-virtual {p0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->isVerifyAppsEnabled()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 270
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private static getGPSystemUpdateDate(Landroid/content/Context;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 454
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getGPSystemUpdateVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 456
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 458
    :goto_0
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static getGPSystemUpdateSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 418
    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getGPSystemUpdateDate(Landroid/content/Context;)Ljava/util/Optional;

    move-result-object p0

    .line 419
    invoke-virtual {p0}, Ljava/util/Optional;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "dMMMMyyyy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    .line 419
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 420
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getGPSystemUpdateVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public static getHarmfulAppsList(Landroid/content/Context;Lcom/google/android/gms/tasks/OnCompleteListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/tasks/OnCompleteListener<",
            "Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;",
            ">;)V"
        }
    .end annotation

    .line 255
    invoke-static {p0}, Lcom/google/android/gms/safetynet/SafetyNet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/safetynet/SafetyNetClient;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gms/safetynet/SafetyNetClient;->listHarmfulApps()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 257
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static getSamsungAccountSecurityInfo(Landroid/content/Context;)I
    .locals 5

    .line 152
    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->checkIfSALoggedIn(Landroid/content/Context;)Z

    move-result v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSamsungAccountSecurityInfo: checkIfSALoggedIn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecurityDashboardUtils"

    invoke-static {v2, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_0
    const-string v0, "content://com.samsung.android.samsungaccount.securityinfoprovider/security_info"

    .line 159
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 161
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "need_security_alert"

    .line 162
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Samsung Account Get Security Info Authority need security alert"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 159
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz p0, :cond_2

    .line 168
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Samsung Account Get Security Info Authority is Invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    .line 175
    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSamsungAccountSecurityInfo: resultStatus = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getSavedDeviceProtectionThreatCount(Landroid/content/Context;)I
    .locals 2

    const-string v0, "shared_pref_security_dashboard"

    const/4 v1, 0x0

    .line 588
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "shared_pref_key_device_protection_threat_count"

    .line 589
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static getSecurityLastUpdatedDate()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 462
    sget-object v0, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    .line 464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception details of Security Update parsing date "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityDashboardUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 472
    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static getStatusForAccountsMenu(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 1

    .line 503
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->ARROW:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p0, v0, :cond_0

    return-object p1

    .line 505
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-eq p0, v0, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 508
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getStatusForSamsungAccountCheckupMenuAsync(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ExecutorService;",
            "Landroidx/core/util/Consumer<",
            "Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;",
            ">;)V"
        }
    .end annotation

    .line 487
    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroidx/core/util/Consumer;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getStatusForUpdatesMenu(Landroid/content/Context;ZZJ)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 1

    const-string v0, "com.google"

    .line 476
    invoke-static {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isAccountSignedIn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const-wide/16 p0, 0xb4

    cmp-long p0, p3, p0

    if-gtz p0, :cond_1

    .line 478
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 481
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0

    .line 483
    :cond_1
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    return-object p0
.end method

.method public static getStatusforGPSuMenu(Landroid/content/Context;)Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;
    .locals 4

    .line 512
    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getDaysCountSinceLastGPSystemUpdate(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0xb4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_0

    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    :goto_0
    return-object p0
.end method

.method public static isAccountSignedIn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 386
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isChinaModel()Z
    .locals 2

    const-string v0, "ro.csc.country_code"

    .line 274
    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "China"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDarkMode(Landroid/content/Context;)Z
    .locals 1

    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFMMMetaDataPresent(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "SecurityDashboardUtils"

    const/4 v1, 0x0

    .line 330
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.samsung.android.fmm"

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 332
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v2, "com.samsung.android.fmm.application_name_smartthings_find"

    .line 334
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmartThings Find value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    .line 342
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartThings Find value returned =  "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    const-string p0, "Couldn\'t find FMM package "

    .line 339
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isFMMPackageExists(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 316
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.fmm"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    const-string p0, "SecurityDashboardUtils"

    const-string v1, "Couldn\'t find FMM package "

    .line 321
    invoke-static {p0, v1}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public static isFMMSupported(Landroid/content/Context;)Z
    .locals 10

    .line 286
    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isFMMPackageExists(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 290
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "fmm_main_switch_support"

    .line 291
    invoke-static {v2, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMM supported value = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "SecurityDashboardUtils"

    invoke-static {v8, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Y"

    .line 293
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    return v9

    .line 295
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 296
    :try_start_0
    sget-object v3, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->FMM_SUPPORT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 298
    :cond_2
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "true"

    .line 299
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "FMM is supported"

    .line 300
    invoke-static {v8, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v9

    :catchall_0
    move-exception v0

    .line 296
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_3
    if-eqz p0, :cond_4

    .line 305
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMM Support API failed with exception"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v1
.end method

.method public static isFindMyMobileEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "com.osp.app.signin"

    .line 216
    invoke-static {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isAccountSignedIn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "remote_control"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isFingerPrintSupportedModel(Landroid/content/Context;)Z
    .locals 1

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isGPSuSupported(Landroid/content/Context;)Z
    .locals 1

    .line 551
    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isMainlineModulePackageAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google"

    .line 552
    invoke-static {p0, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isAccountSignedIn(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGoogleServiceEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 563
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.gms"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "SecurityDashboardUtils"

    const-string v1, "Google Service package is not found"

    .line 565
    invoke-static {p0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isMDMEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "false"

    .line 108
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string v2, "isLockScreenEnabled"

    .line 109
    invoke-static {p0, v1, v2, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    const/16 p0, 0x10

    .line 113
    invoke-static {p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isMainlineModulePackageAvailable(Landroid/content/Context;)Z
    .locals 1

    const v0, 0x104031d

    .line 556
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 558
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isOfflineFindingSupported(Landroid/content/Context;)Z
    .locals 2

    .line 348
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fmm_offline_find_support"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOfflineFindingSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityDashboardUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Y"

    .line 350
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isSamsungAccountSupported(Landroid/content/Context;)Z
    .locals 0

    .line 571
    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->checkIfSASupportsSecurityInfo(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isScreenLockEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 101
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getCredentialType(Landroid/content/Context;I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSecurityUpdateElapsed(J)Z
    .locals 2

    const-wide/16 v0, 0xb4

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSecurityUpdateInstalled(Landroid/content/Context;)Z
    .locals 5

    .line 186
    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isUsingATTFota(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "SecurityDashboardUtils"

    const/4 v3, 0x0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->isUsingVZWFota(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 194
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result p0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security update fota badge count - >"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 187
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "available_for_update"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security update available for update - >"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v3
.end method

.method public static isSecurityUpdateSupported(Landroid/content/Context;)Z
    .locals 1

    .line 544
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-static {p0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateUtils;->isOTAUpgradeAllowed(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)Z
    .locals 2

    const-string v0, "shared_pref_security_dashboard"

    const/4 v1, 0x0

    .line 523
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 524
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isUsingATTFota(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.ws.dm"

    .line 202
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isUsingVZWFota(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.samsung.sdm.sdmviewer"

    .line 206
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getStatusForSamsungAccountCheckupMenuAsync$0(Landroid/content/Context;Landroidx/core/util/Consumer;)V
    .locals 2

    .line 488
    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils;->getSamsungAccountSecurityInfo(Landroid/content/Context;)I

    move-result p0

    const-string v0, "SecurityDashboardUtils"

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const-string p0, "getStatusForSamsungAccountCheckupMenu returned Status ARROW"

    .line 490
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->ARROW:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-interface {p1, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "getStatusForSamsungAccountCheckupMenu returned Status OK"

    .line 493
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-interface {p1, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p0, "getStatusForSamsungAccountCheckupMenu returned Status WARNING"

    .line 496
    invoke-static {v0, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget-object p0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-interface {p1, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$saveOverallStatusToSA$1([Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V
    .locals 2

    .line 743
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->OK:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_0

    const-string p3, "0"

    .line 744
    aput-object p3, p0, v1

    goto :goto_0

    .line 745
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->WARNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p3, v0, :cond_1

    const-string p3, "1"

    .line 746
    aput-object p3, p0, v1

    goto :goto_0

    .line 747
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->CRITICAL:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p3, v0, :cond_2

    const-string p3, "2"

    .line 748
    aput-object p3, p0, v1

    goto :goto_0

    .line 749
    :cond_2
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->NONE:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    if-ne p3, v0, :cond_3

    const-string p3, "3"

    .line 750
    aput-object p3, p0, v1

    .line 752
    :cond_3
    :goto_0
    aget-object p0, p0, v1

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static saveActionButtonClickToSALogging(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)V
    .locals 1

    .line 593
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$1;->$SwitchMap$com$samsung$android$settings$privacy$SecurityDashboardConstants$StatusCardIdentifier:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const p0, 0xdb97

    const v0, 0xdb99

    .line 631
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :pswitch_1
    const p0, 0xdb9a

    const v0, 0xdb9c

    .line 628
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_0

    :pswitch_2
    const p0, 0xdba0

    const v0, 0xdba2

    .line 625
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_3
    const p0, 0xdb9d

    const v0, 0xdb9f

    .line 622
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_4
    const p0, 0xdba9

    const v0, 0xdbab

    .line 619
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_5
    const p0, 0xdb94

    const v0, 0xdb96

    .line 616
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_6
    const p0, 0xdb8a

    const v0, 0xdb8b

    .line 613
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_7
    const p0, 0xdb8c

    const v0, 0xdb8d

    .line 610
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_8
    const p0, 0xdb88

    const v0, 0xdb89

    .line 607
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_9
    const p0, 0xdb91

    const v0, 0xdb93

    .line 604
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_a
    const p0, 0xdb8e

    const v0, 0xdb90

    .line 601
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_b
    const p0, 0xdba6

    const v0, 0xdba8

    .line 598
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_c
    const p0, 0xdba3

    const v0, 0xdba5

    .line 595
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static saveDeviceProtectionThreatCount(Landroid/content/Context;I)V
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveDeviceProtectionThreatCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityDashboardUtils"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "shared_pref_security_dashboard"

    const/4 v1, 0x0

    .line 581
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 582
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "shared_pref_key_device_protection_threat_count"

    .line 583
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 584
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveDismissButtonClickToSALogging(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;)V
    .locals 1

    .line 639
    sget-object v0, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$1;->$SwitchMap$com$samsung$android$settings$privacy$SecurityDashboardConstants$StatusCardIdentifier:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const p0, 0xdb97

    const v0, 0xdb98

    .line 668
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_1
    const p0, 0xdb9a

    const v0, 0xdb9b

    .line 665
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_2
    const p0, 0xdba0

    const v0, 0xdba1

    .line 662
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_3
    const p0, 0xdb9d

    const v0, 0xdb9e

    .line 659
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_4
    const p0, 0xdba9

    const v0, 0xdbaa

    .line 656
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :pswitch_5
    const p0, 0xdb94

    const v0, 0xdb95

    .line 653
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_0
    const p0, 0xdb91

    const v0, 0xdb92

    .line 650
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_1
    const p0, 0xdb8e

    const v0, 0xdb8f

    .line 647
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_2
    const p0, 0xdba6

    const v0, 0xdba7

    .line 644
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_0

    :cond_3
    const p0, 0xdba3

    const v0, 0xdba4

    .line 641
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static saveExpandableMenuClickToSALogging(Ljava/lang/String;)V
    .locals 2

    .line 676
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "key_find_my_mobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "key_offline_finding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "key_samsung_acc_checkup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "key_google_acc_checkup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "key_updates"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "key_app_security"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "key_lock_screen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "key_google_play_system_update"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "key_fingerprints"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_9
    const-string v0, "key_allow_this_phone_to_be_found"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_a
    const-string v0, "key_screen_lock_type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_b
    const-string v0, "key_accounts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_c
    const-string v0, "key_security_update"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_d
    const-string v0, "privacy_settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_e
    const-string v0, "key_google_play_protect"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_f
    const-string v0, "key_device_protection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x0

    :goto_0
    const/16 p0, 0x2348

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const v0, 0xdaeb

    .line 696
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto/16 :goto_1

    :pswitch_1
    const v0, 0xdaec

    .line 702
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_2
    const v0, 0xdae2

    .line 690
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_3
    const v0, 0xdae3

    .line 693
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_4
    const v0, 0xdae6

    .line 714
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_5
    const v0, 0xdae4

    .line 705
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_6
    const v0, 0xdade

    .line 678
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_7
    const v0, 0xdae7

    .line 720
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_8
    const v0, 0xdae0

    .line 684
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_9
    const/16 v0, 0x1176

    .line 699
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_a
    const v0, 0xdadf

    .line 681
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_b
    const v0, 0xdae1

    .line 687
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_c
    const/16 v0, 0x1e7f

    .line 717
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_d
    const/16 v0, 0x2a95

    .line 723
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_e
    const/16 v0, 0x1e79

    .line 711
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    goto :goto_1

    :pswitch_f
    const v0, 0xdae5

    .line 708
    invoke-static {p0, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f57917e -> :sswitch_f
        -0x76cc74d6 -> :sswitch_e
        -0x67bdbd06 -> :sswitch_d
        -0x340a9338 -> :sswitch_c
        -0xdcbf63a -> :sswitch_b
        0x2de979b -> :sswitch_a
        0x8acf0ae -> :sswitch_9
        0x119c91ef -> :sswitch_8
        0x21c584f4 -> :sswitch_7
        0x2b4e4820 -> :sswitch_6
        0x2c73617e -> :sswitch_5
        0x2f7f56ea -> :sswitch_4
        0x365984bf -> :sswitch_3
        0x6d0f1d40 -> :sswitch_2
        0x76e9134d -> :sswitch_1
        0x7fb0496f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static saveLastScanTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "shared_pref_security_dashboard"

    const/4 v1, 0x0

    .line 354
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 355
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "shared_pref_key_last_scan_time"

    .line 356
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveOverallStatusToSA(IILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;",
            ">;)V"
        }
    .end annotation

    .line 731
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-lez p0, :cond_0

    const-string p0, "2"

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const-string p0, "1"

    goto :goto_0

    :cond_1
    const-string p0, "0"

    :goto_0
    const-string p1, "DB"

    .line 739
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    .line 742
    new-instance p1, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardUtils$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-interface {p2, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    const-string p0, "SL"

    const-string p1, "3"

    .line 755
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "SA"

    .line 756
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "GA"

    .line 757
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "FMM"

    .line 759
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "DP"

    .line 760
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "GPP"

    .line 761
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "SU"

    .line 762
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "GPSU"

    .line 763
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x2348

    .line 765
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2349

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static savePlayAnimation(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "shared_pref_security_dashboard"

    const/4 v1, 0x0

    .line 532
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 533
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "shared_pref_key_should_play_scan_animation"

    .line 534
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 535
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveStatusCardIgnored(Landroid/content/Context;Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$StatusCardIdentifier;Z)V
    .locals 2

    const-string v0, "shared_pref_security_dashboard"

    const/4 v1, 0x0

    .line 516
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 517
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 518
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 519
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static shouldPlayAnimation(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "shared_pref_security_dashboard"

    const/4 v1, 0x0

    .line 539
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "shared_pref_key_should_play_scan_animation"

    .line 540
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.class public Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;
.super Ljava/lang/Object;
.source "WifiApSettingsUtils.java"


# static fields
.field static DATA_UNIT_VALUE_IN_GB:J = 0x0L

.field static DATA_UNIT_VALUE_IN_KB:J = 0x0L

.field static DATA_UNIT_VALUE_IN_MB:J = 0x0L

.field static DATA_UNIT_VALUE_IN_TB:J = 0x0L

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "WifiApSettingsUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 65
    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    const-wide/16 v0, 0x3e8

    .line 69
    sput-wide v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DATA_UNIT_VALUE_IN_KB:J

    mul-long v2, v0, v0

    .line 70
    sput-wide v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DATA_UNIT_VALUE_IN_MB:J

    mul-long/2addr v2, v0

    .line 71
    sput-wide v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DATA_UNIT_VALUE_IN_GB:J

    mul-long/2addr v2, v0

    .line 72
    sput-wide v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DATA_UNIT_VALUE_IN_TB:J

    return-void
.end method

.method public static convertDataSizeToLocale(D)[Ljava/lang/String;
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 470
    sget-wide v1, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DATA_UNIT_VALUE_IN_KB:J

    long-to-double v3, v1

    div-double v3, p0, v3

    long-to-double v5, v1

    div-double/2addr v3, v5

    long-to-double v5, v1

    div-double v5, v3, v5

    long-to-double v1, v1

    div-double v1, v5, v1

    .line 483
    sget-wide v7, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DATA_UNIT_VALUE_IN_GB:J

    long-to-double v7, v7

    cmpg-double v7, p0, v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-gez v7, :cond_0

    .line 484
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    new-array p1, v8, [Ljava/lang/Object;

    .line 485
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v9

    const-string p0, "%d"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v9

    const-string p0, "MB"

    aput-object p0, v0, v8

    goto :goto_0

    .line 487
    :cond_0
    sget-wide v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DATA_UNIT_VALUE_IN_TB:J

    long-to-double v3, v3

    cmpg-double p0, p0, v3

    const-string p1, "%.2f"

    if-gez p0, :cond_1

    new-array p0, v8, [Ljava/lang/Object;

    .line 488
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p0, v9

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v9

    const-string p0, "GB"

    aput-object p0, v0, v8

    goto :goto_0

    :cond_1
    new-array p0, v8, [Ljava/lang/Object;

    .line 491
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, p0, v9

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v9

    const-string p0, "TB"

    aput-object p0, v0, v8

    :goto_0
    return-object v0
.end method

.method public static convertDataSizeToLocaleString(D)Ljava/lang/String;
    .locals 1

    .line 499
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDataSizeToLocale(D)[Ljava/lang/String;

    move-result-object p0

    .line 500
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertTimeToLocale(I)Ljava/lang/String;
    .locals 4

    .line 528
    rem-int/lit8 v0, p0, 0x3c

    .line 529
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v1

    long-to-int v1, v1

    if-lez p0, :cond_1

    const/4 p0, 0x1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    new-array p0, p0, [Ljava/lang/Object;

    .line 532
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    const-string v0, "%dm"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 534
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p0

    const-string p0, "%dh %dm"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "0m"

    :goto_0
    return-object p0
.end method

.method public static convertTimeToMinutes(J)I
    .locals 1

    .line 523
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static convertToColorRGB(Ljava/lang/String;)I
    .locals 2

    const-string v0, "#"

    const-string v1, ""

    .line 566
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int p0, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 p0, p0, 0x0

    and-int/lit16 p0, p0, 0xff

    .line 570
    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method public static getColorFromAttribute(Landroid/content/Context;II)I
    .locals 3

    if-nez p0, :cond_0

    return p2

    .line 602
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 605
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    .line 606
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return p2

    .line 610
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 612
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x1

    .line 613
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 614
    iget v0, v1, Landroid/util/TypedValue;->data:I

    new-array v1, v2, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 615
    invoke-virtual {p0, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    return p2
.end method

.method public static getDialogTheme()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getFirstDayOfWeek(J)J
    .locals 3

    .line 624
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getIndexFromFirstDayOfWeek(J)I

    move-result v0

    .line 625
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateTimeFromMillis(J)Ljava/time/LocalDateTime;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    .line 626
    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 627
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    .line 628
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0

    .line 629
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFirstDayOfWeek : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0
.end method

.method public static getLastDayOfWeek(J)J
    .locals 3

    .line 634
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getIndexFromFirstDayOfWeek(J)I

    move-result v0

    .line 635
    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/clients/report/chart/DateUtil;->getDateTimeFromMillis(J)Ljava/time/LocalDateTime;

    move-result-object p0

    const/4 p1, 0x1

    sub-int/2addr v0, p1

    int-to-long v0, v0

    .line 636
    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 637
    invoke-static {p1}, Ljava/time/Period;->ofWeeks(I)Ljava/time/Period;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Period;->getDays()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 638
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p0

    .line 639
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0

    .line 640
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastDayOfWeek : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p0
.end method

.method public static getRandomAlphabet(IJ)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 394
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->longToBytes(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/SecureRandom;-><init>([B)V

    const/4 p1, 0x0

    const-string p2, ""

    :goto_0
    if-ge p1, p0, :cond_1

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x1a

    invoke-virtual {v0, p2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p2

    const-string v2, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static getRandomDigits(IJ)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 419
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    :cond_1
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    .line 421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    add-long/2addr p1, v0

    .line 422
    :cond_2
    new-instance v0, Ljava/security/SecureRandom;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->longToBytes(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/SecureRandom;-><init>([B)V

    const/16 p1, 0xa

    const/4 p2, 0x1

    move v1, p2

    :goto_0
    if-ge v1, p0, :cond_3

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, p2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "%%0%dd"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, p2, [Ljava/lang/Object;

    sub-int/2addr p1, p2

    .line 427
    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomSymbol(IJ)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 407
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->longToBytes(J)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/SecureRandom;-><init>([B)V

    const/4 p1, 0x0

    const-string p2, ""

    :goto_0
    if-ge p1, p0, :cond_1

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p2

    const-string v2, "!@#$/^&*()"

    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static getSamsungAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "account"

    .line 263
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string v0, "com.osp.app.signin"

    .line 264
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 265
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 266
    aget-object p0, p0, v0

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSamsungAccountCount(Landroid/content/Context;)I
    .locals 1

    const-string v0, "account"

    .line 271
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/AccountManager;

    const-string v0, "com.osp.app.signin"

    .line 272
    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    .line 274
    array-length p0, p0

    return p0
.end method

.method public static hideKeyboard(Landroid/content/Context;)V
    .locals 2

    .line 75
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    const-string v1, "hiding keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    .line 77
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    const-string v1, "input_method"

    .line 78
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 80
    instance-of v1, v0, Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static hideSecondHalfOfString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    .line 305
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 309
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 310
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    if-ge v2, v0, :cond_1

    const-string p0, "*"

    .line 312
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, "(Empty/Null)"

    return-object p0
.end method

.method public static isActiveNetworkHasInternet(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "connectivity"

    .line 231
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 232
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 236
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    .line 238
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    const-string v0, "networkCapabilities is Null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/16 v0, 0x10

    .line 241
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 242
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    const/16 v3, 0xc

    .line 243
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez v0, :cond_2

    if-eqz v2, :cond_3

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 245
    :cond_3
    sget-object v3, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check if device has Active Network Internet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",  hasNetCapabilityValidated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",  hasTransportCellular: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",  hasNetCapabilityInternet: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 2

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isCarrierNEWCO()Z
    .locals 2

    .line 377
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "NEWCO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCarrierTMO()Z
    .locals 2

    .line 373
    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v1, "TMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isDarkModeSet(Landroid/content/Context;)Z
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

.method public static isDualModeSlot(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "phone"

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 136
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 137
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDualModeSlot() - This device supports multi sim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDualModeSlot() - This device DOES NOT supports multi sim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDualSlotAllOff(Landroid/content/Context;)Z
    .locals 8

    .line 184
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isDualModeSlot(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v0, "gsm.sim.state"

    const-string v2, "-1,-1"

    .line 185
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    .line 186
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 187
    sget-object v5, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDualSlotAllOff() - simStatus: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CDMA"

    .line 188
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->isDuosModel(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const-string v0, "isDualSlotAllOff() - returning true"

    const/4 v6, 0x1

    if-eqz p0, :cond_2

    const-string p0, "gsm.sim.currentcardstatus"

    .line 189
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDualSlotAndSLot1Off() - cdmaSimStatus: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 192
    array-length v2, p0

    const-string v3, "3"

    if-ne v2, v6, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    array-length v2, p0

    if-le v2, v6, :cond_6

    aget-object v2, p0, v1

    .line 193
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    aget-object p0, p0, v6

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 194
    :cond_1
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v1, v6

    goto :goto_1

    .line 198
    :cond_2
    array-length p0, v4

    const-string v2, "LOADED"

    const-string v3, "READY"

    if-ne p0, v6, :cond_3

    aget-object p0, v4, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    aget-object p0, v4, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    array-length p0, v4

    if-le p0, v6, :cond_6

    aget-object p0, v4, v1

    .line 199
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    aget-object p0, v4, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    aget-object p0, v4, v6

    .line 200
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    aget-object p0, v4, v6

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 201
    :cond_4
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :cond_5
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    const-string v0, "isDualSlotAllOff() - This device DOES NOT support multi sim"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return v1
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 2

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ne p0, v1, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public static isNanEnabled(Landroid/content/Context;)Z
    .locals 5

    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.aware"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifiaware"

    .line 449
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/aware/WifiAwareManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 457
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isPreEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 458
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 460
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetching isPreEnabled Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    .line 464
    :goto_1
    sget-object v2, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiAware`s isDeviceAttached: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareManager;->isDeviceAttached()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isPreEnabledResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareManager;->isDeviceAttached()Z

    move-result p0

    if-eqz p0, :cond_2

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isNearByDeviceScanningEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "nearby_scanning_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isNetworkTypeGSM(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "phone"

    .line 173
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 174
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p0

    const/4 v0, 0x1

    if-eq v0, p0, :cond_1

    const/4 v1, 0x2

    if-eq v1, p0, :cond_1

    const/16 v1, 0x10

    if-eq v1, p0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is Network Type GSM() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isPkgEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "isPkgEnabled(), "

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/16 v2, 0x80

    .line 101
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 103
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 104
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v3, "enabled"

    goto :goto_0

    :cond_1
    const-string v3, "disabled"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 106
    :catch_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist. "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v1
.end method

.method public static isRTL()Z
    .locals 2

    .line 588
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSamsungAccountLoggedOut(Landroid/content/Context;)Z
    .locals 3

    .line 278
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getSamsungAccountCount(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 279
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is samsung Account logged out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isSimEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 350
    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "vendor.wifiap.simcheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "phone"

    .line 353
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 354
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isDualModeSlot(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isDualSlotAllOff(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    .line 357
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const-string p0, "gsm.sim.state"

    .line 358
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "LOADED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "READY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 360
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    const-string v0, "Sim is not ready"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public static isTetheringRestricted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "user"

    .line 255
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string v0, "no_config_tethering"

    .line 256
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public static launchAddSamsungAccountActivity(Landroid/app/Activity;I)V
    .locals 3

    .line 284
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    const-string v1, "Launching Add Samsung Account Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sems.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    .line 286
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.osp.app.signin"

    .line 287
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v2, "ADD_ACCOUNT"

    .line 289
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "IS_FROM_SETTING"

    const/4 v2, 0x1

    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "client_id"

    const-string v2, "s5d189ajvs"

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static launchSamsungAccountSettingsActivity(Landroid/app/Activity;)V
    .locals 2

    .line 296
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    const-string v1, "Launching Samsung Account Settings Activity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.mobileservice.action.ACTION_OPEN_SASETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.osp.app.signin"

    .line 298
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 299
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static longToBytes(J)[B
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x7

    :goto_0
    if-ltz v2, :cond_0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p0

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 383
    aput-byte v3, v1, v2

    shr-long/2addr p0, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static removeAlphaColor(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 89
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static setNearByDeviceScanningEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nearby_scanning_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->isNearByDeviceScanningEnabled(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_0

    .line 326
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    const-string v0, "Failed to enable NearBy Device Scanning"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 329
    :cond_0
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->TAG:Ljava/lang/String;

    const-string v0, "Success to enable NearBy Device Scanning"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.class public Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;
.super Ljava/lang/Object;
.source "DataUsageFeatureProviderImpl.java"

# interfaces
.implements Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    .line 140
    invoke-static {p1}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .locals 16

    move-wide/from16 v0, p2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    neg-long v0, v0

    :cond_1
    long-to-float v0, v0

    .line 44
    sget v1, Lcom/android/settings/R$string;->byteShort:I

    const/high16 v7, 0x44610000    # 900.0f

    cmpl-float v8, v0, v7

    const-wide/16 v9, 0x1

    const/high16 v11, 0x447a0000    # 1000.0f

    const-wide/16 v12, 0x3e8

    if-lez v8, :cond_2

    .line 47
    sget v1, Lcom/android/settings/R$string;->kilobyteShort:I

    div-float/2addr v0, v11

    move-wide v14, v12

    goto :goto_1

    :cond_2
    move-wide v14, v9

    :goto_1
    cmpl-float v8, v0, v7

    if-lez v8, :cond_3

    .line 52
    sget v1, Lcom/android/settings/R$string;->megabyteShort:I

    mul-long/2addr v14, v12

    div-float/2addr v0, v11

    :cond_3
    cmpl-float v8, v0, v7

    if-lez v8, :cond_4

    .line 57
    sget v1, Lcom/android/settings/R$string;->gigabyteShort:I

    mul-long/2addr v14, v12

    div-float/2addr v0, v11

    :cond_4
    cmpl-float v8, v0, v7

    if-lez v8, :cond_5

    .line 62
    sget v1, Lcom/android/settings/R$string;->terabyteShort:I

    mul-long/2addr v14, v12

    div-float/2addr v0, v11

    :cond_5
    cmpl-float v7, v0, v7

    if-lez v7, :cond_6

    .line 67
    sget v1, Lcom/android/settings/R$string;->petabyteShort:I

    mul-long/2addr v14, v12

    div-float/2addr v0, v11

    :cond_6
    cmp-long v7, v14, v9

    const-string v8, "%.0f"

    const-string v9, "%.2f"

    const/16 v10, 0x64

    if-eqz v7, :cond_b

    const/high16 v7, 0x42c80000    # 100.0f

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_7

    goto :goto_2

    :cond_7
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_9

    :cond_8
    move-object v8, v9

    goto :goto_3

    :cond_9
    const/high16 v7, 0x41200000    # 10.0f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_a

    and-int/lit8 v7, p4, 0x1

    if-eqz v7, :cond_8

    const/16 v10, 0xa

    const-string v8, "%.1f"

    goto :goto_3

    :cond_a
    and-int/lit8 v7, p4, 0x1

    if-eqz v7, :cond_8

    :cond_b
    :goto_2
    move v10, v6

    :goto_3
    if-eqz v4, :cond_c

    neg-float v0, v0

    :cond_c
    new-array v4, v6, [Ljava/lang/Object;

    .line 103
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    and-int/lit8 v5, p4, 0x2

    if-nez v5, :cond_d

    goto :goto_4

    :cond_d
    int-to-float v2, v10

    mul-float/2addr v0, v2

    .line 109
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v2, v0

    mul-long/2addr v2, v14

    int-to-long v5, v10

    div-long/2addr v2, v5

    :goto_4
    move-object/from16 v0, p1

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/text/format/Formatter$BytesResult;

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method

.method public formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, p2, p3, v2}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p2

    .line 122
    sget p3, Lcom/android/settings/R$string;->fileSizeSuffix:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p2, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    iget-object p2, p2, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object p2, v1, v0

    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isMDODimmed(Landroid/content/Context;)Z
    .locals 6

    .line 176
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 177
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 178
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result p0

    .line 181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 182
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "airplane_mode_on"

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    if-nez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    const/4 v4, 0x4

    .line 183
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 185
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMobileDataOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isDataRoamingOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isAirplaneModeOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isVPN : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MobileDataOnlySettings"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4

    .line 187
    invoke-static {v3}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isRoamingArea(I)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    if-nez p1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v3, v2

    :cond_5
    return v3
.end method

.method public isSupportATTMobileDataAndRoaming(Landroid/content/Context;)Z
    .locals 2

    .line 197
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSecSimFeatureProvider()Lcom/samsung/android/settings/connection/SecSimFeatureProvider;

    move-result-object p0

    const-string p1, "ro.csc.sales_code"

    .line 198
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-interface {p0}, Lcom/samsung/android/settings/connection/SecSimFeatureProvider;->isMultiSimModel()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 200
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportEntranceMobileNetwork(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "ro.csc.omcnw_code"

    .line 202
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 203
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->supportEntranceMobileNetwork(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportEntranceMobileNetwork(Ljava/lang/String;)Z

    move-result p0

    .line 209
    :goto_0
    sget-object p1, Lcom/samsung/android/settings/datausage/DataUsageFeatureProviderImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportATTMobileDataAndRoaming : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

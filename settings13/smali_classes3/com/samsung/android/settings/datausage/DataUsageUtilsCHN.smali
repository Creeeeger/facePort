.class public Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;
.super Ljava/lang/Object;
.source "DataUsageUtilsCHN.java"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 148
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 149
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;
    .locals 16

    move-wide/from16 v0, p1

    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_0

    const/16 v2, 0x400

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e8

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-gez v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_2

    neg-long v0, v0

    :cond_2
    long-to-float v0, v0

    .line 159
    sget v1, Lcom/android/settings/R$string;->byteShort:I

    const/high16 v8, 0x44610000    # 900.0f

    cmpl-float v9, v0, v8

    const-wide/16 v10, 0x1

    if-lez v9, :cond_3

    .line 162
    sget v1, Lcom/android/settings/R$string;->kilobyteShort:I

    int-to-long v12, v2

    int-to-float v9, v2

    div-float/2addr v0, v9

    goto :goto_2

    :cond_3
    move-wide v12, v10

    :goto_2
    cmpl-float v9, v0, v8

    if-lez v9, :cond_4

    .line 167
    sget v1, Lcom/android/settings/R$string;->megabyteShort:I

    int-to-long v14, v2

    mul-long/2addr v12, v14

    int-to-float v9, v2

    div-float/2addr v0, v9

    :cond_4
    cmpl-float v9, v0, v8

    if-lez v9, :cond_5

    .line 172
    sget v1, Lcom/android/settings/R$string;->gigabyteShort:I

    int-to-long v14, v2

    mul-long/2addr v12, v14

    int-to-float v9, v2

    div-float/2addr v0, v9

    :cond_5
    cmpl-float v9, v0, v8

    if-lez v9, :cond_6

    .line 177
    sget v1, Lcom/android/settings/R$string;->terabyteShort:I

    int-to-long v14, v2

    mul-long/2addr v12, v14

    int-to-float v9, v2

    div-float/2addr v0, v9

    :cond_6
    cmpl-float v8, v0, v8

    if-lez v8, :cond_7

    .line 182
    sget v1, Lcom/android/settings/R$string;->petabyteShort:I

    int-to-long v8, v2

    mul-long/2addr v12, v8

    int-to-float v2, v2

    div-float/2addr v0, v2

    :cond_7
    cmp-long v2, v12, v10

    const-string v8, "%.0f"

    const-string v9, "%.2f"

    const/16 v10, 0x64

    if-eqz v2, :cond_c

    const/high16 v2, 0x42c80000    # 100.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_8

    goto :goto_3

    :cond_8
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_a

    :cond_9
    move-object v8, v9

    goto :goto_4

    :cond_a
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_b

    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_9

    const/16 v10, 0xa

    const-string v8, "%.1f"

    goto :goto_4

    :cond_b
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_9

    :cond_c
    :goto_3
    move v10, v7

    :goto_4
    if-eqz v5, :cond_d

    neg-float v0, v0

    :cond_d
    new-array v2, v7, [Ljava/lang/Object;

    .line 218
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v2, v6

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_e

    goto :goto_5

    :cond_e
    int-to-float v3, v10

    mul-float/2addr v0, v3

    .line 224
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v3, v0

    mul-long/2addr v3, v12

    int-to-long v5, v10

    div-long/2addr v3, v5

    :goto_5
    move-object/from16 v0, p0

    .line 226
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Landroid/text/format/Formatter$BytesResult;

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v1
.end method

.method public static formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 4

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, p1, p2, v1}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 133
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->fileSizeSuffix:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    iget-object v2, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 141
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, p1, p2, v2}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 142
    sget p2, Lcom/android/settings/R$string;->fileSizeSuffix:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object p1, v1, v0

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSMDataUsageSummaryIntent(Z)Landroid/content/Intent;
    .locals 3

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.sm_cn"

    const-string v2, "com.samsung.android.sm.datausage.ui.datausagesummary.DataUsageSummaryActivity"

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_0

    const/high16 p0, 0x4000000

    .line 256
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static getSMManageAppDataIntent(Z)Landroid/content/Intent;
    .locals 3

    .line 262
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.sm_cn"

    const-string v2, "com.samsung.android.sm.datausage.ui.ManageAppData.ManageAppDataActivity"

    .line 263
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_0

    const/high16 p0, 0x4000000

    .line 265
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static sendSmartManagerEventLog(Landroid/content/Context;II)V
    .locals 10

    const-string v0, "eventId"

    const-string v1, "screenId"

    const-string v2, "DataUsageUtilsCHN"

    .line 74
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSmartManagerEventLog() START screenId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " eventId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "content://com.samsung.android.sm/SamsungAnalysis"

    .line 75
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 77
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 78
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "content://com.samsung.android.sa/SamsungAnalysis"

    .line 79
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :cond_0
    move-object v5, v3

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 85
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    const-string p0, "sendSmartManagerEventLog() has occured IllegalArgumentException with SMLogging"

    .line 88
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V
    .locals 11

    const-string v0, "eventValue"

    const-string v1, "eventId"

    const-string v2, "screenId"

    const-string v3, "DataUsageUtilsCHN"

    .line 95
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSmartManagerEventWithValueLog() START screenId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " eventId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " eventValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "content://com.samsung.android.sm/SamsungAnalysis"

    .line 96
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 98
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 99
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 100
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, "content://com.samsung.android.sa/SamsungAnalysis"

    .line 101
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 103
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 104
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    :cond_0
    move-object v6, v4

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 108
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    const-string p0, "sendSmartManagerEventWithValueLog() has occured IllegalArgumentException with SMLogging"

    .line 111
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendSmartManagerFlowLog(Landroid/content/Context;I)V
    .locals 9

    const-string v0, "screenId"

    const-string v1, "DataUsageUtilsCHN"

    const/4 v2, 0x0

    .line 51
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSmartManagerFlowLog() START screenId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "content://com.samsung.android.sm/SamsungAnalysis"

    .line 52
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 54
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "content://com.samsung.android.sa/SamsungAnalysis"

    .line 55
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :cond_0
    move-object v4, v3

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 60
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v2, :cond_2

    .line 67
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string p0, "sendSmartManagerFlowLog() has occured IllegalArgumentException with SMLogging"

    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 67
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :goto_0
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_4
    throw p0
.end method

.method public static supportSmartManagerForChina()Z
    .locals 1

    const-string v0, "trafficmanager"

    .line 45
    invoke-static {v0}, Lcom/android/settingslib/Utils;->supportEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

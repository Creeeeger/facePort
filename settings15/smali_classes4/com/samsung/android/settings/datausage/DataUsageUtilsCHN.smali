.class public abstract Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->RESET_SETTINGS_DATA:Lcom/samsung/android/settings/general/OnResetSettingsDataListener;

    return-void
.end method

.method public static formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 10

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    neg-long p1, p1

    :cond_1
    long-to-float p1, p1

    const/high16 p2, 0x44610000    # 900.0f

    cmpl-float v2, p1, p2

    const/16 v3, 0x400

    const-wide/16 v4, 0x1

    if-lez v2, :cond_2

    int-to-long v6, v3

    int-to-float v2, v3

    div-float/2addr p1, v2

    const v2, 0x7f141449

    goto :goto_1

    :cond_2
    const v2, 0x7f140887

    move-wide v6, v4

    :goto_1
    cmpl-float v8, p1, p2

    if-lez v8, :cond_3

    int-to-long v8, v3

    mul-long/2addr v6, v8

    int-to-float v2, v3

    div-float/2addr p1, v2

    const v2, 0x7f141787

    :cond_3
    cmpl-float v8, p1, p2

    if-lez v8, :cond_4

    int-to-long v8, v3

    mul-long/2addr v6, v8

    int-to-float v2, v3

    div-float/2addr p1, v2

    const v2, 0x7f1410b1

    :cond_4
    cmpl-float v8, p1, p2

    if-lez v8, :cond_5

    int-to-long v8, v3

    mul-long/2addr v6, v8

    int-to-float v2, v3

    div-float/2addr p1, v2

    const v2, 0x7f142eb8

    :cond_5
    cmpl-float p2, p1, p2

    if-lez p2, :cond_6

    int-to-long v8, v3

    mul-long/2addr v6, v8

    int-to-float p2, v3

    div-float/2addr p1, p2

    const v2, 0x7f141c1d

    :cond_6
    cmp-long p2, v6, v4

    if-eqz p2, :cond_8

    const/high16 p2, 0x42c80000    # 100.0f

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_7

    goto :goto_2

    :cond_7
    const-string p2, "%.2f"

    goto :goto_3

    :cond_8
    :goto_2
    const-string p2, "%.0f"

    :goto_3
    if-eqz v1, :cond_9

    neg-float p1, p1

    :cond_9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance p1, Landroid/text/format/Formatter$BytesResult;

    const-wide/16 v7, 0x0

    move-object v3, p1

    move-object v5, v6

    invoke-direct/range {v3 .. v8}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p2

    iget-object v0, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const-string v1, ""

    filled-new-array {v1, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f140f62

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSMDataUsageSummaryIntent(Z)Landroid/content/Intent;
    .locals 2

    const-string v0, "com.samsung.android.sm_cn"

    const-string v1, "com.samsung.android.sm.datausage.ui.datausagesummary.DataUsageSummaryActivity"

    invoke-static {v0, v1}, Lcom/android/settings/DisplaySettings$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p0, :cond_0

    const/high16 p0, 0x4000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static sendSmartManagerEventWithValueLog(Landroid/content/Context;III)V
    .locals 11

    const-string v0, "eventValue"

    const-string v1, "eventId"

    const-string/jumbo v2, "screenId"

    const-string v3, "DataUsageUtilsCHN"

    const-string/jumbo v4, "sendSmartManagerEventWithValueLog() START screenId : "

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " eventId : "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " eventValue : "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "content://com.samsung.android.sm/SamsungAnalysis"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    if-eqz v5, :cond_0

    const-string v4, "content://com.samsung.android.sa/SamsungAnalysis"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    :cond_0
    move-object v6, v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    const-string/jumbo p0, "sendSmartManagerEventWithValueLog() has occured IllegalArgumentException with SMLogging"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

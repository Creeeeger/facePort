.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sCachedSize:Landroid/util/LruCache;

.field public static final sCachedTime:Landroid/util/LruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->sCachedTime:Landroid/util/LruCache;

    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->sCachedSize:Landroid/util/LruCache;

    return-void
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter$SizeString;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    neg-long p1, p1

    :cond_1
    long-to-float p1, p1

    const/high16 p2, 0x44610000    # 900.0f

    cmpl-float v2, p1, p2

    const-wide/16 v3, 0x1

    const/high16 v5, 0x447a0000    # 1000.0f

    if-lez v2, :cond_2

    div-float/2addr p1, v5

    const v2, 0x7f141449

    const-wide/16 v6, 0x3e8

    goto :goto_1

    :cond_2
    const v2, 0x7f140887

    move-wide v6, v3

    :goto_1
    cmpl-float v8, p1, p2

    if-lez v8, :cond_3

    div-float/2addr p1, v5

    const v2, 0x7f141787

    const-wide/32 v6, 0xf4240

    :cond_3
    cmpl-float v8, p1, p2

    if-lez v8, :cond_4

    div-float/2addr p1, v5

    const v2, 0x7f1410b1

    const-wide/32 v6, 0x3b9aca00

    :cond_4
    cmpl-float v8, p1, p2

    const-wide v9, 0x10000000000L

    if-lez v8, :cond_5

    const/high16 v2, 0x44800000    # 1024.0f

    div-float/2addr p1, v2

    const v2, 0x7f142eb8

    move-wide v6, v9

    :cond_5
    cmpl-float p2, p1, p2

    if-lez p2, :cond_6

    div-float/2addr p1, v5

    const v2, 0x7f141c1d

    const-wide v6, 0x38d7ea4c68000L

    :cond_6
    const/4 p2, 0x2

    const-string v5, "%.1f"

    if-ne p3, p2, :cond_7

    goto :goto_3

    :cond_7
    cmp-long p2, v6, v3

    const-string v3, "%.0f"

    if-eqz p2, :cond_c

    const/high16 p2, 0x42c80000    # 100.0f

    cmpl-float p2, p1, p2

    if-gez p2, :cond_c

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v4, p1, p2

    if-nez v4, :cond_8

    cmp-long v4, v6, v9

    if-nez v4, :cond_8

    goto :goto_2

    :cond_8
    cmpg-float p2, p1, p2

    const-string v4, "%.2f"

    if-gez p2, :cond_a

    :cond_9
    move-object v5, v4

    goto :goto_3

    :cond_a
    const/high16 p2, 0x41200000    # 10.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_b

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_9

    goto :goto_3

    :cond_b
    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_9

    :cond_c
    :goto_2
    move-object v5, v3

    :goto_3
    if-eqz v0, :cond_d

    neg-float p1, p1

    :cond_d
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter$SizeString;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter$SizeString;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static formatFileSize(IJLandroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3, p1, p2, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter;->formatBytes(Landroid/content/res/Resources;JI)Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter$SizeString;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter$SizeString;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StringConverter$SizeString;->mUnit:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

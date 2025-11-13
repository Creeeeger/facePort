.class public final Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/utils/PackageUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/utils/PackageUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/utils/PackageUtil;

    invoke-direct {v0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/utils/PackageUtil;-><init>()V

    sput-object v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/utils/PackageUtil;->INSTANCE:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/utils/PackageUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareVersion(Ljava/lang/String;)I
    .locals 8

    const-string v0, "1.8.17.22"

    const-string v1, "."

    sget-object v2, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->Companion:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "version1: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " | version2: 1.8.17.22"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->TAG:Ljava/lang/String;

    const-string v4, "PackageUtil"

    const-string v5, "compareVersionName"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x6

    const/4 v3, 0x0

    :try_start_0
    sget v5, Lkotlin/Result;->$r8$clinit:I

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v5, Lkotlin/Result;->$r8$clinit:I

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v5

    :goto_0
    sget-object v5, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    instance-of v6, p0, Lkotlin/Result$Failure;

    if-eqz v6, :cond_0

    move-object p0, v5

    :cond_0
    check-cast p0, Ljava/util/List;

    :try_start_1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_1
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    instance-of v2, v0, Lkotlin/Result$Failure;

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eq v1, v5, :cond_2

    goto :goto_4

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    move v4, v3

    :goto_2
    if-ge v4, v1, :cond_5

    :try_start_2
    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v5

    sget v6, Lkotlin/Result;->$r8$clinit:I

    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, v5}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v5, v6

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    instance-of v7, v5, Lkotlin/Result$Failure;

    if-eqz v7, :cond_3

    move-object v5, v6

    :cond_3
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eqz v5, :cond_4

    return v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    return v3

    :cond_6
    :goto_4
    sget-object v1, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->Companion:Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Version1: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " | Version2: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog;->TAG:Ljava/lang/String;

    const-string v1, "Versions are invalid."

    invoke-static {v4, v1, p0}, Lcom/samsung/android/smartthingsmediasdk/mediasdk/base/debug/DLog$Companion;->formatMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

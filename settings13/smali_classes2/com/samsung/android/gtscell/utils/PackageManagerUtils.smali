.class public final Lcom/samsung/android/gtscell/utils/PackageManagerUtils;
.super Ljava/lang/Object;
.source "PackageManagerUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPackageManagerUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PackageManagerUtils.kt\ncom/samsung/android/gtscell/utils/PackageManagerUtils\n*L\n1#1,74:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/gtscell/utils/PackageManagerUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/samsung/android/gtscell/utils/PackageManagerUtils;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/utils/PackageManagerUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/utils/PackageManagerUtils;->INSTANCE:Lcom/samsung/android/gtscell/utils/PackageManagerUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getPackageInfo$default(Lcom/samsung/android/gtscell/utils/PackageManagerUtils;Landroid/content/Context;Ljava/lang/CharSequence;IILjava/lang/Object;)Landroid/content/pm/PackageInfo;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 25
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/gtscell/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic hasPackage$default(Lcom/samsung/android/gtscell/utils/PackageManagerUtils;Landroid/content/Context;Ljava/lang/String;IILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 42
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/gtscell/utils/PackageManagerUtils;->hasPackage(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getApplicationInfo(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/content/pm/ApplicationInfo;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "pkgName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getPackageInfo(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/content/pm/PackageInfo;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method

.method public final getVersionCode(Landroid/content/Context;Ljava/lang/CharSequence;)J
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "pkgName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    move-object v3, p2

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_3

    .line 54
    sget-object v1, Lcom/samsung/android/gtscell/utils/PackageManagerUtils;->INSTANCE:Lcom/samsung/android/gtscell/utils/PackageManagerUtils;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/gtscell/utils/PackageManagerUtils;->getPackageInfo$default(Lcom/samsung/android/gtscell/utils/PackageManagerUtils;Landroid/content/Context;Ljava/lang/CharSequence;IILjava/lang/Object;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_2

    :cond_3
    const-wide/16 p0, -0x1

    :goto_2
    return-wide p0
.end method

.method public final getVersionName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pkgName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 66
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/gtscell/utils/PackageManagerUtils;->getPackageInfo$default(Lcom/samsung/android/gtscell/utils/PackageManagerUtils;Landroid/content/Context;Ljava/lang/CharSequence;IILjava/lang/Object;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final hasPackage(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/gtscell/utils/PackageManagerUtils;->getPackageInfo(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

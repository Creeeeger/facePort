.class public final Lcom/samsung/android/gtscell/utils/GtsCellUtils;
.super Ljava/lang/Object;
.source "GtsCellUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGtsCellUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GtsCellUtils.kt\ncom/samsung/android/gtscell/utils/GtsCellUtils\n*L\n1#1,46:1\n*E\n"
.end annotation


# static fields
.field private static final CATEGORY_GTS_CREATE:Ljava/lang/String; = "com.samsung.android.gts.category.CREATE"

.field public static final INSTANCE:Lcom/samsung/android/gtscell/utils/GtsCellUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/samsung/android/gtscell/utils/GtsCellUtils;

    invoke-direct {v0}, Lcom/samsung/android/gtscell/utils/GtsCellUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/gtscell/utils/GtsCellUtils;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsCellUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 42
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.gts.category.CREATE"

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p0
.end method

.method public static final isGtsAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/gtscell/utils/GtsCellUtils;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsCellUtils;

    invoke-direct {v1, p0}, Lcom/samsung/android/gtscell/utils/GtsCellUtils;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const-string v0, "context.packageManager.q\u2026es(getIntent(context), 0)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final launchGtsFromApp(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    :try_start_0
    sget-object v0, Lcom/samsung/android/gtscell/utils/GtsCellUtils;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsCellUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/utils/GtsCellUtils;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x80000

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    sget-object v0, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "launchGtsFromApp"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/gtscell/log/GLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final launchGtsFromApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    :try_start_0
    sget-object v0, Lcom/samsung/android/gtscell/utils/GtsCellUtils;->INSTANCE:Lcom/samsung/android/gtscell/utils/GtsCellUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/gtscell/utils/GtsCellUtils;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x80000

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "target_category"

    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 33
    sget-object p1, Lcom/samsung/android/gtscell/log/GLogger;->Companion:Lcom/samsung/android/gtscell/log/GLogger$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/gtscell/log/GLogger$Companion;->getGlobal()Lcom/samsung/android/gtscell/log/GLogger;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "launchGtsFromApp"

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/gtscell/log/GLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
